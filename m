From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/5] clk: rockchip: rk3228: fix incorrect clock node names
Date: Tue, 21 Jun 2016 12:53:27 +0800
Message-ID: <1466484811-26923-2-git-send-email-zhengxing@rock-chips.com>
References: <1466484811-26923-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1466484811-26923-1-git-send-email-zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Due to copy and paste carelessly, RK3288_CLKxxx nodes are incorrect,
we need to fix them.

Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-rk3228.c |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 016bdb0..2f1442f 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -335,7 +335,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(2), 6, GFLAGS),
 
 	GATE(0, "sclk_hsadc", "ext_hsadc", 0,
-			RK3288_CLKGATE_CON(10), 12, GFLAGS),
+			RK2928_CLKGATE_CON(10), 12, GFLAGS),
 
 	COMPOSITE(0, "sclk_wifi", mux_pll_src_cpll_gpll_usb480m_p, 0,
 			RK2928_CLKSEL_CON(23), 5, 2, MFLAGS, 0, 6, DFLAGS,
@@ -380,8 +380,8 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(9), 15, 1, MFLAGS, 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 3, GFLAGS),
 	COMPOSITE_FRAC(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(8), 0,
-			RK3288_CLKGATE_CON(0), 4, GFLAGS),
+			RK2928_CLKSEL_CON(8), 0,
+			RK2928_CLKGATE_CON(0), 4, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S0, "sclk_i2s0", mux_i2s0_p, 0,
 			RK2928_CLKSEL_CON(9), 8, 2, MFLAGS,
 			RK2928_CLKGATE_CON(0), 5, GFLAGS),
@@ -390,8 +390,8 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(3), 15, 1, MFLAGS, 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS),
 	COMPOSITE_FRAC(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(7), 0,
-			RK3288_CLKGATE_CON(0), 11, GFLAGS),
+			RK2928_CLKSEL_CON(7), 0,
+			RK2928_CLKGATE_CON(0), 11, GFLAGS,
 	MUX(0, "i2s1_pre", mux_i2s1_pre_p, 0,
 			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", 0,
@@ -404,8 +404,8 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(16), 15, 1, MFLAGS, 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 7, GFLAGS),
 	COMPOSITE_FRAC(0, "i2s2_frac", "i2s2_src", CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(30), 0,
-			RK3288_CLKGATE_CON(0), 8, GFLAGS),
+			RK2928_CLKSEL_CON(30), 0,
+			RK2928_CLKGATE_CON(0), 8, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S2, "sclk_i2s2", mux_i2s2_p, 0,
 			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
@@ -414,8 +414,8 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(6), 15, 1, MFLAGS, 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(2), 10, GFLAGS),
 	COMPOSITE_FRAC(0, "spdif_frac", "sclk_spdif_src", CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(20), 0,
-			RK3288_CLKGATE_CON(2), 12, GFLAGS),
+			RK2928_CLKSEL_CON(20), 0,
+			RK2928_CLKGATE_CON(2), 12, GFLAGS),
 	MUX(SCLK_SPDIF, "sclk_spdif", mux_sclk_spdif_p, 0,
 			RK2928_CLKSEL_CON(6), 8, 2, MFLAGS),
 
-- 
1.7.9.5
