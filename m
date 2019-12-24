From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 11/11] arm64: dts: rockchip: Add PX30 LVDS
Date: Tue, 24 Dec 2019 15:39:00 +0100
Message-ID: <20191224143900.23567-12-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Describe LVDS IP. Add the CRTC and LVDS relevant endpoints so they can
be linked together.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 37 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 672a3a2f42b9..f99988b08244 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -439,6 +439,33 @@
 			compatible = "rockchip,px30-io-voltage-domain";
 			status = "disabled";
 		};
+
+		lvds: lvds {
+			compatible = "rockchip,px30-lvds";
+			rockchip,grf = <&grf>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			phys = <&dsi_dphy>;
+			phy-names = "dphy";
+			rockchip,output = "lvds";
+			status = "disabled";
+
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				lvds_vopb_in: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vopb_out_lvds>;
+				};
+
+				lvds_vopl_in: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vopl_out_lvds>;
+				};
+			};
+		};
 	};
 
 	uart1: serial@ff158000 {
@@ -987,6 +1014,11 @@
 		vopb_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopb_out_lvds: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&lvds_vopb_in>;
+			};
 		};
 	};
 
@@ -1019,6 +1051,11 @@
 		vopl_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopl_out_lvds: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&lvds_vopl_in>;
+			};
 		};
 	};
 
-- 
2.20.1
