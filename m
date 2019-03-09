From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: Fix rk3328 rgmii high tx error rate
Date: Sat,  9 Mar 2019 18:20:13 +0000
Message-ID: <20190309182013.22162-1-pgwipeout@gmail.com>
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
To: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Several rk3328 based boards experience high rgmii tx error rates.
This is due to several pins in the rk3328.dtsi rgmii pinmux that are 
missing a pull level setting.
This causes the pinmux driver to default to 0ma.

Fix this by setting those pins to 12ma, consistent with the other tx pins.
This allows much higher data rates with much fewer retries and no recorded
tx errors.

Tested on the rk3328-roc-cc board.

Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 84f14b132e8f..48a4477ebe58 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1673,19 +1673,19 @@
 					<1 RK_PC1 2 &pcfg_pull_none_12ma>,
 
 					/* mac_txclk */
-					<0 RK_PB0 1 &pcfg_pull_none>,
+					<0 RK_PB0 1 &pcfg_pull_none_12ma>,
 					/* mac_txen */
-					<0 RK_PB4 1 &pcfg_pull_none>,
+					<0 RK_PB4 1 &pcfg_pull_none_12ma>,
 					/* mac_clk */
-					<0 RK_PD0 1 &pcfg_pull_none>,
+					<0 RK_PD0 1 &pcfg_pull_none_12ma>,
 					/* mac_txd1 */
-					<0 RK_PC0 1 &pcfg_pull_none>,
+					<0 RK_PC0 1 &pcfg_pull_none_12ma>,
 					/* mac_txd0 */
-					<0 RK_PC1 1 &pcfg_pull_none>,
+					<0 RK_PC1 1 &pcfg_pull_none_12ma>,
 					/* mac_txd3 */
-					<0 RK_PC7 1 &pcfg_pull_none>,
+					<0 RK_PC7 1 &pcfg_pull_none_12ma>,
 					/* mac_txd2 */
-					<0 RK_PC6 1 &pcfg_pull_none>;
+					<0 RK_PC6 1 &pcfg_pull_none_12ma>;
 			};
 
 			rmiim1_pins: rmiim1-pins {
-- 
2.20.1
