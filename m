From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
Date: Wed, 22 Jul 2020 12:55:32 -0300
Message-ID: <20200722155533.252844-9-helen.koike@collabora.com>
References: <20200722155533.252844-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, tfiga@chromium.org, eddie.cai.linux@gmail.com, zhengsq@rock-chips.com, robin.murphy@arm.com
List-Id: linux-rockchip.vger.kernel.org

From: Shunqian Zheng <zhengsq@rock-chips.com>

RK3399 has two ISPs, but only isp0 was tested.
Add isp0 node in rk3399 dtsi

Verified with:
make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

V4:
- update clock names

V3:
- clean up clocks

V2:
- re-order power-domains property

V1:
This patch was originally part of this patchset:

    https://patchwork.kernel.org/patch/10267431/

The only difference is:
- add phy properties
- add ports
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index dba9641947a3a..ed8ba75dbbce8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
 		status = "disabled";
 	};
 
+	isp0: isp0@ff910000 {
+		compatible = "rockchip,rk3399-cif-isp";
+		reg = <0x0 0xff910000 0x0 0x4000>;
+		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_ISP0>,
+			 <&cru ACLK_ISP0_WRAPPER>,
+			 <&cru HCLK_ISP0_WRAPPER>;
+		clock-names = "isp", "aclk", "hclk";
+		iommus = <&isp0_mmu>;
+		phys = <&mipi_dphy_rx0>;
+		phy-names = "dphy";
+		power-domains = <&power RK3399_PD_ISP0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+	};
+
 	isp0_mmu: iommu@ff914000 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
-- 
2.28.0.rc1
