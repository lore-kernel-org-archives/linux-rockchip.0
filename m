From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: fix rk3328 sdmmc0 write errors
Date: Wed, 13 Mar 2019 19:02:30 +0000
Message-ID: <20190313190229.16962-1-pgwipeout@gmail.com>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Leonidas P . Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Various rk3328 based boards experience occasional sdmmc0 write errors.
This is due to the rk3328.dtsi tx drive levels being set to 4ma, vs
8ma per the rk3328 datasheet default settings.

Fix this by setting the tx signal pins to 8ma.
Inspiration from tonymac32's patch,
https://github.com/ayufan-rock64/linux-kernel/commit/dc1212b347e0da17c5460bcc0a56b07d02bac3f8

Fixes issues on the rk3328-roc-cc and the rk3328-rock64 (as per the
above commit message).

Tested on the rk3328-roc-cc board.

Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index c55a3f1a87ff..dabef1a21649 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1445,11 +1445,11 @@
 
 		sdmmc0 {
 			sdmmc0_clk: sdmmc0-clk {
-				rockchip,pins = <1 RK_PA6 1 &pcfg_pull_none_4ma>;
+				rockchip,pins = <1 RK_PA6 1 &pcfg_pull_none_8ma>;
 			};
 
 			sdmmc0_cmd: sdmmc0-cmd {
-				rockchip,pins = <1 RK_PA4 1 &pcfg_pull_up_4ma>;
+				rockchip,pins = <1 RK_PA4 1 &pcfg_pull_up_8ma>;
 			};
 
 			sdmmc0_dectn: sdmmc0-dectn {
@@ -1461,14 +1461,14 @@
 			};
 
 			sdmmc0_bus1: sdmmc0-bus1 {
-				rockchip,pins = <1 RK_PA0 1 &pcfg_pull_up_4ma>;
+				rockchip,pins = <1 RK_PA0 1 &pcfg_pull_up_8ma>;
 			};
 
 			sdmmc0_bus4: sdmmc0-bus4 {
-				rockchip,pins = <1 RK_PA0 1 &pcfg_pull_up_4ma>,
-						<1 RK_PA1 1 &pcfg_pull_up_4ma>,
-						<1 RK_PA2 1 &pcfg_pull_up_4ma>,
-						<1 RK_PA3 1 &pcfg_pull_up_4ma>;
+				rockchip,pins = <1 RK_PA0 1 &pcfg_pull_up_8ma>,
+						<1 RK_PA1 1 &pcfg_pull_up_8ma>,
+						<1 RK_PA2 1 &pcfg_pull_up_8ma>,
+						<1 RK_PA3 1 &pcfg_pull_up_8ma>;
 			};
 
 			sdmmc0_gpio: sdmmc0-gpio {
-- 
2.20.1
