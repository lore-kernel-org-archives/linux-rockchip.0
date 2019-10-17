From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic dts for RK3308 EVB
Date: Fri, 18 Oct 2019 01:39:58 +0200
Message-ID: <120878573.PH0Dm224ES@phil>
References: <20191017030242.32219-1-andy.yan@rock-chips.com> <20191017030520.32420-1-andy.yan@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191017030520.32420-1-andy.yan@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>
Cc: kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Andy,

Am Donnerstag, 17. Oktober 2019, 05:05:20 CEST schrieb Andy Yan:
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c82c5e57d44c..b680c4b8b2c9 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -447,6 +447,11 @@ properties:
>            - const: rockchip,r88
>            - const: rockchip,rk3368
>  
> +      - description: Rockchip RK3308 Evaluation board
> +        items:
> +          - const: rockchip,rk3308-evb
> +          - const: rockchip,rk3308
> +
>        - description: Rockchip RK3228 Evaluation board
>          items:
>            - const: rockchip,rk3228-evb

Rob likes the binding addition to be a separate patch.

> +	vdd_log: vdd_core: vdd-core {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm0 0 5000 1>;
> +		regulator-name = "vdd_core";
> +		regulator-min-microvolt = <827000>;
> +		regulator-max-microvolt = <1340000>;
> +		regulator-init-microvolt = <1015000>;
> +		regulator-early-min-microvolt = <1015000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		status = "okay";

It's a board-regulator, so always "okay", no need for a status.

In general for regulators, please create an actual regulator tree, with
correctly modelled supply-chains following the naming according
to the board schematics. See for example rk3399-gru for a nice example.

> +	};
> +
> +	vdd_1v0: vdd-1v0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_1v0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1000000>;
> +		regulator-max-microvolt = <1000000>;

As noted above, missing vin-supply

> +	};
> +

> +	vccio_flash: vccio-flash {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vccio_flash";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	vcc_phy: vcc-phy-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_phy";
> +		regulator-always-on;
> +		regulator-boot-on;

This is the classic example of not following the schematics.
I.e. no Rockchip board I know has a regulator named "vcc_phy"
that is completely unconnected, yet all boards in the vendor tree
have this regulator ;-) ... so as I said, please follow the schematics.

> +	};
> +
> +	vbus_host: vbus-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_drv>;
> +		regulator-name = "vbus_host";
> +	};
> +};
> +


Thanks
Heiko
