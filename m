From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Describe RK3328 GPIO_MUTE
 users
Date: Fri, 28 Feb 2020 12:48:50 +0000
Message-ID: <59fe8a7d-22ab-6098-5266-4fdf4bf41adb@arm.com>
References: <cover.1581376744.git.robin.murphy@arm.com>
 <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 18/02/2020 9:32 pm, Robin Murphy wrote:
> Add explicit properties to describe existing boards' GPIO_MUTE usage
> for the analog codec.

Are you happy to pick this up now that the driver patches are queued?

Thanks,
Robin.

> Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> ---
> 
> v2: no change
> 
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index 16f1656d5203..797e90a3ac92 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -60,6 +60,7 @@
>   };
>   
>   &codec {
> +	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 62936b432f9a..bf3e546f5266 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -104,6 +104,7 @@
>   };
>   
>   &codec {
> +	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   
>   	port@0 {
> 
