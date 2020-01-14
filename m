From: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Subject: [PATCH] clk: rockchip: fix incorrect configuration of rk3228
 aclk_gpu* clocks
Date: Tue, 14 Jan 2020 16:25:02 +0000
Message-ID: <20200114162503.7548-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The following changes prevent the unrecoverable freezes and rcu_sched
stall warnings experienced in each of my attempts to take advantage of
lima.

Replace the COMPOSITE_NOGATE definition of aclk_gpu_pre with a
COMPOSITE that retains the selection of HDMIPHY as the PLL source, but
instead makes uses of the aclk_gpu PLL source gate and parent names
defined by mux_pll_src_4plls_p rather than mux_aclk_gpu_pre_p.

Remove the now unused mux_aclk_gpu_pre_p and the four named but also
unused definitions (cpll_gpu, gpll_gpu, hdmiphy_gpu and usb480m_gpu)
of the aclk_gpu PLL source gate.

Use the correct gate offset for aclk_gpu and aclk_gpu_noc.

Signed-off-by: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
---
 drivers/clk/rockchip/clk-rk3228.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d17cfb7a3..d7243c09c 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -156,8 +156,6 @@ PNAME(mux_i2s_out_p)		= { "i2s1_pre", "xin12m" };
 PNAME(mux_i2s2_p)		= { "i2s2_src", "i2s2_frac", "xin12m" };
 PNAME(mux_sclk_spdif_p)		= { "sclk_spdif_src", "spdif_frac", "xin12m" };
 
-PNAME(mux_aclk_gpu_pre_p)	= { "cpll_gpu", "gpll_gpu", "hdmiphy_gpu", "usb480m_gpu" };
-
 PNAME(mux_uart0_p)		= { "uart0_src", "uart0_frac", "xin24m" };
 PNAME(mux_uart1_p)		= { "uart1_src", "uart1_frac", "xin24m" };
 PNAME(mux_uart2_p)		= { "uart2_src", "uart2_frac", "xin24m" };
@@ -468,16 +466,9 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(24), 6, 10, DFLAGS,
 			RK2928_CLKGATE_CON(2), 8, GFLAGS),
 
-	GATE(0, "cpll_gpu", "cpll", 0,
-			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	GATE(0, "gpll_gpu", "gpll", 0,
-			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	GATE(0, "hdmiphy_gpu", "hdmiphy", 0,
-			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	GATE(0, "usb480m_gpu", "usb480m", 0,
+	COMPOSITE(0, "aclk_gpu_pre", mux_pll_src_4plls_p, 0,
+			RK2928_CLKSEL_CON(34), 5, 2, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(3), 13, GFLAGS),
-	COMPOSITE_NOGATE(0, "aclk_gpu_pre", mux_aclk_gpu_pre_p, 0,
-			RK2928_CLKSEL_CON(34), 5, 2, MFLAGS, 0, 5, DFLAGS),
 
 	COMPOSITE(SCLK_SPI0, "sclk_spi0", mux_pll_src_2plls_p, 0,
 			RK2928_CLKSEL_CON(25), 8, 1, MFLAGS, 0, 7, DFLAGS,
@@ -582,8 +573,8 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 	GATE(0, "pclk_peri_noc", "pclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(12), 2, GFLAGS),
 
 	/* PD_GPU */
-	GATE(ACLK_GPU, "aclk_gpu", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(13), 14, GFLAGS),
-	GATE(0, "aclk_gpu_noc", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(13), 15, GFLAGS),
+	GATE(ACLK_GPU, "aclk_gpu", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(7), 14, GFLAGS),
+	GATE(0, "aclk_gpu_noc", "aclk_gpu_pre", 0, RK2928_CLKGATE_CON(7), 15, GFLAGS),
 
 	/* PD_BUS */
 	GATE(0, "sclk_initmem_mbist", "aclk_cpu", 0, RK2928_CLKGATE_CON(8), 1, GFLAGS),
-- 
2.11.0
