From: Derek Basehore <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 1/6] clk: Remove recursion in clk_core_{prepare,enable}()
Date: Tue, 23 Oct 2018 18:31:27 -0700
Message-ID: <20181024013132.115907-2-dbasehore@chromium.org>
References: <20181024013132.115907-1-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20181024013132.115907-1-dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: aisheng.dong-3arQi8VN3Tc@public.gmane.org, Derek Basehore <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-doc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, corbet-T1hC0tSOHrs@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mchehab+samsung-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jerome Brunet <jbrunet-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>

Enabling and preparing clocks can be written quite naturally with
recursion. We start at some point in the tree and recurse up the
tree to find the oldest parent clk that needs to be enabled or
prepared. Then we enable/prepare and return to the caller, going
back to the clk we started at and enabling/preparing along the
way.

The problem is recursion isn't great for kernel code where we
have a limited stack size. Furthermore, we may be calling this
code inside clk_set_rate() which also has recursion in it, so
we're really not looking good if we encounter a tall clk tree.

Let's create a stack instead by looping over the parent chain and
collecting clks of interest. Then the enable/prepare becomes as
simple as iterating over that list and calling enable.

Cc: Jerome Brunet <jbrunet-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Signed-off-by: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Signed-off-by: Derek Basehore <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/clk/clk.c | 113 ++++++++++++++++++++++++++--------------------
 1 file changed, 64 insertions(+), 49 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index af011974d4ec..95d818f5edb2 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -71,6 +71,8 @@ struct clk_core {
 	struct hlist_head	children;
 	struct hlist_node	child_node;
 	struct hlist_head	clks;
+	struct list_head	prepare_list;
+	struct list_head	enable_list;
 	unsigned int		notifier_count;
 #ifdef CONFIG_DEBUG_FS
 	struct dentry		*dentry;
@@ -740,49 +742,48 @@ EXPORT_SYMBOL_GPL(clk_unprepare);
 static int clk_core_prepare(struct clk_core *core)
 {
 	int ret = 0;
+	struct clk_core *tmp, *parent;
+	LIST_HEAD(head);
 
 	lockdep_assert_held(&prepare_lock);
 
-	if (!core)
-		return 0;
+	while (core) {
+		list_add(&core->prepare_list, &head);
+		/* Stop once we see a clk that is already prepared */
+		if (core->prepare_count)
+			break;
+		core = core->parent;
+	}
 
-	if (core->prepare_count == 0) {
-		ret = clk_pm_runtime_get(core);
-		if (ret)
-			return ret;
+	list_for_each_entry_safe(core, tmp, &head, prepare_list) {
+		list_del_init(&core->prepare_list);
 
-		ret = clk_core_prepare(core->parent);
-		if (ret)
-			goto runtime_put;
+		if (core->prepare_count == 0) {
+			ret = clk_pm_runtime_get(core);
+			if (ret)
+				goto err;
 
-		trace_clk_prepare(core);
+			trace_clk_prepare(core);
 
-		if (core->ops->prepare)
-			ret = core->ops->prepare(core->hw);
+			if (core->ops->prepare)
+				ret = core->ops->prepare(core->hw);
 
-		trace_clk_prepare_complete(core);
+			trace_clk_prepare_complete(core);
 
-		if (ret)
-			goto unprepare;
+			if (ret) {
+				clk_pm_runtime_put(core);
+				goto err;
+			}
+		}
+		core->prepare_count++;
 	}
 
-	core->prepare_count++;
-
-	/*
-	 * CLK_SET_RATE_GATE is a special case of clock protection
-	 * Instead of a consumer claiming exclusive rate control, it is
-	 * actually the provider which prevents any consumer from making any
-	 * operation which could result in a rate change or rate glitch while
-	 * the clock is prepared.
-	 */
-	if (core->flags & CLK_SET_RATE_GATE)
-		clk_core_rate_protect(core);
-
 	return 0;
-unprepare:
-	clk_core_unprepare(core->parent);
-runtime_put:
-	clk_pm_runtime_put(core);
+err:
+	parent = core->parent;
+	list_for_each_entry_safe_continue(core, tmp, &head, prepare_list)
+		list_del_init(&core->prepare_list);
+	clk_core_unprepare(parent);
 	return ret;
 }
 
@@ -878,37 +879,49 @@ EXPORT_SYMBOL_GPL(clk_disable);
 static int clk_core_enable(struct clk_core *core)
 {
 	int ret = 0;
+	struct clk_core *tmp, *parent;
+	LIST_HEAD(head);
 
 	lockdep_assert_held(&enable_lock);
 
-	if (!core)
-		return 0;
-
-	if (WARN(core->prepare_count == 0,
-	    "Enabling unprepared %s\n", core->name))
-		return -ESHUTDOWN;
+	while (core) {
+		list_add(&core->enable_list, &head);
+		/* Stop once we see a clk that is already enabled */
+		if (core->enable_count)
+			break;
+		core = core->parent;
+	}
 
-	if (core->enable_count == 0) {
-		ret = clk_core_enable(core->parent);
+	list_for_each_entry_safe(core, tmp, &head, enable_list) {
+		list_del_init(&core->enable_list);
 
-		if (ret)
-			return ret;
+		if (WARN_ON(core->prepare_count == 0)) {
+			ret = -ESHUTDOWN;
+			goto err;
+		}
 
-		trace_clk_enable_rcuidle(core);
+		if (core->enable_count == 0) {
+			trace_clk_enable_rcuidle(core);
 
-		if (core->ops->enable)
-			ret = core->ops->enable(core->hw);
+			if (core->ops->enable)
+				ret = core->ops->enable(core->hw);
 
-		trace_clk_enable_complete_rcuidle(core);
+			trace_clk_enable_complete_rcuidle(core);
 
-		if (ret) {
-			clk_core_disable(core->parent);
-			return ret;
+			if (ret)
+				goto err;
 		}
+
+		core->enable_count++;
 	}
 
-	core->enable_count++;
 	return 0;
+err:
+	parent = core->parent;
+	list_for_each_entry_safe_continue(core, tmp, &head, enable_list)
+		list_del_init(&core->enable_list);
+	clk_core_disable(parent);
+	return ret;
 }
 
 static int clk_core_enable_lock(struct clk_core *core)
@@ -3281,6 +3294,8 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 	core->num_parents = hw->init->num_parents;
 	core->min_rate = 0;
 	core->max_rate = ULONG_MAX;
+	INIT_LIST_HEAD(&core->prepare_list);
+	INIT_LIST_HEAD(&core->enable_list);
 	hw->core = core;
 
 	/* allocate local copy in case parent_names is __initdata */
-- 
2.19.1.568.g152ad8e336-goog
