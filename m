From: Derek Basehore <dbasehore@chromium.org>
Subject: [PATCH v2 2/6] clk: fix clk_calc_subtree compute duplications
Date: Mon,  4 Mar 2019 20:49:32 -0800
Message-ID: <20190305044936.22267-3-dbasehore@chromium.org>
References: <20190305044936.22267-1-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190305044936.22267-1-dbasehore@chromium.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@vger.kernel.org
Cc: aisheng.dong@nxp.com, Derek Basehore <dbasehore@chromium.org>, heiko@sntech.de, linux-doc@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com, corbet@lwn.net, linux-rockchip@lists.infradead.org, mchehab+samsung@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
List-Id: linux-rockchip.vger.kernel.org

clk_calc_subtree was called at every step up the clk tree in
clk_calc_new_rates. Since it recursively calls itself for its
children, this means it would be called once on each clk for each
step above the top clk is.

This fixes this by breaking the subtree calculation into two parts.
The first part recalcs the rate for each child of the parent clk in
clk_calc_new_rates. This part is not recursive itself. The second part
recursively calls a new clk_calc_subtree on the clk_core that was
passed into clk_set_rate.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/clk/clk.c | 49 ++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 94b3ac783d90..e20364812b54 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -1732,11 +1732,19 @@ static int __clk_speculate_rates(struct clk_core *core,
 	return ret;
 }
 
-static void clk_calc_subtree(struct clk_core *core, unsigned long new_rate,
-			     struct clk_core *new_parent, u8 p_index)
+static void clk_calc_subtree(struct clk_core *core)
 {
 	struct clk_core *child;
 
+	hlist_for_each_entry(child, &core->children, child_node) {
+		child->new_rate = clk_recalc(child, core->new_rate);
+		clk_calc_subtree(child);
+	}
+}
+
+static void clk_set_change(struct clk_core *core, unsigned long new_rate,
+			   struct clk_core *new_parent, u8 p_index)
+{
 	core->new_rate = new_rate;
 	core->new_parent = new_parent;
 	core->new_parent_index = p_index;
@@ -1744,11 +1752,6 @@ static void clk_calc_subtree(struct clk_core *core, unsigned long new_rate,
 	core->new_child = NULL;
 	if (new_parent && new_parent != core->parent)
 		new_parent->new_child = core;
-
-	hlist_for_each_entry(child, &core->children, child_node) {
-		child->new_rate = clk_recalc(child, new_rate);
-		clk_calc_subtree(child, child->new_rate, NULL, 0);
-	}
 }
 
 /*
@@ -1759,7 +1762,7 @@ static struct clk_core *clk_calc_new_rates(struct clk_core *core,
 					   unsigned long rate)
 {
 	struct clk_core *top = core;
-	struct clk_core *old_parent, *parent;
+	struct clk_core *old_parent, *parent, *child;
 	unsigned long best_parent_rate = 0;
 	unsigned long new_rate;
 	unsigned long min_rate;
@@ -1806,6 +1809,13 @@ static struct clk_core *clk_calc_new_rates(struct clk_core *core,
 		/* pass-through clock with adjustable parent */
 		top = clk_calc_new_rates(parent, rate);
 		new_rate = parent->new_rate;
+		hlist_for_each_entry(child, &parent->children, child_node) {
+			if (child == core)
+				continue;
+
+			child->new_rate = clk_recalc(child, new_rate);
+			clk_calc_subtree(child);
+		}
 		goto out;
 	}
 
@@ -1828,11 +1838,19 @@ static struct clk_core *clk_calc_new_rates(struct clk_core *core,
 	}
 
 	if ((core->flags & CLK_SET_RATE_PARENT) && parent &&
-	    best_parent_rate != parent->rate)
+	    best_parent_rate != parent->rate) {
 		top = clk_calc_new_rates(parent, best_parent_rate);
+		hlist_for_each_entry(child, &parent->children, child_node) {
+			if (child == core)
+				continue;
+
+			child->new_rate = clk_recalc(child, parent->new_rate);
+			clk_calc_subtree(child);
+		}
+	}
 
 out:
-	clk_calc_subtree(core, new_rate, parent, p_index);
+	clk_set_change(core, new_rate, parent, p_index);
 
 	return top;
 }
@@ -2007,7 +2025,7 @@ static unsigned long clk_core_req_round_rate_nolock(struct clk_core *core,
 static int clk_core_set_rate_nolock(struct clk_core *core,
 				    unsigned long req_rate)
 {
-	struct clk_core *top, *fail_clk;
+	struct clk_core *top, *fail_clk, *child;
 	unsigned long rate;
 	int ret = 0;
 
@@ -2033,6 +2051,15 @@ static int clk_core_set_rate_nolock(struct clk_core *core,
 	if (ret)
 		return ret;
 
+	if (top != core) {
+		/* new_parent cannot be NULL in this case */
+		hlist_for_each_entry(child, &core->new_parent->children,
+				child_node)
+			clk_calc_subtree(child);
+	} else {
+		clk_calc_subtree(core);
+	}
+
 	/* notify that we are about to change rates */
 	fail_clk = clk_propagate_rate_change(top, PRE_RATE_CHANGE);
 	if (fail_clk) {
-- 
2.21.0.352.gf09ad66450-goog
