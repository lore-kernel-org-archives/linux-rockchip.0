From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 3/5] arm: rockchip: Add common cru.h
Date: Mon, 30 Dec 2019 00:37:24 +0530
Message-ID: <20191229190726.29266-4-jagan@amarulasolutions.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191229190726.29266-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Few of the rockchip family SoC atleast rk3288,
rk3399 are sharing some cru register bits so
adding common code between these SoC families
would require to include both cru include files
that indeed resulting function declarations error.

So, create a common cru include as cru.h then
include the rk3399 arch cru include file and move
the common cru register bit definitions into it.

The rest of rockchip cru files will add it in future.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/clock.h    |  4 +-
 arch/arm/include/asm/arch-rockchip/cru.h      | 16 +++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    |  6 +--
 .../include/asm/arch-rockchip/cru_rk3399.h    | 10 ++---
 arch/arm/mach-rockchip/rk3288/clk_rk3288.c    |  2 +-
 arch/arm/mach-rockchip/rk3288/rk3288.c        |  4 +-
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c    |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        |  2 +-
 drivers/clk/rockchip/clk_rk3288.c             | 42 +++++++++----------
 drivers/clk/rockchip/clk_rk3399.c             | 36 ++++++++--------
 drivers/ram/rockchip/sdram_rk3288.c           | 10 ++---
 drivers/ram/rockchip/sdram_rk3399.c           | 10 ++---
 drivers/video/rockchip/rk3288_mipi.c          |  2 +-
 drivers/video/rockchip/rk3399_mipi.c          |  2 +-
 drivers/video/rockchip/rk_mipi.c              |  2 +-
 15 files changed, 83 insertions(+), 67 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h

diff --git a/arch/arm/include/asm/arch-rockchip/clock.h b/arch/arm/include/asm/arch-rockchip/clock.h
index 8f7fc86a9e..22de0aef8d 100644
--- a/arch/arm/include/asm/arch-rockchip/clock.h
+++ b/arch/arm/include/asm/arch-rockchip/clock.h
@@ -153,10 +153,10 @@ void *rockchip_get_cru(void);
  */
 void *rockchip_get_pmucru(void);
 
-struct rk3288_cru;
+struct rockchip_cru;
 struct rk3288_grf;
 
-void rk3288_clk_configure_cpu(struct rk3288_cru *cru, struct rk3288_grf *grf);
+void rk3288_clk_configure_cpu(struct rockchip_cru *cru, struct rk3288_grf *grf);
 
 int rockchip_get_clk(struct udevice **devp);
 
diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
new file mode 100644
index 0000000000..5ed3fbfd07
--- /dev/null
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * (C) Copyright 2019 Amarula Solutions.
+ * Author: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#ifndef _ROCKCHIP_CLOCK_H
+#define _ROCKCHIP_CLOCK_H
+
+#if defined(CONFIG_ROCKCHIP_RK3288)
+# include <asm/arch-rockchip/cru_rk3288.h>
+#elif defined(CONFIG_ROCKCHIP_RK3399)
+# include <asm/arch-rockchip/cru_rk3399.h>
+#endif
+
+#endif /* _ROCKCHIP_CLOCK_H */
diff --git a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
index e891f20b37..7aa6efe46c 100644
--- a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
@@ -27,11 +27,11 @@
 /* Private data for the clock driver - used by rockchip_get_cru() */
 struct rk3288_clk_priv {
 	struct rk3288_grf *grf;
-	struct rk3288_cru *cru;
+	struct rockchip_cru *cru;
 	ulong rate;
 };
 
