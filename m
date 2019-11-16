From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: remove 408MHz operating point from px30
Date: Sat, 16 Nov 2019 10:52:20 +0100
Message-ID: <20191116095220.31122-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com, kever.yang@rock-chips.com, cl@rock-chips.com, heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

It looks like the px30 is running unstable at this 408MHz operating point.
This shows in stalled threads and other big numbers of kernel exception.

At 600MHz and above it instead works stable and as expected. As the 408MHz
point doesn't even decrease the voltage compared to 600MHz, just drop this
408MHz operating point for now.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c68d6fede53d..ff53cc56f80f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -114,16 +114,11 @@
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		opp-408000000 {
-			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <950000 950000 1350000>;
-			clock-latency-ns = <40000>;
-			opp-suspend;
-		};
 		opp-600000000 {
 			opp-hz = /bits/ 64 <600000000>;
 			opp-microvolt = <950000 950000 1350000>;
 			clock-latency-ns = <40000>;
+			opp-suspend;
 		};
 		opp-816000000 {
 			opp-hz = /bits/ 64 <816000000>;
-- 
2.24.0
