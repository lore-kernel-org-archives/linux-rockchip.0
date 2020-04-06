From: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v5 0/5] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
Date: Mon, 6 Apr 2020 16:23:49 +0200
Message-ID: <7b95e129-8035-df7f-3d50-2ae3c2e8af8d@samsung.com>
References: <CGME20200330113455eucas1p1441dc79d44de5081e9d90079e2020ca0@eucas1p1.samsung.com>
        <20200330113542.181752-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200330113542.181752-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: pl
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,

Due to different ways of work I use different mail client, so forgive me 
if there are some misconfugrations.


W dniu 30.03.2020 o 13:35, Adrian Ratiu pisze:
> Hello everyone,
>
> The v5 series is a significantly cleaned up version from v4,
> started by Ezequiel Garcia's suggestion of splitting out the
> regmap infrastructure from the drivers (thank you!).
>
> Turns out no changes are required to the existing drivers and
> the bridge can transparently take care of the layout logic,
> so there's no need to expose the regmap via plat_data anymore.
>
> Starting from this version I also opted to add per-patch
> changelogs. All review comments up to now have been addressed.
>
> Tested on IMX6DL.
>
> Adrian Ratiu (5):
>    drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
>    drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>    drm: bridge: synopsis: add dsi v1.01 support
>    drm: imx: Add i.MX 6 MIPI DSI host platform driver
>    dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>
>   .../display/imx/fsl,mipi-dsi-imx6.yaml        | 134 ++++
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 683 +++++++++++++-----


So we have above 400 lines more just to add slightly different register 
layout of v1.01.

Quite big linecount for apparently small (?) functional change - I was 
too lazy to check how many reg fields are really used (some are not used 
at all), but it does not seem to be big enough to justyfy so big change IMO.

I will add more comments in specific patches.


Regards

Andrzej


>   drivers/gpu/drm/imx/Kconfig                   |   7 +
>   drivers/gpu/drm/imx/Makefile                  |   1 +
>   drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
>   5 files changed, 1049 insertions(+), 175 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>   create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
>
