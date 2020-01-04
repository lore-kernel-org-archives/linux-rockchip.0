From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc
Date: Sat, 04 Jan 2020 22:23:03 +0100
Message-ID: <11639547.aalzkRAYeW@phil>
References: <20200104153321.6584-1-m.reichl@fivetechno.de> <20200104153321.6584-6-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200104153321.6584-6-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Markus,

Am Samstag, 4. Januar 2020, 16:32:49 CET schrieb Markus Reichl:
> The rk3399-roc-pc uses a MP8859 DC/DC converter for 12V supply.
> This supplies 5V only in default state after booting.

Just for my understanding ... both the old static regulator before as
well as the new i2c node said to supply 12V, but above you say that
the default is 5V ... so I'm wondering who configured the 12V before.

Or was it the case that the old regulator node was just wrong and we
had 5V running on the dc_12v line?

Thanks
Heiko

> Now we can control the output voltage via I2C interface.
> Add a node for the driver to reach 12V.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 32 +++++++++++--------
>  1 file changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 8e01b04144b7..9f225e9c3d54 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -110,20 +110,6 @@ vcc_vbus_typec0: vcc-vbus-typec0 {
>  		regulator-max-microvolt = <5000000>;
>  	};
>  
> -	/*
> -	 * should be placed inside mp8859, but not until mp8859 has
> -	 * its own dt-binding.
> -	 */
> -	dc_12v: mp8859-dcdc1 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "dc_12v";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <12000000>;
> -		regulator-max-microvolt = <12000000>;
> -		vin-supply = <&vcc_vbus_typec0>;
> -	};
> -
>  	/* switched by pmic_sleep */
>  	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>  		compatible = "regulator-fixed";
> @@ -546,6 +532,24 @@ fusb0: usb-typec@22 {
>  		vbus-supply = <&vcc_vbus_typec0>;
>  		status = "okay";
>  	};
> +
> +	mp8859: regulator@66 {
> +		compatible = "mps,mp8859";
> +		reg = <0x66>;
> +		dc_12v: mp8859_dcdc {
> +			regulator-name = "dc_12v";
> +			regulator-min-microvolt = <12000000>;
> +			regulator-max-microvolt = <12000000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +			vin-supply = <&vcc_vbus_typec0>;
> +
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <12000000>;
> +			};
> +		};
> +	};
>  };
>  
>  &i2s0 {
> 
