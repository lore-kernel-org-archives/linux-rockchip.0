From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 1/4] arm64: dts: rockchip: Trivial cleanups for RockPI N10
Date: Tue, 14 Jul 2020 21:04:37 +0200
Message-ID: <21801049.BKhHgEE1TG@phil>
References: <20200709100756.42384-1-jagan@amarulasolutions.com> <20200709100756.42384-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200709100756.42384-2-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 9. Juli 2020, 12:07:53 CEST schrieb Jagan Teki:
> Radxa dalang carrier boards are used to mount vmarc SoM's
> of rk3399pro and rk3288 to make complete SBC.
> 
> So, this patch adds trivial changes to properties.
> - move common properties into radxa dalang carrier dtsi.
> - maintain ascending order for nodes, properties.
> - change the order of dtsi include so-that common properties
>   will reflect in main dts.
> - drop unnecessary header includes.

can you please split this patch into bits at these marks?
(1) moving common
(2) sorting
...

It's hard to follow and especially verify.



> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> index 0a516334f15f..9ed5b27d715c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> @@ -7,35 +7,12 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> -#include <dt-bindings/pwm/pwm.h>
>  
>  / {
>  	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
>  
> -	clkin_gmac: external-gmac-clock {
> -		compatible = "fixed-clock";
> -		clock-frequency = <125000000>;
> -		clock-output-names = "clkin_gmac";
> -		#clock-cells = <0>;
> -	};
> -
> -	vcc12v_dcin: vcc12v-dcin-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc12v_dcin";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <12000000>;
> -		regulator-max-microvolt = <12000000>;
> -	};
> -
> -	vcc5v0_sys: vcc5v0-sys-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc5v0_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc12v_dcin>;
> +	chosen {
> +		stdout-path = "serial2:1500000n8";

isn't chosen more a property of the individual board combination?
So to me this should live in the  rk3399pro-rock-pi-n10.dts .
As other board even using the rk3399pro variant may want to use
a different uart for serial output.

Heiko
