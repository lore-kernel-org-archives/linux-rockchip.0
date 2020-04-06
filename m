From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
Date: Mon, 6 Apr 2020 11:57:02 +0200
Message-ID: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com>
References: <20200405110022.3849-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200405110022.3849-1-justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Justin,

Have a look at the documents:

Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
Documentation/devicetree/bindings/mmc/mmc-controller.yaml

Fix &emmc as well.

> From: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
> To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>,
> 	Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>,
> 	Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
> Cc: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>,
> 	linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org,
> 	linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org,
> 	linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Subject: [PATCH] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
> Date: Sun,  5 Apr 2020 11:00:21 +0000
> Message-ID: <20200405110022.3849-1-justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org> (raw)
> 
> The Mecer Xtreme Mini S6 features a wireless module, based on a
> Realtek 8723BS, which provides WLAN and Bluetooth connectivity via
> SDIO and UART interfaces respectively.
> 
> Define a simple MMC power sequence that declares the GPIO pins
> connected to the module's WLAN Disable and Bluetooth Disable pins
> as active low reset signals, because both signals must be deasserted
> for WLAN radio operation.
> 
> Configure the host's SDIO interface for High Speed mode with 1.8v
> I/O signalling and IRQ detection over a 4-bit wide bus.
> 
> Signed-off-by: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
> ---
>  arch/arm/boot/dts/rk3229-xms6.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
> index 679fc2b00..cdfcef41b 100644
> --- a/arch/arm/boot/dts/rk3229-xms6.dts
> +++ b/arch/arm/boot/dts/rk3229-xms6.dts
> @@ -39,6 +39,12 @@
>  		};
>  	};
>  
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpio2 26 GPIO_ACTIVE_LOW>,
> +		              <&gpio2 29 GPIO_ACTIVE_LOW>;
> +	};
> +
>  	vcc_host: vcc-host-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> @@ -202,6 +208,18 @@
>  	status = "okay";
>  };
>  
> +&sdio {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	disable-wp;

Not used in combination with sdio and emmc.

> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;

> +	num-slots = <1>;

Deprecated.

> +	vqmmc-supply = <&vccio_1v8>;
> +	status = "okay";
> +};
> +
>  &sdmmc {
>  	cap-mmc-highspeed;
>  	disable-wp;
> -- 
> 2.11.0
