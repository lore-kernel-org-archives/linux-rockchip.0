From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2
Date: Tue, 19 May 2020 13:14:44 +0200
Message-ID: <20200519111444.2208-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The 'pinctrl-names' property should contain a list of names
to the assigned states. The value 'led_pins' in the gpio-leds
node on rk3326-odroid-go2 is not a state that is normally used,
so change it the common name 'default'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 46826b6e2..b3a8f9365 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -127,7 +127,7 @@
 
 	leds: gpio-leds {
 		compatible = "gpio-leds";
-		pinctrl-names = "led_pins";
+		pinctrl-names = "default";
 		pinctrl-0 = <&blue_led_pin>;
 
 		blue_led: led-0 {
-- 
2.11.0
