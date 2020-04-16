From: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: add micro SD card regulator to rockpro64
Date: Thu, 16 Apr 2020 16:55:34 +0200
Message-ID: <20200416145534.1263575-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This patch adds the RockPro64's micro SD card regulator to the
RockPro64 dtsi. The regulator is present on all revisions of the
device.
Previously the regular was missing, resulting in unreliable boot
behaviour when booting from SD card.

Signed-off-by: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 9bca25801260..6788ab28f89a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -96,6 +96,24 @@ vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		vin-supply = <&vcc_1v8>;
 	};
 
+	/* micro SD card power */
+	vcc3v0_sd: vcc3v0-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_pwr_h>;
+		regulator-name = "vcc3v0_sd";
+		regulator-always-on;
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		vin-supply = <&vcc3v3_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -603,6 +621,13 @@ vsel2_gpio: vsel2-gpio {
 		};
 	};
 
+	sdcard {
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+	};
+
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -661,6 +686,8 @@ &sdmmc {
 	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	vmmc-supply = <&vcc3v0_sd>;
+	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
 };
 
-- 
2.26.0
