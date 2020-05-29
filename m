From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add the camera interface description of the PX30
Date: Fri, 29 May 2020 15:04:05 +0200
Message-ID: <20200529130405.929429-4-maxime.chevallier@bootlin.com>
References: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
Sender: linux-media-owner@vger.kernel.org
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

The PX30 has a camera interface, supporting CSI2, BT656 and Parallel
modes. Add a DT description for this interface.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---

Changes since V1:

 - Updated the clock and reset names
 - Reordered the properties to have clocks and resets bundled together

 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9f84aaaf3fba..d895541b7216 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1140,6 +1140,18 @@ vopl_mmu: iommu@ff470f00 {
 		status = "disabled";
 	};
 
+	cif: cif@ff490000 {
+		compatible = "rockchip,px30-cif";
+		reg = <0x0 0xff490000 0x0 0x200>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
+		clock-names = "aclk", "hclk", "pclkin";
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+		reset-names = "axi", "ahb", "pclkin";
+		status = "disabled";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.25.4
