From: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2] arm64: dts: rockchip: Add Hugsun X99 IR receiver and power led
Date: Fri, 13 Mar 2020 19:05:13 -0400
Message-ID: <20200313230513.123049-1-npcomplete13@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

 - Add Hugsun X99 IR receiver and power led
 - Remove pwm0 node as it interferes with power LED gpio
   pwm0 is not used in factory firmware as well

Tested with LibreElec linux-next-20200305

Signed-off-by: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Changes in v2:
	- Changed led trigger from none to default-on
	- Changed led node name from power-led to led-0
---
 .../boot/dts/rockchip/rk3399-hugsun-x99.dts   | 37 +++++++++++++++++--
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index d69a613fb65a..df425e164a2e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -29,6 +29,26 @@
 		regulator-max-microvolt = <5000000>;
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_rx>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&power_led_gpio>;
+
+		led-0 {
+			label = "blue:power";
+			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "default-on";
+		};
+	};
+
 	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -483,6 +503,18 @@
 		};
 	};
 
+	ir {
+		ir_rx: ir-rx {
+			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		power_led_gpio: power-led-gpio {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
@@ -539,10 +572,6 @@
 	};
 };
 
-&pwm0 {
-	status = "okay";
-};
-
 &pwm2 {
 	status = "okay";
 	pinctrl-0 = <&pwm2_pin_pull_down>;
-- 
2.20.1
