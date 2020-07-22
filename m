From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
Date: Wed, 22 Jul 2020 20:34:18 +0200
Message-ID: <8444056.acRTkLjuym@phil>
References: <20200720105846.367776-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200720105846.367776-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jaganm

Am Montag, 20. Juli 2020, 12:58:46 CEST schrieb Jagan Teki:
> rk3288 and rk3288w have a usb host0 ohci controller.
> 
> Although rk3288 ohci doesn't actually work on hardware, but
> rk3288w ohci can work well.
> 
> So add usb host0 ohci node in rk3288 dtsi and the quirk in
> ohci platform driver will disable ohci on rk3288.

If I remember the discussion correctly, we expect the board dts
or the bootloader to enable the ohci, right?
So that block go away ... just making sure, I don't remember
untrue stuff ;-)


Heiko


> Cc: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
> Changes for v3:
> - none
> 
>  arch/arm/boot/dts/rk3288.dtsi | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 0cd88774db95..f0774d9afb67 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -614,7 +614,16 @@ usb_host0_ehci: usb@ff500000 {
>  		status = "disabled";
>  	};
>  
> -	/* NOTE: ohci@ff520000 doesn't actually work on hardware */
> +	/* NOTE: doesn't work on RK3288, but fixed on RK3288W */
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
>  	usb_host1: usb@ff540000 {
>  		compatible = "rockchip,rk3288-usb", "rockchip,rk3066-usb",
> 
