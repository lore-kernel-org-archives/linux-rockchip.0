From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH 9/9] arm64: dts: exynos: Replace deprecated property for
 Exynos bus
Date: Tue, 17 Dec 2019 14:57:38 +0900
Message-ID: <20191217055738.28445-10-cw00.choi@samsung.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
        <CGME20191217055107epcas1p44d46bdea7b326b86689f326742f5444a@epcas1p4.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Replace the property related to devfreq and devfreq-event device
to remove the deprecated property name.
- Replace 'devfreq' with 'exynos,parent-bus' property
  for getting the parent devfreq device of exynos-bus.
- Replace 'devfreq-events' with 'exynos,ppmu-device' property
  for getting the devfreq-event device to monitor bus utilization.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../dts/exynos/exynos5433-tm2-common.dtsi     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 6f90b0e62cba..6bdd5b0940a5 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -166,54 +166,54 @@
 };
 
 &bus_g2d_400 {
-	devfreq-events = <&ppmu_event0_d0_general>, <&ppmu_event0_d1_general>;
+	exynos,ppmu-device = <&ppmu_event0_d0_general>, <&ppmu_event0_d1_general>;
 	vdd-supply = <&buck4_reg>;
 	exynos,saturation-ratio = <10>;
 	status = "okay";
 };
 
 &bus_g2d_266 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_gscl {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_hevc {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_jpeg {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_mscl {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_noc0 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_noc1 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_noc2 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
-- 
2.17.1
