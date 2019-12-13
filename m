From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 12/12] arm64: dts: rockchip: Add PX30 LVDS
Date: Fri, 13 Dec 2019 19:10:51 +0100
Message-ID: <20191213181051.25983-13-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Also create to port endpoints to link with the CRTCs.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 337306281c07..347432fba865 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -449,6 +449,33 @@
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
-- 
2.20.1
