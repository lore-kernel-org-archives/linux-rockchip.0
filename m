From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 2/5] clk: rockchip: Add div50 clocks for px30 sdmmc, emmc,
 sdio and nandc
Date: Tue, 17 Sep 2019 10:19:00 +0200
Message-ID: <20190917081903.25139-2-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190917081903.25139-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Some IPs, such as NAND, EMMC, SDIO and SDMMC need clock of 50%  duty
cycle, divfree50 can generate clock of 50% duty cycle even in odd
value divisor.

Signed-off-by: Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 drivers/clk/rockchip/clk-px30.c | 44 ++++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 3a501896b280..a973394f3d65 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -167,6 +167,10 @@ PNAME(mux_uart5_p)		= { "clk_uart5_src", "clk_uart5_np5", "clk_uart5_frac" };
 PNAME(mux_cif_out_p)		= { "xin24m", "dummy_cpll", "npll", "usb480m" };
 PNAME(mux_dclk_vopb_p)		= { "dclk_vopb_src", "dclk_vopb_frac", "xin24m" };
 PNAME(mux_dclk_vopl_p)		= { "dclk_vopl_src", "dclk_vopl_frac", "xin24m" };
+PNAME(mux_nandc_p)		= { "clk_nandc_div", "clk_nandc_div50" };
+PNAME(mux_sdio_p)		= { "clk_sdio_div", "clk_sdio_div50" };
+PNAME(mux_emmc_p)		= { "clk_emmc_div", "clk_emmc_div50" };
+PNAME(mux_sdmmc_p)		= { "clk_sdmmc_div", "clk_sdmmc_div50" };
 PNAME(mux_gmac_p)		= { "clk_gmac_src", "gmac_clkin" };
 PNAME(mux_gmac_rmii_sel_p)	= { "clk_gmac_rx_tx_div20", "clk_gmac_rx_tx_div2" };
 PNAME(mux_rtc32k_pmu_p)		= { "xin32k", "pmu_pvtm_32k", "clk_rtc32k_frac", };
@@ -460,16 +464,40 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	/* PD_MMC_NAND */
 	GATE(HCLK_MMC_NAND, "hclk_mmc_nand", "hclk_peri_pre", 0,
 			PX30_CLKGATE_CON(6), 0, GFLAGS),
-	COMPOSITE(SCLK_NANDC, "clk_nandc", mux_gpll_cpll_npll_p, 0,
+	COMPOSITE(SCLK_NANDC_DIV, "clk_nandc_div", mux_gpll_cpll_npll_p, 0,
 			PX30_CLKSEL_CON(15), 6, 2, MFLAGS, 0, 5, DFLAGS,
+			PX30_CLKGATE_CON(5), 11, GFLAGS),
+	COMPOSITE(SCLK_NANDC_DIV50, "clk_nandc_div50", mux_gpll_cpll_npll_p, 0,
+			PX30_CLKSEL_CON(15), 6, 2, MFLAGS, 8, 5, DFLAGS,
+			PX30_CLKGATE_CON(5), 12, GFLAGS),
+	COMPOSITE_NODIV(SCLK_NANDC, "clk_nandc", mux_nandc_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(15), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(5), 13, GFLAGS),
 
-	COMPOSITE(SCLK_SDIO, "clk_sdio", mux_gpll_cpll_npll_xin24m_p, 0,
+	COMPOSITE(SCLK_SDIO_DIV, "clk_sdio_div", mux_gpll_cpll_npll_xin24m_p, 0,
 			PX30_CLKSEL_CON(18), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 1, GFLAGS),
+	COMPOSITE_DIV_OFFSET(SCLK_SDIO_DIV50, "clk_sdio_div50",
+			mux_gpll_cpll_npll_xin24m_p, 0,
+			PX30_CLKSEL_CON(18), 14, 2, MFLAGS,
+			PX30_CLKSEL_CON(19), 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 2, GFLAGS),
+	COMPOSITE_NODIV(SCLK_SDIO, "clk_sdio", mux_sdio_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(19), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(6), 3, GFLAGS),
 
-	COMPOSITE(SCLK_EMMC, "clk_emmc", mux_gpll_cpll_npll_xin24m_p, 0,
+	COMPOSITE(SCLK_EMMC_DIV, "clk_emmc_div", mux_gpll_cpll_npll_xin24m_p, 0,
 			PX30_CLKSEL_CON(20), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 4, GFLAGS),
+	COMPOSITE_DIV_OFFSET(SCLK_EMMC_DIV50, "clk_emmc_div50", mux_gpll_cpll_npll_xin24m_p, 0,
+			PX30_CLKSEL_CON(20), 14, 2, MFLAGS,
+			PX30_CLKSEL_CON(21), 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 5, GFLAGS),
+	COMPOSITE_NODIV(SCLK_EMMC, "clk_emmc", mux_emmc_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(21), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(6), 6, GFLAGS),
 
 	COMPOSITE(SCLK_SFC, "clk_sfc", mux_gpll_cpll_p, 0,
@@ -494,8 +522,16 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	/* PD_SDCARD */
 	GATE(0, "hclk_sdmmc_pre", "hclk_peri_pre", 0,
 			PX30_CLKGATE_CON(6), 12, GFLAGS),
-	COMPOSITE(SCLK_SDMMC, "clk_sdmmc", mux_gpll_cpll_npll_xin24m_p, 0,
+	COMPOSITE(SCLK_SDMMC_DIV, "clk_sdmmc_div", mux_gpll_cpll_npll_xin24m_p, 0,
 			PX30_CLKSEL_CON(16), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 13, GFLAGS),
+	COMPOSITE_DIV_OFFSET(SCLK_SDMMC_DIV50, "clk_sdmmc_div50", mux_gpll_cpll_npll_xin24m_p, 0,
+			PX30_CLKSEL_CON(16), 14, 2, MFLAGS,
+			PX30_CLKSEL_CON(17), 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 14, GFLAGS),
+	COMPOSITE_NODIV(SCLK_SDMMC, "clk_sdmmc", mux_sdmmc_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(17), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(6), 15, GFLAGS),
 
 	/* PD_USB */
-- 
2.20.1
