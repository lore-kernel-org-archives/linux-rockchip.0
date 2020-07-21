From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 04/12] ARM: dts: rockchip: Add USB for RockPI N8/N10
Date: Tue, 21 Jul 2020 20:54:38 +0530
Message-ID: <20200721152443.37602-5-jagan@amarulasolutions.com>
References: <20200721152443.37602-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721152443.37602-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Radxa dalang carrier board has 2x USB 2.0 and 1x USB 3.0
ports.

This patch adds support to enable all these USB ports for
N10 and N8 combinations SBCs.

Note that the USB 3.0 port on RockPI N8 combination works
as USB 2.0 OTG since it is driven from RK3288.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm/dts/rk3288-vmarc-som.dtsi            | 42 ++++++++++
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 78 +++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 18 +++++
 3 files changed, 138 insertions(+)

diff --git a/arch/arm/dts/rk3288-vmarc-som.dtsi b/arch/arm/dts/rk3288-vmarc-som.dtsi
index 7a9fd40e5b..72a503e50d 100644
--- a/arch/arm/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3288-vmarc-som.dtsi
@@ -258,4 +258,46 @@
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
diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
index 37ed95d5f7..111d6cf9a4 100644
--- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
@@ -304,6 +304,18 @@
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
@@ -324,8 +336,74 @@
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
diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
index 450e5bb5af..d2b6ead148 100644
--- a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -33,6 +33,24 @@
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
-- 
2.25.1
