From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] ARM: dts: rockchip: Add USB for RockPI N8/N10
Date: Mon, 20 Jul 2020 16:32:28 +0530
Message-ID: <20200720110230.367985-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Radxa dalang carrier board has 2x USB 2.0 and 1x USB 3.0
ports.

This patch adds support to enable all these USB ports for
N10 and N8 combinations SBCs.

Note that the USB 3.0 port on RockPI N8 combination works
as USB 2.0 OTG since it is driven from RK3288.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note:
- depends on https://lkml.org/lkml/2020/7/20/446

 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 42 ++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 18 +++++
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 78 +++++++++++++++++++
 3 files changed, 138 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-vmarc-som.dtsi b/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
index 0bcb9f067d66..abe3c01d13aa 100644
--- a/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
@@ -267,4 +267,46 @@ sdmmc_cmd: sdmmc-cmd {
 			rockchip,pins = <6 RK_PC5 1 &pcfg_pull_up_drv_8ma>;
 		};
 	};
+
+	vbus_host {
+		usb1_en_oc: usb1-en-oc {
+			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	vbus_typec {
+		usb0_en_oc: usb0-en-oc {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&usbphy {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1 {
+	status = "okay";
+};
+
+&usb_otg {
+	status = "okay";
+};
+
+&vbus_host {
+	enable-active-high;
+	gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>; /* USB1_EN_OC# */
+};
+
+&vbus_typec {
+	enable-active-high;
+	gpio = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>; /* USB0_EN_OC# */
 };
diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
index 450e5bb5af0b..d2b6ead148a2 100644
--- a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -33,6 +33,24 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc12v_dcin>;
 	};
+
+	vbus_host: vbus-host {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb1_en_oc>;
+		regulator-name = "vbus_host"; /* HOST-5V */
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vbus_typec: vbus-typec {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb0_en_oc>;
+		regulator-name = "vbus_typec";
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &gmac {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 37ed95d5f7e9..111d6cf9a4e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -304,6 +304,18 @@ pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC2 0 &pcfg_pull_up>;
 		};
 	};
+
+	vbus_host {
+		usb1_en_oc: usb1-en-oc {
+			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	vbus_typec {
+		usb0_en_oc: usb0-en-oc {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -324,8 +336,74 @@ &sdmmc {
 	max-frequency = <150000000>;
 };
 
+&tcphy0 {
+	status = "okay";
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <1>;
 	status = "okay";
 };
+
+&u2phy0 {
+	status = "okay";
+
+	u2phy0_otg: otg-port {
+		phy-supply = <&vbus_typec>;
+		status = "okay";
+	};
+
+	u2phy0_host: host-port {
+		phy-supply = <&vbus_host>;
+		status = "okay";
+	};
+};
+
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_host: host-port {
+		phy-supply = <&vbus_host>;
+		status = "okay";
+	};
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usbdrd3_0 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+};
+
+&vbus_host {
+	enable-active-high;
+	gpio = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>; /* USB1_EN_OC# */
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb1_en_oc>;
+};
+
+&vbus_typec {
+	enable-active-high;
+	gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>; /* USB0_EN_OC# */
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_en_oc>;
+};
-- 
2.25.1
