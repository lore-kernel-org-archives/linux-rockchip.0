From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 04/15] rockchip: Add common reset reason
Date: Mon, 29 Jul 2019 13:17:00 +0530
Message-ID: <20190729074711.16988-5-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190729074711.16988-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Right now the reset reason supported by rk3288
and which is printing on board late function.

Support the same reset reason for rk3399 as well,
since it is sharing same cru register mark the
code into common area.

Printing reset reason below SoC information would
really help instead of printing in board late call,
so support this as part of cpu_info.

Cc: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/cru.h      | 12 ++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 14 +------
 arch/arm/mach-rockchip/cpu-info.c             | 41 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288-board.c         | 39 ------------------
 4 files changed, 54 insertions(+), 52 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 3b1a3bae71..b54e21d6f1 100644
--- a/arch/arm/include/asm/arch-rockchip/cru.h
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -13,4 +13,16 @@
 # include <asm/arch-rockchip/cru_rk3399.h>
 #endif
 
+/* CRU_GLB_RST_ST */
+enum {
+	GLB_POR_RST,
+	FST_GLB_RST_ST		= BIT(0),
+	SND_GLB_RST_ST		= BIT(1),
+	FST_GLB_TSADC_RST_ST	= BIT(2),
+	SND_GLB_TSADC_RST_ST	= BIT(3),
+	FST_GLB_WDT_RST_ST	= BIT(4),
+	SND_GLB_WDT_RST_ST	= BIT(5),
+	GLB_RST_ST_MASK		= GENMASK(5, 0),
+};
+
 #endif /* _ROCKCHIP_CLOCK_H */
diff --git a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
index e891f20b37..7acb1c7208 100644
--- a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
@@ -51,7 +51,7 @@ struct rk3288_cru {
 	u32 cru_glb_cnt_th;
 	u32 cru_glb_rst_con;
 	u32 reserved3;
-	u32 cru_glb_rst_st;
+	u32 glb_rst_st;
 	u32 reserved4;
 	u32 cru_sdmmc_con[2];
 	u32 cru_sdio0_con[2];
@@ -227,16 +227,4 @@ enum {
 	CLKF_MASK		= 0x1fff << CLKF_SHIFT,
 };
 
-/* CRU_GLB_RST_ST */
-enum {
-	GLB_POR_RST,
-	FST_GLB_RST_ST		= BIT(0),
-	SND_GLB_RST_ST		= BIT(1),
-	FST_GLB_TSADC_RST_ST	= BIT(2),
-	SND_GLB_TSADC_RST_ST	= BIT(3),
-	FST_GLB_WDT_RST_ST	= BIT(4),
-	SND_GLB_WDT_RST_ST	= BIT(5),
-	GLB_RST_ST_MASK		= GENMASK(5, 0),
-};
-
 #endif
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
index 088fc806a6..8e56999b05 100644
--- a/arch/arm/mach-rockchip/cpu-info.c
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -5,6 +5,38 @@
  */
 
 #include <common.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru.h>
+#include <asm/arch-rockchip/hardware.h>
+#include <linux/err.h>
+
+static char *rockchip_reset_reason(unsigned int glb_rst_st)
+{
+	char *reason;
+
+	switch (glb_rst_st) {
+	case GLB_POR_RST:
+		reason = "POR";
+		break;
+	case FST_GLB_RST_ST:
+	case SND_GLB_RST_ST:
+		reason = "RST";
+		break;
+	case FST_GLB_TSADC_RST_ST:
+	case SND_GLB_TSADC_RST_ST:
+		reason = "THERMAL";
+		break;
+	case FST_GLB_WDT_RST_ST:
+	case SND_GLB_WDT_RST_ST:
+		reason = "WDOG";
+		break;
+	default:
+		reason = "unknown reset";
+        }
+
+	return reason;
+}
 
 int print_cpuinfo(void)
 {
@@ -13,12 +45,21 @@ int print_cpuinfo(void)
 	/* TODO print operating temparature and clock */
 # ifdef CONFIG_ROCKCHIP_RK3288
 	puts("RK3288\n");
+	struct rk3288_cru *cru = rockchip_get_cru();
 # elif CONFIG_ROCKCHIP_RK3399
 	puts("RK3399\n");
+	struct rk3399_cru *cru = rockchip_get_cru();
 # else
 # warning Please update cpu.c with correct CPU information
 	puts("Family\n");
 # endif
 
+	if (IS_ERR(cru))
+		return -EINVAL;
+
+	printf("Reset cause: %s\n", rockchip_reset_reason(cru->glb_rst_st));
+
+	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
+
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/rk3288-board.c b/arch/arm/mach-rockchip/rk3288-board.c
index 613264d7ee..3e5cd9bad9 100644
--- a/arch/arm/mach-rockchip/rk3288-board.c
+++ b/arch/arm/mach-rockchip/rk3288-board.c
@@ -10,7 +10,6 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/periph.h>
 #include <asm/arch-rockchip/pmu_rk3288.h>
 #include <asm/arch-rockchip/qos_rk3288.h>
@@ -44,48 +43,10 @@ int rk3288_qos_init(void)
 	return 0;
 }
 
-static void rk3288_detect_reset_reason(void)
-{
-	struct rk3288_cru *cru = rockchip_get_cru();
-	const char *reason;
-
-	if (IS_ERR(cru))
-		return;
-
-	switch (cru->cru_glb_rst_st) {
-	case GLB_POR_RST:
-		reason = "POR";
-		break;
-	case FST_GLB_RST_ST:
-	case SND_GLB_RST_ST:
-		reason = "RST";
-		break;
-	case FST_GLB_TSADC_RST_ST:
-	case SND_GLB_TSADC_RST_ST:
-		reason = "THERMAL";
-		break;
-	case FST_GLB_WDT_RST_ST:
-	case SND_GLB_WDT_RST_ST:
-		reason = "WDOG";
-		break;
-	default:
-		reason = "unknown reset";
-	}
-
-	printf("Reset cause: %s\n", reason);
-
-	/*
-	 * Clear cru_glb_rst_st, so we can determine the last reset cause
-	 * for following resets.
-	 */
-	rk_clrreg(&cru->cru_glb_rst_st, GLB_RST_ST_MASK);
-}
-
 int board_late_init(void)
 {
 	setup_boot_mode();
 	rk3288_qos_init();
-	rk3288_detect_reset_reason();
 
 	return rk_board_late_init();
 }
-- 
2.18.0.321.gffc6fa0e3
