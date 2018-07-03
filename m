From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add 96boards RK3399 Ficus
 board
Date: Tue, 03 Jul 2018 20:33:37 +0200
Message-ID: <3427713.imSe8pnkmd@phil>
References: <20180628220830.9089-1-ezequiel@collabora.com>
 <20180628220830.9089-3-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180628220830.9089-3-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 29. Juni 2018, 00:08:30 CEST schrieb Ezequiel Garcia:
> The RK3399 Ficus board is an Enterprise Edition board
> manufactured by Vamrs Ltd., based on the Rockchip RK3399 SoC.
> 
> The board exposes a bunch of nice peripherals, including
> SATA, HDMI, MIPI CSI, Ethernet, WiFi, and PCIe.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
>  .../devicetree/bindings/arm/rockchip.txt      |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 517 ++++++++++++++++++
>  3 files changed, 523 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.txt b/Documentation/devicetree/bindings/arm/rockchip.txt
> index 1c1d62d03c4f..d46c5d43e27f 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.txt
> +++ b/Documentation/devicetree/bindings/arm/rockchip.txt
> @@ -1,5 +1,10 @@
>  Rockchip platforms device tree bindings
>  ---------------------------------------
> +
> +- 96boards RK3399 Ficus (ROCK960 Enterprise Edition)
> +    Required root node properties:
> +      - compatible = "vamrs,ficus", "rockchip,rk3399";
> +
>  - Amarula Vyasa RK3288 board
>      Required root node properties:
>        - compatible = "amarula,vyasa-rk3288", "rockchip,rk3288";

binding changes should Cc devicetree maintainers + lists

> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 48a83f882947..2811fb701f12 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-orion-r68-meta.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-px5-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-r88.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-evb.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-ficus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-firefly.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-kevin.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> new file mode 100644
> index 000000000000..cc7976126d76
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> @@ -0,0 +1,517 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2018 Collabora Ltd.
> + * Copyright (c) 2018 Fuzhou Rockchip Electronics Co., Ltd.
> + */
> +
> +/*
> + * Schematics available at https://dl.vamrs.com/products/ficus/docs/hw
> + */

nice touch with the schematics link. Although small nit:
that could be part of the comment-block above it.

[...]

> +&uart2 {
> +	status = "okay";
> +};
> +
> +

nit: double empty line

> +&vopb {
> +	status = "okay";
> +};

Overall the board dts looks great now.

If it weren't for the missing devicetree maintainers Cc's
I'd just fix it up myself and just apply it, but we'll need a respin,
so that dt-people at least have a chance to see the changes.


Thanks
Heiko
