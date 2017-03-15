From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: rk3368 swap clust0 and clust1
Date: Wed, 15 Mar 2017 17:30:16 +0800
Message-ID: <1489570216-13899-1-git-send-email-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: broonie@kernel.org, huangtao@rock-chips.com, wxt@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Before this patch, clust1 has little core0~3, clust0 has big core0~3
cpu_l | cpu0 |
cpu_l | cpu1 | clust1
cpu_l | cpu2 |
cpu_l | cpu3 |
----------------------
cpu_b | cpu4 |
cpu_b | cpu5 | clust0
cpu_b | cpu6 |
cpu_b | cpu7 |

With this patch, clust0 will have little core0~3, clust1 will have big core0~3
cpu_l | cpu0 |
cpu_l | cpu1 | clust0
cpu_l | cpu2 |
cpu_l | cpu3 |
----------------------
cpu_b | cpu4 |
cpu_b | cpu5 | clust1
cpu_b | cpu6 |
cpu_b | cpu7 |

It makes no other change, just keep same with other SoCs definations.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a635adc..7b9d1e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -79,31 +79,31 @@
 		cpu-map {
 			cluster0 {
 				core0 {
-					cpu = <&cpu_b0>;
+					cpu = <&cpu_l0>;
 				};
 				core1 {
-					cpu = <&cpu_b1>;
+					cpu = <&cpu_l1>;
 				};
 				core2 {
-					cpu = <&cpu_b2>;
+					cpu = <&cpu_l2>;
 				};
 				core3 {
-					cpu = <&cpu_b3>;
+					cpu = <&cpu_l3>;
 				};
 			};
 
 			cluster1 {
 				core0 {
-					cpu = <&cpu_l0>;
+					cpu = <&cpu_b0>;
 				};
 				core1 {
-					cpu = <&cpu_l1>;
+					cpu = <&cpu_b1>;
 				};
 				core2 {
-					cpu = <&cpu_l2>;
+					cpu = <&cpu_b2>;
 				};
 				core3 {
-					cpu = <&cpu_l3>;
+					cpu = <&cpu_b3>;
 				};
 			};
 		};
-- 
1.9.1
