From: sandor.yu@nxp.com
Subject: [PATCH 0/7] Initial support for Cadence MHDP(HDMI/DP)
Date: Mon,  1 Jun 2020 14:17:30 +0800
Message-ID: <cover.1590982881.git.Sandor.yu@nxp.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: a.hajda@samsung.com, narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@siol.net, heiko@sntech.de, hjc@rock-chips.com, Sandor.yu@nxp.com, dkos@cadence.com, dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-imx@nxp.com
List-Id: linux-rockchip.vger.kernel.org

From: Sandor Yu <Sandor.yu@nxp.com>

The patch set initial support for Cadence MHDP(HDMI/DP) drm bridge
driver and iMX8MQ HDMI/DP.

The first patch drm/rockchip: prepare common code for cdns and rk dpi/dp driver
is from the link https://patchwork.kernel.org/patch/10788309/
that still in reviewing.

Files in drm/bridge/cadence compose with serveral parties,
drm bridge driver, Audio and API functions.
 -cdns-dp-core.c: Displayport bridge driver
 -cdns-hdmi-core.c: HDMI bridge driver 
 -cdns-mhdp-audio.c: DP/HDMI Audio
 -cdns-mhdp-common.c: MHDP common API functions
 -cdns-mhdp-dp.c: MHDP DP API functions
 -cdns-mhdp-hdmi.c: MHDP HDMI API functions

Sandor Yu (7):
  drm/rockchip: prepare common code for cdns and rk dpi/dp driver
  drm: bridge: cadence: Create cadence fold
  drm: bridge: cadence: initial support for MHDP DP bridge driver
  drm: imx: mhdp: initial support for i.MX8MQ MHDP Displayport
  drm: bridge: cadence: Initial support for MHDP HDMI bridge driver
  drm: imx: mhdp: Initial support for i.MX8MQ MHDP HDMI
  dt-bindings: display: Document Cadence MHDP HDMI/DP bindings

 .../bindings/display/bridge/cdns,mhdp.yaml    |  46 +
 .../devicetree/bindings/display/imx/mhdp.yaml |  59 ++
 drivers/gpu/drm/bridge/Kconfig                |   2 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/cadence/Kconfig        |  15 +
 drivers/gpu/drm/bridge/cadence/Makefile       |   5 +
 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c | 530 ++++++++++
 .../gpu/drm/bridge/cadence/cdns-hdmi-core.c   | 600 +++++++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-audio.c  | 298 ++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-common.c | 682 +++++++++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-common.h |  40 +
 drivers/gpu/drm/bridge/cadence/cdns-mhdp-dp.c | 206 ++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-hdmi.c   | 330 ++++++
 drivers/gpu/drm/imx/Kconfig                   |   1 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/mhdp/Kconfig              |   9 +
 drivers/gpu/drm/imx/mhdp/Makefile             |   4 +
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-dp-phy.c   | 390 +++++++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c | 588 +++++++++++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c   | 142 +++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h      | 148 +++
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 drivers/gpu/drm/rockchip/Makefile             |   2 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c        | 247 ++---
 drivers/gpu/drm/rockchip/cdn-dp-core.h        |  44 +-
 drivers/gpu/drm/rockchip/cdn-dp-reg.c         | 960 ------------------
 .../drm/bridge/cdns-mhdp.h                    | 257 ++++-
 27 files changed, 4464 insertions(+), 1144 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/imx/mhdp.yaml
 create mode 100644 drivers/gpu/drm/bridge/cadence/Kconfig
 create mode 100644 drivers/gpu/drm/bridge/cadence/Makefile
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-hdmi-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-audio.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-common.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-common.h
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-dp.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-hdmi.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/Kconfig
 create mode 100644 drivers/gpu/drm/imx/mhdp/Makefile
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-dp-phy.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h
 delete mode 100644 drivers/gpu/drm/rockchip/cdn-dp-reg.c
 rename drivers/gpu/drm/rockchip/cdn-dp-reg.h => include/drm/bridge/cdns-mhdp.h (64%)

-- 
2.17.1
