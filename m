From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v2 2/2] clk: rockchip: Make uartpll a child of the gpll on
 rk3036
Date: Tue, 28 Feb 2017 19:12:14 +0100
Message-ID: <20170228181214.6413-3-heiko@sntech.de>
References: <20170228181214.6413-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170228181214.6413-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The shared uart-pll is on boot a child of the apll that can get changed
by cpu frequency scaling. So move it away to the more stable gpll to
make sure the uart doesn't break on cpu frequency changes.

This turned up during the 4.11 merge-window when commit
6a171b299379 ("serial: 8250_dw: Allow hardware flow control to be used")
added general termios enablement making the uart on rk3036 change
frequency and thus making it susceptible for the frequency scaling issue.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 drivers/clk/rockchip/clk-rk3036.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index dcde70f4c105..8b8d2c90c884 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -16,6 +16,7 @@
  * GNU General Public License for more details.
  */
 
+#include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
@@ -442,7 +443,7 @@ static void __init rk3036_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
 	void __iomem *reg_base;
-	struct clk *clk;
+	struct clk *clk, *clk2;
 
 	reg_base = of_iomap(np, 0);
 	if (!reg_base) {
@@ -480,6 +481,19 @@ static void __init rk3036_clk_init(struct device_node *np)
 
 	rockchip_register_restart_notifier(ctx, RK2928_GLB_SRST_FST, NULL);
 
+	clk = __clk_lookup("uart_pll_clk");
+	clk2 = __clk_lookup("gpll");
+	if (clk && clk2) {
+		int ret = clk_set_parent(clk, clk2);
+
+		if (ret < 0)
+			pr_warn("%s: could not reparent uart_pll_clk to gpll\n",
+				__func__);
+	} else {
+		pr_warn("%s: missing clocks to reparent uart_pll_clk to gpll\n",
+			__func__);
+	}
+
 	rockchip_clk_of_add_provider(np, ctx);
 }
 CLK_OF_DECLARE(rk3036_cru, "rockchip,rk3036-cru", rk3036_clk_init);
-- 
2.11.0
