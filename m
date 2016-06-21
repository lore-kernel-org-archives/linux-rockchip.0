From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 4/5] clk: rockchip: rk3228: rename sclk_macphy_50m to
 sclk_mac_extclk
Date: Tue, 21 Jun 2016 12:53:30 +0800
Message-ID: <1466484811-26923-5-git-send-email-zhengxing@rock-chips.com>
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

The sclk_macphy_50m is confusing, the sclk_mac_extclk describes
a external clock  clearly.

Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-rk3228.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 79a3db1..980d0da 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -151,8 +151,8 @@ PNAME(mux_uart0_p)		= { "uart0_src", "uart0_frac", "xin24m" };
 PNAME(mux_uart1_p)		= { "uart1_src", "uart1_frac", "xin24m" };
 PNAME(mux_uart2_p)		= { "uart2_src", "uart2_frac", "xin24m" };
 
-PNAME(mux_sclk_macphy_50m_p)	= { "ext_gmac", "phy_50m_out" };
-PNAME(mux_sclk_gmac_pre_p)	= { "sclk_gmac_src", "sclk_macphy_50m" };
+PNAME(mux_sclk_mac_extclk_p)	= { "ext_gmac", "phy_50m_out" };
+PNAME(mux_sclk_gmac_pre_p)	= { "sclk_gmac_src", "sclk_mac_extclk" };
 PNAME(mux_sclk_macphy_p)	= { "sclk_gmac_src", "ext_gmac" };
 
 static struct rockchip_pll_clock rk3228_pll_clks[] __initdata = {
@@ -502,7 +502,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 	COMPOSITE(0, "sclk_gmac_src", mux_pll_src_2plls_p, 0,
 			RK2928_CLKSEL_CON(5), 7, 1, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(1), 7, GFLAGS),
-	MUX(0, "sclk_macphy_50m", mux_sclk_macphy_50m_p, 0,
+	MUX(0, "sclk_mac_extclk", mux_sclk_mac_extclk_p, 0,
 			RK2928_CLKSEL_CON(29), 10, 1, MFLAGS),
 	MUX(0, "sclk_gmac_pre", mux_sclk_gmac_pre_p, 0,
 			RK2928_CLKSEL_CON(5), 5, 1, MFLAGS),
-- 
1.7.9.5
