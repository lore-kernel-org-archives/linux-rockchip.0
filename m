From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: add dsi controller for px30
Date: Mon,  6 Jan 2020 12:20:04 +0100
Message-ID: <20200106112005.795834-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, christoph.muellner@theobroma-systems.com, heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

This adds the dw-mipi-dsi controller and hooks it into the
display-subsystem on px30.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v2:
- move reset properties into correct order
- drop dsiphy node, already added by another patch

 arch/arm64/boot/dts/rockchip/px30.dtsi | 48 ++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 5b5ca7ff6674..986ed249a733 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -955,6 +955,44 @@ gpu: gpu@ff400000 {
 		status = "disabled";
 	};
 
+	dsi: dsi@ff450000 {
+		compatible = "rockchip,px30-mipi-dsi";
+		reg = <0x0 0xff450000 0x0 0x10000>;
+		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_MIPI_DSI>;
+		clock-names = "pclk";
+		phys = <&dsi_dphy>;
+		phy-names = "dphy";
+		power-domains = <&power PX30_PD_VO>;
+		resets = <&cru SRST_MIPIDSI_HOST_P>;
+		reset-names = "apb";
+		rockchip,grf = <&grf>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dsi_in_vopb: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vopb_out_dsi>;
+				};
+
+				dsi_in_vopl: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vopl_out_dsi>;
+				};
+			};
+		};
+	};
+
 	vopb: vop@ff460000 {
 		compatible = "rockchip,px30-vop-big";
 		reg = <0x0 0xff460000 0x0 0xefc>;
@@ -972,6 +1010,11 @@ vopb: vop@ff460000 {
 		vopb_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopb_out_dsi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&dsi_in_vopb>;
+			};
 		};
 	};
 
@@ -1004,6 +1047,11 @@ vopl: vop@ff470000 {
 		vopl_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopl_out_dsi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&dsi_in_vopl>;
+			};
 		};
 	};
 
-- 
2.24.1
