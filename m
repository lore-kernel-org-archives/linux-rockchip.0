From: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] clk: rename clk_core_get_boundaries() to
 clk_hw_get_boundaries() and expose
Date: Thu, 21 Dec 2017 19:04:41 +0300
Message-ID: <1513872282-5370-2-git-send-email-al.kochet@gmail.com>
References: <1513872282-5370-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1513872282-5370-1-git-send-email-al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In order to provide a way to know clock limits to clock providers.

The patch is needed for fixing commit 5d890c2df900 ("clk: rockchip:
add special approximation to fix up fractional clk's jitter").
Custom approximation function introduced by the patch, can
select frequency rate larger than one configured using
clk_set_max_rate().

Signed-off-by: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 drivers/clk/clk.c            |   14 ++++++++------
 include/linux/clk-provider.h |    2 ++
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c8d83ac..8943aac 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -421,10 +421,11 @@ struct clk *__clk_lookup(const char *name)
 	return !core ? NULL : core->hw->clk;
 }
 
-static void clk_core_get_boundaries(struct clk_core *core,
-				    unsigned long *min_rate,
-				    unsigned long *max_rate)
+void clk_hw_get_boundaries(struct clk_hw *hw,
+			   unsigned long *min_rate,
+			   unsigned long *max_rate)
 {
+	struct clk_core *core = hw->core;
 	struct clk *clk_user;
 
 	*min_rate = core->min_rate;
@@ -436,6 +437,7 @@ static void clk_core_get_boundaries(struct clk_core *core,
 	hlist_for_each_entry(clk_user, &core->clks, clks_node)
 		*max_rate = min(*max_rate, clk_user->max_rate);
 }
+EXPORT_SYMBOL_GPL(clk_hw_get_boundaries);
 
 void clk_hw_set_rate_range(struct clk_hw *hw, unsigned long min_rate,
 			   unsigned long max_rate)
@@ -894,7 +896,7 @@ unsigned long clk_hw_round_rate(struct clk_hw *hw, unsigned long rate)
 	int ret;
 	struct clk_rate_request req;
 
-	clk_core_get_boundaries(hw->core, &req.min_rate, &req.max_rate);
+	clk_hw_get_boundaries(hw, &req.min_rate, &req.max_rate);
 	req.rate = rate;
 
 	ret = clk_core_round_rate_nolock(hw->core, &req);
@@ -924,7 +926,7 @@ long clk_round_rate(struct clk *clk, unsigned long rate)
 
 	clk_prepare_lock();
 
-	clk_core_get_boundaries(clk->core, &req.min_rate, &req.max_rate);
+	clk_hw_get_boundaries(clk->core->hw, &req.min_rate, &req.max_rate);
 	req.rate = rate;
 
 	ret = clk_core_round_rate_nolock(clk->core, &req);
@@ -1353,7 +1355,7 @@ static struct clk_core *clk_calc_new_rates(struct clk_core *core,
 	if (parent)
 		best_parent_rate = parent->rate;
 
-	clk_core_get_boundaries(core, &min_rate, &max_rate);
+	clk_hw_get_boundaries(core->hw, &min_rate, &max_rate);
 
 	/* find the closest rate and parent clk/rate */
 	if (core->ops->determine_rate) {
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 5100ec1..2f10999 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -755,6 +755,8 @@ int __clk_mux_determine_rate_closest(struct clk_hw *hw,
 void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent);
 void clk_hw_set_rate_range(struct clk_hw *hw, unsigned long min_rate,
 			   unsigned long max_rate);
+void clk_hw_get_boundaries(struct clk_hw *hw, unsigned long *min_rate,
+			   unsigned long *max_rate);
 
 static inline void __clk_hw_set_clk(struct clk_hw *dst, struct clk_hw *src)
 {
-- 
1.7.9.5
