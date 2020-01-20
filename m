From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH 3/4] ARM: dts: rockchip: add rga node for rk322x
Date: Mon, 20 Jan 2020 19:41:56 +0000
Message-ID: <20200120194158.25357-3-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add a node to define the presence of RGA, a 2D raster graphic
acceleration unit.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb..486ad591f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -566,6 +566,17 @@
 		status = "disabled";
 	};
 
+	rga: rga@20060000 {
+		compatible = "rockchip,rk3228-rga";
+		reg = <0x20060000 0x1000>;
+		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
+		reset-names = "core", "axi", "ahb";
+		status = "disabled";
+	};
+
 	vpu_mmu: iommu@20020800 {
 		compatible = "rockchip,iommu";
 		reg = <0x20020800 0x100>;
-- 
2.11.0
