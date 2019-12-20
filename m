From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 10/11] ARM: dts: exynos: Replace deprecated property for
 Exynos bus and DMC
Date: Fri, 20 Dec 2019 09:24:29 +0900
Message-ID: <20191220002430.11995-11-cw00.choi@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001800epcas1p2f2dfd9d24e275425b07a06bcdeb4aba9@epcas1p2.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: mark.rutland@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Replace the property related to devfreq and devfreq-event device
to remove the deprecated property name.
- Replace 'devfreq' with 'exynos,parent-bus' property
  for getting the parent devfreq device of exynos-bus.
- Replace 'devfreq-events' with 'exynos,ppmu-device' property
  for getting the devfreq-event device to monitor bus utilization.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 arch/arm/boot/dts/exynos3250-monk.dts         |  2 +-
 arch/arm/boot/dts/exynos3250-rinato.dts       | 18 +++++-----
 .../boot/dts/exynos4412-itop-scp-core.dtsi    | 16 ++++-----
 arch/arm/boot/dts/exynos4412-midas.dtsi       | 18 +++++-----
 .../boot/dts/exynos4412-odroid-common.dtsi    | 18 +++++-----
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 34 +++++++++----------
 6 files changed, 53 insertions(+), 53 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250-monk.dts b/arch/arm/boot/dts/exynos3250-monk.dts
index 248bd372fe70..c6b1fcd4ba97 100644
--- a/arch/arm/boot/dts/exynos3250-monk.dts
+++ b/arch/arm/boot/dts/exynos3250-monk.dts
@@ -158,7 +158,7 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/exynos3250-rinato.dts b/arch/arm/boot/dts/exynos3250-rinato.dts
index 86c26a4edfd7..7ad80354d8df 100644
--- a/arch/arm/boot/dts/exynos3250-rinato.dts
+++ b/arch/arm/boot/dts/exynos3250-rinato.dts
@@ -153,49 +153,49 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_lcd0 {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mcuisp {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_isp {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peril {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
index dfceb155b3a7..e275a52eb0d3 100644
--- a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
+++ b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
@@ -70,44 +70,44 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_acp {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_c2c {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index 83be3a797411..1869eed05167 100644
--- a/arch/arm/boot/dts/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
@@ -288,49 +288,49 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_acp {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_c2c {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_display {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
index ea55f377d17c..bb5a7cbcc308 100644
--- a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
@@ -88,49 +88,49 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_acp {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_c2c {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_display {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 059fa32d1a8f..8510e2787a9c 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -134,7 +134,7 @@
 };
 
 &bus_wcore {
-	devfreq-events = <&nocp_mem0_0>, <&nocp_mem0_1>,
+	exynos,ppmu-device = <&nocp_mem0_0>, <&nocp_mem0_1>,
 			<&nocp_mem1_0>, <&nocp_mem1_1>;
 	vdd-supply = <&buck3_reg>;
 	exynos,saturation-ratio = <100>;
@@ -142,77 +142,77 @@
 };
 
 &bus_noc {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_fsys_apb {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_fsys2 {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_gen {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_g2d {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_g2d_acp {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_jpeg {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_jpeg_apb {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_disp1_fimd {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_disp1 {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_gscl_scaler {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_mscl {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
@@ -225,7 +225,7 @@
 };
 
 &dmc {
-	devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
+	exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
 			<&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
 	device-handle = <&samsung_K3QF2F20DB>;
 	operating-points-v2 = <&dmc_opp_table>;
-- 
2.17.1
