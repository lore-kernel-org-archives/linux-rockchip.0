From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/2] ARM: dts: rockchip: rename and label gpio-led subnodes
Date: Tue, 28 Apr 2020 16:49:32 +0200
Message-ID: <20200428144933.10953-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'gpio-led' nodes were manually verified.
In order to automate this process leds-gpio.txt
has been converted to yaml. With this conversion a check
for pattern properties was added. A test with the command
below gives a screen full of warnings like:

arch/arm/boot/dts/rk3188-radxarock.dt.yaml: gpio-leds:
'blue', 'green', 'sleep'
do not match any of the regexes:
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

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/
leds-gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-kylin.dts          |  2 +-
 arch/arm/boot/dts/rk3066a-mk808.dts         |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts      |  6 +++---
 arch/arm/boot/dts/rk3229-xms6.dts           |  2 +-
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 12 ++++++------
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 12 ++++++------
 arch/arm/boot/dts/rk3288-miqi.dts           |  2 +-
 arch/arm/boot/dts/rk3288-phycore-som.dtsi   |  6 +++---
 arch/arm/boot/dts/rk3288-rock2-square.dts   |  4 ++--
 arch/arm/boot/dts/rk3288-tinker.dtsi        |  6 +++---
 10 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index 2ff9f152d..7154b827e 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -16,7 +16,7 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
 			label = "kylin:red:led";
 			pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 365eff621..eed9e60cf 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -22,7 +22,7 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		blue {
+		blue_led: led-0 {
 			label = "mk808:blue:power";
 			gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index c9a7f5409..b0fef82c0 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -33,19 +33,19 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		green {
+		green_led: led-0 {
 			label = "rock:green:user1";
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
-		blue {
+		blue_led: led-1 {
 			label = "rock:blue:user2";
 			gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
-		sleep {
+		sleep_led: led-2 {
 			label = "rock:red:power";
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 933ef69da..637245324 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -33,7 +33,7 @@
 	power-led {
 		compatible = "gpio-leds";
 
-		blue {
+		blue_led: led-0 {
 			gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 8c38bda21..9a4a9749c 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -45,20 +45,20 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			gpios = <&gpio8 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "firefly:blue:power";
 			pinctrl-names = "default";
-			pinctrl-0 = <&power_led>;
+			pinctrl-0 = <&power_led_pin>;
 			panic-indicator;
 		};
 
-		work {
+		work_led: led-1 {
 			gpios = <&gpio8 RK_PA1 GPIO_ACTIVE_LOW>;
 			label = "firefly:blue:user";
 			linux,default-trigger = "rc-feedback";
 			pinctrl-names = "default";
-			pinctrl-0 = <&work_led>;
+			pinctrl-0 = <&work_led_pin>;
 		};
 	};
 
@@ -334,11 +334,11 @@
 	};
 
 	leds {
-		power_led: power-led {
+		power_led_pin: power-led-pin {
 			rockchip,pins = <8 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		work_led: work-led {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <8 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 5e0a19004..e5c4fd4ea 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -62,20 +62,20 @@
 	leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio8 RK_PA1 GPIO_ACTIVE_LOW>;
 			label = "firefly:blue:user";
 			linux,default-trigger = "rc-feedback";
 			pinctrl-names = "default";
-			pinctrl-0 = <&work_led>;
+			pinctrl-0 = <&work_led_pin>;
 		};
 
-		power {
+		power_led: led-1 {
 			gpios = <&gpio8 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "firefly:green:power";
 			linux,default-trigger = "default-on";
 			pinctrl-names = "default";
-			pinctrl-0 = <&power_led>;
+			pinctrl-0 = <&power_led_pin>;
 		};
 	};
 
@@ -429,11 +429,11 @@
 	};
 
 	leds {
-		power_led: power-led {
+		power_led_pin: power-led-pin {
 			rockchip,pins = <8 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		work_led: work-led {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <8 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index c41d012c8..213c9eb84 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -30,7 +30,7 @@
 	leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio7 RK_PA2 GPIO_ACTIVE_HIGH>;
 			label = "miqi:green:user";
 			linux,default-trigger = "timer";
diff --git a/arch/arm/boot/dts/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
index 77a47b9b7..e43887c96 100644
--- a/arch/arm/boot/dts/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
@@ -36,9 +36,9 @@
 	leds: user-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&user_led>;
+		pinctrl-0 = <&user_led_pin>;
 
-		user {
+		user_led: led-0 {
 			label = "green_led";
 			gpios = <&gpio7 2 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
@@ -372,7 +372,7 @@
 	};
 
 	leds {
-		user_led: user-led {
+		user_led_pin: user-led-pin {
 			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_output_high>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index cdcdc921e..3cca4d0f9 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -41,13 +41,13 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		heartbeat {
+		heartbeat_led: led-0 {
 			gpios = <&gpio7 RK_PB7 GPIO_ACTIVE_LOW>;
 			label = "rock2:green:state1";
 			linux,default-trigger = "heartbeat";
 		};
 
-		mmc {
+		mmc_led: led-1 {
 			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_LOW>;
 			label = "rock2:blue:state2";
 			linux,default-trigger = "mmc0";
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index acfaa12ec..90e9be443 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -46,17 +46,17 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		act-led {
+		act_led: led-0 {
 			gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
 		};
 
-		heartbeat-led {
+		heartbeat_led: led-1 {
 			gpios = <&gpio1 RK_PD1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		pwr-led {
+		pwr_led: led-2 {
 			gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "default-on";
 		};
-- 
2.11.0
