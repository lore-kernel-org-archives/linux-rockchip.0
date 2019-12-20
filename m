From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3399-evb: sort nodes in alphabetical order
Date: Fri, 20 Dec 2019 15:45:37 +0100
Message-ID: <20191220144537.30867-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Sort nodes in alphabetical order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 66 ++++++++++++++---------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca4..6e8b63db2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -134,6 +134,39 @@
 	status = "okay";
 };
 
+&pcie0 {
+	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "disabled";
+};
+
+&pcie_phy {
+	status = "disabled";
+};
+
+&pinctrl {
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		pmic_dvs2: pmic-dvs2 {
+			rockchip,pins =
+				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins =
+				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &pwm0 {
 	status = "okay";
 };
@@ -154,18 +187,6 @@
 	status = "okay";
 };
 
-&pcie_phy {
-	status = "disabled";
-};
-
-&pcie0 {
-	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
-	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn_cpm>;
-	status = "disabled";
-};
-
 &u2phy0 {
 	status = "okay";
 };
@@ -203,24 +224,3 @@
 &usb_host1_ohci {
 	status = "okay";
 };
-
-&pinctrl {
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins =
-				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		pmic_dvs2: pmic-dvs2 {
-			rockchip,pins =
-				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-	};
-
-	usb2 {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins =
-				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-- 
2.11.0
