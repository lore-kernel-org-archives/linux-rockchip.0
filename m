From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: add adc joystick to Odroid Go Advance
Date: Sat,  4 Jul 2020 00:14:13 +0200
Message-ID: <20200703221413.269800-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add the now usable adc-joystick node that describes the analog
joystick connected to two saradc channels from the rk3326 soc.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
This still needs the iio-joystick driver to get merged first.
See http://lore.kernel.org/r/20200517194904.34758-1-contact@artur-rojek.eu

 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index b3a8f936578f..91b6d1a1839d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -24,6 +24,30 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&saradc 1>,
+			      <&saradc 2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-range = <172 772>;
+			abs-fuzz = <10>;
+			abs-flat = <10>;
+			linux,code = <ABS_X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-range = <278 815>;
+			abs-fuzz = <10>;
+			abs-flat = <10>;
+			linux,code = <ABS_Y>;
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
-- 
2.26.2
