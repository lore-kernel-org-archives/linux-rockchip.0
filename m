From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 2/6] clk: rockchip: rk3399: add some frequencies on the PLL
 table
Date: Wed, 20 Apr 2016 19:06:50 +0800
Message-ID: <1461150414-29638-3-git-send-email-zhengxing@rock-chips.com>
References: <1461150414-29638-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1461150414-29638-1-git-send-email-zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, elaine.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch add some necessary frequencies for the RK3399 clock.

Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-rk3399.c |   11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 7ec84fd..0be3e10 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -92,13 +92,18 @@ static struct rockchip_pll_rate_table rk3399_pll_rates[] = {
 	RK3036_PLL_RATE( 696000000, 1, 58, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 676000000, 3, 169, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 600000000, 1, 75, 3, 1, 1, 0),
-	RK3036_PLL_RATE( 594000000, 2, 99, 2, 1, 1, 0),
+	RK3036_PLL_RATE( 594000000, 1, 99, 4, 1, 1, 0),
 	RK3036_PLL_RATE( 504000000, 1, 63, 3, 1, 1, 0),
 	RK3036_PLL_RATE( 500000000, 6, 250, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 408000000, 1, 68, 2, 2, 1, 0),
 	RK3036_PLL_RATE( 312000000, 1, 52, 2, 2, 1, 0),
+	RK3036_PLL_RATE( 297000000, 1, 99, 4, 2, 1, 0),
 	RK3036_PLL_RATE( 216000000, 1, 72, 4, 2, 1, 0),
+	RK3036_PLL_RATE( 148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(  96000000, 1, 64, 4, 4, 1, 0),
+	RK3036_PLL_RATE(  74250000, 2, 99, 4, 4, 1, 0),
+	RK3036_PLL_RATE(  54000000, 1, 54, 6, 4, 1, 0),
+	RK3036_PLL_RATE(  27000000, 1, 27, 6, 4, 1, 0),
 	{ /* sentinel */ },
 };
 
@@ -359,6 +364,8 @@ static struct rockchip_cpuclk_rate_table rk3399_cpuclkl_rates[] __initdata = {
 	RK3399_CPUCLKL_RATE( 600000000, 1, 3, 3),
 	RK3399_CPUCLKL_RATE( 408000000, 1, 2, 2),
 	RK3399_CPUCLKL_RATE( 312000000, 1, 1, 1),
+	RK3399_CPUCLKL_RATE( 216000000, 1, 1, 1),
+	RK3399_CPUCLKL_RATE(  96000000, 1, 1, 1),
 };
 
 static struct rockchip_cpuclk_rate_table rk3399_cpuclkb_rates[] __initdata = {
@@ -381,6 +388,8 @@ static struct rockchip_cpuclk_rate_table rk3399_cpuclkb_rates[] __initdata = {
 	RK3399_CPUCLKB_RATE( 600000000, 1, 3, 3),
 	RK3399_CPUCLKB_RATE( 408000000, 1, 2, 2),
 	RK3399_CPUCLKB_RATE( 312000000, 1, 1, 1),
+	RK3399_CPUCLKB_RATE( 216000000, 1, 1, 1),
+	RK3399_CPUCLKB_RATE(  96000000, 1, 1, 1),
 };
 
 static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
-- 
1.7.9.5
