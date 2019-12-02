From: Jack Chen <redchenjs@foxmail.com>
Subject: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for rk3288-tinker
Date: Mon,  2 Dec 2019 23:35:40 +0800
Message-ID: <20191202153540.26143-1-redchenjs@foxmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Jack Chen <redchenjs@live.com>
List-Id: linux-rockchip.vger.kernel.org

From: Jack Chen <redchenjs@live.com>

The Tinker Board / S devices use a special chip variant called rk3288-c
and use different operating points with a higher max frequency.

So add the missing operating points for Tinker Board / S devices, also
increase the vdd_cpu regulator-max-microvolt to 1400000 uV so that the
cpu can operate at 1.8 GHz.

Signed-off-by: Jack Chen <redchenjs@live.com>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 81e4e953d4a4..09e83b3d5e7d 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -113,6 +113,17 @@
 	cpu0-supply = <&vdd_cpu>;
 };
 
+&cpu_opp_table {
+	opp-1704000000 {
+		opp-hz = /bits/ 64 <1704000000>;
+		opp-microvolt = <1350000>;
+	};
+	opp-1800000000 {
+		opp-hz = /bits/ 64 <1800000000>;
+		opp-microvolt = <1400000>;
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_MAC>;
 	assigned-clock-parents = <&ext_gmac>;
@@ -175,7 +186,7 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
+				regulator-max-microvolt = <1400000>;
 				regulator-name = "vdd_arm";
 				regulator-ramp-delay = <6000>;
 				regulator-state-mem {
-- 
2.24.0
