From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Date: Fri, 13 Mar 2020 09:32:27 +0100
Message-ID: <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
References: <20200313000112.19419-1-npcomplete13@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200313000112.19419-1-npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Vivek,

The 'power-led' need some changes.

From leds-gpio.yaml:

patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
    type: object

Test with:
make -k ARCH=arm64 dtbs_check

arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']

On 3/13/20 1:01 AM, Vivek Unune wrote:
>  - Add Hugsun X99 IR receiver and power led
>  - Remove pwm0 node as it interferes with pwer LED gpio

pwer => power

>    Also, it's not used in factory firmware
>    

> Tested with Libreelec kernel v5.6

Test with linux-next.

git clone -- depth 1
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

> 
> Signed-off-by: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  .../boot/dts/rockchip/rk3399-hugsun-x99.dts   | 37 +++++++++++++++++--
>  1 file changed, 33 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> index d69a613fb65a..df425e164a2e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> @@ -29,6 +29,26 @@
>  		regulator-max-microvolt = <5000000>;
>  	};
>  
> +	ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ir_rx>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&power_led_gpio>;
> +
> +		power-led {
> +			label = "blue:power";
> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "none";
> +		};
> +	};
> +
>  	vcc_sys: vcc-sys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc_sys";
> @@ -483,6 +503,18 @@
>  		};
>  	};
>  
> +	ir {
> +		ir_rx: ir-rx {
> +			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	leds {
> +		power_led_gpio: power-led-gpio {
> +			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		pmic_int_l: pmic-int-l {
>  			rockchip,pins =
> @@ -539,10 +572,6 @@
>  	};
>  };
>  
> -&pwm0 {
> -	status = "okay";
> -};
> -
>  &pwm2 {
>  	status = "okay";
>  	pinctrl-0 = <&pwm2_pin_pull_down>;
> 
