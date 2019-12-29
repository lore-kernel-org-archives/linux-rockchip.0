From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Add RK3328 GPU OPPs
Date: Sun, 29 Dec 2019 20:14:38 +0000
Message-ID: <48607c137d46452291510e88d5891e705dc7993c.1577650403.git.robin.murphy@arm.com>
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
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add OPPs for the GPU, derived from the downstream Beelink A1 DTB.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 91306ebed4da..e1b1b4551a8b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -605,6 +605,28 @@
 		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
 		clock-names = "bus", "core";
 		resets = <&cru SRST_GPU_A>;
+		operating-points-v2 = <&gpu_opp_table>;
+	};
+
+	gpu_opp_table: opp_table1 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <900000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1025000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <1125000>;
+		};
 	};
 
 	h265e_mmu: iommu@ff330200 {
-- 
2.17.1
