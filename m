From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v2 4/5] dt-bindings: display: rockchip-dsi: add px30 compatible
Date: Fri,  8 Nov 2019 01:02:52 +0100
Message-ID: <20191108000253.8560-5-heiko.stuebner@theobroma-systems.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, a.hajda@samsung.com
Cc: hjc@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@siol.net, philippe.cornu@st.com, yannick.fertre@st.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

The px30 SoC also uses a dw-mipi-dsi controller, so add the
compatible value for it.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt      | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index 1ba9237d0ac0..151be3bba06f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -4,8 +4,10 @@ Rockchip specific extensions to the Synopsys Designware MIPI DSI
 Required properties:
 - #address-cells: Should be <1>.
 - #size-cells: Should be <0>.
-- compatible: "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi".
-	      "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi".
+- compatible: one of
+	"rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi"
+	"rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi"
+	"rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi"
 - reg: Represent the physical address range of the controller.
 - interrupts: Represent the controller's interrupt to the CPU(s).
 - clocks, clock-names: Phandles to the controller's pll reference
-- 
2.23.0
