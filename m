From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v7 0/8] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
Date: Thu, 23 Apr 2020 09:31:07 +0200
Message-ID: <d4cda063-3047-a5cc-a675-1d5008657b97@baylibre.com>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-imx@nxp.com
List-Id: linux-rockchip.vger.kernel.org

On 21/04/2020 18:16, Adrian Ratiu wrote:
> Hello everyone,
> 
> v7 addresses the points raised by Enric and Laurent in v6.
> Specific details in patch changelogs.
> 
> Two new independent patches were derived from this series
> and posted for review (now they are dependencies for v7):
> 
> Message-ID: 20200421105814.1364900-1-adrian.ratiu@collabora.com
> Web: https://lore.kernel.org/linux-devicetree/20200421105814.1364900-1-adrian.ratiu@collabora.com/T/#u
> 
> and
> 
> Message-ID: 20200420100222.1308898-1-adrian.ratiu@collabora.com
> Web: https://lore.kernel.org/linux-arm-kernel/20200420100222.1308898-1-adrian.ratiu@collabora.com/T/#u

Side note, you can build the following URL from message-id:
http://lore.kernel.org/r/20200420100222.1308898-1-adrian.ratiu@collabora.com

Neil

> 
> Tested on latest linux-next 20200421 with the above two patches
> applied.
> 
> Thank you,
> Adrian
> 
> Adrian Ratiu (8):
>   drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
>   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>   drm: bridge: synopsis: add dsi v1.01 support
>   drm: imx: Add i.MX 6 MIPI DSI host platform driver
>   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>   drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
>   drm: bridge: dw-mipi-dsi: split low power cfg register into fields
>   drm: bridge: dw-mipi-dsi: fix bad register field offsets
> 
>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 135 ++++
>  drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 692 +++++++++++++-----
>  drivers/gpu/drm/imx/Kconfig                   |   8 +
>  drivers/gpu/drm/imx/Makefile                  |   1 +
>  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 391 ++++++++++
>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  12 +-
>  7 files changed, 1035 insertions(+), 205 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> 
