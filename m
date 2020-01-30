From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/4] ARM: dts: rockchip: Sync rk3288-vyasa dts from linux
Date: Thu, 30 Jan 2020 11:55:45 +0800
Message-ID: <8fed9f41-472e-5ed7-fc1f-66d3b9469c6f@rock-chips.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
 <20200123141222.486-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200123141222.486-2-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2020/1/23 下午10:12, Jagan Teki wrote:
> Sync rk3288-vyasa dts file from Linux.
>
> This sync has changes required to work HDMI output on
> Vyasa RK3288 board.
>
> This sync excludes the io_domains node since it is not
> available in rk3288.dtsi.
>
> Changes like vcc50_hdmi, vdd10_lcd and ddc-i2c-bus are
> not merged to Linux yet but wil resync later if any
> further updates on this.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever

> ---
>   arch/arm/dts/rk3288-vyasa.dts | 79 ++++++++++++++---------------------
>   1 file changed, 32 insertions(+), 47 deletions(-)
>
> diff --git a/arch/arm/dts/rk3288-vyasa.dts b/arch/arm/dts/rk3288-vyasa.dts
> index 850aa25818..4193f7208c 100644
> --- a/arch/arm/dts/rk3288-vyasa.dts
> +++ b/arch/arm/dts/rk3288-vyasa.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>   /*
>    * Copyright (C) 2017 Jagan Teki <jagan@amarulasolutions.com>
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>    */
>   
>   /dts-v1/;
> @@ -115,6 +78,17 @@
>   		vin-supply = <&vcc_io>;
>   	};
>   
> +	vcc50_hdmi: vcc50-hdmi {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc50_hdmi";
> +		enable-active-high;
> +		gpio = <&gpio7 RK_PB4 GPIO_ACTIVE_HIGH>; /* HDMI_EN */
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc50_hdmi_en>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vsus_5v>;
> +	};
>   	vusb1_5v: vusb1-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vusb1_5v";
> @@ -158,7 +132,6 @@
>   &emmc {
>   	bus-width = <8>;
>   	cap-mmc-highspeed;
> -	disable-wp;
>   	non-removable;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
> @@ -188,7 +161,7 @@
>   };
>   
>   &hdmi {
> -	ddc-i2c-bus = <&i2c2>;
> +	ddc-i2c-bus = <&i2c5>;
>   	status = "okay";
>   };
>   
> @@ -324,15 +297,15 @@
>   				};
>   			};
>   
> -			vcc10_lcd: LDO_REG6 {
> -				regulator-name = "vcc10_lcd";
> +			vdd10_lcd: LDO_REG6 {
> +				regulator-name = "vdd10_lcd";
>   				regulator-min-microvolt = <1000000>;
>   				regulator-max-microvolt = <1000000>;
>   				regulator-always-on;
>   				regulator-boot-on;
>   				regulator-state-mem {
>   					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> +					regulator-suspend-microvolt = <1000000>;
>   				};
>   			};
>   
> @@ -385,7 +358,7 @@
>   	};
>   };
>   
> -&i2c2 {
> +&i2c5 {
>   	status = "okay";
>   };
>   
> @@ -402,6 +375,12 @@
>   	status = "okay";
>   };
>   
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-polarity = <1>; /* tshut polarity 0:LOW 1:HIGH */
> +	status = "okay";
> +};
> +
>   &uart2 {
>   	status = "okay";
>   };
> @@ -463,15 +442,21 @@
>   		};
>   	};
>   
> +	hdmi {
> +		vcc50_hdmi_en: vcc50-hdmi-en {
> +			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>   	pmic {
>   		pmic_int: pmic-int {
> -			rockchip,pins = <RK_GPIO0 4 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	usb_host {
>   		phy_pwr_en: phy-pwr-en {
> -			rockchip,pins = <RK_GPIO2 RK_PB1 RK_FUNC_GPIO &pcfg_output_high>;
> +			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_output_high>;
>   		};
>   
>   		usb2_pwr_en: usb2-pwr-en {
> @@ -481,7 +466,7 @@
>   
>   	usb_otg {
>   		otg_vbus_drv: otg-vbus-drv {
> -			rockchip,pins = <RK_GPIO0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
>   
>   		};
>   	};
