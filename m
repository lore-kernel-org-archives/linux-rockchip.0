From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: Sync v5.7-rc1 Radxa Dalang Carrier
Date: Sat, 27 Jun 2020 22:32:16 +0800
Message-ID: <d5173093-f65e-fcc7-5e59-4e95181b2418@rock-chips.com>
References: <20200610103658.96678-1-jagan@amarulasolutions.com>
 <20200610103658.96678-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200610103658.96678-4-jagan@amarulasolutions.com>
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
Cc: Tom Cubie <tom@radxa.com>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/10 下午6:36, Jagan Teki wrote:
> Carrier board often referred as baseboard. For making
> complete SBC or any other industrial boards, these
> carrier boards will be used with associated SOMs.
>
> Radxa has Dalang carrier board which supports on-board
> peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
> eDP, Ethernet, WiFi, PCIe, USB-C, 40-Pin GPIO header and etc.
>
> Right now Dalang carrier board is used with two SBC-variants:
> Rock Pi N10 => VMARC RK3399Por SOM + Dalang carrier board
> Rock Pi N8  => VMARC RK3288 SOM + Dalang carrier board(+codec)
>
> So add this carrier board dtsi as a separate file in
> ARM directory, so-that the same can reuse it in both
> rk3288, rk3399pro variants of Rockchip SOMs.
>
> Sync this dtsi from linux-next v5.7-rc1.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   .../dts/rockchip-radxa-dalang-carrier.dtsi    | 81 +++++++++++++++++++
>   1 file changed, 81 insertions(+)
>   create mode 100644 arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
>
> diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
> new file mode 100644
> index 0000000000..df3712aedf
> --- /dev/null
> +++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2019 Radxa Limited
> + * Copyright (c) 2019 Amarula Solutions(India)
> + */
> +
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +};
> +
> +&gmac {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +	i2c-scl-rising-time-ns = <140>;
> +	i2c-scl-falling-time-ns = <30>;
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	hym8563: hym8563@51 {
> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "hym8563";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hym8563_int>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	vqmmc-supply = <&vccio_sd>;
> +	max-frequency = <150000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	hym8563 {
> +		hym8563_int: hym8563-int {
> +			rockchip,pins =
> +				<4 RK_PD6 0 &pcfg_pull_up>;
> +		};
> +	};
> +};
