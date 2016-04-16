From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: move rk3288 edp phy under the GRF
Date: Sat, 16 Apr 2016 02:49:14 +0200
Message-ID: <1640976.sZtsTTlDpl@diego>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The edp-phy control is a part of the General Register Files and
with a recent patch in 4.6 the phy driver can now also handle this
correctly, so move the dts node under the GRF as well.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 180eb97..9068189 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -201,15 +201,6 @@
 		#clock-cells = <0>;
 	};
 
-	edp_phy: edp-phy {
-		compatible = "rockchip,rk3288-dp-phy";
-		clocks = <&cru SCLK_EDP_24M>;
-		clock-names = "24m";
-		rockchip,grf = <&grf>;
-		#phy-cells = <0>;
-		status = "disabled";
-	};
-
 	timer {
 		compatible = "arm,armv7-timer";
 		arm,cpu-registers-not-fw-configured;
@@ -756,6 +747,14 @@
 	grf: syscon@ff770000 {
 		compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
 		reg = <0xff770000 0x1000>;
+
+		edp_phy: edp-phy {
+			compatible = "rockchip,rk3288-dp-phy";
+			clocks = <&cru SCLK_EDP_24M>;
+			clock-names = "24m";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
 	};
 
 	wdt: watchdog@ff800000 {
-- 
2.7.0
