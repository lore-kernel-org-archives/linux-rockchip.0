From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v3 6/6] arm64: dts: rockchip: add mipi_dsi1 support for rk3399
Date: Wed, 25 Oct 2017 11:51:03 +0800
Message-ID: <1508903463-7254-6-git-send-email-nickey.yang@rock-chips.com>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.comg, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This patch adds the mipi_dsi1 related needed information.
e.g.: interrupts, grf, clocks, ports and so on.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 39 ++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a65f7f7..48e2695 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1515,6 +1515,11 @@
 				reg = <2>;
 				remote-endpoint = <&hdmi_in_vopl>;
 			};
+
+			vopl_out_mipi1: endpoint@3 {
+				reg = <3>;
+				remote-endpoint = <&mipi1_in_vopl>;
+			};
 		};
 	};
 
@@ -1562,6 +1567,11 @@
 				reg = <2>;
 				remote-endpoint = <&hdmi_in_vopb>;
 			};
+
+			vopb_out_mipi1: endpoint@3 {
+				reg = <3>;
+				remote-endpoint = <&mipi1_in_vopb>;
+			};
 		};
 	};
 
@@ -1657,6 +1667,35 @@
 		};
 	};
 
+	mipi_dsi1: mipi@ff968000 {
+		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x0 0xff968000 0x0 0x8000>;
+		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_DPHY_PLL>, <&cru PCLK_MIPI_DSI1>,
+			 <&cru SCLK_DPHY_TX1RX1_CFG>, <&cru PCLK_VIO_GRF>;
+		clock-names = "ref", "pclk", "phy_cfg", "grf";
+		power-domains = <&power RK3399_PD_VIO>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			mipi1_in: port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mipi1_in_vopb: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vopb_out_mipi1>;
+				};
+
+				mipi1_in_vopl: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vopl_out_mipi1>;
+				};
+			};
+		};
+	};
+
 	edp: edp@ff970000 {
 		compatible = "rockchip,rk3399-edp";
 		reg = <0x0 0xff970000 0x0 0x8000>;
-- 
1.9.1