-struct rk3288_cru {
+struct rockchip_cru {
 	struct rk3288_pll {
 		u32 con0;
 		u32 con1;
@@ -58,7 +58,7 @@ struct rk3288_cru {
 	u32 cru_sdio1_con[2];
 	u32 cru_emmc_con[2];
 };
-check_member(rk3288_cru, cru_emmc_con[1], 0x021c);
+check_member(rockchip_cru, cru_emmc_con[1], 0x021c);
 
 /* CRU_CLKSEL11_CON */
 enum {
diff --git a/arch/arm/include/asm/arch-rockchip/cru_rk3399.h b/arch/arm/include/asm/arch-rockchip/cru_rk3399.h
index 15eeb9c440..33ce190434 100644
--- a/arch/arm/include/asm/arch-rockchip/cru_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/cru_rk3399.h
@@ -10,7 +10,7 @@
 
 /* Private data for the clock driver - used by rockchip_get_cru() */
 struct rk3399_clk_priv {
-	struct rk3399_cru *cru;
+	struct rockchip_cru *cru;
 };
 
 struct rk3399_pmuclk_priv {
@@ -33,7 +33,7 @@ struct rk3399_pmucru {
 };
 check_member(rk3399_pmucru, pmucru_gatedis_con[1], 0x134);
 
-struct rk3399_cru {
+struct rockchip_cru {
 	u32 apll_l_con[6];
 	u32 reserved[2];
 	u32 apll_b_con[6];
@@ -65,7 +65,7 @@ struct rk3399_cru {
 	u32 sdio0_con[2];
 	u32 sdio1_con[2];
 };
-check_member(rk3399_cru, sdio1_con[1], 0x594);
+check_member(rockchip_cru, sdio1_con[1], 0x594);
 #define MHz		1000000
 #define KHz		1000
 #define OSC_HZ		(24*MHz)
@@ -107,9 +107,9 @@ enum apll_b_frequencies {
 	APLL_B_600_MHZ,
 };
 
-void rk3399_configure_cpu_l(struct rk3399_cru *cru,
+void rk3399_configure_cpu_l(struct rockchip_cru *cru,
 			    enum apll_l_frequencies apll_l_freq);
-void rk3399_configure_cpu_b(struct rk3399_cru *cru,
+void rk3399_configure_cpu_b(struct rockchip_cru *cru,
 			    enum apll_b_frequencies apll_b_freq);
 
 #endif	/* __ASM_ARCH_CRU_RK3399_H_ */
diff --git a/arch/arm/mach-rockchip/rk3288/clk_rk3288.c b/arch/arm/mach-rockchip/rk3288/clk_rk3288.c
index e64ee86f08..1730f12443 100644
--- a/arch/arm/mach-rockchip/rk3288/clk_rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/clk_rk3288.c
@@ -8,7 +8,7 @@
 #include <dm.h>
 #include <syscon.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 
 int rockchip_get_clk(struct udevice **devp)
 {
diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
index 9572f7ea9c..47ee5d440b 100644
--- a/arch/arm/mach-rockchip/rk3288/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
@@ -11,7 +11,7 @@
 #include <asm/io.h>
 #include <asm/arch-rockchip/bootrom.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/pmu_rk3288.h>
@@ -104,7 +104,7 @@ void board_debug_uart_init(void)
 
 static void rk3288_detect_reset_reason(void)
 {
-	struct rk3288_cru *cru = rockchip_get_cru();
+	struct rockchip_cru *cru = rockchip_get_cru();
 	const char *reason;
 
 	if (IS_ERR(cru))
diff --git a/arch/arm/mach-rockchip/rk3399/clk_rk3399.c b/arch/arm/mach-rockchip/rk3399/clk_rk3399.c
index f0411c0a21..a80a46f1db 100644
--- a/arch/arm/mach-rockchip/rk3399/clk_rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/clk_rk3399.c
@@ -8,7 +8,7 @@
 #include <dm.h>
 #include <syscon.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 
 static int rockchip_get_cruclk(struct udevice **devp)
 {
diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
index 863024d071..dafa142824 100644
--- a/arch/arm/mach-rockchip/rk3399/rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
@@ -240,7 +240,7 @@ static void rk3399_force_power_on_reset(void)
 void spl_board_init(void)
 {
 #if defined(SPL_GPIO_SUPPORT)
-	struct rk3399_cru *cru = rockchip_get_cru();
+	struct rockchip_cru *cru = rockchip_get_cru();
 
 	/*
 	 * The RK3399 resets only 'almost all logic' (see also in the TRM
diff --git a/drivers/clk/rockchip/clk_rk3288.c b/drivers/clk/rockchip/clk_rk3288.c
index 85d1b67e43..cc1c1e81e9 100644
--- a/drivers/clk/rockchip/clk_rk3288.c
+++ b/drivers/clk/rockchip/clk_rk3288.c
@@ -14,7 +14,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <dt-bindings/clock/rk3288-cru.h>
@@ -141,7 +141,7 @@ static const struct pll_div apll_init_cfg = PLL_DIVISORS(APLL_HZ, 1, 1);
 static const struct pll_div gpll_init_cfg = PLL_DIVISORS(GPLL_HZ, 2, 2);
 static const struct pll_div cpll_init_cfg = PLL_DIVISORS(CPLL_HZ, 1, 2);
 
-static int rkclk_set_pll(struct rk3288_cru *cru, enum rk_clk_id clk_id,
+static int rkclk_set_pll(struct rockchip_cru *cru, enum rk_clk_id clk_id,
 			 const struct pll_div *div)
 {
 	int pll_id = rk_pll_id(clk_id);
@@ -172,7 +172,7 @@ static int rkclk_set_pll(struct rk3288_cru *cru, enum rk_clk_id clk_id,
 	return 0;
 }
 
-static int rkclk_configure_ddr(struct rk3288_cru *cru, struct rk3288_grf *grf,
+static int rkclk_configure_ddr(struct rockchip_cru *cru, struct rk3288_grf *grf,
 			       unsigned int hz)
 {
 	static const struct pll_div dpll_cfg[] = {
@@ -295,7 +295,7 @@ static int pll_para_config(ulong freq_hz, struct pll_div *div, uint *ext_div)
 	return 0;
 }
 
-static int rockchip_mac_set_clk(struct rk3288_cru *cru, uint freq)
+static int rockchip_mac_set_clk(struct rockchip_cru *cru, uint freq)
 {
 	ulong ret;
 
@@ -333,7 +333,7 @@ static int rockchip_mac_set_clk(struct rk3288_cru *cru, uint freq)
 	return ret;
 }
 
-static int rockchip_vop_set_clk(struct rk3288_cru *cru, struct rk3288_grf *grf,
+static int rockchip_vop_set_clk(struct rockchip_cru *cru, struct rk3288_grf *grf,
 				int periph, unsigned int rate_hz)
 {
 	struct pll_div npll_config = {0};
@@ -384,7 +384,7 @@ static u32 rockchip_clk_gcd(u32 a, u32 b)
 	return a;
 }
 
-static ulong rockchip_i2s_get_clk(struct rk3288_cru *cru, uint gclk_rate)
+static ulong rockchip_i2s_get_clk(struct rockchip_cru *cru, uint gclk_rate)
 {
 	unsigned long long rate;
 	uint val;
@@ -400,7 +400,7 @@ static ulong rockchip_i2s_get_clk(struct rk3288_cru *cru, uint gclk_rate)
 	return (ulong)rate;
 }
 
-static ulong rockchip_i2s_set_clk(struct rk3288_cru *cru, uint gclk_rate,
+static ulong rockchip_i2s_set_clk(struct rockchip_cru *cru, uint gclk_rate,
 				  uint freq)
 {
 	int n, d;
@@ -418,7 +418,7 @@ static ulong rockchip_i2s_set_clk(struct rk3288_cru *cru, uint gclk_rate,
 }
 #endif /* CONFIG_SPL_BUILD */
 
-static void rkclk_init(struct rk3288_cru *cru, struct rk3288_grf *grf)
+static void rkclk_init(struct rockchip_cru *cru, struct rk3288_grf *grf)
 {
 	u32 aclk_div;
 	u32 hclk_div;
@@ -492,7 +492,7 @@ static void rkclk_init(struct rk3288_cru *cru, struct rk3288_grf *grf)
 		     CPLL_MODE_NORMAL << CPLL_MODE_SHIFT);
 }
 
-void rk3288_clk_configure_cpu(struct rk3288_cru *cru, struct rk3288_grf *grf)
+void rk3288_clk_configure_cpu(struct rockchip_cru *cru, struct rk3288_grf *grf)
 {
 	/* pll enter slow-mode */
 	rk_clrsetreg(&cru->cru_mode_con, APLL_MODE_MASK,
@@ -534,7 +534,7 @@ void rk3288_clk_configure_cpu(struct rk3288_cru *cru, struct rk3288_grf *grf)
 }
 
 /* Get pll rate by id */
-static uint32_t rkclk_pll_get_rate(struct rk3288_cru *cru,
+static uint32_t rkclk_pll_get_rate(struct rockchip_cru *cru,
 				   enum rk_clk_id clk_id)
 {
 	uint32_t nr, no, nf;
@@ -567,7 +567,7 @@ static uint32_t rkclk_pll_get_rate(struct rk3288_cru *cru,
 	}
 }
 
-static ulong rockchip_mmc_get_clk(struct rk3288_cru *cru, uint gclk_rate,
+static ulong rockchip_mmc_get_clk(struct rockchip_cru *cru, uint gclk_rate,
 				  int periph)
 {
 	uint src_rate;
@@ -601,7 +601,7 @@ static ulong rockchip_mmc_get_clk(struct rk3288_cru *cru, uint gclk_rate,
 	return DIV_TO_RATE(src_rate, div);
 }
 
-static ulong rockchip_mmc_set_clk(struct rk3288_cru *cru, uint gclk_rate,
+static ulong rockchip_mmc_set_clk(struct rockchip_cru *cru, uint gclk_rate,
 				  int  periph, uint freq)
 {
 	int src_clk_div;
@@ -651,7 +651,7 @@ static ulong rockchip_mmc_set_clk(struct rk3288_cru *cru, uint gclk_rate,
 	return rockchip_mmc_get_clk(cru, gclk_rate, periph);
 }
 
-static ulong rockchip_spi_get_clk(struct rk3288_cru *cru, uint gclk_rate,
+static ulong rockchip_spi_get_clk(struct rockchip_cru *cru, uint gclk_rate,
 				  int periph)
 {
 	uint div, mux;
@@ -681,7 +681,7 @@ static ulong rockchip_spi_get_clk(struct rk3288_cru *cru, uint gclk_rate,
 	return DIV_TO_RATE(gclk_rate, div);
 }
 
-static ulong rockchip_spi_set_clk(struct rk3288_cru *cru, uint gclk_rate,
+static ulong rockchip_spi_set_clk(struct rockchip_cru *cru, uint gclk_rate,
 				  int periph, uint freq)
 {
 	int src_clk_div;
@@ -715,7 +715,7 @@ static ulong rockchip_spi_set_clk(struct rk3288_cru *cru, uint gclk_rate,
 	return rockchip_spi_get_clk(cru, gclk_rate, periph);
 }
 
-static ulong rockchip_saradc_get_clk(struct rk3288_cru *cru)
+static ulong rockchip_saradc_get_clk(struct rockchip_cru *cru)
 {
 	u32 div, val;
 
@@ -726,7 +726,7 @@ static ulong rockchip_saradc_get_clk(struct rk3288_cru *cru)
 	return DIV_TO_RATE(OSC_HZ, div);
 }
 
-static ulong rockchip_saradc_set_clk(struct rk3288_cru *cru, uint hz)
+static ulong rockchip_saradc_set_clk(struct rockchip_cru *cru, uint hz)
 {
 	int src_clk_div;
 
@@ -785,7 +785,7 @@ static ulong rk3288_clk_get_rate(struct clk *clk)
 static ulong rk3288_clk_set_rate(struct clk *clk, ulong rate)
 {
 	struct rk3288_clk_priv *priv = dev_get_priv(clk->dev);
-	struct rk3288_cru *cru = priv->cru;
+	struct rockchip_cru *cru = priv->cru;
 	ulong new_rate, gclk_rate;
 
 	gclk_rate = rkclk_pll_get_rate(priv->cru, CLK_GENERAL);
@@ -892,7 +892,7 @@ static ulong rk3288_clk_set_rate(struct clk *clk, ulong rate)
 static int __maybe_unused rk3288_gmac_set_parent(struct clk *clk, struct clk *parent)
 {
 	struct rk3288_clk_priv *priv = dev_get_priv(clk->dev);
-	struct rk3288_cru *cru = priv->cru;
+	struct rockchip_cru *cru = priv->cru;
 	const char *clock_output_name;
 	int ret;
 
@@ -1008,15 +1008,15 @@ static int rk3288_clk_bind(struct udevice *dev)
 		debug("Warning: No sysreset driver: ret=%d\n", ret);
 	} else {
 		priv = malloc(sizeof(struct sysreset_reg));
-		priv->glb_srst_fst_value = offsetof(struct rk3288_cru,
+		priv->glb_srst_fst_value = offsetof(struct rockchip_cru,
 						    cru_glb_srst_fst_value);
-		priv->glb_srst_snd_value = offsetof(struct rk3288_cru,
+		priv->glb_srst_snd_value = offsetof(struct rockchip_cru,
 						    cru_glb_srst_snd_value);
 		sys_child->priv = priv;
 	}
 
 #if CONFIG_IS_ENABLED(RESET_ROCKCHIP)
-	ret = offsetof(struct rk3288_cru, cru_softrst_con[0]);
+	ret = offsetof(struct rockchip_cru, cru_softrst_con[0]);
 	ret = rockchip_reset_bind(dev, ret, 12);
 	if (ret)
 		debug("Warning: software reset driver bind faile\n");
diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 9020a9f202..37fc142a7a 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -14,7 +14,7 @@
 #include <bitfield.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <dm/lists.h>
 #include <dt-bindings/clock/rk3399-cru.h>
@@ -418,7 +418,7 @@ static int pll_para_config(u32 freq_hz, struct pll_div *div)
 	return 0;
 }
 
-void rk3399_configure_cpu_l(struct rk3399_cru *cru,
+void rk3399_configure_cpu_l(struct rockchip_cru *cru,
 			    enum apll_l_frequencies apll_l_freq)
 {
 	u32 aclkm_div;
@@ -453,7 +453,7 @@ void rk3399_configure_cpu_l(struct rk3399_cru *cru,
 		     atclk_div << ATCLK_CORE_L_DIV_SHIFT);
 }
 
-void rk3399_configure_cpu_b(struct rk3399_cru *cru,
+void rk3399_configure_cpu_b(struct rockchip_cru *cru,
 			    enum apll_b_frequencies apll_b_freq)
 {
 	u32 aclkm_div;
@@ -505,7 +505,7 @@ void rk3399_configure_cpu_b(struct rk3399_cru *cru,
 #define I2C_PMUCLK_REG_VALUE(bus, clk_div) \
 	((clk_div - 1) << CLK_I2C ##bus## _DIV_CON_SHIFT)
 
-static ulong rk3399_i2c_get_clk(struct rk3399_cru *cru, ulong clk_id)
+static ulong rk3399_i2c_get_clk(struct rockchip_cru *cru, ulong clk_id)
 {
 	u32 div, con;
 
@@ -542,7 +542,7 @@ static ulong rk3399_i2c_get_clk(struct rk3399_cru *cru, ulong clk_id)
 	return DIV_TO_RATE(GPLL_HZ, div);
 }
 
-static ulong rk3399_i2c_set_clk(struct rk3399_cru *cru, ulong clk_id, uint hz)
+static ulong rk3399_i2c_set_clk(struct rockchip_cru *cru, ulong clk_id, uint hz)
 {
 	int src_clk_div;
 
@@ -619,7 +619,7 @@ static const struct spi_clkreg spi_clkregs[] = {
 		.sel_shift = CLK_SPI5_PLL_SEL_SHIFT, },
 };
 
-static ulong rk3399_spi_get_clk(struct rk3399_cru *cru, ulong clk_id)
+static ulong rk3399_spi_get_clk(struct rockchip_cru *cru, ulong clk_id)
 {
 	const struct spi_clkreg *spiclk = NULL;
 	u32 div, val;
@@ -641,7 +641,7 @@ static ulong rk3399_spi_get_clk(struct rk3399_cru *cru, ulong clk_id)
 	return DIV_TO_RATE(GPLL_HZ, div);
 }
 
-static ulong rk3399_spi_set_clk(struct rk3399_cru *cru, ulong clk_id, uint hz)
+static ulong rk3399_spi_set_clk(struct rockchip_cru *cru, ulong clk_id, uint hz)
 {
 	const struct spi_clkreg *spiclk = NULL;
 	int src_clk_div;
@@ -668,7 +668,7 @@ static ulong rk3399_spi_set_clk(struct rk3399_cru *cru, ulong clk_id, uint hz)
 	return rk3399_spi_get_clk(cru, clk_id);
 }
 
-static ulong rk3399_vop_set_clk(struct rk3399_cru *cru, ulong clk_id, u32 hz)
+static ulong rk3399_vop_set_clk(struct rockchip_cru *cru, ulong clk_id, u32 hz)
 {
 	struct pll_div vpll_config = {0};
 	int aclk_vop = 198 * MHz;
@@ -712,7 +712,7 @@ static ulong rk3399_vop_set_clk(struct rk3399_cru *cru, ulong clk_id, u32 hz)
 	return hz;
 }
 
-static ulong rk3399_mmc_get_clk(struct rk3399_cru *cru, uint clk_id)
+static ulong rk3399_mmc_get_clk(struct rockchip_cru *cru, uint clk_id)
 {
 	u32 div, con;
 
@@ -739,7 +739,7 @@ static ulong rk3399_mmc_get_clk(struct rk3399_cru *cru, uint clk_id)
 		return DIV_TO_RATE(GPLL_HZ, div);
 }
 
-static ulong rk3399_mmc_set_clk(struct rk3399_cru *cru,
+static ulong rk3399_mmc_set_clk(struct rockchip_cru *cru,
 				ulong clk_id, ulong set_rate)
 {
 	int src_clk_div;
@@ -792,7 +792,7 @@ static ulong rk3399_mmc_set_clk(struct rk3399_cru *cru,
 	return rk3399_mmc_get_clk(cru, clk_id);
 }
 
-static ulong rk3399_gmac_set_clk(struct rk3399_cru *cru, ulong rate)
+static ulong rk3399_gmac_set_clk(struct rockchip_cru *cru, ulong rate)
 {
 	ulong ret;
 
@@ -817,7 +817,7 @@ static ulong rk3399_gmac_set_clk(struct rk3399_cru *cru, ulong rate)
 }
 
 #define PMUSGRF_DDR_RGN_CON16 0xff330040
-static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
+static ulong rk3399_ddr_set_clk(struct rockchip_cru *cru,
 				ulong set_rate)
 {
 	struct pll_div dpll_cfg;
@@ -863,7 +863,7 @@ static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
 	return set_rate;
 }
 
-static ulong rk3399_saradc_get_clk(struct rk3399_cru *cru)
+static ulong rk3399_saradc_get_clk(struct rockchip_cru *cru)
 {
 	u32 div, val;
 
@@ -874,7 +874,7 @@ static ulong rk3399_saradc_get_clk(struct rk3399_cru *cru)
 	return DIV_TO_RATE(OSC_HZ, div);
 }
 
-static ulong rk3399_saradc_set_clk(struct rk3399_cru *cru, uint hz)
+static ulong rk3399_saradc_set_clk(struct rockchip_cru *cru, uint hz)
 {
 	int src_clk_div;
 
@@ -1071,7 +1071,7 @@ static struct clk_ops rk3399_clk_ops = {
 };
 
 #ifdef CONFIG_SPL_BUILD
-static void rkclk_init(struct rk3399_cru *cru)
+static void rkclk_init(struct rockchip_cru *cru)
 {
 	u32 aclk_div;
 	u32 hclk_div;
@@ -1188,15 +1188,15 @@ static int rk3399_clk_bind(struct udevice *dev)
 		debug("Warning: No sysreset driver: ret=%d\n", ret);
 	} else {
 		priv = malloc(sizeof(struct sysreset_reg));
-		priv->glb_srst_fst_value = offsetof(struct rk3399_cru,
+		priv->glb_srst_fst_value = offsetof(struct rockchip_cru,
 						    glb_srst_fst_value);
-		priv->glb_srst_snd_value = offsetof(struct rk3399_cru,
+		priv->glb_srst_snd_value = offsetof(struct rockchip_cru,
 						    glb_srst_snd_value);
 		sys_child->priv = priv;
 	}
 
 #if CONFIG_IS_ENABLED(RESET_ROCKCHIP)
-	ret = offsetof(struct rk3399_cru, softrst_con[0]);
+	ret = offsetof(struct rockchip_cru, softrst_con[0]);
 	ret = rockchip_reset_bind(dev, ret, 21);
 	if (ret)
 		debug("Warning: software reset driver bind faile\n");
diff --git a/drivers/ram/rockchip/sdram_rk3288.c b/drivers/ram/rockchip/sdram_rk3288.c
index 690751d074..fd5b204e1f 100644
--- a/drivers/ram/rockchip/sdram_rk3288.c
+++ b/drivers/ram/rockchip/sdram_rk3288.c
@@ -16,7 +16,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/ddr_rk3288.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/pmu_rk3288.h>
@@ -36,7 +36,7 @@ struct dram_info {
 	struct chan_info chan[2];
 	struct ram_info info;
 	struct clk ddr_clk;
-	struct rk3288_cru *cru;
+	struct rockchip_cru *cru;
 	struct rk3288_grf *grf;
 	struct rk3288_sgrf *sgrf;
 	struct rk3288_pmu *pmu;
@@ -92,7 +92,7 @@ static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 	}
 }
 
-static void ddr_reset(struct rk3288_cru *cru, u32 ch, u32 ctl, u32 phy)
+static void ddr_reset(struct rockchip_cru *cru, u32 ch, u32 ctl, u32 phy)
 {
 	u32 phy_ctl_srstn_shift = 4 + 5 * ch;
 	u32 ctl_psrstn_shift = 3 + 5 * ch;
@@ -109,7 +109,7 @@ static void ddr_reset(struct rk3288_cru *cru, u32 ch, u32 ctl, u32 phy)
 		     phy << phy_srstn_shift);
 }
 
-static void ddr_phy_ctl_reset(struct rk3288_cru *cru, u32 ch, u32 n)
+static void ddr_phy_ctl_reset(struct rockchip_cru *cru, u32 ch, u32 n)
 {
 	u32 phy_ctl_srstn_shift = 4 + 5 * ch;
 
@@ -117,7 +117,7 @@ static void ddr_phy_ctl_reset(struct rk3288_cru *cru, u32 ch, u32 n)
 		     1 << phy_ctl_srstn_shift, n << phy_ctl_srstn_shift);
 }
 
-static void phy_pctrl_reset(struct rk3288_cru *cru,
+static void phy_pctrl_reset(struct rockchip_cru *cru,
 			    struct rk3288_ddr_publ *publ,
 			    int channel)
 {
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7b2bba03fe..08bf0393a7 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -14,7 +14,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/pmu_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
@@ -66,7 +66,7 @@ struct dram_info {
 	u32 pwrup_srefresh_exit[2];
 	struct chan_info chan[2];
 	struct clk ddr_clk;
-	struct rk3399_cru *cru;
+	struct rockchip_cru *cru;
 	struct rk3399_grf_regs *grf;
 	struct rk3399_pmu_regs *pmu;
 	struct rk3399_pmucru *pmucru;
@@ -228,7 +228,7 @@ static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc1_con0;
 }
 
-static void rkclk_ddr_reset(struct rk3399_cru *cru, u32 channel, u32 ctl,
+static void rkclk_ddr_reset(struct rockchip_cru *cru, u32 channel, u32 ctl,
 			    u32 phy)
 {
 	channel &= 0x1;
@@ -239,7 +239,7 @@ static void rkclk_ddr_reset(struct rk3399_cru *cru, u32 channel, u32 ctl,
 				   &cru->softrst_con[4]);
 }
 
-static void phy_pctrl_reset(struct rk3399_cru *cru,  u32 channel)
+static void phy_pctrl_reset(struct rockchip_cru *cru,  u32 channel)
 {
 	rkclk_ddr_reset(cru, channel, 1, 1);
 	udelay(10);
@@ -2945,7 +2945,7 @@ static int sdram_init(struct dram_info *dram,
 			for (channel = 0; channel < 2; channel++) {
 				const struct chan_info *chan =
 					&dram->chan[channel];
-				struct rk3399_cru *cru = dram->cru;
+				struct rockchip_cru *cru = dram->cru;
 				struct rk3399_ddr_publ_regs *publ = chan->publ;
 
 				phy_pctrl_reset(cru, channel);
diff --git a/drivers/video/rockchip/rk3288_mipi.c b/drivers/video/rockchip/rk3288_mipi.c
index 7c4a4cc53b..65891ce45c 100644
--- a/drivers/video/rockchip/rk3288_mipi.c
+++ b/drivers/video/rockchip/rk3288_mipi.c
@@ -18,7 +18,7 @@
 #include <dm/uclass-internal.h>
 #include <linux/kernel.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/rockchip_mipi_dsi.h>
diff --git a/drivers/video/rockchip/rk3399_mipi.c b/drivers/video/rockchip/rk3399_mipi.c
index a93b73400b..a5b7ba69a8 100644
--- a/drivers/video/rockchip/rk3399_mipi.c
+++ b/drivers/video/rockchip/rk3399_mipi.c
@@ -18,7 +18,7 @@
 #include <dm/uclass-internal.h>
 #include <linux/kernel.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/rockchip_mipi_dsi.h>
diff --git a/drivers/video/rockchip/rk_mipi.c b/drivers/video/rockchip/rk_mipi.c
index bcd039b7bc..f9280e8607 100644
--- a/drivers/video/rockchip/rk_mipi.c
+++ b/drivers/video/rockchip/rk_mipi.c
@@ -18,7 +18,7 @@
 #include <dm/uclass-internal.h>
 #include <linux/kernel.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/rockchip_mipi_dsi.h>
 
-- 
2.18.0.321.gffc6fa0e3
