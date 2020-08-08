From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/7] arm: dts: rockchip: Add Engicam PX30.Core SOM
Date: Sat, 8 Aug 2020 17:54:19 +0800
Message-ID: <f7c96ecf-d870-e775-1704-a5cac8f02197@rock-chips.com>
References: <20200724105119.13123-1-jagan@amarulasolutions.com>
 <20200724105119.13123-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200724105119.13123-3-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


ÔÚ 2020/7/24 ÏÂÎç6:51, Jagan Teki Ð´µÀ:
> PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
>
> General features:
> - Rockchip PX30
> - Up to 2GB DDR4
> - eMMC 4 GB expandible
> - rest of PX30 features
>
> PX30.Core needs to mount on top of Engicam baseboards for creating
> complete platform boards.
>
> Possible baseboards are,
> - EDIMM2.2
> - C.TOUCH 2.0 10.1" Open Frame
>
> Add support for it.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Note:
> - Linux ML link:
>    https://lkml.org/lkml/2020/7/23/519
>
>   arch/arm/dts/px30-px30-core.dtsi | 250 +++++++++++++++++++++++++++++++
>   1 file changed, 250 insertions(+)
>   create mode 100644 arch/arm/dts/px30-px30-core.dtsi
>
> diff --git a/arch/arm/dts/px30-px30-core.dtsi b/arch/arm/dts/px30-px30-core.dtsi
> new file mode 100644
> index 0000000000..26f81dbeab
> --- /dev/null
> +++ b/arch/arm/dts/px30-px30-core.dtsi
> @@ -0,0 +1,250 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2020 Engicam srl
> + * Copyright (c) 2020 Amarula Solutions(India)
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +
> +/ {
> +	compatible = "engicam,px30-px30-core", "rockchip,px30";
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
> +&emmc {
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&gmac {
> +	clock_in_out = "output";
> +	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 50000 50000>;
> +	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +
> +		vcc1-supply = <&vcc5v0_sys>;
> +		vcc2-supply = <&vcc5v0_sys>;
> +		vcc3-supply = <&vcc5v0_sys>;
> +		vcc4-supply = <&vcc5v0_sys>;
> +		vcc5-supply = <&vcc3v3_sys>;
> +		vcc6-supply = <&vcc3v3_sys>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc5v0_sys>;
> +
> +		regulators {
> +			vdd_log: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-min-microvolt = <950000>;
> +				regulator-name = "vdd_log";
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vdd_arm: DCDC_REG2 {
> +				regulator-max-microvolt = <1350000>;
> +				regulator-min-microvolt = <950000>;
> +				regulator-name = "vdd_arm";
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_ddr";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-name = "vcc_3v3";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc3v3_sys: DCDC_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc3v3_sys";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_1v0: LDO_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-name = "vcc_1v0";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_1v8";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd_1v0: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-name = "vdd_1v0";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +
> +			vcc3v0_pmu: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc3v0_pmu";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vccio_sd";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc5v0_host: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc5v0_host";
> +			};
> +		};
> +	};
> +};
> +
> +&io_domains {
> +	vccio1-supply = <&vcc_3v3>;
> +	vccio2-supply = <&vcc_3v3>;
> +	vccio3-supply = <&vcc_3v3>;
> +	vccio4-supply = <&vcc_3v3>;
> +	vccio5-supply = <&vcc_3v3>;
> +	vccio6-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	pmic {
> +		pmic_int: pmic_int {
> +			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmuio1-supply = <&vcc_3v3>;
> +	pmuio2-supply = <&vcc_3v3>;
> +	status = "okay";
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	card-detect-delay = <800>;
> +	vqmmc-supply = <&vcc_3v3>;
> +};
> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>;
> +	rockchip,hw-tshut-polarity = <1>;
> +	status = "okay";
> +};
