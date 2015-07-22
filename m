From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 2/2] ARM: rockchip: enable PMU_GPIOINT_WAKEUP_EN when entering
 shallow suspend
Date: Wed, 22 Jul 2015 17:28:01 +0200
Message-ID: <6658024.80cb4ykXmU@diego>
References: <3856665.6DP3Y23l8S@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3856665.6DP3Y23l8S@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

According the Chris Zhong PMU_GPIOINT_WAKEUP_EN is needed when entering
the shallow suspend (with logic staying on), so enable it.
Testing revealed that this setting really is necessary to reliably
resume the veyron devices from suspend.

The question remains, why the deep sleep would not need this setting.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/mach-rockchip/pm.c | 9 ++++++---
 arch/arm/mach-rockchip/pm.h | 1 +
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
index 4539f51..0e6770a 100644
--- a/arch/arm/mach-rockchip/pm.c
+++ b/arch/arm/mach-rockchip/pm.c
@@ -124,9 +124,6 @@ static void rk3288_slp_mode_set(int level)
 	regmap_write(sgrf_regmap, RK3288_SGRF_FAST_BOOT_ADDR,
 		     rk3288_bootram_phy);
 
-	regmap_write(pmu_regmap, RK3288_PMU_WAKEUP_CFG1,
-		     PMU_ARMINT_WAKEUP_EN);
-
 	mode_set = BIT(PMU_GLOBAL_INT_DISABLE) | BIT(PMU_L2FLUSH_EN) |
 		   BIT(PMU_SREF0_ENTER_EN) | BIT(PMU_SREF1_ENTER_EN) |
 		   BIT(PMU_DDR0_GATING_EN) | BIT(PMU_DDR1_GATING_EN) |
@@ -138,6 +135,9 @@ static void rk3288_slp_mode_set(int level)
 	if (level == ROCKCHIP_ARM_OFF_LOGIC_DEEP) {
 		osc_switch_to_32k = rk3288_slp_disable_osc();
 
+		regmap_write(pmu_regmap, RK3288_PMU_WAKEUP_CFG1,
+			     PMU_ARMINT_WAKEUP_EN);
+
 		/* arm off, logic deep sleep */
 		mode_set |= BIT(PMU_BUS_PD_EN) | BIT(PMU_PMU_USE_LF) |
 			    BIT(PMU_DDR1IO_RET_EN) | BIT(PMU_DDR0IO_RET_EN) |
@@ -152,6 +152,9 @@ static void rk3288_slp_mode_set(int level)
 	} else {
 		osc_switch_to_32k = false;
 
+		regmap_write(pmu_regmap, RK3288_PMU_WAKEUP_CFG1,
+			     PMU_ARMINT_WAKEUP_EN | PMU_GPIOINT_WAKEUP_EN);
+
 		/*
 		 * arm off, logic normal
 		 * if pmu_clk_core_src_gate_en is not set,
diff --git a/arch/arm/mach-rockchip/pm.h b/arch/arm/mach-rockchip/pm.h
index 8a55ee2..b5af26f 100644
--- a/arch/arm/mach-rockchip/pm.h
+++ b/arch/arm/mach-rockchip/pm.h
@@ -61,6 +61,7 @@ static inline void rockchip_suspend_init(void)
 
 /* PMU_WAKEUP_CFG1 bits */
 #define PMU_ARMINT_WAKEUP_EN		BIT(0)
+#define PMU_GPIOINT_WAKEUP_EN		BIT(3)
 
 enum rk3288_pwr_mode_con {
 	PMU_PWR_MODE_EN = 0,
-- 
2.1.4
