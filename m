From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 2/2] rockchip: rk3328: Add support for FriendlyARM
 NanoPi R2S
Date: Sun, 2 Aug 2020 21:21:05 +0200
Message-ID: <36925164-7613-4b0c-b45e-23804587c999@gmail.com>
References: <20200730232054.286381-1-mail@david-bauer.net>
 <20200730232054.286381-2-mail@david-bauer.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200730232054.286381-2-mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: David Bauer <mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi David,

Add more maintainers and mail lists for all patches in this serie.

./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
--nogit <patch1 patch2>

git send-email --suppress-cc all --annotate --to <..> --cc <..> <patch1
patch2>

On 7/31/20 1:20 AM, David Bauer wrote:
> This adds support for the NanoPi R2S from FriendlyARM.
> 
> Rockchip RK3328 SoC
> 1GB DDR4 RAM
> Gigabit Ethernet (WAN)
> Gigabit Ethernet (USB3) (LAN)
> USB 2.0 Host Port
> MicroSD slot
> Reset button
> WAN - LAN - SYS LED
> 
> Signed-off-by: David Bauer <mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>
> ---
> 
> Changes in v2:
>  - Use aligned memory for ethernet
>  - Fix GPO for sdio regulator
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 334 ++++++++++++++++++
>  2 files changed, 335 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index b87b1f773083..20055c51e150 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-evb-act8846.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> new file mode 100644
> index 000000000000..9fd148423b9d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -0,0 +1,334 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 David Bauer <mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "rk3328.dtsi"
> +
> +/ {
> +	model = "FriendlyARM NanoPi R2S";
> +	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	gmac_clkin: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac_clkin";
> +		#clock-cells = <0>;
> +	};
> +

> +	vcc_sd: sdmmc-regulator {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdmmc0m1_gpio>;

sort

> +		regulator-name = "vcc_sd";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_io>;
> +	};
> +
> +	vcc_sdio: sdmmcio-regulator {
> +		compatible = "regulator-gpio";
> +		gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		states = <1800000 0x1
> +			  3300000 0x0>;

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdio_vcc_pin>;

sort

> +		regulator-always-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;

> +		regulator-name = "vcc_sdio";

move regulator-name above regulator-always-on

> +		regulator-settling-time-us = <5000>;
> +		regulator-type = "voltage";
> +		vin-supply = <&vcc_io>;
> +	};
> +
> +	vcc_sys: vcc-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};

sort node names
move regulators below

> +
> +	leds {
> +		compatible = "gpio-leds";

> +

remove empty line

> +		pinctrl-names = "default";

sort pinctrl-names below pinctrl-0

> +		pinctrl-0 = <&led_pins>;

use separate pinctrl nodes with consistent node names
	pinctrl-0 = <&lan_led_pin, &sys_led_pin, &wan_led_pin>;
> +
> +		sys {

sort node names/label

The prefered node name is '^led-[0-9a-f]$'.

sys_led: led-1 {

> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-r2s:red:sys";
> +		};
> +

> +		lan {

lan_led: led-0 {

> +			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-r2s:green:lan";
> +		};
> +

> +		wan {

wan_led: led-2 {

> +			gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-r2s:green:wan";
> +		};
> +	};
> +

> +	gpio_keys {

sort node name

> +		compatible = "gpio-keys-polled";
> +		poll-interval = <100>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&button_pins>;
> +
> +		reset {
> +			label = "Reset Button";
> +			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +			debounce-interval = <50>;
> +		};
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&gmac2io {
> +	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
> +	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
> +	clock_in_out = "input";
> +	phy-supply = <&vcc_io>;
> +	phy-handle = <&rtl8211e>;
> +	phy-mode = "rgmii";

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmiim1_pins>;

sort

> +	snps,aal;
> +	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 50000>;
> +	tx_delay = <0x24>;
> +	rx_delay = <0x18>;
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		rtl8211e: ethernet-phy@0 {
> +			reg = <0>;

interrupts, reset ?

> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +
> +	rk805: rk805@18 {
> +		compatible = "rockchip,rk805";
> +		reg = <0x18>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk805-clkout2";
> +		gpio-controller;
> +		#gpio-cells = <2>;

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;

sort

> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc5-supply = <&vcc_io>;
> +		vcc6-supply = <&vcc_sys>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-name = "vdd_logic";
> +				regulator-min-microvolt = <712500>;
> +				regulator-max-microvolt = <1450000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +				regulator-boot-on;

empty line between a node

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +
> +			vdd_arm: DCDC_REG2 {
> +				regulator-name = "vdd_arm";
> +				regulator-min-microvolt = <712500>;
> +				regulator-max-microvolt = <1450000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +				regulator-boot-on;

same

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;

same

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_io: DCDC_REG4 {
> +				regulator-name = "vcc_io";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;

same

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_18: LDO_REG1 {
> +				regulator-name = "vcc_18";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;

same

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc18_emmc: LDO_REG2 {
> +				regulator-name = "vcc18_emmc";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;

same

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd_10: LDO_REG3 {
> +				regulator-name = "vdd_10";
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +				regulator-boot-on;

same

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&io_domains {

> +	status = "okay";

status below

> +
> +	vccio1-supply = <&vcc_io>;
> +	vccio2-supply = <&vcc18_emmc>;
> +	vccio3-supply = <&vcc_sdio>;
> +	vccio4-supply = <&vcc_18>;
> +	vccio5-supply = <&vcc_io>;
> +	vccio6-supply = <&vcc_io>;

> +	pmuio-supply = <&vcc_io>;

sort properties, move this to top

> +};
> +
> +&pinctrl {

> +	leds {

sort node names

> +		led_pins: led-pins {

use a separate sub node for each led
use a consistent node name

	lan_led_pin: lan-led-pin {}
        sys_led_pin: sys-led-pin {}
        wan_led_pin: wan-led-pin {}
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>,
> +							<2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>,
> +							<2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;

(fix alignment)

> +		};
> +	};
> +
> +	button {
> +		button_pins: button-pins {
> +			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	sd {
> +		sdio_vcc_pin: sdio-vcc-pin {
> +			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +

> +&sdmmc {
> +	bus-width = <4>;

> +	cap-mmc-highspeed;

remove
board has only micro SD card

> +	cap-sd-highspeed;
> +	disable-wp;

> +	max-frequency = <150000000>;

already in dtsi

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_dectn &sdmmc0_bus4>;

sort

> +	vmmc-supply = <&vcc_sd>;
> +	vqmmc-supply = <&vcc_sdio>;
> +	status = "okay";
> +};

	sdmmc: mmc@ff500000 {
		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff500000 0x0 0x4000>;
		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		status = "disabled";
	};

> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <0>;
> +	rockchip,hw-tshut-polarity = <0>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +

> +&u2phy {

sort node names

> +	status = "okay";
> +
> +	u2phy_host: host-port {
> +		status = "okay";
> +	};

u2phy_otg ?

> +};
> +

&usb20_otg {               ?
	dr_mode = "host";  ?
	status = "okay";   ?
};

Do we need this as well?

> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> 
