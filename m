From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v2 3/3] ARM: rockchip: drop rk3288 jtag/mmc switch handling
Date: Tue, 15 Nov 2016 23:39:00 +0100
Message-ID: <20161115223900.30728-4-heiko@sntech.de>
References: <20161115223900.30728-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20161115223900.30728-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, arnd-r2nGTMty4D4@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We moved that functionality to a more generic place where it can also
be used for other socs, so drop it from architecture code.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 arch/arm/mach-rockchip/rockchip.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index e7fdf06..0008783 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -29,13 +29,11 @@
 #include "core.h"
 #include "pm.h"
 
-#define RK3288_GRF_SOC_CON0 0x244
 #define RK3288_TIMER6_7_PHYS 0xff810000
 
 static void __init rockchip_timer_init(void)
 {
 	if (of_machine_is_compatible("rockchip,rk3288")) {
-		struct regmap *grf;
 		void __iomem *reg_base;
 
 		/*
@@ -54,16 +52,6 @@ static void __init rockchip_timer_init(void)
 		} else {
 			pr_err("rockchip: could not map timer7 registers\n");
 		}
-
-		/*
-		 * Disable auto jtag/sdmmc switching that causes issues
-		 * with the mmc controllers making them unreliable
-		 */
-		grf = syscon_regmap_lookup_by_compatible("rockchip,rk3288-grf");
-		if (!IS_ERR(grf))
-			regmap_write(grf, RK3288_GRF_SOC_CON0, 0x10000000);
-		else
-			pr_err("rockchip: could not get grf syscon\n");
 	}
 
 	of_clk_init(NULL);
-- 
2.10.2
