From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] clk: rockchip: optimize the configuration for 800MHz and 1GHz
 on RK3399
Date: Tue,  1 Nov 2016 11:22:06 +0800
Message-ID: <1477970526-26388-1-git-send-email-zhengxing@rock-chips.com>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Usually, the 800MHz and 1GHz are supplied for CPLL and NPLL in the RK3399.
But dues to the carelessly copying from RK3036 when the RK3399 bringing up,
the refdiv == 6, it will increase the lock time, and it is not an optimal
configuration.

Please let's fix them for the lock time and jitter are lower:
800 MHz:
- FVCO == 2.4 GHz, revdiv == 1.
1 GHz:
- FVCO == 3 GHz, revdiv == 1.

Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index a5a3f41..28aff45 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -77,7 +77,7 @@ static struct rockchip_pll_rate_table rk3399_pll_rates[] = {
 	RK3036_PLL_RATE(1104000000, 1, 46, 1, 1, 1, 0),
 	RK3036_PLL_RATE(1100000000, 12, 550, 1, 1, 1, 0),
 	RK3036_PLL_RATE(1008000000, 1, 84, 2, 1, 1, 0),
-	RK3036_PLL_RATE(1000000000, 6, 500, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1000000000, 1, 125, 3, 1, 1, 0),
 	RK3036_PLL_RATE( 984000000, 1, 82, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 960000000, 1, 80, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 936000000, 1, 78, 2, 1, 1, 0),
@@ -87,7 +87,7 @@ static struct rockchip_pll_rate_table rk3399_pll_rates[] = {
 	RK3036_PLL_RATE( 864000000, 1, 72, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 840000000, 1, 70, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 816000000, 1, 68, 2, 1, 1, 0),
-	RK3036_PLL_RATE( 800000000, 6, 400, 2, 1, 1, 0),
+	RK3036_PLL_RATE( 800000000, 1, 100, 3, 1, 1, 0),
 	RK3036_PLL_RATE( 700000000, 6, 350, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 696000000, 1, 58, 2, 1, 1, 0),
 	RK3036_PLL_RATE( 676000000, 3, 169, 2, 1, 1, 0),
-- 
2.7.4
