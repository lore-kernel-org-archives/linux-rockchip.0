From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Mark rock-pi-4 as rock-pi-4a dts
Date: Wed, 22 Jul 2020 20:40:00 +0200
Message-ID: <2191096.Ll8P9v0SIb@phil>
References: <20200720105531.367671-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200720105531.367671-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jagan,

Am Montag, 20. Juli 2020, 12:55:29 CEST schrieb Jagan Teki:
> Rock PI 4 has 3 variants of hardware platforms called
> RockPI 4A, 4B, and 4C.
> 
> - Rock PI 4A has no Wif/BT.
> - Rock PI 4B has AP6256 Wifi/BT, PoE.
> - Rock PI 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enable
>   GPIO pin change compared to 4B, 4C
> 
> So move common nodes, properties into dtsi file and include
> on respective variant dts files.
> 
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile               |  2 +-
>  .../{rk3399-rock-pi-4.dts => rk3399-rock-pi-4.dtsi} |  3 ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts  | 13 +++++++++++++
>  3 files changed, 14 insertions(+), 4 deletions(-)
>  rename arch/arm64/boot/dts/rockchip/{rk3399-rock-pi-4.dts => rk3399-rock-pi-4.dtsi} (99%)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index b87b1f773083..42f9e1861461 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -33,7 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> similarity index 99%
> rename from arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> rename to arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 3923ec01ef66..c39334b139cc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -11,9 +11,6 @@
>  #include "rk3399-opp.dtsi"
>  
>  / {
> -	model = "Radxa ROCK Pi 4";
> -	compatible = "radxa,rockpi4", "rockchip,rk3399";
> -
>  	chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> new file mode 100644
> index 000000000000..d96dd3ebd3e0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
> + * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
> + */
> +
> +/dts-v1/;
> +#include "rk3399-rock-pi-4.dtsi"
> +
> +/ {
> +	model = "Radxa ROCK Pi 4A";
> +	compatible = "radxa,rockpi4", "rockchip,rk3399";

please add a new compatible for the board variants, so ideally we'd get
something like:

	compatible = "radxa,rockpi4a", "radxa,rockpi4", "rockchip,rk3399";

Same for the other 2 board variants + adding them to the binding doc.

Thanks
Heiko
