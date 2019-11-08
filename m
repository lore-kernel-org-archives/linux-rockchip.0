From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v2 0/5] dw-mipi-dsi support for Rockchip px30
Date: Fri,  8 Nov 2019 01:02:48 +0100
Message-ID: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, a.hajda@samsung.com
Cc: hjc@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@siol.net, philippe.cornu@st.com, yannick.fertre@st.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

This series adds support for the dsi controller on the px30.
The main difference to previous incarnations is the use of an
external dphy for the output.

changes in v2:
- drop handling the dphy-pll manually, instead use the regular
  phy configuration operations, thanks Laurent for the suggestion
- add missing px30 compatible to the binding and make
  binding changes separate patches


Heiko Stuebner (5):
  drm/bridge/synopsys: dsi: move phy_ops callbacks around panel
    enablement
  dt-bindings: display: rockchip-dsi: document external phys
  drm/rockchip: add ability to handle external dphys in mipi-dsi
  dt-bindings: display: rockchip-dsi: add px30 compatible
  drm/rockchip: dsi: add px30 support

 .../display/rockchip/dw_mipi_dsi_rockchip.txt | 13 ++-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 95 ++++++++++++++++++-
 3 files changed, 106 insertions(+), 15 deletions(-)

-- 
2.23.0
