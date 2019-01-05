From: Randy Li <ayaka@soulik.info>
Subject: [PATCH 2/3] arm64: dts: rockchip: add power domain to iommu rk3399
Date: Sun,  6 Jan 2019 01:48:36 +0800
Message-ID: <20190105174837.19378-3-ayaka@soulik.info>
References: <20190105174837.19378-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190105174837.19378-1-ayaka@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Randy Li <ayaka@soulik.info>, mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, ulf.hansson@linaro.org, zhangqing@rock-chips.com, geert+renesas@glider.be
List-Id: linux-rockchip.vger.kernel.org

IOMMU device won't work without power unless PMU
can't turn it off.

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 6cc1c9fa4ea6..b22b2e40422b 100644
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
