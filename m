From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH v1 2/2] arm64: dts: rockchip: add rk3318 A95X Z2 board
Date: Sat, 20 Jun 2020 15:46:59 +0200
Message-ID: <20200620134659.4592-3-jbx6244@gmail.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200620134659.4592-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The rk3318 A95X Z2 boards are sold as TV box.
No further documentation is given, but from the dts files
extracted it seems that the rk3318 processor is simulair
to the rk3328. This dts file contains only the basic nodes
that have support in the mainline kernel.

Features:

CPU: RK3318 Quad-Core Cortex-A53
GPU: Mali-450
RAM: 2/4GB DDR3
ROM: EMMC 16/32/64GB
HDMI: HDMI 2.0a for 4k@60Hz
Ethernet: 10/100M standard RJ-45
WiFi: 2.4G+5G WIFI, 802.11 b/g/n
Bluetooth: 4.0
1 x USB 3.0
1 x USB 2.0
1 x Micro SD card slot
1 x SPDIF
1 x AV
1 x DC IN

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/Makefile           |   1 +
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 417 ++++++++++++++++++++++++
 2 files changed, 418 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index b87b1f773..aa508bc4a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
new file mode 100644
index 000000000..939e08e67
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -0,0 +1,417 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include "rk3328.dtsi"
+
+/ {
+	model = "A95X Z2";
+	compatible = "a95x,z2", "rockchip,rk3318";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		vol-up-key {
+			label = "volume up";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <17000>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		cyx_led: led-0 {
+			gpios = <&gpio2 RK_PC7 GPIO_ACTIVE_HIGH>;
+			label = "CYX_LED";
+			pinctrl-names = "default";
+			pinctrl-0 = <&cyx_led_pin>;
+		};
+	};
+
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&ir_int>;
+		pinctrl-names = "default";
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+
+	spdif-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "spdif";
+
+		simple-audio-card,cpu {
+			sound-dai = <&spdif>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&spdif_out>;
+		};
+	};
+
+	spdif_out: spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+	};
+
+	/* Power tree */
+	regulators {
+		compatible = "simple-mfd";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		vccio_1v8_reg: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "vccio_1v8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-always-on;
+		};
+
+		vccio_3v3_reg: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "vccio_3v3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+	};
+
+	/* In use with kernel/U-boot with rk3328 usb3 support */
+	vcc_host_vbus: host-vbus-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_vbus_drv>;
+		regulator-name = "vcc_host_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	vcc_otg_vbus: otg-vbus-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		regulator-name = "vcc_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_sd: sdmmc-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0m1_gpio>;
+		regulator-name = "vcc_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vccio_3v3_reg>;
+	};
+
+	vdd_arm: vdd-arm {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_arm";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	/* Enable if the kernel has support for a gpu_opp_table */
+#if 0
+	vdd_log: vdd-log {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 1>;
+		regulator-name = "vdd_log";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+#endif
+};
+
+&analog_sound {
+	status = "okay";
+};
+
+&codec {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu0_opp_table {
+	opp-1200000000 {
+		status = "disabled";
+	};
+
+	opp-1296000000 {
+		status = "disabled";
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	status = "okay";
+};
+
+&gmac2phy {
+	assigned-clock-rate = <50000000>;
+	assigned-clocks = <&cru SCLK_MAC2PHY>;
+	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
+	clock_in_out = "output";
+	phy-supply = <&vcc_phy>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_log>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-scl-high-time-ns = <9625>;
+	ddc-i2c-scl-low-time-ns = <10000>;
+	status = "okay";
+};
+
+&hdmiphy {
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2s0 {
+	status = "okay";
+};
+
+&i2s1 {
+	status = "okay";
+};
+
+&io_domains {
+	pmuio-supply = <&vccio_3v3_reg>;
+	vccio1-supply = <&vccio_3v3_reg>;
+	vccio2-supply = <&vccio_1v8_reg>;
+	vccio3-supply = <&vccio_3v3_reg>;
+	vccio4-supply = <&vccio_1v8_reg>;
+	vccio5-supply = <&vccio_3v3_reg>;
+	vccio6-supply = <&vccio_3v3_reg>;
+	status = "okay";
+};
+
+&pinctrl {
+	ir {
+		ir_int: ir-int {
+			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		cyx_led_pin: cyx-led-pin {
+			rockchip,pins = <2 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		pwm0_pin_pull_up: pwm0-pin-pull-up {
+			rockchip,pins = <2 RK_PA4 1 &pcfg_pull_up>;
+		};
+	};
+
+	pwm1 {
+		pwm1_pin_pull_up: pwm1-pin-pull-up {
+			rockchip,pins = <2 RK_PA5 1 &pcfg_pull_up>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1 {
+		clk_32k_out: clk-32k-out {
+			rockchip,pins = <1 RK_PD4 1 &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		host_vbus_drv: host-vbus-drv {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm0_pin_pull_up>;
+	status = "okay";
+};
+
+	/* Enable if the kernel has support for a gpu_opp_table */
+#if 0
+&pwm1 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm1_pin_pull_up>;
+	status = "okay";
+};
+#endif
+
+&saradc {
+	vref-supply = <&vccio_1v8_reg>;
+	status = "okay";
+};
+
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	max-frequency = <125000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk &clk_32k_out>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_dectn &sdmmc0_bus4>;
+	vmmc-supply = <&vcc_sd>;
+	status = "okay";
+};
+
+&spdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spdifm0_tx>;
+	status = "okay";
+};
+
+&soc_crit {
+	temperature = <115000>; /* millicelsius */
+};
+
+&target {
+	temperature = <105000>; /* millicelsius */
+};
+
+&threshold {
+	temperature = <90000>; /* millicelsius */
+};
+
+&tsadc {
+	rockchip,hw-tshut-temp = <120000>;
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+
+	u2phy_host: host-port {
+		status = "okay";
+	};
+
+	u2phy_otg: otg-port {
+		phy-supply = <&vcc_otg_vbus>;
+		status = "okay";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb20_otg {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
-- 
2.11.0
