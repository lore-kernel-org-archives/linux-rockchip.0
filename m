From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: update cpu opp table for rk3399 op1
Date: Mon, 24 Apr 2017 14:18:50 +0800
Message-ID: <1493014730-9670-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, briannorris@chromium.org, dianders@chromium.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Update the cpu opp table for rk3399 op1.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
index dd82e16..92bd615 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
@@ -52,27 +52,27 @@
 		};
 		opp01 {
 			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000>;
 		};
 		opp02 {
 			opp-hz = /bits/ 64 <816000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <850000>;
 		};
 		opp03 {
 			opp-hz = /bits/ 64 <1008000000>;
-			opp-microvolt = <875000>;
+			opp-microvolt = <900000>;
 		};
 		opp04 {
 			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <925000>;
+			opp-microvolt = <975000>;
 		};
 		opp05 {
 			opp-hz = /bits/ 64 <1416000000>;
-			opp-microvolt = <1050000>;
+			opp-microvolt = <1100000>;
 		};
 		opp06 {
 			opp-hz = /bits/ 64 <1512000000>;
-			opp-microvolt = <1125000>;
+			opp-microvolt = <1150000>;
 		};
 	};
 
-- 
2.7.4
