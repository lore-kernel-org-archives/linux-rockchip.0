From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Correct PMU compatibles
Date: Fri, 17 Apr 2020 13:08:34 +0100
Message-ID: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

A proper binding for the Cortex-A35 PMU actually predates these DTs
being upstreamed, so use it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..adc9b8bf5eaa 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -143,7 +143,7 @@
 	};
 
 	arm-pmu {
-		compatible = "arm,cortex-a53-pmu";
+		compatible = "arm,cortex-a35-pmu";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac43bc3f7031..ac7f694079d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -127,7 +127,7 @@
 	};
 
 	arm-pmu {
-		compatible = "arm,cortex-a53-pmu";
+		compatible = "arm,cortex-a35-pmu";
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.23.0.dirty
