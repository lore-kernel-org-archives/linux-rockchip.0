From: Randy Li <randy.li@rock-chips.com>
Subject: [PATCH v2 1/6] arm64: dts: rockchip: add power domain to iommu
Date: Thu,  7 Mar 2019 18:03:11 +0800
Message-ID: <20190307100316.925-2-randy.li@rock-chips.com>
References: <20190307100316.925-1-randy.li@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190307100316.925-1-randy.li@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-media@vger.kernel.org
Cc: paul.kocialkowski@bootlin.com, maxime.ripard@bootlin.com, joro@8bytes.org, Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org, jernej.skrabec@gmail.com, nicolas@ndufresne.ca, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, posciak@chromium.org, thomas.petazzoni@bootlin.com, groeck@chromium.org, mchehab@kernel.org, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy Li <ayaka@soulik.info>

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 84f14b132e8f..117d02e21932 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -581,6 +581,7 @@
 		clocks = <&cru ACLK_H265>, <&cru PCLK_H265>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3328_PD_HEVC>;
 		status = "disabled";
 	};
 
@@ -592,6 +593,7 @@
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3328_PD_HEVC>;
 		status = "disabled";
 	};
 
@@ -603,6 +605,7 @@
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3328_PD_VPU>;
 		status = "disabled";
 	};
 
@@ -614,6 +617,7 @@
 		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3328_PD_VIDEO>;
 		status = "disabled";
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index db9d948c0b03..23d061ab6fa6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1263,6 +1263,7 @@
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
 		power-domains = <&power RK3399_PD_VCODEC>;
+		status = "disabled";
 	};
 
 	vdec_mmu: iommu@ff660480 {
@@ -1273,6 +1274,7 @@
 		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3399_PD_VDU>;
 		status = "disabled";
 	};
 
-- 
2.20.1
