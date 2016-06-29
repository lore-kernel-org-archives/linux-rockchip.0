From: andi.shyti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Subject: [PATCH v2 2/2] clk: rockchip: remove unused
 rockchip_clk_protect_critical function
Date: Wed, 29 Jun 2016 17:45:10 +0300
Message-ID: <1467211510-3485-3-git-send-email-andi@etezian.org>
References: <1467211510-3485-1-git-send-email-andi@etezian.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467211510-3485-1-git-send-email-andi-ahk0KpmfxKRAfugRpC6u6w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Andi Shyti <andi-ahk0KpmfxKRAfugRpC6u6w@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Andi Shyti <andi-ahk0KpmfxKRAfugRpC6u6w@public.gmane.org>

because there is no need anymore to enable critical clocks in
each driver, this function is not necessary anymore.

The drivers having critical clocks use the CLK_IS_CRITICAL flag.

Signed-off-by: Andi Shyti <andi-ahk0KpmfxKRAfugRpC6u6w@public.gmane.org>
---
 drivers/clk/rockchip/clk.c | 14 --------------
 drivers/clk/rockchip/clk.h |  1 -
 2 files changed, 15 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 7ffd134..d9bc61b 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -525,20 +525,6 @@ void __init rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 	rockchip_clk_add_lookup(ctx, clk, lookup_id);
 }
 
-void __init rockchip_clk_protect_critical(const char *const clocks[],
-					  int nclocks)
-{
-	int i;
-
-	/* Protect the clocks that needs to stay on */
-	for (i = 0; i < nclocks; i++) {
-		struct clk *clk = __clk_lookup(clocks[i]);
-
-		if (clk)
-			clk_prepare_enable(clk);
-	}
-}
-
 static void __iomem *rst_base;
 static unsigned int reg_restart;
 static void (*cb_restart)(void);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 2194ffa..2fb7acb 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -614,7 +614,6 @@ void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 			const struct rockchip_cpuclk_reg_data *reg_data,
 			const struct rockchip_cpuclk_rate_table *rates,
 			int nrates);
-void rockchip_clk_protect_critical(const char *const clocks[], int nclocks);
 void rockchip_register_restart_notifier(struct rockchip_clk_provider *ctx,
 					unsigned int reg, void (*cb)(void));
 
-- 
2.8.1
