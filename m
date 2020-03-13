From: Joshua Watt <jpewhacker-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
 during reboot
Date: Fri, 13 Mar 2020 13:38:53 -0500
Message-ID: <ed50e114-5efd-edcc-a287-3cacc4a28161@gmail.com>
References: <20200219204224.34154-1-JPEWhacker@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200219204224.34154-1-JPEWhacker-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


On 2/19/20 2:42 PM, Joshua Watt wrote:
> IO voltage regulator for the SD card must be kept on all the time,
> otherwise when the board reboots the SD card can't be read by the
> bootloader.

Ping?

>
> Signed-off-by: Joshua Watt <JPEWhacker-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> index 312582c1bd37..acfaa12ec239 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -276,6 +276,7 @@
>   			};
>   
>   			vccio_sd: LDO_REG5 {
> +				regulator-always-on;
>   				regulator-boot-on;
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <3300000>;
