From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] arm64: dts: rockchip: Fix IOMMU second clock name
Date: Mon,  2 Dec 2019 18:00:28 +0100
Message-ID: <20191202170028.26169-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

By precedence, both the IOMMU driver and the bindings in the doc
impose two clocks to be filled in Rockchip device trees featuring an
IOMMU:
* The AXI clock called 'aclk'.
* The main peripheral bus clock (PCLK/HCL) called 'iface'.

Currently, the second clock in px30.dtsi is called 'hclk' and this
produces the following errors at boot:

        rk_iommu ff460f00.iommu: Failed to get clk 'iface': -2
        rk_iommu ff470f00.iommu: Failed to get clk 'iface': -2

Fix the PX30 device tree by renaming the second misnamed clock. The
issue has not been reported before probably because the clk_get() call
is optional for backward DT compatibility reasons.

Fixes: 7053e06b1422 ("arm64: dts: rockchip: add core dtsi file for PX30 SoCs")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index eb992d60e6ba..1fd12bd09e83 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -831,7 +831,7 @@
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "vopb_mmu";
 		clocks = <&cru ACLK_VOPB>, <&cru HCLK_VOPB>;
-		clock-names = "aclk", "hclk";
+		clock-names = "aclk", "iface";
 		power-domains = <&power PX30_PD_VO>;
 		#iommu-cells = <0>;
 		status = "disabled";
@@ -863,7 +863,7 @@
 		interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "vopl_mmu";
 		clocks = <&cru ACLK_VOPL>, <&cru HCLK_VOPL>;
-		clock-names = "aclk", "hclk";
+		clock-names = "aclk", "iface";
 		power-domains = <&power PX30_PD_VO>;
 		#iommu-cells = <0>;
 		status = "disabled";
-- 
2.20.1
