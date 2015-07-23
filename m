From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v2 2/2] ARM: rockchip: enable PMU_GPIOINT_WAKEUP_EN when
 entering shallow suspend
Date: Thu, 23 Jul 2015 10:30:21 +0200
Message-ID: <119805978.5m38dsFzWM@diego>
References: <4610448.RXXf22Qoxl@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4610448.RXXf22Qoxl@diego>
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
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

PMU_GPIOINT_WAKEUP_EN seems needed when entering the shallow suspend
(with logic staying on) but does not seem to be needed for the deep
suspend for unknown reasons.
Testing revealed that this setting really is necessary to reliably
resume the veyron devices from suspend.

Reported-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/mach-rockchip/pm.c | 9 ++++++---
 arch/arm/mach-rockchip/pm.h | 1 +
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
index 04d3028..801541e 100644
--- a/arch/arm/mach-rockchip/pm.c
+++ b/arch/arm/mach-rockchip/pm.c
@@ -123,9 +123,6 @@ static void rk3288_slp_mode_set(int level)
 	regmap_write(sgrf_regmap, RK3288_SGRF_FAST_BOOT_ADDR,
 		     rk3288_bootram_phy);
 
-	regmap_write(pmu_regmap, RK3288_PMU_WAKEUP_CFG1,
-		     PMU_ARMINT_WAKEUP_EN);
-
 	mode_set = BIT(PMU_GLOBAL_INT_DISABLE) | BIT(PMU_L2FLUSH_EN) |
 		   BIT(PMU_SREF0_ENTER_EN) | BIT(PMU_SREF1_ENTER_EN) |
 		   BIT(PMU_DDR0_GATING_EN) | BIT(PMU_DDR1_GATING_EN) |
@@ -146,6 +143,9 @@ static void rk3288_slp_mode_set(int level)
 		mode_set1 |= BIT(PMU_CLR_ALIVE) | BIT(PMU_CLR_BUS) |
 			     BIT(PMU_CLR_PERI) | BIT(PMU_CLR_DMA);
 
+		regmap_write(pmu_regmap, RK3288_PMU_WAKEUP_CFG1,
+			     PMU_ARMINT_WAKEUP_EN);
+
 		/* 30ms on a 32kHz clock for osc and pmic stabilization */
 		regmap_write(pmu_regmap, RK3288_PMU_OSC_CNT, 32 * 30);
 		regmap_write(pmu_regmap, RK3288_PMU_STABL_CNT, 32 * 30);
@@ -157,6 +157,9 @@ static void rk3288_slp_mode_set(int level)
 		 */
 		mode_set |= BIT(PMU_CLK_CORE_SRC_GATE_EN);
 
+		regmap_write(pmu_regmap, RK3288_PMU_WAKEUP_CFG1,
+			     PMU_ARMINT_WAKEUP_EN | PMU_GPIOINT_WAKEUP_EN);
+
 		/* 30ms on a 24MHz clock for osc and pmic stabilization */
 		regmap_write(pmu_regmap, RK3288_PMU_OSC_CNT, 24000 * 30);
 		regmap_write(pmu_regmap, RK3288_PMU_STABL_CNT, 24000 * 30);
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
