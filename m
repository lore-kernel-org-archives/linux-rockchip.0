From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH v2 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Date: Thu, 23 Apr 2020 22:09:35 +0200
Message-ID: <20200423200937.1039257-3-paul.kocialkowski@bootlin.com>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>, justin.swartz@risingedge.co.za, Johan Jonker <jbx6244@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

The PX30 features a RGA block: add the necessary node to support it.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..613703e3d0df 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
 		status = "disabled";
 	};
 
+	rga: rga@ff480000 {
+		compatible = "rockchip,px30-rga";
+		reg = <0x0 0xff480000 0x0 0x10000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power PX30_PD_VO>;
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.26.0
