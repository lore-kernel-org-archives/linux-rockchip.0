From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v1 2/2] arm64: dts: rockchip: rename and label gpio-led subnodes
Date: Tue, 28 Apr 2020 16:49:33 +0200
Message-ID: <20200428144933.10953-2-jbx6244@gmail.com>
References: <20200428144933.10953-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200428144933.10953-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'gpio-led' nodes were manually verified.
In order to automate this process leds-gpio.txt
has been converted to yaml. With this conversion a check
for pattern properties was added. A test with the command
below gives a screen full of warnings like:

arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: gpio-leds:
'work' does not match any of the regexes:
'(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Fix these errors with help of the following rules:

1: Add nodename in the preferred form.

2: Always add a label that ends with '_led' to prevent conflicts
   with other labels such as 'power' and 'mmc'

3: If leds need pinctrl add a label that ends with '_led_pin'
   also to prevent conflicts with other labels.

patternProperties:
  # The first form is preferred, but fall back to just 'led'
  # anywhere in the node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/
leds-gpio.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |  4 +--
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts |  6 ++---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |  4 +--
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |  4 +--
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    |  4 +--
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |  4 +--
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      | 29 +++++++++++-----------
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    | 10 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  6 ++---
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      | 10 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    | 29 +++++++++++-----------
 12 files changed, 57 insertions(+), 55 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 8011e9b12..ccb27023c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -28,14 +28,14 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			label = "firefly:red:power";
 			linux,default-trigger = "ir-power-click";
 			default-state = "on";
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 		};
 
