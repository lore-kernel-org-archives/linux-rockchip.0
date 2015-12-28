From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [RESEND PATCH v1 1/4] clk: rockchip: rk3036: fix the FLAGs for clock
 mux
Date: Mon, 28 Dec 2015 17:03:50 +0800
Message-ID: <1451293433-32392-2-git-send-email-zhengxing@rock-chips.com>
References: <1451293433-32392-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1451293433-32392-1-git-send-email-zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, keescook-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, leozwang-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The DFLAGS are used for the clock dividers, the CLKSEL_CON flags
of COMPOSITE_NODIV type should be MFLAGS.

Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-rk3036.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index 7333b053..d4ea7b6 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -204,16 +204,16 @@ static struct rockchip_clk_branch rk3036_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(2), 2, GFLAGS),
 
 	COMPOSITE_NODIV(SCLK_TIMER0, "sclk_timer0", mux_timer_p, CLK_IGNORE_UNUSED,
-			RK2928_CLKSEL_CON(2), 4, 1, DFLAGS,
+			RK2928_CLKSEL_CON(2), 4, 1, MFLAGS,
 			RK2928_CLKGATE_CON(1), 0, GFLAGS),
 	COMPOSITE_NODIV(SCLK_TIMER1, "sclk_timer1", mux_timer_p, CLK_IGNORE_UNUSED,
-			RK2928_CLKSEL_CON(2), 5, 1, DFLAGS,
+			RK2928_CLKSEL_CON(2), 5, 1, MFLAGS,
 			RK2928_CLKGATE_CON(1), 1, GFLAGS),
 	COMPOSITE_NODIV(SCLK_TIMER2, "sclk_timer2", mux_timer_p, CLK_IGNORE_UNUSED,
-			RK2928_CLKSEL_CON(2), 6, 1, DFLAGS,
+			RK2928_CLKSEL_CON(2), 6, 1, MFLAGS,
 			RK2928_CLKGATE_CON(2), 4, GFLAGS),
 	COMPOSITE_NODIV(SCLK_TIMER3, "sclk_timer3", mux_timer_p, CLK_IGNORE_UNUSED,
-			RK2928_CLKSEL_CON(2), 7, 1, DFLAGS,
+			RK2928_CLKSEL_CON(2), 7, 1, MFLAGS,
 			RK2928_CLKGATE_CON(2), 5, GFLAGS),
 
 	MUX(0, "uart_pll_clk", mux_pll_src_apll_dpll_gpll_usb480m_p, 0,
@@ -262,13 +262,13 @@ static struct rockchip_clk_branch rk3036_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(3), 2, GFLAGS),
 
 	COMPOSITE_NODIV(0, "sclk_sdmmc_src", mux_mmc_src_p, 0,
-			RK2928_CLKSEL_CON(12), 8, 2, DFLAGS,
+			RK2928_CLKSEL_CON(12), 8, 2, MFLAGS,
 			RK2928_CLKGATE_CON(2), 11, GFLAGS),
 	DIV(SCLK_SDMMC, "sclk_sdmmc", "sclk_sdmmc_src", 0,
 			RK2928_CLKSEL_CON(11), 0, 7, DFLAGS),
 
 	COMPOSITE_NODIV(0, "sclk_sdio_src", mux_mmc_src_p, 0,
-			RK2928_CLKSEL_CON(12), 10, 2, DFLAGS,
+			RK2928_CLKSEL_CON(12), 10, 2, MFLAGS,
 			RK2928_CLKGATE_CON(2), 13, GFLAGS),
 	DIV(SCLK_SDIO, "sclk_sdio", "sclk_sdio_src", 0,
 			RK2928_CLKSEL_CON(11), 8, 7, DFLAGS),
-- 
1.7.9.5
