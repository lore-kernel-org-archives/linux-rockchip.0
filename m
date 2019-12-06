From: Anand Moon <linux.amoon@gmail.com>
Subject: [RFCv1 7/8] arm64: rockchip: drop unused field from rk8xx i2c node
Date: Fri,  6 Dec 2019 18:45:35 +0000
Message-ID: <20191206184536.2507-8-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Drop unused rockchip,system-power-controller from rk8xx
i2c0 node.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts           | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts          | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi        | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi     | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi        | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi     | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 1 -
 20 files changed, 20 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 936ed7d71ffc..6f51b5f1b17a 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -142,7 +142,6 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 76b49f573101..97fdf654fe7e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -151,7 +151,6 @@ pmic@18 {
 		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 49c4b96da3d4..f1db204e4e0c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -103,7 +103,6 @@ rk805: rk805@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 8d553c92182a..27318c1a57be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -175,7 +175,6 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 62936b432f9a..ccb0baa2eae9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -180,7 +180,6 @@ rk805: rk805@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 1d0778ff217c..af3ac89156fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -108,7 +108,6 @@ rk808: pmic@1b {
 		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
-		rockchip,system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index e17311e09082..9d5d674735ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -174,7 +174,6 @@ rk808: pmic@1b {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&pmic_sleep>;
-		rockchip,system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index 231db0305a03..5c154b20d6d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -68,7 +68,6 @@ rk808: pmic@1b {
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
-		rockchip,system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c706db0ee9ec..3df29a7c5091 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -278,7 +278,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index c133e8d64b2a..174b4e34f23e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -225,7 +225,6 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rtc_clko_wifi";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 4944d78a0a1c..f638d00adfd9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -301,7 +301,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vsys_3v3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 73be38a53796..5e5ed71d29cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -180,7 +180,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index b788ae4f47f0..f9f25a663d98 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -241,7 +241,6 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 0541dfce924d..f04a755416dd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -241,7 +241,6 @@ rk808: pmic@1b {
 		clock-output-names = "rtc_clko_soc", "rtc_clko_wifi";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index c1edca3872c7..1f1998b80e7f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -185,7 +185,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 7e07dae33d0f..0fabebd7244c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -260,7 +260,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 188d9dfc297b..3dbbb19b29bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -197,7 +197,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index c7d48d41e184..a6592b22bbb4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -169,7 +169,6 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 7f4b2eba31d4..2b6379c18153 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -259,7 +259,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 1bc1579674e5..66aa905766e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -228,7 +228,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
-- 
2.24.0
