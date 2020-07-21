From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 01/12] ARM: dts: rockchip: Sync ROCKPi N8/N10 dts(i) from
 Linux
Date: Tue, 21 Jul 2020 20:54:35 +0530
Message-ID: <20200721152443.37602-2-jagan@amarulasolutions.com>
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

Sync ROCKPi N8/N10 dts(i) changes from Linux.

commit <afd9eb880414> ("ARM: dts: rockchip: Add Radxa Rock Pi N8 initial
support")

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>
---
Changes for v2:
- collect kerver r-b

 arch/arm/dts/rk3288-rock-pi-n8.dts            |  2 +-
 arch/arm/dts/rk3288-vmarc-som.dtsi            | 80 ++++++-----------
 arch/arm/dts/rk3399pro-rock-pi-n10.dts        |  6 +-
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 87 +++++++++----------
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 65 +++++++-------
 5 files changed, 104 insertions(+), 136 deletions(-)

diff --git a/arch/arm/dts/rk3288-rock-pi-n8.dts b/arch/arm/dts/rk3288-rock-pi-n8.dts
index c8637a50c1..c9894a60e7 100644
--- a/arch/arm/dts/rk3288-rock-pi-n8.dts
+++ b/arch/arm/dts/rk3288-rock-pi-n8.dts
@@ -7,8 +7,8 @@
 
 /dts-v1/;
 #include "rk3288.dtsi"
-#include "rk3288-vmarc-som.dtsi"
 #include <rockchip-radxa-dalang-carrier.dtsi>
+#include "rk3288-vmarc-som.dtsi"
 
 / {
 	model = "Radxa ROCK Pi N8";
diff --git a/arch/arm/dts/rk3288-vmarc-som.dtsi b/arch/arm/dts/rk3288-vmarc-som.dtsi
index 3cffe61cdf..7a9fd40e5b 100644
--- a/arch/arm/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3288-vmarc-som.dtsi
@@ -7,35 +7,17 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/pwm/pwm.h>
 
 / {
 	compatible = "vamrs,rk3288-vmarc-som", "rockchip,rk3288";
 
-	ext_gmac: external-gmac-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "ext_gmac";
-		#clock-cells = <0>;
-	};
-
 	vccio_flash: vccio-flash-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vccio_flash";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
-		startup-delay-us = <150>;
 		vin-supply = <&vcc_io>;
 	};
-
-	vcc_sys: vsys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_sys";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
 };
 
 &emmc {
@@ -45,23 +27,15 @@
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vccio_flash>;
 	status = "okay";
 };
 
 &gmac {
 	assigned-clocks = <&cru SCLK_MAC>;
-	assigned-clock-parents = <&ext_gmac>;
-	clock_in_out = "input";
-	phy-mode = "rgmii";
 	phy-supply = <&vcc_io>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
 	snps,reset-gpio = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
-	tx_delay = <0x30>;
-	rx_delay = <0x10>;
-	max-speed = <1000>;
 };
 
 &i2c0 {
@@ -80,37 +54,37 @@
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
-		vcc1-supply = <&vcc_sys>;
-		vcc2-supply = <&vcc_sys>;
-		vcc3-supply = <&vcc_sys>;
-		vcc4-supply = <&vcc_sys>;
-		vcc6-supply = <&vcc_sys>;
-		vcc7-supply = <&vcc_sys>;
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc6-supply = <&vcc5v0_sys>;
+		vcc7-supply = <&vcc5v0_sys>;
 		vcc8-supply = <&vcc_io>;
 		vcc9-supply = <&vcc_io>;
-		vcc10-supply = <&vcc_sys>;
-		vcc11-supply = <&vcc_sys>;
+		vcc10-supply = <&vcc5v0_sys>;
+		vcc11-supply = <&vcc5v0_sys>;
 		vcc12-supply = <&vcc_io>;
 		vddio-supply = <&vcc_io>;
 
 		regulators {
 			vdd_cpu: DCDC_REG1 {
+				regulator-name = "vdd_arm";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <1400000>;
-				regulator-name = "vdd_arm";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <1250000>;
-				regulator-name = "vdd_gpu";
 				regulator-ramp-delay = <6000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -118,20 +92,20 @@
 			};
 
 			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vcc_ddr";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 				};
 			};
 
 			vcc_io: DCDC_REG4 {
+				regulator-name = "vcc_io";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_io";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <3300000>;
@@ -139,22 +113,22 @@
 			};
 
 			vcc_tp: LDO_REG1 {
+				regulator-name = "vcc_tp";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_tp";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcca_codec: LDO_REG2 {
+				regulator-name = "vcca_codec";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcca_codec";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <3300000>;
@@ -162,11 +136,11 @@
 			};
 
 			vdd_10: LDO_REG3 {
+				regulator-name = "vdd_10";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
-				regulator-name = "vdd_10";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1000000>;
@@ -174,22 +148,22 @@
 			};
 
 			vcc_wl: LDO_REG4 {
+				regulator-name = "vcc_wl";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_wl";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 				};
 			};
 
 			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_sd";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <3300000>;
@@ -197,22 +171,22 @@
 			};
 
 			vdd10_lcd: LDO_REG6 {
+				regulator-name = "vdd10_lcd";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
-				regulator-name = "vdd10_lcd";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc_18: LDO_REG7 {
+				regulator-name = "vcc_18";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_18";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1800000>;
@@ -220,29 +194,29 @@
 			};
 
 			vcc18_lcd: LDO_REG8 {
+				regulator-name = "vcc18_lcd";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc18_lcd";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc_sd: SWITCH_REG1 {
+				regulator-name = "vcc_sd";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vcc_sd";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc_lcd: SWITCH_REG2 {
+				regulator-name = "vcc_lcd";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vcc_lcd";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -277,13 +251,11 @@
 		};
 
 		sdmmc_clk: sdmmc-clk {
-			rockchip,pins =
-				<6 RK_PC4 1 &pcfg_pull_none_drv_8ma>;
+			rockchip,pins = <6 RK_PC4 1 &pcfg_pull_none_drv_8ma>;
 		};
 
 		sdmmc_cmd: sdmmc-cmd {
-			rockchip,pins =
-				<6 RK_PC5 1 &pcfg_pull_up_drv_8ma>;
+			rockchip,pins = <6 RK_PC5 1 &pcfg_pull_up_drv_8ma>;
 		};
 	};
 };
diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10.dts b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
index 6ac2d4d721..bf026786fa 100644
--- a/arch/arm/dts/rk3399pro-rock-pi-n10.dts
+++ b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
@@ -8,11 +8,15 @@
 /dts-v1/;
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
-#include "rk3399pro-vmarc-som.dtsi"
 #include <rockchip-radxa-dalang-carrier.dtsi>
+#include "rk3399pro-vmarc-som.dtsi"
 
 / {
 	model = "Radxa ROCK Pi N10";
 	compatible = "radxa,rockpi-n10", "vamrs,rk3399pro-vmarc-som",
 		     "rockchip,rk3399pro";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
 };
diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
index 6fd17e8a81..37ed95d5f7 100644
--- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
@@ -11,32 +11,6 @@
 
 / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
-
-	clkin_gmac: external-gmac-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "clkin_gmac";
-		#clock-cells = <0>;
-	};
-
-	vcc12v_dcin: vcc12v-dcin-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc12v_dcin";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_dcin>;
-	};
 };
 
 &cpu_l0 {
@@ -61,23 +35,14 @@
 
 &gmac {
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
-	assigned-clock-parents = <&clkin_gmac>;
-	clock_in_out = "input";
 	phy-supply = <&vcc_lan>;
-	phy-mode = "rgmii";
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
 	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
-	tx_delay = <0x28>;
-	rx_delay = <0x11>;
 };
 
 &i2c0 {
 	clock-frequency = <400000>;
-	i2c-scl-rising-time-ns = <180>;
 	i2c-scl-falling-time-ns = <30>;
+	i2c-scl-rising-time-ns = <180>;
 	status = "okay";
 
 	rk809: pmic@20 {
@@ -297,11 +262,48 @@
 	};
 };
 
+&i2c1 {
+	i2c-scl-falling-time-ns = <30>;
+	i2c-scl-rising-time-ns = <140>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD6 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
 &io_domains {
 	status = "okay";
 	bt656-supply = <&vcca_1v8>;
-	sdmmc-supply = <&vccio_sd>;
 	gpio1830-supply = <&vccio_3v0>;
+	sdmmc-supply = <&vccio_sd>;
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <4 RK_PD6 0 &pcfg_pull_up>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC2 0 &pcfg_pull_up>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -323,16 +325,7 @@
 };
 
 &tsadc {
-	status = "okay";
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <1>;
-};
-
-&pinctrl {
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins =
-				<1 RK_PC2 0 &pcfg_pull_up>;
-		};
-	};
+	status = "okay";
 };
diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
index 3e54f38f0a..450e5bb5af 100644
--- a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -8,36 +8,44 @@
 #include <dt-bindings/pwm/pwm.h>
 
 / {
-	chosen {
-		stdout-path = "serial2:1500000n8";
+	clkin_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clkin_gmac";
+		#clock-cells = <0>;
 	};
-};
 
-&gmac {
-	status = "okay";
-};
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
 
-&i2c1 {
-	status = "okay";
-	i2c-scl-rising-time-ns = <140>;
-	i2c-scl-falling-time-ns = <30>;
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
 };
 
-&i2c2 {
+&gmac {
+	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
 	status = "okay";
-	clock-frequency = <400000>;
-
-	hym8563: hym8563@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-		clock-output-names = "hym8563";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
-		interrupt-parent = <&gpio4>;
-		interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
-	};
 };
 
 &pwm0 {
@@ -68,12 +76,3 @@
 &uart2 {
 	status = "okay";
 };
-
-&pinctrl {
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins =
-				<4 RK_PD6 0 &pcfg_pull_up>;
-		};
-	};
-};
-- 
2.25.1
