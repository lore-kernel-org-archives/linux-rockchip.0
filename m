From: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: [PATCH v4 0/4] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Mon,  2 Dec 2019 21:33:55 +0200
Message-ID: <20191202193359.703709-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-imx@nxp.com
List-Id: linux-rockchip.vger.kernel.org

Having a generic Synopsis DesignWare MIPI-DSI host controller bridge
driver is a very good idea, however the current implementation has
hardcoded quite a lot of the register layouts used by the two supported
SoC vendors, STM and Rockchip, which use IP cores v1.30 and v1.31.

This makes it hard to support other SoC vendors like the FSL/NXP i.MX 6
which use older v1.01 cores or future versions because, based on history,
layout changes should also be expected in new DSI versions / SoCs.

This patch series converts the bridge and platform drivers to access
registers via generic regmap APIs and allows each platform driver to
configure its register layout via struct reg_fields, then adds support
for the host controller found on i.MX 6.

I only have i.MX hardware with MIPI-DSI panel and relevant documentation
available for testing so I'll really appreciate it if someone could test
the series on Rockchip and STM... eyeballing register fields could only
get me so far, so sorry in advance for any breakage!

Many thanks to Boris Brezillon <boris.brezillon@collabora.com> for
suggesting the regmap solution and to Liu Ying <Ying.Liu@freescale.com>
for doing the initial i.MX platform driver implementation.

This series applies on top of latest linux-next tree, next-20191202.

v3 -> v4:
  * Added commmit message to dt-binding patch (Neil)
  * Converted the dt-binding to yaml dt-schema format (Neil)
  * Small DT node + driver fixes (Rob)
  * Renamed platform driver to reflect it's only for i.MX v6 (Fabio)
  * Added small panel example to the host controller DT binding

v2 -> v3:
  * Added const declarations to dw-mipi-dsi.c structs (Emil)
  * Fixed Reviewed-by tags and cc'd some more relevant ML (Emil)

v1 -> v2:
  * Moved register definitions & regmap initialization into bridge
  module. Platform drivers get the regmap via plat_data after calling
  the bridge probe (Emil).

Adrian Ratiu (4):
  drm: bridge: dw_mipi_dsi: access registers via a regmap
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: imx: Add i.MX 6 MIPI DSI host driver
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 136 ++++
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 699 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   7 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 378 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 +-
 include/drm/bridge/dw_mipi_dsi.h              |   2 +-
 8 files changed, 1067 insertions(+), 207 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.24.0
