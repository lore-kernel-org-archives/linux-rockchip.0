From: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] clk: rockchip: assign correct id for pclk_ddr and hclk_sd in
 rk3399
Date: Thu, 15 Mar 2018 16:54:31 +0800
Message-ID: <1521104071-19595-1-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, diander-F7+t8E8rja9pdisugbWFHA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Assign id PCLK_DDR to pclk_ddr, id HCLK_SD to hclk_sd, so we can
assign frequency for them in dts.

Change-Id: I6c4d15d37ddabe4ed34e2351cf26e660672ae9ee
Signed-off-by: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/clk/rockchip/clk-rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 6847120..a29c99e 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -670,7 +670,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKGATE_CON(9), 7, GFLAGS,
 			&rk3399_uart3_fracmux),
 
-	COMPOSITE(0, "pclk_ddr", mux_pll_src_cpll_gpll_p, CLK_IGNORE_UNUSED,
+	COMPOSITE(PCLK_DDR, "pclk_ddr", mux_pll_src_cpll_gpll_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(6), 15, 1, MFLAGS, 8, 5, DFLAGS,
 			RK3399_CLKGATE_CON(3), 4, GFLAGS),
 
@@ -886,7 +886,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKGATE_CON(31), 8, GFLAGS),
 
 	/* sdio & sdmmc */
-	COMPOSITE(0, "hclk_sd", mux_pll_src_cpll_gpll_p, 0,
+	COMPOSITE(HCLK_SD, "hclk_sd", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(13), 15, 1, MFLAGS, 8, 5, DFLAGS,
 			RK3399_CLKGATE_CON(12), 13, GFLAGS),
 	GATE(HCLK_SDMMC, "hclk_sdmmc", "hclk_sd", 0,
-- 
2.7.4
