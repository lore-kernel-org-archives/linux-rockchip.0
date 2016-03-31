From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/3] ARM: dts: rockchip: move rk3288 usbphy under the GRF node
Date: Thu, 31 Mar 2016 15:43:32 +0200
Message-ID: <1459431812-6286-4-git-send-email-heiko@sntech.de>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1459431812-6286-1-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The rk3288 usbphy is completely enclosed in the general register files
and the updated binding allows it to be a subnode of the GRF now.
So move the node appropriately.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk3288.dtsi | 63 +++++++++++++++++++++----------------------
 1 file changed, 31 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index bc57232..e746d35 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -747,6 +747,37 @@
 	grf: syscon@ff770000 {
 		compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
 		reg = <0xff770000 0x1000>;
+
+		usbphy: usbphy {
+			compatible = "rockchip,rk3288-usb-phy";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			usbphy0: usb-phy0 {
+				#phy-cells = <0>;
+				reg = <0x320>;
+				clocks = <&cru SCLK_OTGPHY0>;
+				clock-names = "phyclk";
+				#clock-cells = <0>;
+			};
+
+			usbphy1: usb-phy1 {
+				#phy-cells = <0>;
+				reg = <0x334>;
+				clocks = <&cru SCLK_OTGPHY1>;
+				clock-names = "phyclk";
+				#clock-cells = <0>;
+			};
+
+			usbphy2: usb-phy2 {
+				#phy-cells = <0>;
+				reg = <0x348>;
+				clocks = <&cru SCLK_OTGPHY2>;
+				clock-names = "phyclk";
+				#clock-cells = <0>;
+			};
+		};
 	};
 
 	wdt: watchdog@ff800000 {
@@ -959,38 +990,6 @@
 		};
 	};
 
-	usbphy: phy {
-		compatible = "rockchip,rk3288-usb-phy";
-		rockchip,grf = <&grf>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		status = "disabled";
-
-		usbphy0: usb-phy0 {
-			#phy-cells = <0>;
-			reg = <0x320>;
-			clocks = <&cru SCLK_OTGPHY0>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-
-		usbphy1: usb-phy1 {
-			#phy-cells = <0>;
-			reg = <0x334>;
-			clocks = <&cru SCLK_OTGPHY1>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-
-		usbphy2: usb-phy2 {
-			#phy-cells = <0>;
-			reg = <0x348>;
-			clocks = <&cru SCLK_OTGPHY2>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-	};
-
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3288-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.6.4
