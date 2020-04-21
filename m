From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v7 0/8] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Tue, 21 Apr 2020 19:16:02 +0300
Message-ID: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello everyone,

v7 addresses the points raised by Enric and Laurent in v6.
Specific details in patch changelogs.

Two new independent patches were derived from this series
and posted for review (now they are dependencies for v7):

Message-ID: 20200421105814.1364900-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
Web: https://lore.kernel.org/linux-devicetree/20200421105814.1364900-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org/T/#u

and

Message-ID: 20200420100222.1308898-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
Web: https://lore.kernel.org/linux-arm-kernel/20200420100222.1308898-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org/T/#u

Tested on latest linux-next 20200421 with the above two patches
applied.

Thank you,
Adrian

Adrian Ratiu (8):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: synopsis: add dsi v1.01 support
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc
  drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
  drm: bridge: dw-mipi-dsi: split low power cfg register into fields
  drm: bridge: dw-mipi-dsi: fix bad register field offsets

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 135 ++++
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 692 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   8 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 391 ++++++++++
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  12 +-
 7 files changed, 1035 insertions(+), 205 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.26.0