-		user {
+		user_led: led-1 {
 			label = "firefly:blue:user";
 			linux,default-trigger = "ir-user-click";
 			default-state = "off";
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index cf20aac5f..fe253669b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -128,9 +128,9 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "led_pins";
-		pinctrl-0 = <&led_pins>;
+		pinctrl-0 = <&blue_led_pin>;
 
-		led-0 {
+		blue_led: led-0 {
 			label = "blue:heartbeat";
 			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
@@ -528,7 +528,7 @@
 	};
 
 	leds {
-		led_pins: led-pins {
+		blue_led_pin: blue-led-pin {
 			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 8d553c921..34db48c27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -86,7 +86,7 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			label = "firefly:blue:power";
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
@@ -94,7 +94,7 @@
 			mode = <0x23>;
 		};
 
-		user {
+		user_led: led-1 {
 			label = "firefly:yellow:user";
 			linux,default-trigger = "mmc1";
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index ebf3eb222..6e09c223e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -73,12 +73,12 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "mmc0";
 		};
 
-		standby {
+		standby_led: led-1 {
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 1d0778ff2..46357d1d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -50,13 +50,13 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		blue {
+		blue_led: led-0 {
 			gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
 			label = "geekbox:blue:led";
 			default-state = "on";
 		};
 
-		red {
+		red_led: led-1 {
 			gpios = <&gpio2 RK_PA3 GPIO_ACTIVE_HIGH>;
 			label = "geekbox:red:led";
 			default-state = "off";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 6cc310255..b058ce999 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -50,7 +50,7 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		red {
+		red_led: led-0 {
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			label = "orion:red:led";
 			pinctrl-names = "default";
@@ -58,7 +58,7 @@
 			default-state = "on";
 		};
 
-		blue {
+		blue_led: led-1 {
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
 			label = "orion:blue:led";
 			pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 006a1fb6a..236ab0f1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -43,7 +43,7 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			label = "r88:green:led";
 			pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index ebe2ee77b..1ce85a581 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -27,42 +27,43 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&user_led1>, <&user_led2>, <&user_led3>,
-			    <&user_led4>, <&wlan_led>, <&bt_led>;
+		pinctrl-0 = <&user_led1_pin>, <&user_led2_pin>,
+			    <&user_led3_pin>, <&user_led4_pin>,
+			    <&wlan_led_pin>, <&bt_led_pin>;
 
-		user_led1 {
+		user_led1: led-1 {
 			label = "red:user1";
 			gpios = <&gpio4 25 0>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		user_led2 {
+		user_led2: led-2 {
 			label = "red:user2";
 			gpios = <&gpio4 26 0>;
 			linux,default-trigger = "mmc0";
 		};
 
-		user_led3 {
+		user_led3: led-3 {
 			label = "red:user3";
 			gpios = <&gpio4 30 0>;
 			linux,default-trigger = "mmc1";
 		};
 
-		user_led4 {
+		user_led4: led-4 {
 			label = "red:user4";
 			gpios = <&gpio1 0 0>;
 			panic-indicator;
 			linux,default-trigger = "none";
 		};
 
-		wlan_active_led {
+		wlan_active_led: led-5 {
 			label = "red:wlan";
 			gpios = <&gpio1 1 0>;
 			linux,default-trigger = "phy0tx";
 			default-state = "off";
 		};
 
-		bt_active_led {
+		bt_active_led: led-6 {
 			label = "red:bt";
 			gpios = <&gpio1 4 0>;
 			linux,default-trigger = "hci0-power";
@@ -114,32 +115,32 @@
 	};
 
 	leds {
-		user_led1: user_led1 {
+		user_led1_pin: user-led1-pin {
 			rockchip,pins =
 				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led2: user_led2 {
+		user_led2_pin: user-led2-pin {
 			rockchip,pins =
 				<4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led3: user_led3 {
+		user_led3_pin: user-led3-pin {
 			rockchip,pins =
 				<4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led4: user_led4 {
+		user_led4_pin: user-led4-pin {
 			rockchip,pins =
 				<1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		wlan_led: wlan_led {
+		wlan_led_pin: wlan-led-pin {
 			rockchip,pins =
 				<1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		bt_led: bt_led {
+		bt_led_pin: bt-led-pin {
 			rockchip,pins =
 				<1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index d63faf38c..20b5599f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -91,15 +91,15 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
+		pinctrl-0 = <&work_led_pin>, <&diy_led_pin>;
 
-		work-led {
+		work_led: led-0 {
 			label = "work";
 			default-state = "on";
 			gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		};
 
-		diy-led {
+		diy_led: led-1 {
 			label = "diy";
 			default-state = "off";
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -629,11 +629,11 @@
 	};
 
 	leds {
-		work_led_gpio: work_led-gpio {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		diy_led_gpio: diy_led-gpio {
+		diy_led_pin: diy-led-pin {
 			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 4b4a38e59..bf87fa32d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -39,9 +39,9 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&power_led_gpio>;
+		pinctrl-0 = <&power_led_pin>;
 
-		led-0 {
+		power_led: led-0 {
 			label = "blue:power";
 			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
@@ -510,7 +510,7 @@
 	};
 
 	leds {
-		power_led_gpio: power-led-gpio {
+		power_led_pin: power-led-pin {
 			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index d44c73521..cb0245d22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -90,9 +90,9 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pwrled_gpio &slpled_gpio>;
+		pinctrl-0 = <&pwr_led_pin &slp_led_pin>;
 
-		green-led {
+		green_led: led-0 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
@@ -100,7 +100,7 @@
 			label = "green:power";
 		};
 
-		red-led {
+		red_led: led-1 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STANDBY;
@@ -825,11 +825,11 @@
 	};
 
 	leds {
-		pwrled_gpio: pwrled_gpio {
+		pwr_led_pin: pwr-led-pin {
 			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		slpled_gpio: slpled_gpio {
+		slp_led_pin: slp-led-pin {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 437a75f31..c88295782 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -17,42 +17,43 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&user_led1>, <&user_led2>, <&user_led3>,
-			    <&user_led4>, <&wlan_led>, <&bt_led>;
+		pinctrl-0 = <&user_led1_pin>, <&user_led2_pin>,
+			    <&user_led3_pin>, <&user_led4_pin>,
+			    <&wlan_led_pin>, <&bt_led_pin>;
 
-		user_led1 {
+		user_led1: led-1 {
 			label = "green:user1";
 			gpios = <&gpio4 RK_PC2 0>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		user_led2 {
+		user_led2: led-2 {
 			label = "green:user2";
 			gpios = <&gpio4 RK_PC6 0>;
 			linux,default-trigger = "mmc0";
 		};
 
-		user_led3 {
+		user_led3: led-3 {
 			label = "green:user3";
 			gpios = <&gpio4 RK_PD0 0>;
 			linux,default-trigger = "mmc1";
 		};
 
-		user_led4 {
+		user_led4: led-4 {
 			label = "green:user4";
 			gpios = <&gpio4 RK_PD4 0>;
 			panic-indicator;
 			linux,default-trigger = "none";
 		};
 
-		wlan_active_led {
+		wlan_active_led: led-5 {
 			label = "yellow:wlan";
 			gpios = <&gpio4 RK_PD5 0>;
 			linux,default-trigger = "phy0tx";
 			default-state = "off";
 		};
 
-		bt_active_led {
+		bt_active_led: led-6 {
 			label = "blue:bt";
 			gpios = <&gpio4 RK_PD6 0>;
 			linux,default-trigger = "hci0-power";
@@ -68,32 +69,32 @@
 
 &pinctrl {
 	leds {
-		user_led1: user_led1 {
+		user_led1_pin: user-led1-pin {
 			rockchip,pins =
 				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led2: user_led2 {
+		user_led2_pin: user-led2-pin {
 			rockchip,pins =
 				<4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led3: user_led3 {
+		user_led3_pin: user-led3-pin {
 			rockchip,pins =
 				<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led4: user_led4 {
+		user_led4_pin: user-led4-pin {
 			rockchip,pins =
 				<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		wlan_led: wlan_led {
+		wlan_led_pin: wlan-led-pin {
 			rockchip,pins =
 				<4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		bt_led: bt_led {
+		bt_led_pin: bt-led-pin {
 			rockchip,pins =
 				<4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.11.0
