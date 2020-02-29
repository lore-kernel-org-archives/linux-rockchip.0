From: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 3/3] drm/panel: add panel driver for Elida KD35T133
 panels
Date: Sat, 29 Feb 2020 13:57:25 +0100
Message-ID: <20200229125725.GC5447@ravnborg.org>
References: <20200225093913.415844-1-heiko@sntech.de>
 <20200225093913.415844-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200225093913.415844-3-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko.

On Tue, Feb 25, 2020 at 10:39:13AM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> 
> Panel driver for the KD35T133 display from Elida, used for example
> in the rk3326-based Odroid Go Advance handheld.
> 
> changes in v2:
> - rename dsi_generic_write_seq macro to dsi_dcs_write_seq to honor
>   the underlying mipi_dsi_dcs_write (Robin)
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>

Driver looks good. One small nit.
With or without this addressed:
Reviewed-by: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

Until we have the vendor prefix applied I cannot apply
the binding and thus this driver.
Ping me when we have the vendor prefix applied.

	Sam

> ---
>  drivers/gpu/drm/panel/Kconfig                |  10 +
>  drivers/gpu/drm/panel/Makefile               |   1 +
>  drivers/gpu/drm/panel/panel-elida-kd35t133.c | 352 +++++++++++++++++++
>  3 files changed, 363 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-elida-kd35t133.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index db7ba062027e..56149fdbdf53 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -50,6 +50,16 @@ config DRM_PANEL_SIMPLE
>  	  that it can be automatically turned off when the panel goes into a
>  	  low power state.
>  
> +config DRM_PANEL_ELIDA_KD35T133
> +	tristate "Elida KD35T133 panel driver"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for the Elida
> +	  KD35T133 controller for 320x480 LCD panels with MIPI-DSI
> +	  system interfaces.
> +
>  config DRM_PANEL_FEIYANG_FY07024DI26A30D
>  	tristate "Feiyang FY07024DI26A30-D MIPI-DSI LCD panel"
>  	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 276907410a45..63189c015ba5 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -3,6 +3,7 @@ obj-$(CONFIG_DRM_PANEL_ARM_VERSATILE) += panel-arm-versatile.o
>  obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) += panel-boe-himax8279d.o
>  obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
>  obj-$(CONFIG_DRM_PANEL_SIMPLE) += panel-simple.o
> +obj-$(CONFIG_DRM_PANEL_ELIDA_KD35T133) += panel-elida-kd35t133.o
>  obj-$(CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D) += panel-feiyang-fy07024di26a30d.o
>  obj-$(CONFIG_DRM_PANEL_ILITEK_IL9322) += panel-ilitek-ili9322.o
>  obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9881C) += panel-ilitek-ili9881c.o
> diff --git a/drivers/gpu/drm/panel/panel-elida-kd35t133.c b/drivers/gpu/drm/panel/panel-elida-kd35t133.c
> new file mode 100644
> index 000000000000..424fb3998d2f
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-elida-kd35t133.c
> @@ -0,0 +1,352 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Elida kd35t133 5.5" MIPI-DSI panel driver
> + * Copyright (C) 2020 Theobroma Systems Design und Consulting GmbH
> + *
> + * based on
> + *
> + * Rockteck jh057n00900 5.5" MIPI-DSI panel driver
> + * Copyright (C) Purism SPC 2019
> + */
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
> +
> +#include <video/display_timing.h>
> +#include <video/mipi_display.h>
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regulator/consumer.h>

We usually order this:

#include <linux/*>

#include <video/*>

#include <drm/*>

And sorted within each block as you already did.

> +
> +/* Manufacturer specific Commands send via DSI */
> +#define KD35T133_CMD_INTERFACEMODECTRL		0xb0
> +#define KD35T133_CMD_FRAMERATECTRL		0xb1
> +#define KD35T133_CMD_DISPLAYINVERSIONCTRL	0xb4
> +#define KD35T133_CMD_DISPLAYFUNCTIONCTRL	0xb6
> +#define KD35T133_CMD_POWERCONTROL1		0xc0
