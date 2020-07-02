From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
Date: Thu, 2 Jul 2020 15:45:34 +0100
Message-ID: <5a32f7f5-8c70-d261-569b-c807210d17cc@arm.com>
References: <20200702090259.36595-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200702090259.36595-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, mylene.josserand-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-02 10:02, Jagan Teki wrote:
> rk3288 and rk3288w have a usb host0 ohci controller.
> 
> Although rk3288 ohci doesn't actually work on hardware, but
> rk3288w ohci can work well.
> 
> So add usb host0 ohci node in rk3288 dtsi and the quirk in
> ohci platform driver will disable ohci on rk3288.
> 
> The bootloader must update the compatible in order to bypass
> host0_ohci in legacy rk3288 platform.
> 
> Cc: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
> Note:
> - U-Boot patch for compatible update
> https://patchwork.ozlabs.org/project/uboot/patch/20200702084820.35942-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org/
> 
>   arch/arm/boot/dts/rk3288.dtsi | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 0cd88774db95..fd0066d07dfc 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -614,7 +614,19 @@ usb_host0_ehci: usb@ff500000 {
>   		status = "disabled";
>   	};
>   
> -	/* NOTE: ohci@ff520000 doesn't actually work on hardware */
> +	/**
> +	 * NOTE: ohci@ff520000 doesn't actually work on hardware
> +	 * hardware, but can work on rk3288w hardware.
> +	 */

Hardware hardware, hardware - seems like things got a bit mangled there ;)

How about simply something like this?:

	/* NOTE: doesn't work on RK3288, but fixed on RK3288W */

Robin.

> +	usb_host0_ohci: usb@ff520000 {
> +		compatible = "generic-ohci";
> +		reg = <0x0 0xff520000 0x0 0x100>;
> +		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_USBHOST0>;
> +		phys = <&usbphy1>;
> +		phy-names = "usb";
> +		status = "disabled";
> +	};
>   
>   	usb_host1: usb@ff540000 {
>   		compatible = "rockchip,rk3288-usb", "rockchip,rk3066-usb",
> 
