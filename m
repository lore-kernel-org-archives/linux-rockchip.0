From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v5 6/6] arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node
Date: Wed, 19 Feb 2020 14:37:50 -0300
Message-ID: <20200219173750.26453-7-ezequiel@collabora.com>
References: <20200219173750.26453-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200219173750.26453-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Boris Brezillon <boris.brezillon@collabora.com>, Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: Boris Brezillon <boris.brezillon@collabora.com>

RK3399 has a Video decoder, define the node in the dtsi. We also add
the missing power-domain in mmu node and enable the block.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
v5:
* None.
v4:
* Correct clock names.
v3:
* None.
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf4c1..a07f857df12f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1285,8 +1285,20 @@ vdec_mmu: iommu@ff660480 {
 		interrupt-names = "vdec_mmu";
 		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3399_PD_VDU>;
 		#iommu-cells = <0>;
-		status = "disabled";
+	};
+
+	vdec: video-codec@ff660000 {
+		compatible = "rockchip,rk3399-vdec";
+		reg = <0x0 0xff660000 0x0 0x400>;
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
+			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
+		clock-names = "axi", "ahb", "cabac", "core";
+		power-domains = <&power RK3399_PD_VDU>;
+		iommus = <&vdec_mmu>;
 	};
 
 	iep_mmu: iommu@ff670800 {
-- 
2.25.0
