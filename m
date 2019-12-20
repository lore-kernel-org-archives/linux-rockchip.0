From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3368-lion-haikou: remove identical &uart0 node
Date: Fri, 20 Dec 2019 13:55:20 +0100
Message-ID: <20191220125520.29871-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Remove identical &uart0 node.
Sort nodes in alphabetical order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3368-lion-haikou.dts | 76 ++++++++++------------
 1 file changed, 35 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index 8251f3c0d..93601fe05 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -64,47 +64,6 @@
 	};
 };
 
-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio2 RK_PB3 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	max-frequency = <25000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
-	rockchip,default-sample-phase = <90>;
-	vmmc-supply = <&vcc3v3_baseboard>;
-	status = "okay";
-};
-
-&spi2 {
-	cs-gpios = <0>, <&gpio2 RK_PC3 GPIO_ACTIVE_LOW>;
-	status = "okay";
-};
-
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
-	status = "okay";
-};
-
-&usb_otg {
-	dr_mode = "otg";
-	status = "okay";
-};
-
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
-	status = "okay";
-};
-
-&uart1 {
-	/* alternate function of GPIO5/6 */
-	status = "disabled";
-};
-
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&haikou_pin_hog>;
@@ -144,3 +103,38 @@
 		};
 	};
 };
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio2 RK_PB3 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	max-frequency = <25000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	rockchip,default-sample-phase = <90>;
+	vmmc-supply = <&vcc3v3_baseboard>;
+	status = "okay";
+};
+
+&spi2 {
+	cs-gpios = <0>, <&gpio2 RK_PC3 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+};
+
+&uart1 {
+	/* alternate function of GPIO5/6 */
+	status = "disabled";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
-- 
2.11.0
