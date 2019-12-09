From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: add core dsi components for px30
Date: Mon,  9 Dec 2019 15:53:00 +0100
Message-ID: <20191209145301.5307-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>

This adds the dw-mipi-dsi controller and the external dsi-dphy
and hooks them into the display-subsystem on px30.

Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 61 ++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c31423f36192..ff53cc56f80f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -820,6 +820,19 @@ u2phy_otg: otg-port {
 		};
 	};
 
+	dsi_dphy: phy@ff2e0000 {
+		compatible = "rockchip,px30-dsi-dphy";
+		reg = <0x0 0xff2e0000 0x0 0x10000>;
+		clocks = <&pmucru SCLK_MIPIDSIPHY_REF>, <&cru PCLK_MIPIDSIPHY>;
+		clock-names = "ref", "pclk";
+		#clock-cells = <0>;
+		resets = <&cru SRST_MIPIDSIPHY_P>;
+		reset-names = "apb";
+		#phy-cells = <0>;
+		power-domains = <&power PX30_PD_VO>;
+		status = "disabled";
+	};
+
 	usb20_otg: usb@ff300000 {
 		compatible = "rockchip,px30-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
@@ -943,6 +956,44 @@ gpu: gpu@ff400000 {
 		status = "disabled";
 	};
 
+	dsi: dsi@ff450000 {
+		compatible = "rockchip,px30-mipi-dsi";
+		reg = <0x0 0xff450000 0x0 0x10000>;
+		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_MIPI_DSI>;
+		clock-names = "pclk";
+		resets = <&cru SRST_MIPIDSI_HOST_P>;
+		reset-names = "apb";
+		phys = <&dsi_dphy>;
+		phy-names = "dphy";
+		power-domains = <&power PX30_PD_VO>;
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
@@ -960,6 +1011,11 @@ vopb: vop@ff460000 {
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
 
@@ -992,6 +1048,11 @@ vopl: vop@ff470000 {
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
2.24.0
