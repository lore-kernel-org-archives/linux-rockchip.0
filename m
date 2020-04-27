From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v8 00/10] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Mon, 27 Apr 2020 11:19:42 +0300
Message-ID: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello everyone,

The dt-binding added in this series depends on [1] for
"make dt_binding_check" to pass.

The biggest change in v8 is a conversion of the imx6 host controller
driver to drm_bridge and an extension to dw_mipi_dsi.c which allows
platform drivers to daisy-chain bridges between the encoder and the
Synopsis DSI bridge.

Obviously a lot more work can be done on this front, for example to
convert the Rockchip and STM platform drivers to drm_bridge (the STM
driver doesn't even use the current dw_mipi_dsi.c bind API to attach)
or to improve the API itself.

Another kind of related work is refactoring the existng IMX drivers
to drm_bridge and move the empty encoder management to imx-drm-core.

Because this patch is already quite big, I did only the minimum
changes to get the imx6 mipi dsi driver in good shape, all the other
changes should be done in separate patch series.

I also just realized imx6qdl.dtsi was missing some properties to get
the DSI host controller working so I've added them as a new patch.

All received feedback up to this point has been addressed.

Thank you and best wishes,
Adrian

[1] https://lore.kernel.org/linux-devicetree/20200423100058.1734009-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org/

Adrian Ratiu (10):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: dw_mipi_dsi: add dsi v1.01 support
  drm: bridge: dw_mipi_dsi: allow bridge daisy chaining
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  ARM: dts: imx6qdl: add missing mipi dsi properties
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc
  drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
  drm: bridge: dw-mipi-dsi: split low power cfg register into fields
  drm: bridge: dw-mipi-dsi: fix bad register field offsets

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 145 ++++
 arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 698 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   8 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   2 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  12 +-
 include/drm/bridge/dw_mipi_dsi.h              |   5 +-
 10 files changed, 1070 insertions(+), 209 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.26.0
