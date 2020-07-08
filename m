From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 5/7] arm64: dts: rockchip: Trivial cleanups for RockPI N10
Date: Wed,  8 Jul 2020 15:35:26 +0530
Message-ID: <20200708100528.419035-6-jagan@amarulasolutions.com>
References: <20200708100528.419035-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200708100528.419035-1-jagan@amarulasolutions.com>
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
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>, Tom Cubie <tom@radxa.com>
List-Id: linux-rockchip.vger.kernel.org

Radxa dalang carrier boards are used to mount vmarc SoM's
of rk3399pro and rk3288 to make complete SBC.

So, this patch adds trivial changes to properties.
- move common properties into radxa dalang carrier dtsi.
- maintain ascending order for nodes, properties.
- change the order of dtsi include so-that common properties
  will reflect in main dts.
- drop unnecessary header includes.

No functionally changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399pro-rock-pi-n10.dts        |  2 +-
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 98 ++++++++++---------
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 67 ++++++-------
 3 files changed, 85 insertions(+), 82 deletions(-)

diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10.dts b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
index 6ac2d4d721..8001635182 100644
--- a/arch/arm/dts/rk3399pro-rock-pi-n10.dts
+++ b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
@@ -8,8 +8,8 @@
 /dts-v1/;
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
-#include "rk3399pro-vmarc-som.dtsi"
 #include <rockchip-radxa-dalang-carrier.dtsi>
+#include "rk3399pro-vmarc-som.dtsi"
 
 / {
 	model = "Radxa ROCK Pi N10";
diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
index 0a516334f1..63eb498b36 100644
--- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
@@ -7,35 +7,12 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/pwm/pwm.h>
 
 / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
 
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
+	chosen {
+		stdout-path = "serial2:1500000n8";
 	};
 };
 
@@ -61,17 +38,13 @@
 
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
+};
+
+&hym8563 {
+	interrupt-parent = <&gpio4>;
+	interrupts = <RK_PD6 IRQ_TYPE_LEVEL_LOW>;
 };
 
 &i2c0 {
@@ -297,16 +270,53 @@
 	};
 };
 
-&io_domains {
+&i2c1 {
+	i2c-scl-rising-time-ns = <140>;
+	i2c-scl-falling-time-ns = <30>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
 	status = "okay";
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
+&io_domains {
 	bt656-supply = <&vcca_1v8>;
 	sdmmc-supply = <&vccio_sd>;
 	gpio1830-supply = <&vccio_3v0>;
+	status = "okay";
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
-	status = "okay";
 	pmu1830-supply = <&vcc_1v8>;
+	status = "okay";
 };
 
 &sdhci {
@@ -317,17 +327,13 @@
 	status = "okay";
 };
 
+&sdmmc {
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	max-frequency = <150000000>;
+};
+
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
index df3712aedf..450e5bb5af 100644
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
@@ -52,10 +60,8 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	vqmmc-supply = <&vccio_sd>;
-	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	status = "okay";
@@ -70,12 +76,3 @@
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
