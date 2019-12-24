From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 10/11] arm64: dts: rockchip: Add PX30 DSI DPHY
Date: Tue, 24 Dec 2019 15:38:59 +0100
Message-ID: <20191224143900.23567-11-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Add the PHY which outputs MIPI DSI and LVDS.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index b2af0f02ecbe..672a3a2f42b9 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -849,6 +849,17 @@
 		};
 	};
 
+	dsi_dphy: phy@ff2e0000 {
+		compatible = "rockchip,px30-dsi-dphy";
+		reg = <0x0 0xff2e0000 0x0 0x10000>;
+		clocks = <&pmucru SCLK_MIPIDSIPHY_REF>, <&cru PCLK_MIPIDSIPHY>;
+		clock-names = "ref", "pclk";
+		resets = <&cru SRST_MIPIDSIPHY_P>;
+		reset-names = "apb";
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	usb20_otg: usb@ff300000 {
 		compatible = "rockchip,px30-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
-- 
2.20.1
