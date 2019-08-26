From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 03/16] arm: rockchip: Add common cru.h
Date: Mon, 26 Aug 2019 23:50:58 +0530
Message-ID: <20190826182111.30999-4-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190826182111.30999-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
 arch/arm/include/asm/arch-rockchip/cru.h      | 14 ++++++++
 .../include/asm/arch-rockchip/cru_rk3399.h    | 10 +++---
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c    |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        |  2 +-
 drivers/clk/rockchip/clk_rk3399.c             | 36 +++++++++----------
 drivers/ram/rockchip/sdram_rk3399.c           | 10 +++---
 drivers/video/rockchip/rk3399_mipi.c          |  2 +-
 drivers/video/rockchip/rk_mipi.c              |  2 +-
 8 files changed, 46 insertions(+), 32 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
new file mode 100644
index 0000000000..3d1927580f
--- /dev/null
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * (C) Copyright 2019 Amarula Solutions.
+ * Author: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#ifndef _ROCKCHIP_CLOCK_H
+#define _ROCKCHIP_CLOCK_H
+
+#if defined(CONFIG_ROCKCHIP_RK3399)
+# include <asm/arch-rockchip/cru_rk3399.h>
+#endif
+
+#endif /* _ROCKCHIP_CLOCK_H */
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
diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index d9950c159b..b79935c774 100644
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
 
@@ -1108,7 +1108,7 @@ static struct clk_ops rk3399_clk_ops = {
 };
 
 #ifdef CONFIG_SPL_BUILD
-static void rkclk_init(struct rk3399_cru *cru)
+static void rkclk_init(struct rockchip_cru *cru)
 {
 	u32 aclk_div;
 	u32 hclk_div;
@@ -1225,15 +1225,15 @@ static int rk3399_clk_bind(struct udevice *dev)
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
 
 #if CONFIG_IS_ENABLED(CONFIG_RESET_ROCKCHIP)
-	ret = offsetof(struct rk3399_cru, softrst_con[0]);
+	ret = offsetof(struct rockchip_cru, softrst_con[0]);
 	ret = rockchip_reset_bind(dev, ret, 21);
 	if (ret)
 		debug("Warning: software reset driver bind faile\n");
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ed70137ce7..2b5d51feb8 100644
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
@@ -61,7 +61,7 @@ struct dram_info {
 	u32 pwrup_srefresh_exit[2];
 	struct chan_info chan[2];
 	struct clk ddr_clk;
-	struct rk3399_cru *cru;
+	struct rockchip_cru *cru;
 	struct rk3399_grf_regs *grf;
 	struct rk3399_pmu_regs *pmu;
 	struct rk3399_pmucru *pmucru;
@@ -251,7 +251,7 @@ static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 	}
 }
 
-static void rkclk_ddr_reset(struct rk3399_cru *cru, u32 channel, u32 ctl,
+static void rkclk_ddr_reset(struct rockchip_cru *cru, u32 channel, u32 ctl,
 			    u32 phy)
 {
 	channel &= 0x1;
@@ -262,7 +262,7 @@ static void rkclk_ddr_reset(struct rk3399_cru *cru, u32 channel, u32 ctl,
 				   &cru->softrst_con[4]);
 }
 
-static void phy_pctrl_reset(struct rk3399_cru *cru,  u32 channel)
+static void phy_pctrl_reset(struct rockchip_cru *cru,  u32 channel)
 {
 	rkclk_ddr_reset(cru, channel, 1, 1);
 	udelay(10);
@@ -2498,7 +2498,7 @@ static int pctl_init(struct dram_info *dram, struct rk3399_sdram_params *params)
 
 	for (channel = 0; channel < 2; channel++) {
 		const struct chan_info *chan = &dram->chan[channel];
-		struct rk3399_cru *cru = dram->cru;
+		struct rockchip_cru *cru = dram->cru;
 		struct rk3399_ddr_publ_regs *publ = chan->publ;
 
 		phy_pctrl_reset(cru, channel);
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
