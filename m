From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH] clk: rockchip: fix frac settings of GPLL clock for rk3328
Date: Sun, 23 Dec 2018 01:42:49 +0900
Message-ID: <20181222164249.25620-1-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch fixes settings of GPLL frequency in fractional mode for
rk3328. In this mode, FOUTVCO is calcurated by following formula:
  FOUTVCO = FREF * FBDIV / REFDIV + ((FREF * FRAC / REFDIV) >> 24)

The problem is in FREF * FRAC >> 24 term. This result always lacks
one from target value is specified by rate member. For example first
itme of rk3328_pll_frac_rate originally has
  - rate  : 1016064000
  - refdiv: 3
  - fbdiv : 127
  - frac  : 134217
  - FREF * FBDIV / REFDIV        = 1016000000
  - (FREF * FRAC / REFDIV) >> 24 = 63999
Thus calculated rate is 1016063999. It seems wrong.

If frac has 134218 (it is increased 1 from original value), second
term is 64000. All other items have same situation. So this patch
adds 1 to frac member in all items of rk3328_pll_frac_rate.

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
---
 drivers/clk/rockchip/clk-rk3328.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index faa94adb2a37..65ab5c2f48b0 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -78,17 +78,17 @@ static struct rockchip_pll_rate_table rk3328_pll_rates[] = {
 
 static struct rockchip_pll_rate_table rk3328_pll_frac_rates[] = {
 	/* _mhz, _refdiv, _fbdiv, _postdiv1, _postdiv2, _dsmpd, _frac */
-	RK3036_PLL_RATE(1016064000, 3, 127, 1, 1, 0, 134217),
+	RK3036_PLL_RATE(1016064000, 3, 127, 1, 1, 0, 134218),
 	/* vco = 1016064000 */
-	RK3036_PLL_RATE(983040000, 24, 983, 1, 1, 0, 671088),
+	RK3036_PLL_RATE(983040000, 24, 983, 1, 1, 0, 671089),
 	/* vco = 983040000 */
-	RK3036_PLL_RATE(491520000, 24, 983, 2, 1, 0, 671088),
+	RK3036_PLL_RATE(491520000, 24, 983, 2, 1, 0, 671089),
 	/* vco = 983040000 */
-	RK3036_PLL_RATE(61440000, 6, 215, 7, 2, 0, 671088),
+	RK3036_PLL_RATE(61440000, 6, 215, 7, 2, 0, 671089),
 	/* vco = 860156000 */
-	RK3036_PLL_RATE(56448000, 12, 451, 4, 4, 0, 9797894),
+	RK3036_PLL_RATE(56448000, 12, 451, 4, 4, 0, 9797895),
 	/* vco = 903168000 */
-	RK3036_PLL_RATE(40960000, 12, 409, 4, 5, 0, 10066329),
+	RK3036_PLL_RATE(40960000, 12, 409, 4, 5, 0, 10066330),
 	/* vco = 819200000 */
 	{ /* sentinel */ },
 };
-- 
2.19.2
