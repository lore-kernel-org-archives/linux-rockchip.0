From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 4/6] arm64: dts: rk3399: Sync v5.7-rc1 from Linux
Date: Sat, 25 Apr 2020 16:23:17 +0530
Message-ID: <20200425105319.12009-5-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200425105319.12009-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Sync rk3399 dts(i) files from v5.7-rc1 linux-next.

Reason:
To get updated PCIe nodes and properties on respective
dts(i) files.

Summary:
- sync won't include new board dts(i)
- sync will add required files used on respective dts(i)
- rk3399-puma-u-boot.dtsi spiflash label changed to norflash
- move puma.dtsi bios_enable into rk3399-puma-u-boot.dtsi
- move legacy max-frequency of sdhci into rk3399-u-boot.dtsi
- update cross-ec-[keyboard|sbs].dtsi path as per U-Boot

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/cros-ec-keyboard.dtsi      |  10 +-
 arch/arm/dts/cros-ec-sbs.dtsi           |  39 +-
 arch/arm/dts/rk3399-evb.dts             | 520 +++++++++++-----
 arch/arm/dts/rk3399-ficus.dts           |   6 +
 arch/arm/dts/rk3399-firefly.dts         | 251 ++++++--
 arch/arm/dts/rk3399-gru-bob.dts         |  16 +-
 arch/arm/dts/rk3399-gru-chromebook.dtsi |  40 +-
 arch/arm/dts/rk3399-gru-kevin.dts       |  34 +-
 arch/arm/dts/rk3399-gru.dtsi            |  90 ++-
 arch/arm/dts/rk3399-khadas-edge.dtsi    |   3 +
 arch/arm/dts/rk3399-leez-p710.dts       |  36 +-
 arch/arm/dts/rk3399-nanopc-t4.dts       |  47 +-
 arch/arm/dts/rk3399-nanopi4.dtsi        |  66 +-
 arch/arm/dts/rk3399-orangepi.dts        |  79 ++-
 arch/arm/dts/rk3399-puma-u-boot.dtsi    |  25 +-
 arch/arm/dts/rk3399-puma.dtsi           | 567 +++++++----------
 arch/arm/dts/rk3399-roc-pc.dts          |   3 +-
 arch/arm/dts/rk3399-roc-pc.dtsi         |  35 +-
 arch/arm/dts/rk3399-rock-pi-4.dts       | 129 ++++
 arch/arm/dts/rk3399-rock960.dts         |  49 ++
 arch/arm/dts/rk3399-rock960.dtsi        |  13 +-
 arch/arm/dts/rk3399-rockpro64.dts       | 751 +---------------------
 arch/arm/dts/rk3399-rockpro64.dtsi      | 797 ++++++++++++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi         |   1 +
 arch/arm/dts/rk3399.dtsi                | 583 ++++++++++-------
 25 files changed, 2538 insertions(+), 1652 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dtsi

diff --git a/arch/arm/dts/cros-ec-keyboard.dtsi b/arch/arm/dts/cros-ec-keyboard.dtsi
index 9c7fb0acae..4a0c1037fb 100644
--- a/arch/arm/dts/cros-ec-keyboard.dtsi
+++ b/arch/arm/dts/cros-ec-keyboard.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Keyboard dts fragment for devices that use cros-ec-keyboard
  *
  * Copyright (c) 2014 Google, Inc
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
 */
 
 #include <dt-bindings/input/input.h>
@@ -22,6 +19,7 @@
 			MATRIX_KEY(0x00, 0x02, KEY_F1)
 			MATRIX_KEY(0x00, 0x03, KEY_B)
 			MATRIX_KEY(0x00, 0x04, KEY_F10)
+			MATRIX_KEY(0x00, 0x05, KEY_RO)
 			MATRIX_KEY(0x00, 0x06, KEY_N)
 			MATRIX_KEY(0x00, 0x08, KEY_EQUAL)
 			MATRIX_KEY(0x00, 0x0a, KEY_RIGHTALT)
@@ -34,6 +32,7 @@
 			MATRIX_KEY(0x01, 0x08, KEY_APOSTROPHE)
 			MATRIX_KEY(0x01, 0x09, KEY_F9)
 			MATRIX_KEY(0x01, 0x0b, KEY_BACKSPACE)
+			MATRIX_KEY(0x01, 0x0c, KEY_HENKAN)
 
 			MATRIX_KEY(0x02, 0x00, KEY_LEFTCTRL)
 			MATRIX_KEY(0x02, 0x01, KEY_TAB)
@@ -45,6 +44,7 @@
 			MATRIX_KEY(0x02, 0x07, KEY_102ND)
 			MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)
 			MATRIX_KEY(0x02, 0x09, KEY_F8)
+			MATRIX_KEY(0x02, 0x0a, KEY_YEN)
 
 			MATRIX_KEY(0x03, 0x01, KEY_GRAVE)
 			MATRIX_KEY(0x03, 0x02, KEY_F2)
@@ -52,7 +52,9 @@
 			MATRIX_KEY(0x03, 0x04, KEY_F5)
 			MATRIX_KEY(0x03, 0x06, KEY_6)
 			MATRIX_KEY(0x03, 0x08, KEY_MINUS)
+			MATRIX_KEY(0x03, 0x09, KEY_F13)
 			MATRIX_KEY(0x03, 0x0b, KEY_BACKSLASH)
+			MATRIX_KEY(0x03, 0x0c, KEY_MUHENKAN)
 
 			MATRIX_KEY(0x04, 0x00, KEY_RIGHTCTRL)
 			MATRIX_KEY(0x04, 0x01, KEY_A)
diff --git a/arch/arm/dts/cros-ec-sbs.dtsi b/arch/arm/dts/cros-ec-sbs.dtsi
index dfe5ea6ca2..71f5c5ecce 100644
--- a/arch/arm/dts/cros-ec-sbs.dtsi
+++ b/arch/arm/dts/cros-ec-sbs.dtsi
@@ -1,8 +1,45 @@
-// SPDX-License-Identifier: GPL-2.0
 /*
  * Smart battery dts fragment for devices that use cros-ec-sbs
  *
  * Copyright (c) 2015 Google, Inc
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 &i2c_tunnel {
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index c72719c0d3..694b0d08d6 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -1,86 +1,18 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * (C) Copyright 2016 Rockchip Electronics Co., Ltd
+ * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
  */
 
 /dts-v1/;
 #include <dt-bindings/pwm/pwm.h>
-#include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3399.dtsi"
 
 / {
 	model = "Rockchip RK3399 Evaluation Board";
-	compatible = "rockchip,rk3399-evb", "rockchip,rk3399",
-		     "google,rk3399evb-rev2";
-
-	chosen {
-		stdout-path = &uart2;
-	};
-
-	vdd_center: vdd-center {
-		compatible = "pwm-regulator";
-		pwms = <&pwm3 0 25000 1>;
-		regulator-name = "vdd_center";
-		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1400000>;
-		regulator-init-microvolt = <950000>;
-		regulator-always-on;
-		regulator-boot-on;
-		status = "okay";
-	};
-
-	vccsys: vccsys {
-		compatible = "regulator-fixed";
-		regulator-name = "vccsys";
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	vcc3v3_sys: vcc3v3-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
-	vcc_phy: vcc-phy-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_phy";
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	vcc5v0_host: vcc5v0-host-en {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		gpio = <&gpio4 25 GPIO_ACTIVE_HIGH>;
-	};
-
-	vcc5v0_typec0: vcc5v0-typec0-en {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_typec0";
-		gpio = <&gpio1 3 GPIO_ACTIVE_HIGH>;
-	};
-
-	vcc5v0_typec1: vcc5v0-typec1-en {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_typec1";
-		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
-	};
-
-	clkin_gmac: external-gmac-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "clkin_gmac";
-		#clock-cells = <0>;
-	};
+	compatible = "rockchip,rk3399-evb", "rockchip,rk3399";
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		power-supply = <&vccsys>;
-		enable-gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>;
 		brightness-levels = <
 			  0   1   2   3   4   5   6   7
 			  8   9  10  11  12  13  14  15
@@ -116,18 +48,98 @@
 			248 249 250 251 252 253 254 255>;
 		default-brightness-level = <200>;
 		pwms = <&pwm0 0 25000 0>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm0_pin>;
-		pwm-delay-us = <10000>;
-		status = "disabled";
 	};
 
-	panel:panel {
-		compatible = "simple-panel";
-		power-supply = <&vcc33_lcd>;
+	edp_panel: edp-panel {
+		compatible ="lg,lp079qx1-sp0v";
 		backlight = <&backlight>;
-		/*enable-gpios = <&gpio4 18 GPIO_ACTIVE_HIGH>;*/
-		status = "disabled";
+		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
+		power-supply = <&vcc3v3_s0>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
+
+	clkin_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clkin_gmac";
+		#clock-cells = <0>;
+	};
+
+	vdd_center: vdd-center {
+		compatible = "pwm-regulator";
+		pwms = <&pwm3 0 25000 0>;
+		regulator-name = "vdd_center";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-always-on;
+		regulator-boot-on;
+		status = "okay";
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+};
+
+&edp {
+	status = "okay";
+	force-hpd;
+
+	ports {
+		edp_out: port@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			edp_out_panel: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&panel_in_edp>;
+			};
+		};
 	};
 };
 
@@ -135,24 +147,253 @@
 	status = "okay";
 };
 
-&pwm0 {
+&gmac {
+	assigned-clocks = <&cru SCLK_RMII_SRC>;
+	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-supply = <&vcc_phy>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
 	status = "okay";
 };
 
-&pwm2 {
+&i2c0 {
 	status = "okay";
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		vcc10-supply = <&vcc3v3_sys>;
+		vcc11-supply = <&vcc3v3_sys>;
+		vcc12-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc1v8_pmu>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-name = "vdd_log";
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-name = "vdd_cpu_l";
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG4 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG1 {
+				regulator-name = "vcc1v8_dvp";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v0_tp: LDO_REG2 {
+				regulator-name = "vcc3v0_tp";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmu: LDO_REG3 {
+				regulator-name = "vcc1v8_pmu";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_sd: LDO_REG4 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcca3v0_codec: LDO_REG5 {
+				regulator-name = "vcca3v0_codec";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-name = "vcc_1v5";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcca1v8_codec: LDO_REG7 {
+				regulator-name = "vcca1v8_codec";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG8 {
+				regulator-name = "vcc_3v0";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_s3: SWITCH_REG1 {
+				regulator-name = "vcc3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_s0: SWITCH_REG2 {
+				regulator-name = "vcc3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	vdd_cpu_b: regulator@40 {
+		compatible = "silergy,syr827";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: regulator@41 {
+		compatible = "silergy,syr828";
+		reg = <0x41>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
 };
 
-&pwm3 {
+&pwm0 {
 	status = "okay";
 };
 
-&saradc {
+&pwm2 {
 	status = "okay";
 };
 
-&sdmmc {
-	bus-width = <4>;
+&pwm3 {
 	status = "okay";
 };
 
@@ -164,115 +405,76 @@
 	status = "okay";
 };
 
-&uart2 {
-	status = "okay";
+&pcie_phy {
+	status = "disabled";
 };
 
-&usb_host0_ehci {
-	status = "okay";
+&pcie0 {
+	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "disabled";
 };
 
-&usb_host0_ohci {
+&u2phy0 {
 	status = "okay";
 };
 
-&usbdrd3_0 {
-	vbus-supply = <&vcc5v0_typec0>;
+&u2phy0_host {
+	phy-supply = <&vcc5v0_host>;
 	status = "okay";
 };
 
-&usb_host1_ehci {
+&u2phy1 {
 	status = "okay";
 };
 
-&usb_host1_ohci {
+&u2phy1_host {
+	phy-supply = <&vcc5v0_host>;
 	status = "okay";
 };
 
-&usbdrd3_1 {
-	vbus-supply = <&vcc5v0_typec1>;
+&uart2 {
 	status = "okay";
 };
 
-&i2c0 {
+&usb_host0_ehci {
 	status = "okay";
-	clock-frequency = <400000>;
-	i2c-scl-falling-time-ns = <50>;
-	i2c-scl-rising-time-ns = <100>;
-
-	rk808: pmic@1b {
-		compatible = "rockchip,rk808";
-		clock-output-names = "xin32k", "wifibt_32kin";
-		interrupt-parent = <&gpio0>;
-		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
-		reg = <0x1b>;
-		rockchip,system-power-controller;
-		#clock-cells = <1>;
-		status = "okay";
+};
 
-		vcc12-supply = <&vcc3v3_sys>;
+&usb_host0_ohci {
+	status = "okay";
+};
 
-		regulators {
-			vcc33_lcd: SWITCH_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc33_lcd";
-			};
-		};
-	};
+&usb_host1_ehci {
+	status = "okay";
 };
 
-&mipi_dsi {
-	status = "disabled";
-	rockchip,panel = <&panel>;
-	display-timings {
-		timing0 {
-		bits-per-pixel = <24>;
-		clock-frequency = <160000000>;
-		hfront-porch = <120>;
-		hsync-len = <20>;
-		hback-porch = <21>;
-		hactive = <1200>;
-		vfront-porch = <21>;
-		vsync-len = <3>;
-		vback-porch = <18>;
-		vactive = <1920>;
-		hsync-active = <0>;
-		vsync-active = <0>;
-		de-active = <1>;
-		pixelclk-active = <0>;
-		};
-	};
+&usb_host1_ohci {
+	status = "okay";
 };
 
 &pinctrl {
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
-				<1 21 RK_FUNC_GPIO &pcfg_pull_up>;
+				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+	};
 
-		pmic_dvs2: pmic-dvs2 {
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins =
-				<1 18 RK_FUNC_GPIO &pcfg_pull_down>;
+				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 };
 
-&gmac {
-        phy-supply = <&vcc_phy>;
-	phy-mode = "rgmii";
-	clock_in_out = "input";
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
-	assigned-clocks = <&cru SCLK_RMII_SRC>;
-	assigned-clock-parents = <&clkin_gmac>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
-	tx_delay = <0x28>;
-	rx_delay = <0x11>;
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-ficus.dts b/arch/arm/dts/rk3399-ficus.dts
index 6b059bd7a0..ebe2ee77ba 100644
--- a/arch/arm/dts/rk3399-ficus.dts
+++ b/arch/arm/dts/rk3399-ficus.dts
@@ -146,6 +146,12 @@
 	};
 };
 
+&spi1 {
+	/* On both Low speed and High speed expansion */
+	cs-gpios = <0>, <&gpio4 RK_PA6 0>, <&gpio4 RK_PA7 0>;
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
index 89c67fd24c..d63faf38cc 100644
--- a/arch/arm/dts/rk3399-firefly.dts
+++ b/arch/arm/dts/rk3399-firefly.dts
@@ -1,19 +1,20 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
  */
 
 /dts-v1/;
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pwm/pwm.h>
-#include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
 
 / {
 	model = "Firefly-RK3399 Board";
 	compatible = "firefly,firefly-rk3399", "rockchip,rk3399";
 
 	chosen {
-		stdout-path = &uart2;
+		stdout-path = "serial2:1500000n8";
 	};
 
 	backlight: backlight {
@@ -63,6 +64,48 @@
 		#clock-cells = <0>;
 	};
 
+	dc_12v: dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwrbtn>;
+
+		power {
+			debounce-interval = <100>;
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "GPIO Key Power";
+			linux,code = <KEY_POWER>;
+			wakeup-source;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
+
+		work-led {
+			label = "work";
+			default-state = "on";
+			gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		};
+
+		diy-led {
+			label = "diy";
+			default-state = "off";
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
 	rt5640-sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "rockchip,rt5640-codec";
@@ -102,15 +145,27 @@
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};
 
+	/* switched by pmic_sleep */
+	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8>;
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie_drv>;
+		pinctrl-0 = <&pcie_pwr_en>;
 		regulator-name = "vcc3v3_pcie";
 		regulator-always-on;
 		regulator-boot-on;
+		vin-supply = <&dc_12v>;
 	};
 
 	vcc3v3_sys: vcc3v3-sys {
@@ -120,32 +175,29 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
 	};
 
+	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&host_vbus_drv>;
+		pinctrl-0 = <&vcc5v0_host_en>;
 		regulator-name = "vcc5v0_host";
 		regulator-always-on;
+		vin-supply = <&vcc_sys>;
 	};
 
-	vcc5v0_sys: vcc5v0-sys {
+	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
+		regulator-name = "vcc_sys";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc_phy: vcc-phy-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_phy";
-		regulator-always-on;
-		regulator-boot-on;
+		vin-supply = <&dc_12v>;
 	};
 
 	vdd_log: vdd-log {
@@ -156,16 +208,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <430000>;
 		regulator-max-microvolt = <1400000>;
-		regulator-init-microvolt = <950000>;
-	};
-
-	vccadc_ref: vccadc-ref {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc1v8_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_sys>;
 	};
 };
 
@@ -201,15 +244,22 @@
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	assigned-clock-parents = <&clkin_gmac>;
 	clock_in_out = "input";
-	phy-supply = <&vcc_phy>;
+	phy-supply = <&vcc_lan>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>;
 	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
-	tx_delay = <0x33>;
-	rx_delay = <0x45>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
 	status = "okay";
 };
 
@@ -231,16 +281,16 @@
 		rockchip,system-power-controller;
 		wakeup-source;
 
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
 		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-		vcc10-supply = <&vcc3v3_sys>;
-		vcc11-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc_sys>;
+		vcc10-supply = <&vcc_sys>;
+		vcc11-supply = <&vcc_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
 		vddio-supply = <&vcc1v8_pmu>;
 
@@ -301,12 +351,12 @@
 				};
 			};
 
-			vcc3v0_tp: LDO_REG2 {
-				regulator-name = "vcc3v0_tp";
+			vcc2v8_dvp: LDO_REG2 {
+				regulator-name = "vcc2v8_dvp";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -324,8 +374,8 @@
 				};
 			};
 
-			vcc_sd: LDO_REG4 {
-				regulator-name = "vcc_sd";
+			vcc_sdio: LDO_REG4 {
+				regulator-name = "vcc_sdio";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -382,7 +432,7 @@
 				};
 			};
 
-			vcc3v3_s3: SWITCH_REG1 {
+			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
 				regulator-name = "vcc3v3_s3";
 				regulator-always-on;
 				regulator-boot-on;
@@ -412,7 +462,7 @@
 		regulator-ramp-delay = <1000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -429,7 +479,7 @@
 		regulator-ramp-delay = <1000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -476,19 +526,16 @@
 &i2s0 {
 	rockchip,playback-channels = <8>;
 	rockchip,capture-channels = <8>;
-	#sound-dai-cells = <0>;
 	status = "okay";
 };
 
 &i2s1 {
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
-	#sound-dai-cells = <0>;
 	status = "okay";
 };
 
 &i2s2 {
-	#sound-dai-cells = <0>;
 	status = "okay";
 };
 
@@ -497,7 +544,7 @@
 
 	bt656-supply = <&vcc1v8_dvp>;
 	audio-supply = <&vcca1v8_codec>;
-	sdmmc-supply = <&vcc_sd>;
+	sdmmc-supply = <&vcc_sdio>;
 	gpio1830-supply = <&vcc_3v0>;
 };
 
@@ -509,7 +556,7 @@
 	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn>;
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
 	status = "okay";
 };
 
@@ -532,7 +579,7 @@
 	};
 
 	pcie {
-		pcie_drv: pcie-drv {
+		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
@@ -570,10 +617,26 @@
 	};
 
 	usb2 {
-		host_vbus_drv: host-vbus-drv {
+		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		work_led_gpio: work_led-gpio {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		diy_led_gpio: diy_led-gpio {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm0 {
@@ -585,24 +648,70 @@
 };
 
 &saradc {
-	vref-supply = <&vccadc_ref>;
+	vref-supply = <&vcca1v8_s3>;
 	status = "okay";
 };
 
+&sdio0 {
+	/* WiFi & BT combo module Ampak AP6356S */
+	bus-width = <4>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+
+	/* Power supply */
+	vqmmc-supply = &vcc1v8_s3;	/* IO line */
+	vmmc-supply = &vcc_sdio;	/* card's power */
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		brcm,drive-strength = <5>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
 &sdmmc {
 	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
 	status = "okay";
 };
 
 &sdhci {
 	bus-width = <8>;
-	keep-power-in-suspend;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	non-removable;
 	status = "okay";
 };
 
+&tcphy0 {
+	status = "okay";
+};
+
+&tcphy1 {
+	status = "okay";
+};
+
 &tsadc {
 	/* tshut mode 0:CRU 1:GPIO */
 	rockchip,hw-tshut-mode = <1>;
@@ -662,3 +771,37 @@
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usbdrd3_0 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+	dr_mode = "otg";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
diff --git a/arch/arm/dts/rk3399-gru-bob.dts b/arch/arm/dts/rk3399-gru-bob.dts
index 1ee0dc0d9f..e6c1c94c8d 100644
--- a/arch/arm/dts/rk3399-gru-bob.dts
+++ b/arch/arm/dts/rk3399-gru-bob.dts
@@ -18,11 +18,11 @@
 		     "google,bob", "google,gru", "rockchip,rk3399";
 
 	edp_panel: edp-panel {
-		compatible = "boe,nv101wxmn51", "simple-panel";
+		compatible = "boe,nv101wxmn51";
 		backlight = <&backlight>;
 		power-supply = <&pp3300_disp>;
 
-		ports {
+		port {
 			panel_in_edp: endpoint {
 				remote-endpoint = <&edp_out_panel>;
 			};
@@ -68,12 +68,22 @@
 
 &spi0 {
 	status = "okay";
+
+	cr50@0 {
+		compatible = "google,cr50";
+		reg = <0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <5 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&h1_int_od_l>;
+		spi-max-frequency = <800000>;
+	};
 };
 
 &pinctrl {
 	tpm {
 		h1_int_od_l: h1-int-od-l {
-			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 };
diff --git a/arch/arm/dts/rk3399-gru-chromebook.dtsi b/arch/arm/dts/rk3399-gru-chromebook.dtsi
index c6495adcca..1384dabbdf 100644
--- a/arch/arm/dts/rk3399-gru-chromebook.dtsi
+++ b/arch/arm/dts/rk3399-gru-chromebook.dtsi
@@ -194,20 +194,25 @@
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		brightness-levels = <0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
-				     17 18 19 20 21 22 23 24 25 26 27 28 29 30
-				     31 32 33 34 35 36 37 38 39 40 41 42 43 44
-				     45 46 47 48 49 50 51 52 53 54 55 56 57 58
-				     59 60 61 62 63 64 65 66 67 68 69 70 71 72
-				     73 74 75 76 77 78 79 80 81 82 83 84 85 86
-				     87 88 89 90 91 92 93 94 95 96 97 98 99 100>;
-		default-brightness-level = <51>;
 		enable-gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
 		power-supply = <&pp3300_disp>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bl_en>;
 		pwm-delay-us = <10000>;
 	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l>;
+
+		wake_on_bt: wake-on-bt {
+			label = "Wake-on-Bluetooth";
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WAKEUP>;
+			wakeup-source;
+		};
+	};
 };
 
 &ppvar_bigcpu {
@@ -232,7 +237,6 @@
 &edp {
 	status = "okay";
 
-	rockchip,panel = <&edp_panel>;
 	ports {
 		edp_out: port@1 {
 			reg = <1>;
@@ -287,11 +291,9 @@ ap_i2c_tp: &i2c5 {
 		#pwm-cells = <1>;
 	};
 
-	usbc_extcon1: extcon@1 {
+	usbc_extcon1: extcon1 {
 		compatible = "google,extcon-usbc-cros-ec";
 		google,usb-port-id = <1>;
-
-		#extcon-cells = <0>;
 	};
 };
 
@@ -361,27 +363,27 @@ ap_i2c_tp: &i2c5 {
 &pinctrl {
 	discrete-regulators {
 		pp1500_en: pp1500-en {
-			rockchip,pins = <RK_GPIO0 10 RK_FUNC_GPIO
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO
 					 &pcfg_pull_none>;
 		};
 
 		pp1800_audio_en: pp1800-audio-en {
-			rockchip,pins = <RK_GPIO0 2 RK_FUNC_GPIO
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO
 					 &pcfg_pull_down>;
 		};
 
 		pp3000_en: pp3000-en {
-			rockchip,pins = <RK_GPIO0 12 RK_FUNC_GPIO
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO
 					 &pcfg_pull_none>;
 		};
 
 		pp3300_disp_en: pp3300-disp-en {
-			rockchip,pins = <RK_GPIO4 27 RK_FUNC_GPIO
+			rockchip,pins = <4 RK_PD3 RK_FUNC_GPIO
 					 &pcfg_pull_none>;
 		};
 
 		wlan_module_pd_l: wlan-module-pd-l {
-			rockchip,pins = <RK_GPIO0 4 RK_FUNC_GPIO
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO
 					 &pcfg_pull_down>;
 		};
 	};
@@ -389,10 +391,10 @@ ap_i2c_tp: &i2c5 {
 
 &wifi {
 	wifi_perst_l: wifi-perst-l {
-		rockchip,pins = <2 27 RK_FUNC_GPIO &pcfg_pull_none>;
+		rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 	};
 
 	wlan_host_wake_l: wlan-host-wake-l {
-		rockchip,pins = <0 8 RK_FUNC_GPIO &pcfg_pull_none>;
+		rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 	};
 };
diff --git a/arch/arm/dts/rk3399-gru-kevin.dts b/arch/arm/dts/rk3399-gru-kevin.dts
index 2cc7c47d6a..2bbef9fcbe 100644
--- a/arch/arm/dts/rk3399-gru-kevin.dts
+++ b/arch/arm/dts/rk3399-gru-kevin.dts
@@ -39,11 +39,25 @@
 	};
 
 	edp_panel: edp-panel {
-		compatible = "sharp,lq123p1jx31", "simple-panel";
+		compatible = "sharp,lq123p1jx31";
 		backlight = <&backlight>;
 		power-supply = <&pp3300_disp>;
 
-		ports {
+		panel-timing {
+			clock-frequency = <266666667>;
+			hactive = <2400>;
+			hfront-porch = <48>;
+			hback-porch = <84>;
+			hsync-len = <32>;
+			hsync-active = <0>;
+			vactive = <1600>;
+			vfront-porch = <3>;
+			vback-porch = <120>;
+			vsync-len = <10>;
+			vsync-active = <0>;
+		};
+
+		port {
 			panel_in_edp: endpoint {
 				remote-endpoint = <&edp_out_panel>;
 			};
@@ -118,13 +132,17 @@
 			map0 {
 				trip = <&ppvar_bigcpu_alert>;
 				cooling-device =
-					<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				contribution = <4096>;
 			};
 			map1 {
 				trip = <&ppvar_bigcpu_alert>;
 				cooling-device =
-					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				contribution = <1024>;
 			};
 		};
@@ -286,24 +304,24 @@ ap_i2c_dig: &i2c2 {
 	digitizer {
 		/* Has external pullup */
 		cpu1_dig_irq_l: cpu1-dig-irq-l {
-			rockchip,pins = <2 4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		/* Has external pullup */
 		cpu1_dig_pdct_l: cpu1-dig-pdct-l {
-			rockchip,pins = <2 5 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	discrete-regulators {
 		cpu3_pen_pwr_en: cpu3-pen-pwr-en {
-			rockchip,pins = <4 30 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	pen {
 		cpu1_pen_eject: cpu1-pen-eject {
-			rockchip,pins = <0 13 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 };
diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
index 0e2e047180..34f03cf92d 100644
--- a/arch/arm/dts/rk3399-gru.dtsi
+++ b/arch/arm/dts/rk3399-gru.dtsi
@@ -11,13 +11,7 @@
 
 / {
 	chosen {
-		u-boot,dm-pre-reloc;
 		stdout-path = "serial2:115200n8";
-		u-boot,spl-boot-order = &spi_flash;
-	};
-
-	config {
-		u-boot,spl-payload-offset = <0x40000>;
 	};
 
 	/*
@@ -268,17 +262,11 @@
 	pp5000_usb_a_vbus: pp5000 {
 	};
 
-	gpio_keys: gpio-keys {
-		compatible = "gpio-keys";
-		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake_l>;
-
-		wake_on_bt: wake-on-bt {
-			label = "Wake-on-Bluetooth";
-			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_WAKEUP>;
-			wakeup-source;
-		};
+	ap_rtc_clk: ap-rtc-clk {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		#clock-cells = <0>;
 	};
 
 	max98357a: max98357a {
@@ -354,6 +342,7 @@
 	cpu-supply = <&ppvar_bigcpu>;
 };
 
+
 &cru {
 	assigned-clocks =
 		<&cru PLL_GPLL>, <&cru PLL_CPLL>,
@@ -549,8 +538,7 @@ ap_i2c_audio: &i2c8 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-1 = <&spi1_sleep>;
 
-	spi_flash: spiflash@0 {
-		u-boot,dm-pre-reloc;
+	spiflash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 
@@ -565,16 +553,12 @@ ap_i2c_audio: &i2c8 {
 
 &spi5 {
 	status = "okay";
-	spi-activate-delay = <100>;
-	spi-max-frequency = <3000000>;
-	spi-deactivate-delay = <200>;
 
 	cros_ec: ec@0 {
 		compatible = "google,cros-ec-spi";
 		reg = <0>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
-		ec-interrupt = <&gpio0 1 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
@@ -586,11 +570,9 @@ ap_i2c_audio: &i2c8 {
 			#size-cells = <0>;
 		};
 
-		usbc_extcon0: extcon@0 {
+		usbc_extcon0: extcon0 {
 			compatible = "google,extcon-usbc-cros-ec";
 			google,usb-port-id = <0>;
-
-			#extcon-cells = <0>;
 		};
 	};
 };
@@ -692,29 +674,29 @@ ap_i2c_audio: &i2c8 {
 
 	backlight-enable {
 		bl_en: bl-en {
-			rockchip,pins = <1 17 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	cros-ec {
 		ec_ap_int_l: ec-ap-int-l {
-			rockchip,pins = <RK_GPIO0 1 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	discrete-regulators {
 		sd_io_pwr_en: sd-io-pwr-en {
-			rockchip,pins = <RK_GPIO2 2 RK_FUNC_GPIO
+			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO
 					 &pcfg_pull_none>;
 		};
 
 		sd_pwr_1800_sel: sd-pwr-1800-sel {
-			rockchip,pins = <RK_GPIO2 28 RK_FUNC_GPIO
+			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO
 					 &pcfg_pull_none>;
 		};
 
 		sd_slot_pwr_en: sd-slot-pwr-en {
-			rockchip,pins = <RK_GPIO4 29 RK_FUNC_GPIO
+			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO
 					 &pcfg_pull_none>;
 		};
 	};
@@ -722,17 +704,17 @@ ap_i2c_audio: &i2c8 {
 	codec {
 		/* Has external pullup */
 		headset_int_l: headset-int-l {
-			rockchip,pins = <1 23 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		mic_int: mic-int {
-			rockchip,pins = <1 13 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
 	max98357a {
 		sdmode_en: sdmode-en {
-			rockchip,pins = <1 2 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
@@ -743,7 +725,7 @@ ap_i2c_audio: &i2c8 {
 			 * to hack this as gpio, so the EP could be able to
 			 * de-assert it along and make ClockPM(CPM) work.
 			 */
-			rockchip,pins = <2 26 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -754,20 +736,20 @@ ap_i2c_audio: &i2c8 {
 		 */
 		sdmmc_bus4: sdmmc-bus4 {
 			rockchip,pins =
-				<4 8 RK_FUNC_1 &pcfg_pull_none_8ma>,
-				<4 9 RK_FUNC_1 &pcfg_pull_none_8ma>,
-				<4 10 RK_FUNC_1 &pcfg_pull_none_8ma>,
-				<4 11 RK_FUNC_1 &pcfg_pull_none_8ma>;
+				<4 RK_PB0 1 &pcfg_pull_none_8ma>,
+				<4 RK_PB1 1 &pcfg_pull_none_8ma>,
+				<4 RK_PB2 1 &pcfg_pull_none_8ma>,
+				<4 RK_PB3 1 &pcfg_pull_none_8ma>;
 		};
 
 		sdmmc_clk: sdmmc-clk {
 			rockchip,pins =
-				<4 12 RK_FUNC_1 &pcfg_pull_none_8ma>;
+				<4 RK_PB4 1 &pcfg_pull_none_8ma>;
 		};
 
 		sdmmc_cmd: sdmmc-cmd {
 			rockchip,pins =
-				<4 13 RK_FUNC_1 &pcfg_pull_none_8ma>;
+				<4 RK_PB5 1 &pcfg_pull_none_8ma>;
 		};
 
 		/*
@@ -781,12 +763,12 @@ ap_i2c_audio: &i2c8 {
 		 */
 		sdmmc_cd: sdmmc-cd {
 			rockchip,pins =
-				<0 7 RK_FUNC_1 &pcfg_pull_none>;
+				<0 RK_PA7 1 &pcfg_pull_none>;
 		};
 
 		/* This is where we actually hook up CD; has external pull */
 		sdmmc_cd_gpio: sdmmc-cd-gpio {
-			rockchip,pins = <4 24 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -796,47 +778,47 @@ ap_i2c_audio: &i2c8 {
 			 * Pull down SPI1 CLK/CS/RX/TX during suspend, to
 			 * prevent leakage.
 			 */
-			rockchip,pins = <1 9 RK_FUNC_GPIO &pcfg_pull_down>,
-					<1 10 RK_FUNC_GPIO &pcfg_pull_down>,
-					<1 7 RK_FUNC_GPIO &pcfg_pull_down>,
-					<1 8 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>,
+					<1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_down>,
+					<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>,
+					<1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
 	touchscreen {
 		touch_int_l: touch-int-l {
-			rockchip,pins = <3 13 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <3 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		touch_reset_l: touch-reset-l {
-			rockchip,pins = <4 26 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	trackpad {
 		ap_i2c_tp_pu_en: ap-i2c-tp-pu-en {
-			rockchip,pins = <3 12 RK_FUNC_GPIO &pcfg_output_high>;
+			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_output_high>;
 		};
 
 		trackpad_int_l: trackpad-int-l {
-			rockchip,pins = <1 4 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	wifi: wifi {
 		wlan_module_reset_l: wlan-module-reset-l {
-			rockchip,pins = <1 11 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		bt_host_wake_l: bt-host-wake-l {
 			/* Kevin has an external pull up, but Gru does not */
-			rockchip,pins = <0 3 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	write-protect {
 		ap_fw_wp: ap-fw-wp {
-			rockchip,pins = <1 18 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 };
diff --git a/arch/arm/dts/rk3399-khadas-edge.dtsi b/arch/arm/dts/rk3399-khadas-edge.dtsi
index 4944d78a0a..e87a044774 100644
--- a/arch/arm/dts/rk3399-khadas-edge.dtsi
+++ b/arch/arm/dts/rk3399-khadas-edge.dtsi
@@ -654,9 +654,12 @@
 	sd-uhs-sdr104;
 	vqmmc-supply = <&vcc1v8_s3>;
 	vmmc-supply = <&vccio_sd>;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/dts/rk3399-leez-p710.dts b/arch/arm/dts/rk3399-leez-p710.dts
index 32baa57b94..73be38a537 100644
--- a/arch/arm/dts/rk3399-leez-p710.dts
+++ b/arch/arm/dts/rk3399-leez-p710.dts
@@ -42,14 +42,14 @@
 		regulator-max-microvolt = <5000000>;
 	};
 
-	vcc5v0_sys: vcc5v0-sys {
+	vcc3v3_lan: vcc3v3-lan {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
+		regulator-name = "vcc3v3_lan";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc5v_adp>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vim-supply = <&vcc3v3_sys>;
 	};
 
 	vcc3v3_sys: vcc3v3-sys {
@@ -83,14 +83,14 @@
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_lan: vcc3v3-lan {
+	vcc5v0_sys: vcc5v0-sys {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lan";
+		regulator-name = "vcc5v0_sys";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vim-supply = <&vcc3v3_sys>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc5v_adp>;
 	};
 
 	vdd_log: vdd-log {
@@ -510,6 +510,14 @@
 	};
 };
 
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	non-removable;
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
@@ -522,14 +530,6 @@
 	status = "okay";
 };
 
-&sdhci {
-	bus-width = <8>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
-	non-removable;
-	status = "okay";
-};
-
 &tcphy0 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-nanopc-t4.dts b/arch/arm/dts/rk3399-nanopc-t4.dts
index 84433cf02b..e0d75617bb 100644
--- a/arch/arm/dts/rk3399-nanopc-t4.dts
+++ b/arch/arm/dts/rk3399-nanopc-t4.dts
@@ -52,13 +52,58 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&ir_rx>;
 	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		/*
+		 * With 20KHz PWM and an EVERCOOL EC4007H12SA fan, these levels
+		 * work out to 0, ~1200, ~3000, and 5000RPM respectively.
+		 */
+		cooling-levels = <0 12 18 255>;
+		#cooling-cells = <2>;
+		fan-supply = <&vcc12v0_sys>;
+		pwms = <&pwm1 0 50000 0>;
+	};
+};
+
+&cpu_thermal {
+	trips {
+		cpu_warm: cpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		cpu_hot: cpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			trip = <&cpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map3 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
+&pcie0 {
+	num-lanes = <4>;
+	vpcie3v3-supply = <&vcc3v3_sys>;
 };
 
 &pinctrl {
 	ir {
 		ir_rx: ir-rx {
 			/* external pullup to VCC3V3_SYS, despite being 1.8V :/ */
-			rockchip,pins = <0 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
 		};
 	};
 };
diff --git a/arch/arm/dts/rk3399-nanopi4.dtsi b/arch/arm/dts/rk3399-nanopi4.dtsi
index d325e11728..c88018a0ef 100644
--- a/arch/arm/dts/rk3399-nanopi4.dtsi
+++ b/arch/arm/dts/rk3399-nanopi4.dtsi
@@ -48,7 +48,7 @@
 	};
 
 	/* switched by pmic_sleep */
-	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+	vcc1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
 		regulator-always-on;
 		regulator-boot-on;
@@ -71,6 +71,27 @@
 		vin-supply = <&vcc3v3_sys>;
 	};
 
+	/*
+	 * Really, this is supplied by vcc_1v8, and vcc1v8_s3 only
+	 * drives the enable pin, but we can't quite model that.
+	 */
+	vcca0v9_s3: vcca0v9-s3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		regulator-name = "vcca0v9_s3";
+		vin-supply = <&vcc1v8_s3>;
+	};
+
+	/* As above, actually supplied by vcc3v3_sys */
+	vcca1v8_s3: vcca1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcca1v8_s3";
+		vin-supply = <&vcc1v8_s3>;
+	};
+
 	vbus_typec: vbus-typec {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <5000000>;
@@ -148,15 +169,28 @@
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	clock_in_out = "input";
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
+	pinctrl-0 = <&rgmii_pins>, <&phy_intb>, <&phy_rstb>;
+	phy-handle = <&rtl8211e>;
 	phy-mode = "rgmii";
 	phy-supply = <&vcc3v3_s3>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x28>;
 	rx_delay = <0x11>;
 	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211e: phy@1 {
+			reg = <1>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &gpu {
@@ -171,6 +205,10 @@
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <160>;
@@ -446,6 +484,10 @@
 	status = "okay";
 };
 
+&i2s2 {
+	status = "okay";
+};
+
 &io_domains {
 	bt656-supply = <&vcc_1v8>;
 	audio-supply = <&vcca1v8_codec>;
@@ -464,7 +506,9 @@
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
 	max-link-speed = <2>;
-	num-lanes = <4>;
+	num-lanes = <2>;
+	vpcie0v9-supply = <&vcca0v9_s3>;
+	vpcie1v8-supply = <&vcca1v8_s3>;
 	status = "okay";
 };
 
@@ -481,6 +525,16 @@
 		};
 	};
 
+	phy {
+		phy_intb: phy-intb {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		phy_rstb: phy-rstb {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		cpu_b_sleep: cpu-b-sleep {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/dts/rk3399-orangepi.dts b/arch/arm/dts/rk3399-orangepi.dts
index cf37b96a6b..f9f7246d4d 100644
--- a/arch/arm/dts/rk3399-orangepi.dts
+++ b/arch/arm/dts/rk3399-orangepi.dts
@@ -136,13 +136,13 @@
 		vin-supply = <&vcc_sys>;
 	};
 
-	vcc5v0_typec0: vcc5v0-typec0-regulator {
+	vbus_typec: vbus-typec-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_typec0_en>;
-		regulator-name = "vcc5v0_typec0";
+		pinctrl-0 = <&vcc5v0_typec_en>;
+		regulator-name = "vbus_typec";
 		vin-supply = <&vcc_sys>;
 	};
 
@@ -202,14 +202,27 @@
 	clock_in_out = "input";
 	phy-supply = <&vcc3v3_s3>;
 	phy-mode = "rgmii";
+	phy-handle = <&rtl8211e>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
+	pinctrl-0 = <&rgmii_pins>, <&phy_intb>, <&phy_rstb>;
 	tx_delay = <0x28>;
 	rx_delay = <0x11>;
 	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211e: phy@1 {
+			reg = <1>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &gpu {
@@ -419,6 +432,8 @@
 		compatible = "silergy,syr827";
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cpu_b_sleep>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -436,6 +451,8 @@
 		compatible = "silergy,syr828";
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpu_sleep>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -472,6 +489,7 @@
 		compatible = "asahi-kasei,ak09911";
 		reg = <0x0c>;
 		vdd-supply = <&vcc3v3_s3>;
+		vid-supply = <&vcc3v3_s3>;
 	};
 
 	mpu6500@68 {
@@ -504,6 +522,16 @@
 		pinctrl-0 = <&light_int_l>;
 		vdd-supply = <&vcc3v3_s3>;
 	};
+
+	fusb302@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&chg_cc_int_l>;
+		vbus-supply = <&vbus_typec>;
+	};
 };
 
 &io_domains {
@@ -526,7 +554,25 @@
 		};
 	};
 
+	phy {
+		phy_intb: phy-intb {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		phy_rstb: phy-rstb {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
+		cpu_b_sleep: cpu-b-sleep {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		gpu_sleep: gpu-sleep {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -536,7 +582,7 @@
 	sd {
 		sdmmc0_pwr_h: sdmmc0-pwr-h {
 			rockchip,pins =
-				<RK_GPIO0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -546,7 +592,7 @@
 				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		vcc5v0_typec0_en: vcc5v0-typec0-en {
+		vcc5v0_typec_en: vcc5v0-typec-en {
 			rockchip,pins =
 				<1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -595,6 +641,12 @@
 			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	fusb302 {
+		chg_cc_int_l: chg-cc-int-l {
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pwm0 {
@@ -631,9 +683,12 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
@@ -676,7 +731,7 @@
 	status = "okay";
 
 	u2phy0_otg: otg-port {
-		phy-supply = <&vcc5v0_typec0>;
+		phy-supply = <&vbus_typec>;
 		status = "okay";
 	};
 
@@ -707,12 +762,14 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_reg_on_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
 
diff --git a/arch/arm/dts/rk3399-puma-u-boot.dtsi b/arch/arm/dts/rk3399-puma-u-boot.dtsi
index e664779227..0253c6525f 100644
--- a/arch/arm/dts/rk3399-puma-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-puma-u-boot.dtsi
@@ -13,7 +13,7 @@
        chosen {
                stdout-path = "serial0:115200n8";
                u-boot,spl-boot-order = \
-                       "same-as-spl", &spiflash, &sdhci, &sdmmc;
+                       "same-as-spl", &norflash, &sdhci, &sdmmc;
        };
 
        aliases {
@@ -21,10 +21,23 @@
                spi1 = &spi5;
        };
 
-};
-
-&bios_enable {
-	u-boot,dm-pre-reloc;
+	/*
+	 * The Qseven BIOS_DISABLE signal on the RK3399-Q7 keeps the on-module
+	 * eMMC and SPI flash powered-down initially (in fact it keeps the
+	 * reset signal asserted).  Even though it is an enable signal, we
+	 * model this as a regulator.
+	 */
+	bios_enable: bios_enable {
+		compatible = "regulator-fixed";
+		u-boot,dm-pre-reloc;
+		regulator-name = "bios_enable";
+		enable-active-high;
+		gpio = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
 };
 
 &gpio1 {
@@ -35,6 +48,6 @@
 	u-boot,dm-pre-reloc;
 };
 
-&spiflash {
+&norflash {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 246a892cb7..07694b196f 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -1,30 +1,74 @@
-// SPDX-License-Identifier: GPL-2.0+ OR X11
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
+ * Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
  */
 
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
 
 / {
-	model = "Theobroma Systems RK3399-Q7 SoM";
-	compatible = "tsd,rk3399-q7", "tsd,puma", "rockchip,rk3399";
-
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&leds_pins_puma>;
+		pinctrl-0 = <&led_pin_module>;
 
-		module_led {
+		module-led {
 			label = "module_led";
 			gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
+			panic-indicator;
 		};
+	};
 
-		sd_card_led {
-			label = "sd_card_led";
-			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "mmc0";
+	/*
+	 * Overwrite the opp-table for CPUB as this board uses a different
+	 * regulator (FAN53555) that only allows 10mV steps and therefore
+	 * can't reach the operation point target voltages from rk3399-opp.dtsi
+	 */
+	/delete-node/ opp-table1;
+	cluster1_opp: opp-table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <800000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <830000>;
+			opp-suspend;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <880000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <950000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1030000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1200000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1992000000>;
+			opp-microvolt = <1230000>;
+			turbo-mode;
 		};
 	};
 
@@ -35,78 +79,14 @@
 		#clock-cells = <0>;
 	};
 
-	dw_hdmi_audio: dw-hdmi-audio {
-		status = "enabled";
-		compatible = "rockchip,dw-hdmi-audio";
-		#sound-dai-cells = <0>;
-	};
-
-	hdmi_codec: hdmi-codec {
-		compatible = "simple-audio-card";
-		simple-audio-card,format = "i2s";
-		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,name = "HDMI-CODEC";
-
-		simple-audio-card,cpu {
-			sound-dai = <&i2s2>;
-		};
-
-		simple-audio-card,codec {
-			sound-dai = <&hdmi>;
-		};
-	};
-
-	hdmi_sound: hdmi-sound {
-		status = "disabled";
-		compatible = "simple-audio-card";
-		simple-audio-card,format = "i2s";
-		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,name = "rockchip,hdmi";
-
-		simple-audio-card,cpu {
-			sound-dai = <&i2s2>;
-		};
-		simple-audio-card,codec {
-			sound-dai = <&hdmi>;
-		};
-	};
-
-	usbhub_enable: usbhub_enable {
+	vcc1v2_phy: vcc1v2-phy {
 		compatible = "regulator-fixed";
-		regulator-name = "usbhub_enable";
-		enable-active-low;
-		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&host_vbus_drv>;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
-	/*
-	 * The Qseven BIOS_DISABLE signal on the RK3399-Q7 keeps the on-module
-	 * eMMC and SPI flash powered-down initially (in fact it keeps the
-	 * reset signal asserted).  Even though it is an enable signal, we
-	 * model this as a regulator.
-	 */
-	bios_enable: bios_enable {
-		compatible = "regulator-fixed";
-		regulator-name = "bios_enable";
-		enable-active-high;
-		gpio = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
+		regulator-name = "vcc1v2_phy";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-	};
-
-	vccadc_ref: vccadc-ref {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc1v8_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
 	vcc3v3_sys: vcc3v3-sys {
@@ -116,16 +96,18 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_otg: vcc5v0-otg-regulator {
+	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+		enable-active-low;
 		pinctrl-names = "default";
-		pinctrl-0 = <&otg_vbus_drv>;
-		regulator-name = "vcc5v0_otg";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
 		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
 	vcc5v0_sys: vcc5v0-sys {
@@ -136,48 +118,55 @@
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+};
 
-	vcc_phy: vcc-phy-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_phy";
-		regulator-always-on;
-		regulator-boot-on;
-	};
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_b>;
+};
 
-	vdd_log: vdd-log {
-		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
-		regulator-name = "vdd_log";
-		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1400000>;
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-init-microvolt = <950000>;
-	};
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_l>;
 };
 
 &emmc_phy {
 	status = "okay";
+	drive-impedance-ohm = <33>;
 };
 
 &gmac {
-	phy-supply = <&vcc_phy>;
-	phy-mode = "rgmii";
-	clock_in_out = "input";
-	snps,reset-gpio = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <2 10000 50000>;
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-supply = <&vcc1v2_phy>;
+	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
 	tx_delay = <0x10>;
 	rx_delay = <0x10>;
 	status = "okay";
 };
 
-&hdmi {
-	#sound-dai-cells = <0>;
+&gpu {
+	mali-supply = <&vdd_gpu>;
 	status = "okay";
 };
 
@@ -187,37 +176,17 @@
 	i2c-scl-falling-time-ns = <4>;
 	clock-frequency = <400000>;
 
-	vdd_gpu: vdd_gpu {
-		status = "okay";
-		compatible = "fcs,fan53555";
-		reg = <0x60>;
-		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
-		vin-supply = <&vcc5v0_sys>;
-		regulator-compatible = "fan53555-reg";
-		regulator-name = "vdd_gpu";
-		regulator-min-microvolt = <600000>;
-		regulator-max-microvolt = <1230000>;
-		regulator-ramp-delay = <1000>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-initial-state = <3>;
-			regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
 	rk808: pmic@1b {
 		compatible = "rockchip,rk808";
 		reg = <0x1b>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <22 IRQ_TYPE_LEVEL_LOW>;  // TODO check interrupt?
+		interrupts = <22 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
 		rockchip,system-power-controller;
 		wakeup-source;
-		#clock-cells = <1>;
-		clock-output-names = "xin32k", "rk808-clkout2";
 
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
@@ -234,44 +203,44 @@
 
 		regulators {
 			vdd_center: DCDC_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vdd_center";
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-ramp-delay = <6001>;
-				regulator-name = "vdd_center";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vdd_cpu_l: DCDC_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vdd_cpu_l";
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-ramp-delay = <6001>;
-				regulator-name = "vdd_cpu_l";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
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
 
 			vcc_1v8: DCDC_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vcc_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1800000>;
@@ -279,32 +248,32 @@
 			};
 
 			vcc_ldo1: LDO_REG1 {
-				regulator-boot-on;
+				regulator-name = "vcc_ldo1";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_ldo1";
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc1v8_hdmi: LDO_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vcc1v8_hdmi";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc1v8_hdmi";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc1v8_pmu: LDO_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vcc1v8_pmu";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1800000>;
@@ -312,11 +281,11 @@
 			};
 
 			vcc_sd: LDO_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vcc_sd";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3000000>;
-				regulator-name = "vcc_sd";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <3000000>;
@@ -324,79 +293,105 @@
 			};
 
 			vcc_ldo5: LDO_REG5 {
-				regulator-boot-on;
+				regulator-name = "vcc_ldo5";
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3000000>;
-				regulator-name = "vcc_ldo5";
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc_ldo6: LDO_REG6 {
-				regulator-boot-on;
+				regulator-name = "vcc_ldo6";
 				regulator-min-microvolt = <1500000>;
 				regulator-max-microvolt = <1500000>;
-				regulator-name = "vcc_ldo6";
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc0v9_hdmi: LDO_REG7 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vcc0v9_hdmi";
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <900000>;
-				regulator-name = "vcc0v9_hdmi";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc_efuse: LDO_REG8 {
-				regulator-always-on;
-				regulator-boot-on;
+				regulator-name = "vcc_efuse";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_efuse";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc3v3_s3: SWITCH_REG1 {
+				regulator-name = "vcc3v3_s3";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vcc3v3_s3";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
 			vcc3v3_s0: SWITCH_REG2 {
+				regulator-name = "vcc3v3_s0";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vcc3v3_s0";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 		};
 	};
+
+	vdd_gpu: regulator@60 {
+		compatible = "fcs,fan53555";
+		reg = <0x60>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <600000>;
+		regulator-max-microvolt = <1230000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&i2c7 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	fan: fan@18 {
+		compatible = "ti,amc6821";
+		reg = <0x18>;
+		#cooling-cells = <2>;
+	};
+
+	rtc_twi: rtc@6f {
+		compatible = "isil,isl1208";
+		reg = <0x6f>;
+	};
 };
 
 &i2c8 {
 	status = "okay";
 	clock-frequency = <400000>;
 
-	vdd_cpu_b: vdd_cpu_b {
-		status = "okay";
+	vdd_cpu_b: regulator@60 {
 		compatible = "fcs,fan53555";
 		reg = <0x60>;
-		vsel-gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
 		vin-supply = <&vcc5v0_sys>;
-		regulator-compatible = "fan53555-reg";
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <600000>;
 		regulator-max-microvolt = <1230000>;
@@ -404,48 +399,36 @@
 		fcs,suspend-voltage-selector = <1>;
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-initial-state = <3>;
-			regulator-state-mem {
-			regulator-off-in-suspend;
-		};
 	};
 };
 
 &i2s0 {
+	pinctrl-0 = <&i2s0_2ch_bus>;
+	rockchip,playback-channels = <2>;
+	rockchip,capture-channels = <2>;
 	status = "okay";
-	rockchip,i2s-broken-burst-len;
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <8>;
-	#sound-dai-cells = <0>;
 };
 
-&i2s2 {
-	#sound-dai-cells = <0>;
-	status = "okay";
+/*
+ * As Q7 does not specify neither a global nor a RX clock for I2S these
+ * signals are not used. Furthermore I2S0_LRCK_RX is used as GPIO.
+ * Therefore we have to redefine the i2s0_2ch_bus definition to prevent
+ * conflicts.
+ */
+&i2s0_2ch_bus {
+	rockchip,pins =
+		<3 RK_PD0 1 &pcfg_pull_none>,
+		<3 RK_PD2 1 &pcfg_pull_none>,
+		<3 RK_PD3 1 &pcfg_pull_none>,
+		<3 RK_PD7 1 &pcfg_pull_none>;
 };
 
 &io_domains {
 	status = "okay";
-
-	bt656-supply = <&vcc_1v8>;	/* bt656_gpio2ab_ms */
-	audio-supply = <&vcc_1v8>;	/* audio_gpio3d4a_ms */
-	sdmmc-supply = <&vcc_sd>;	/* sdmmc_gpio4b_ms */
-	gpio1830-supply = <&vcc_1v8>;	/* gpio1833_gpio4cd_ms */
-};
-
-&pcie0 {
-	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
-	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
-	assigned-clock-rates = <100000000>;
-	ep-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
-	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn>;
-	status = "okay";
-};
-
-&pcie_phy {
-		status = "okay";
+	bt656-supply = <&vcc_1v8>;
+	audio-supply = <&vcc_1v8>;
+	sdmmc-supply = <&vcc_sd>;
+	gpio1830-supply = <&vcc_1v8>;
 };
 
 &pmu_io_domains {
@@ -453,185 +436,99 @@
 	pmu1830-supply = <&vcc_1v8>;
 };
 
-&pwm0 {
-	status = "okay";
-};
-
 &pwm2 {
 	status = "okay";
 };
 
-&sdhci {
-	bus-width = <8>;
-	mmc-hs400-1_8v;
-	supports-emmc;
-	non-removable;
-	keep-power-in-suspend;
-	mmc-hs400-enhanced-strobe;
-	status = "okay";
-};
-
-&sdmmc {
-	clock-frequency = <150000000>;
-	max-frequency = <40000000>;
-	supports-sd;
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	num-slots = <1>;
-	vqmmc-supply = <&vcc_sd>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
-	status = "okay";
-};
-
-&uart2 {
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "disabled";
-};
-
-&usb_host0_ohci {
-	status = "disabled";
-};
-
-&usbdrd3_0 {
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "disabled";
-};
-
-&usb_host1_ohci {
-	status = "disabled";
-};
-
-&usbdrd3_1 {
-	status = "okay";
-	tsd,usb-port-power = "usbhub_enable";
-};
-
-&vopb {
-	status = "okay";
-};
-
 &pinctrl {
-	/* Pins that are not explicitely used by any devices */
-	pinctrl-names = "default";
-	pinctrl-0 = <&puma_pin_hog>;
-
-	hog {
-		puma_pin_hog: puma_pin_hog {
+	i2c8 {
+		i2c8_xfer_a: i2c8-xfer {
 			rockchip,pins =
-				/* We need pull-ups on Q7 buttons */
-				<RK_GPIO0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>, /* LID_BTN# */
-				<RK_GPIO0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>, /* BATLOW# */
-				<RK_GPIO0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>, /* SLP_BTN# */
-				<RK_GPIO0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>; /* BIOS_DISABLE# */
+			  <1 RK_PC4 1 &pcfg_pull_up>,
+			  <1 RK_PC5 1 &pcfg_pull_up>;
 		};
 	};
 
-	pmic {
-		pmic_int_l: pmic-int-l {
+	leds {
+		led_pin_module: led-module-gpio {
 			rockchip,pins =
-				<RK_GPIO1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+			  <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-	leds_pins_puma: led_pins@0 {
-			rockchip,pins =
-				<RK_GPIO2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>,
-				<RK_GPIO1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-	};
-
-	usb2 {
-		otg_vbus_drv: otg-vbus-drv {
-			rockchip,pins =
-				<RK_GPIO0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		host_vbus_drv: host-vbus-drv {
+	pmic {
+		pmic_int_l: pmic-int-l {
 			rockchip,pins =
-				<RK_GPIO4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+			  <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-	i2c8 {
-		i2c8_xfer_a: i2c8-xfer {
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins =
-				<RK_GPIO1 RK_PC5 RK_FUNC_1 &pcfg_pull_up>,
-				<RK_GPIO1 RK_PC4 RK_FUNC_1 &pcfg_pull_up>;
+			  <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 };
 
-&i2c1 {
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	non-removable;
 	status = "okay";
-	clock-frequency = <400000>;
 };
-&i2c2 {
-	status = "okay";
-	clock-frequency = <400000>;
+
+&sdmmc {
+	vqmmc-supply = <&vcc_sd>;
 };
-&i2c4 {
+
+&spi1 {
 	status = "okay";
-	clock-frequency = <400000>;
+
+	norflash: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+	};
 };
-&i2c6 {
+
+&tcphy1 {
 	status = "okay";
-	clock-frequency = <400000>;
 };
 
-&i2c6_xfer {
-	/* Enable pull-ups, the pins would float otherwise. */
-	rockchip,pins =
-		<RK_GPIO2 RK_PB2 RK_FUNC_2 &pcfg_pull_up>,
-		<RK_GPIO2 RK_PB1 RK_FUNC_2 &pcfg_pull_up>;
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
 };
 
-&i2c7 {
+&u2phy1 {
 	status = "okay";
-	clock-frequency = <400000>;
 
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
+	u2phy1_otg: otg-port {
+		status = "okay";
 	};
-	fan: fan@18 {
-		compatible = "ti,amc6821";
-		reg = <0x18>;
-		cooling-min-state = <0>;
-		cooling-max-state = <9>;
-		#cooling-cells = <2>;
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
 	};
 };
 
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+&usbdrd3_1 {
 	status = "okay";
 };
 
-
-&spi1 {
+&usbdrd_dwc3_1 {
 	status = "okay";
+	dr_mode = "host";
+};
 
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	spiflash: w25q32dw@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <49500000>;
-		spi-cpol;
-		spi-cpha;
-	};
+&usb_host1_ehci {
+	status = "okay";
 };
 
-&spi5 {
+&usb_host1_ohci {
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-roc-pc.dts b/arch/arm/dts/rk3399-roc-pc.dts
index 6a909e4eef..cd41954253 100644
--- a/arch/arm/dts/rk3399-roc-pc.dts
+++ b/arch/arm/dts/rk3399-roc-pc.dts
@@ -8,6 +8,5 @@
 
 / {
 	model = "Firefly ROC-RK3399-PC Board";
-	compatible = "libretech,roc-rk3399-pc", "firefly,roc-rk3399-pc",
-		     "rockchip,rk3399";
+	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
 };
diff --git a/arch/arm/dts/rk3399-roc-pc.dtsi b/arch/arm/dts/rk3399-roc-pc.dtsi
index 9a1ce3a4ae..9f225e9c3d 100644
--- a/arch/arm/dts/rk3399-roc-pc.dtsi
+++ b/arch/arm/dts/rk3399-roc-pc.dtsi
@@ -110,20 +110,6 @@
 		regulator-max-microvolt = <5000000>;
 	};
 
-	/*
-	 * should be placed inside mp8859, but not until mp8859 has
-	 * its own dt-binding.
-	 */
-	dc_12v: mp8859-dcdc1 {
-		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		vin-supply = <&vcc_vbus_typec0>;
-	};
-
 	/* switched by pmic_sleep */
 	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
@@ -176,7 +162,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_host_en &hub_rst>;
 		regulator-name = "vcc5v0_host";
-		regulator-always-on;
 		vin-supply = <&vcc_sys>;
 	};
 
@@ -198,7 +183,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc_sys_en>;
 		regulator-name = "vcc_sys";
-		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -392,7 +376,6 @@
 
 			vcc_sdio: LDO_REG4 {
 				regulator-name = "vcc_sdio";
-				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3000000>;
@@ -549,6 +532,24 @@
 		vbus-supply = <&vcc_vbus_typec0>;
 		status = "okay";
 	};
+
+	mp8859: regulator@66 {
+		compatible = "mps,mp8859";
+		reg = <0x66>;
+		dc_12v: mp8859_dcdc {
+			regulator-name = "dc_12v";
+			regulator-min-microvolt = <12000000>;
+			regulator-max-microvolt = <12000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			vin-supply = <&vcc_vbus_typec0>;
+
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <12000000>;
+			};
+		};
+	};
 };
 
 &i2s0 {
diff --git a/arch/arm/dts/rk3399-rock-pi-4.dts b/arch/arm/dts/rk3399-rock-pi-4.dts
index 4a543f2117..3923ec01ef 100644
--- a/arch/arm/dts/rk3399-rock-pi-4.dts
+++ b/arch/arm/dts/rk3399-rock-pi-4.dts
@@ -25,6 +25,15 @@
 		#clock-cells = <0>;
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc12v_dcin: dc-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -44,6 +53,16 @@
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc_0v9: vcc-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -157,12 +176,22 @@
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
+	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <168>;
@@ -444,13 +473,60 @@
 	pmu1830-supply = <&vcc_3v0>;
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
+	num-lanes = <4>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-names = "default";
+	vpcie0v9-supply = <&vcc_0v9>;
+	vpcie1v8-supply = <&vcc_1v8>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
+	sdio0 {
+		sdio0_bus4: sdio0-bus4 {
+			rockchip,pins = <2 RK_PC4 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC5 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC6 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC7 1 &pcfg_pull_up_20ma>;
+		};
+
+		sdio0_cmd: sdio0-cmd {
+			rockchip,pins = <2 RK_PD0 1 &pcfg_pull_up_20ma>;
+		};
+
+		sdio0_clk: sdio0-clk {
+			rockchip,pins = <2 RK_PD1 1 &pcfg_pull_none_20ma>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -476,6 +552,16 @@
 			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm2 {
@@ -488,6 +574,32 @@
 	vref-supply = <&vcc_1v8>;
 };
 
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	clock-frequency = <50000000>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
@@ -551,6 +663,23 @@
 	};
 };
 
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-rock960.dts b/arch/arm/dts/rk3399-rock960.dts
index 12285c51cc..437a75f31a 100644
--- a/arch/arm/dts/rk3399-rock960.dts
+++ b/arch/arm/dts/rk3399-rock960.dts
@@ -114,6 +114,55 @@
 	};
 };
 
+&spi0 {
+	/* On Low speed expansion (LS-SPI0) */
+	status = "okay";
+};
+
+&spi4 {
+	/* On High speed expansion (HS-SPI1) */
+	status = "okay";
+};
+
+&thermal_zones {
+	cpu_thermal: cpu {
+		polling-delay-passive = <100>;
+		polling-delay = <1000>;
+		thermal-sensors = <&tsadc 0>;
+		sustainable-power = <1550>;
+
+		trips {
+			cpu_alert0: cpu_alert0 {
+				    temperature = <65000>;
+				    hysteresis = <2000>;
+				    type = "passive";
+			};
+
+			cpu_alert1: cpu_alert1 {
+				    temperature = <75000>;
+				    hysteresis = <2000>;
+				    type = "passive";
+			};
+
+			cpu_crit: cpu_crit {
+				  temperature = <95000>;
+				  hysteresis = <2000>;
+				  type = "critical";
+			};
+		};
+
+		cooling-maps {
+			     map0 {
+
+			     trip = <&cpu_alert1>;
+			     cooling-device =
+					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			};
+		};
+	};
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
diff --git a/arch/arm/dts/rk3399-rock960.dtsi b/arch/arm/dts/rk3399-rock960.dtsi
index c7d48d41e1..ba7c75c9f2 100644
--- a/arch/arm/dts/rk3399-rock960.dtsi
+++ b/arch/arm/dts/rk3399-rock960.dtsi
@@ -76,6 +76,15 @@
 		regulator-always-on;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc_0v9: vcc-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_0v9";
+		regulator-always-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
 };
 
 &cpu_l0 {
@@ -384,6 +393,8 @@
 	num-lanes = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	vpcie0v9-supply = <&vcc_0v9>;
+	vpcie1v8-supply = <&vcca_1v8>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
@@ -531,7 +542,7 @@
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	clock-frequency = <100000000>;
-	clock-freq-min-max = <100000 100000000>;
+	max-frequency = <100000000>;
 	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	sd-uhs-sdr104;
diff --git a/arch/arm/dts/rk3399-rockpro64.dts b/arch/arm/dts/rk3399-rockpro64.dts
index e544deb61d..4b42717800 100644
--- a/arch/arm/dts/rk3399-rockpro64.dts
+++ b/arch/arm/dts/rk3399-rockpro64.dts
@@ -2,752 +2,29 @@
 /*
  * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
  * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
+ * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
  */
 
 /dts-v1/;
-#include <dt-bindings/input/linux-event-codes.h>
-#include <dt-bindings/pwm/pwm.h>
-#include "rk3399.dtsi"
-#include "rk3399-opp.dtsi"
+#include "rk3399-rockpro64.dtsi"
 
 / {
-	model = "Pine64 RockPro64";
-	compatible = "pine64,rockpro64", "rockchip,rk3399";
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	clkin_gmac: external-gmac-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "clkin_gmac";
-		#clock-cells = <0>;
-	};
-
-	gpio-keys {
-		compatible = "gpio-keys";
-		autorepeat;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwrbtn>;
-
-		power {
-			debounce-interval = <100>;
-			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
-			label = "GPIO Key Power";
-			linux,code = <KEY_POWER>;
-			wakeup-source;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
-
-		work-led {
-			label = "work";
-			default-state = "on";
-			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
-		};
-
-		diy-led {
-			label = "diy";
-			default-state = "off";
-			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	fan: pwm-fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		fan-supply = <&vcc12v_dcin>;
-		pwms = <&pwm1 0 50000 0>;
-	};
-
-	sdio_pwrseq: sdio-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
-		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_enable_h>;
-
-		/*
-		 * On the module itself this is one of these (depending
-		 * on the actual card populated):
-		 * - SDIO_RESET_L_WL_REG_ON
-		 * - PDN (power down when low)
-		 */
-		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
-	};
-
-	vcc12v_dcin: vcc12v-dcin {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc12v_dcin";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-	};
-
-	/* switched by pmic_sleep */
-	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc1v8_s3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc_1v8>;
-	};
-
-	vcc3v3_pcie: vcc3v3-pcie-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie_pwr_en>;
-		regulator-name = "vcc3v3_pcie";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc12v_dcin>;
-	};
-
-	vcc3v3_sys: vcc3v3-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
-	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
-	vcc5v0_host: vcc5v0-host-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
-		regulator-name = "vcc5v0_host";
-		regulator-always-on;
-		vin-supply = <&vcc5v0_usb>;
-	};
-
-	vcc5v0_typec: vcc5v0-typec-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_typec_en>;
-		regulator-name = "vcc5v0_typec";
-		regulator-always-on;
-		vin-supply = <&vcc5v0_usb>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_dcin>;
-	};
-
-	vcc5v0_usb: vcc5v0-usb {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_usb";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_dcin>;
-	};
-
-	vdd_log: vdd-log {
-		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
-		regulator-name = "vdd_log";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1700000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-};
-
-&cpu_l0 {
-	cpu-supply = <&vdd_cpu_l>;
-};
-
-&cpu_l1 {
-	cpu-supply = <&vdd_cpu_l>;
-};
-
-&cpu_l2 {
-	cpu-supply = <&vdd_cpu_l>;
-};
-
-&cpu_l3 {
-	cpu-supply = <&vdd_cpu_l>;
-};
-
-&cpu_b0 {
-	cpu-supply = <&vdd_cpu_b>;
-};
-
-&cpu_b1 {
-	cpu-supply = <&vdd_cpu_b>;
-};
-
-&emmc_phy {
-	status = "okay";
-};
-
-&gmac {
-	assigned-clocks = <&cru SCLK_RMII_SRC>;
-	assigned-clock-parents = <&clkin_gmac>;
-	clock_in_out = "input";
-	phy-supply = <&vcc_lan>;
-	phy-mode = "rgmii";
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
-	tx_delay = <0x28>;
-	rx_delay = <0x11>;
-	status = "okay";
-};
-
-&hdmi {
-	ddc-i2c-bus = <&i2c3>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&hdmi_cec>;
-	status = "okay";
-};
-
-&hdmi_sound {
-	status = "okay";
-};
-
-&gpu {
-	mali-supply = <&vdd_gpu>;
-	status = "okay";
-};
-
-&i2c0 {
-	clock-frequency = <400000>;
-	i2c-scl-rising-time-ns = <168>;
-	i2c-scl-falling-time-ns = <4>;
-	status = "okay";
-
-	rk808: pmic@1b {
-		compatible = "rockchip,rk808";
-		reg = <0x1b>;
-		interrupt-parent = <&gpio3>;
-		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		clock-output-names = "xin32k", "rk808-clkout2";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
-		wakeup-source;
-
-		vcc1-supply = <&vcc5v0_sys>;
-		vcc2-supply = <&vcc5v0_sys>;
-		vcc3-supply = <&vcc5v0_sys>;
-		vcc4-supply = <&vcc5v0_sys>;
-		vcc6-supply = <&vcc5v0_sys>;
-		vcc7-supply = <&vcc5v0_sys>;
-		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc5v0_sys>;
-		vcc10-supply = <&vcc5v0_sys>;
-		vcc11-supply = <&vcc5v0_sys>;
-		vcc12-supply = <&vcc3v3_sys>;
-		vddio-supply = <&vcca_1v8>;
-
-		regulators {
-			vdd_center: DCDC_REG1 {
-				regulator-name = "vdd_center";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_cpu_l: DCDC_REG2 {
-				regulator-name = "vdd_cpu_l";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_1v8: DCDC_REG4 {
-				regulator-name = "vcc_1v8";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcc1v8_dvp: LDO_REG1 {
-				regulator-name = "vcc1v8_dvp";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v0_touch: LDO_REG2 {
-				regulator-name = "vcc3v0_touch";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcca_1v8: LDO_REG3 {
-				regulator-name = "vcca_1v8";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcc_sdio: LDO_REG4 {
-				regulator-name = "vcc_sdio";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3000000>;
-				};
-			};
-
-			vcca3v0_codec: LDO_REG5 {
-				regulator-name = "vcca3v0_codec";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v5: LDO_REG6 {
-				regulator-name = "vcc_1v5";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1500000>;
-				regulator-max-microvolt = <1500000>;
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1500000>;
-				};
-			};
-
-			vcca1v8_codec: LDO_REG7 {
-				regulator-name = "vcca1v8_codec";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v0: LDO_REG8 {
-				regulator-name = "vcc_3v0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3000000>;
-				};
-			};
-
-			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
-				regulator-name = "vcc3v3_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_s0: SWITCH_REG2 {
-				regulator-name = "vcc3v3_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-	};
-
-	vdd_cpu_b: regulator@40 {
-		compatible = "silergy,syr827";
-		reg = <0x40>;
-		fcs,suspend-voltage-selector = <1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vsel1_gpio>;
-		regulator-name = "vdd_cpu_b";
-		regulator-min-microvolt = <712500>;
-		regulator-max-microvolt = <1500000>;
-		regulator-ramp-delay = <1000>;
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc5v0_sys>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vdd_gpu: regulator@41 {
-		compatible = "silergy,syr828";
-		reg = <0x41>;
-		fcs,suspend-voltage-selector = <1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vsel2_gpio>;
-		regulator-name = "vdd_gpu";
-		regulator-min-microvolt = <712500>;
-		regulator-max-microvolt = <1500000>;
-		regulator-ramp-delay = <1000>;
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc5v0_sys>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
+	model = "Pine64 RockPro64 v2.1";
+	compatible = "pine64,rockpro64-v2.1", "pine64,rockpro64", "rockchip,rk3399";
 };
 
 &i2c1 {
-	i2c-scl-rising-time-ns = <300>;
-	i2c-scl-falling-time-ns = <15>;
-	status = "okay";
-};
-
-&i2c3 {
-	i2c-scl-rising-time-ns = <450>;
-	i2c-scl-falling-time-ns = <15>;
-	status = "okay";
-};
-
-&i2c4 {
-	i2c-scl-rising-time-ns = <600>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-
-	fusb0: typec-portc@22 {
-		compatible = "fcs,fusb302";
-		reg = <0x22>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&fusb0_int>;
-		vbus-supply = <&vcc5v0_typec>;
-		status = "okay";
-	};
-};
+	es8316: codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
 
-&i2s0 {
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <8>;
-	status = "okay";
-};
-
-&i2s1 {
-	rockchip,playback-channels = <2>;
-	rockchip,capture-channels = <2>;
-	status = "okay";
-};
-
-&i2s2 {
-	status = "okay";
-};
-
-&io_domains {
-	status = "okay";
-
-	bt656-supply = <&vcc1v8_dvp>;
-	audio-supply = <&vcc_3v0>;
-	sdmmc-supply = <&vcc_sdio>;
-	gpio1830-supply = <&vcc_3v0>;
-};
-
-&pcie0 {
-	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
-	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_perst>;
-	vpcie12v-supply = <&vcc12v_dcin>;
-	vpcie3v3-supply = <&vcc3v3_pcie>;
-	status = "okay";
-};
-
-&pcie_phy {
-	status = "okay";
-};
-
-&pmu_io_domains {
-	pmu1830-supply = <&vcc_3v0>;
-	status = "okay";
-};
-
-&pinctrl {
-	buttons {
-		pwrbtn: pwrbtn {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	fusb302x {
-		fusb0_int: fusb0-int {
-			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	leds {
-		work_led_gpio: work_led-gpio {
-			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		diy_led_gpio: diy_led-gpio {
-			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pcie {
-		pcie_perst: pcie-perst {
-			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		pcie_pwr_en: pcie-pwr-en {
-			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		vsel1_gpio: vsel1-gpio {
-			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-
-		vsel2_gpio: vsel2-gpio {
-			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-	};
-
-	sdio-pwrseq {
-		wifi_enable_h: wifi-enable-h {
-			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	usb-typec {
-		vcc5v0_typec_en: vcc5v0_typec_en {
-			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	usb2 {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s1_p0_0>;
+			};
 		};
 	};
 };
-
-&pwm0 {
-	status = "okay";
-};
-
-&pwm1 {
-	status = "okay";
-};
-
-&pwm2 {
-	status = "okay";
-};
-
-&saradc {
-	vref-supply = <&vcca1v8_s3>;
-	status = "okay";
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	max-frequency = <150000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
-	status = "okay";
-};
-
-&sdhci {
-	bus-width = <8>;
-	mmc-hs200-1_8v;
-	non-removable;
-	status = "okay";
-};
-
-&spi1 {
-	status = "okay";
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <10000000>;
-	};
-};
-
-&tcphy0 {
-	status = "okay";
-};
-
-&tcphy1 {
-	status = "okay";
-};
-
-&tsadc {
-	/* tshut mode 0:CRU 1:GPIO */
-	rockchip,hw-tshut-mode = <1>;
-	/* tshut polarity 0:LOW 1:HIGH */
-	rockchip,hw-tshut-polarity = <1>;
-	status = "okay";
-};
-
-&u2phy0 {
-	status = "okay";
-
-	u2phy0_otg: otg-port {
-		status = "okay";
-	};
-
-	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
-		status = "okay";
-	};
-};
-
-&u2phy1 {
-	status = "okay";
-
-	u2phy1_otg: otg-port {
-		status = "okay";
-	};
-
-	u2phy1_host: host-port {
-		phy-supply = <&vcc5v0_host>;
-		status = "okay";
-	};
-};
-
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts>;
-	status = "okay";
-};
-
-&uart2 {
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
-&usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
-	dr_mode = "otg";
-};
-
-&usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
-	dr_mode = "host";
-};
-
-&vopb {
-	status = "okay";
-};
-
-&vopb_mmu {
-	status = "okay";
-};
-
-&vopl {
-	status = "okay";
-};
-
-&vopl_mmu {
-	status = "okay";
-};
diff --git a/arch/arm/dts/rk3399-rockpro64.dtsi b/arch/arm/dts/rk3399-rockpro64.dtsi
new file mode 100644
index 0000000000..9bca258012
--- /dev/null
+++ b/arch/arm/dts/rk3399-rockpro64.dtsi
@@ -0,0 +1,797 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
+ */
+
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+
+/ {
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	clkin_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clkin_gmac";
+		#clock-cells = <0>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwrbtn>;
+
+		power {
+			debounce-interval = <100>;
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "GPIO Key Power";
+			linux,code = <KEY_POWER>;
+			wakeup-source;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
+
+		work-led {
+			label = "work";
+			default-state = "on";
+			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
+		};
+
+		diy-led {
+			label = "diy";
+			default-state = "off";
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		fan-supply = <&vcc12v_dcin>;
+		pwms = <&pwm1 0 50000 0>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "rockchip,rk3399";
+		dais = <&i2s1_p0>;
+	};
+
+	vcc12v_dcin: vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	/* switched by pmic_sleep */
+	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8>;
+	};
+
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_pwr_en>;
+		regulator-name = "vcc3v3_pcie";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-always-on;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_typec: vcc5v0-typec-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_typec_en>;
+		regulator-name = "vcc5v0_typec";
+		regulator-always-on;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usb: vcc5v0-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 25000 1>;
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1700000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&emmc_phy {
+	status = "okay";
+};
+
+&gmac {
+	assigned-clocks = <&cru SCLK_RMII_SRC>;
+	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-supply = <&vcc_lan>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <168>;
+	i2c-scl-falling-time-ns = <4>;
+	status = "okay";
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk808-clkout2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc6-supply = <&vcc5v0_sys>;
+		vcc7-supply = <&vcc5v0_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+		vcc10-supply = <&vcc5v0_sys>;
+		vcc11-supply = <&vcc5v0_sys>;
+		vcc12-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcca_1v8>;
+
+		regulators {
+			vdd_center: DCDC_REG1 {
+				regulator-name = "vdd_center";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-name = "vdd_cpu_l";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG4 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG1 {
+				regulator-name = "vcc1v8_dvp";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v0_touch: LDO_REG2 {
+				regulator-name = "vcc3v0_touch";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_1v8: LDO_REG3 {
+				regulator-name = "vcca_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_sdio: LDO_REG4 {
+				regulator-name = "vcc_sdio";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcca3v0_codec: LDO_REG5 {
+				regulator-name = "vcca3v0_codec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-name = "vcc_1v5";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcca1v8_codec: LDO_REG7 {
+				regulator-name = "vcca1v8_codec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG8 {
+				regulator-name = "vcc_3v0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
+				regulator-name = "vcc3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_s0: SWITCH_REG2 {
+				regulator-name = "vcc3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	vdd_cpu_b: regulator@40 {
+		compatible = "silergy,syr827";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vsel1_gpio>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: regulator@41 {
+		compatible = "silergy,syr828";
+		reg = <0x41>;
+		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vsel2_gpio>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c1 {
+	i2c-scl-rising-time-ns = <300>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&i2c4 {
+	i2c-scl-rising-time-ns = <600>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+
+	fusb0: typec-portc@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&fusb0_int>;
+		vbus-supply = <&vcc5v0_typec>;
+		status = "okay";
+	};
+};
+
+&i2s0 {
+	rockchip,playback-channels = <8>;
+	rockchip,capture-channels = <8>;
+	status = "okay";
+};
+
+&i2s1 {
+	rockchip,playback-channels = <2>;
+	rockchip,capture-channels = <2>;
+	status = "okay";
+
+	i2s1_p0: port {
+		i2s1_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
+};
+
+&i2s2 {
+	status = "okay";
+};
+
+&io_domains {
+	status = "okay";
+
+	bt656-supply = <&vcc1v8_dvp>;
+	audio-supply = <&vcc_3v0>;
+	sdmmc-supply = <&vcc_sdio>;
+	gpio1830-supply = <&vcc_3v0>;
+};
+
+&pcie0 {
+	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_perst>;
+	vpcie12v-supply = <&vcc12v_dcin>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&pmu_io_domains {
+	pmu1830-supply = <&vcc_3v0>;
+	status = "okay";
+};
+
+&pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	buttons {
+		pwrbtn: pwrbtn {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	fusb302x {
+		fusb0_int: fusb0-int {
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	leds {
+		work_led_gpio: work_led-gpio {
+			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		diy_led_gpio: diy_led-gpio {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie {
+		pcie_perst: pcie-perst {
+			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_pwr_en: pcie-pwr-en {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vsel1_gpio: vsel1-gpio {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		vsel2_gpio: vsel2-gpio {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb-typec {
+		vcc5v0_typec_en: vcc5v0_typec_en {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca1v8_s3>;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&spi1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
+&tcphy0 {
+	status = "okay";
+};
+
+&tcphy1 {
+	status = "okay";
+};
+
+&tsadc {
+	/* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-mode = <1>;
+	/* tshut polarity 0:LOW 1:HIGH */
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+
+	u2phy0_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy0_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
+&uart2 {
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
+	dr_mode = "otg";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 8b857ccfc7..ef57c36e73 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -79,6 +79,7 @@
 };
 
 &sdhci {
+	max-frequency = <200000000>;
 	u-boot,dm-pre-reloc;
 };
 
diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index 6b7c136ab8..74f2c3d490 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -1,6 +1,6 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
  */
 
 #include <dt-bindings/clock/rk3399-cru.h>
@@ -19,6 +19,7 @@
 	#size-cells = <2>;
 
 	aliases {
+		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
@@ -67,53 +68,102 @@
 
 		cpu_l0: cpu@0 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a53", "arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
-			#cooling-cells = <2>; /* min followed by max */
+			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
+			#cooling-cells = <2>; /* min followed by max */
+			dynamic-power-coefficient = <100>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 		};
 
 		cpu_l1: cpu@1 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a53", "arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
+			#cooling-cells = <2>; /* min followed by max */
+			dynamic-power-coefficient = <100>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 		};
 
 		cpu_l2: cpu@2 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a53", "arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
+			#cooling-cells = <2>; /* min followed by max */
+			dynamic-power-coefficient = <100>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 		};
 
 		cpu_l3: cpu@3 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a53", "arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
+			#cooling-cells = <2>; /* min followed by max */
+			dynamic-power-coefficient = <100>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 		};
 
 		cpu_b0: cpu@100 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a72", "arm,armv8";
+			compatible = "arm,cortex-a72";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
-			#cooling-cells = <2>; /* min followed by max */
+			capacity-dmips-mhz = <1024>;
 			clocks = <&cru ARMCLKB>;
+			#cooling-cells = <2>; /* min followed by max */
+			dynamic-power-coefficient = <436>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 		};
 
 		cpu_b1: cpu@101 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a72", "arm,armv8";
+			compatible = "arm,cortex-a72";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 			clocks = <&cru ARMCLKB>;
+			#cooling-cells = <2>; /* min followed by max */
+			dynamic-power-coefficient = <436>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP: cpu-sleep {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x0010000>;
+				entry-latency-us = <120>;
+				exit-latency-us = <250>;
+				min-residency-us = <900>;
+			};
+
+			CLUSTER_SLEEP: cluster-sleep {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x1010000>;
+				entry-latency-us = <400>;
+				exit-latency-us = <500>;
+				min-residency-us = <2000>;
+			};
+		};
+	};
+
+	display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vopl_out>, <&vopb_out>;
 	};
 
 	pmu_a53 {
@@ -147,7 +197,7 @@
 		#clock-cells = <0>;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -183,7 +233,7 @@
 		#size-cells = <2>;
 		#interrupt-cells = <1>;
 		aspm-no-l0s;
-		bus-range = <0x0 0x1>;
+		bus-range = <0x0 0x1f>;
 		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
 			 <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
 		clock-names = "aclk", "aclk-perf",
@@ -200,10 +250,12 @@
 		linux,pci-domain = <0>;
 		max-link-speed = <1>;
 		msi-map = <0x0 &its 0x0 0x1000>;
-		phys = <&pcie_phy>;
-		phy-names = "pcie-phy";
-		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x600000
-			  0x81000000 0x0 0xfa600000 0x0 0xfa600000 0x0 0x100000>;
+		phys = <&pcie_phy 0>, <&pcie_phy 1>,
+		       <&pcie_phy 2>, <&pcie_phy 3>;
+		phy-names = "pcie-phy-0", "pcie-phy-1",
+			    "pcie-phy-2", "pcie-phy-3";
+		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000
+			  0x81000000 0x0 0xfbe00000 0x0 0xfbe00000 0x0 0x100000>;
 		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
 			 <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE>,
 			 <&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>,
@@ -236,10 +288,11 @@
 		resets = <&cru SRST_A_GMAC>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@fe310000 {
+	sdio0: mmc@fe310000 {
 		compatible = "rockchip,rk3399-dw-mshc",
 			     "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe310000 0x0 0x4000>;
@@ -255,12 +308,14 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@fe320000 {
+	sdmmc: mmc@fe320000 {
 		compatible = "rockchip,rk3399-dw-mshc",
 			     "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe320000 0x0 0x4000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH 0>;
 		max-frequency = <150000000>;
+		assigned-clocks = <&cru HCLK_SD>;
+		assigned-clock-rates = <200000000>;
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
@@ -278,7 +333,6 @@
 		arasan,soc-ctl-syscon = <&grf>;
 		assigned-clocks = <&cru SCLK_EMMC>;
 		assigned-clock-rates = <200000000>;
-		max-frequency = <200000000>;
 		clocks = <&cru SCLK_EMMC>, <&cru ACLK_EMMC>;
 		clock-names = "clk_xin", "clk_ahb";
 		clock-output-names = "emmc_cardclock";
@@ -286,6 +340,7 @@
 		phys = <&emmc_phy>;
 		phy-names = "phy_arasan";
 		power-domains = <&power RK3399_PD_EMMC>;
+		disable-cqe-dcmd;
 		status = "disabled";
 	};
 
@@ -295,11 +350,8 @@
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST0_ARB>,
 			 <&u2phy0>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
-		power-domains = <&power RK3399_PD_PERIHP>;
 		status = "disabled";
 	};
 
@@ -309,11 +361,8 @@
 		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST0_ARB>,
 			 <&u2phy0>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
-		power-domains = <&power RK3399_PD_PERIHP>;
 		status = "disabled";
 	};
 
@@ -323,11 +372,8 @@
 		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST1_ARB>,
 			 <&u2phy1>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
-		power-domains = <&power RK3399_PD_PERIHP>;
 		status = "disabled";
 	};
 
@@ -337,15 +383,12 @@
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST1_ARB>,
 			 <&u2phy1>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
-		power-domains = <&power RK3399_PD_PERIHP>;
 		status = "disabled";
 	};
 
-	usbdrd3_0: dwc3_typec0: usb@fe800000 {
+	usbdrd3_0: usb@fe800000 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -364,6 +407,9 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe800000 0x0 0x100000>;
 			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
+				 <&cru SCLK_USB3OTG0_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
 			dr_mode = "otg";
 			phys = <&u2phy0_otg>, <&tcphy0_usb3>;
 			phy-names = "usb2-phy", "usb3-phy";
@@ -378,7 +424,7 @@
 		};
 	};
 
-	dwc3_typec1: usbdrd3_1: usb@fe900000 {
+	usbdrd3_1: usb@fe900000 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -397,6 +443,9 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe900000 0x0 0x100000>;
 			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cru SCLK_USB3OTG1_REF>, <&cru ACLK_USB3OTG1>,
+				 <&cru SCLK_USB3OTG1_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
 			dr_mode = "otg";
 			phys = <&u2phy1_otg>, <&tcphy1_usb3>;
 			phy-names = "usb2-phy", "usb3-phy";
@@ -464,6 +513,7 @@
 		its: interrupt-controller@fee20000 {
 			compatible = "arm,gic-v3-its";
 			msi-controller;
+			#msi-cells = <1>;
 			reg = <0x0 0xfee20000 0x0 0x20000>;
 		};
 
@@ -612,7 +662,6 @@
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>;
-		clock-frequency = <24000000>;
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
@@ -639,6 +688,8 @@
 		clocks = <&cru SCLK_SPI0>, <&cru PCLK_SPI0>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 10>, <&dmac_peri 11>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi0_clk &spi0_tx &spi0_rx &spi0_cs0>;
 		#address-cells = <1>;
@@ -652,6 +703,8 @@
 		clocks = <&cru SCLK_SPI1>, <&cru PCLK_SPI1>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 12>, <&dmac_peri 13>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi1_clk &spi1_tx &spi1_rx &spi1_cs0>;
 		#address-cells = <1>;
@@ -665,6 +718,8 @@
 		clocks = <&cru SCLK_SPI2>, <&cru PCLK_SPI2>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 14>, <&dmac_peri 15>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0>;
 		#address-cells = <1>;
@@ -678,6 +733,8 @@
 		clocks = <&cru SCLK_SPI4>, <&cru PCLK_SPI4>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 18>, <&dmac_peri 19>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi4_clk &spi4_tx &spi4_rx &spi4_cs0>;
 		#address-cells = <1>;
@@ -691,8 +748,11 @@
 		clocks = <&cru SCLK_SPI5>, <&cru PCLK_SPI5>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_bus 8>, <&dmac_bus 9>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi5_clk &spi5_tx &spi5_rx &spi5_cs0>;
+		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
@@ -727,13 +787,18 @@
 				map0 {
 					trip = <&cpu_alert0>;
 					cooling-device =
-						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 				map1 {
 					trip = <&cpu_alert1>;
 					cooling-device =
 						<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 		};
@@ -761,7 +826,7 @@
 				map0 {
 					trip = <&gpu_alert0>;
 					cooling-device =
-						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 		};
@@ -980,22 +1045,11 @@
 					 <&cru PCLK_GMAC>;
 				pm_qos = <&qos_gmac>;
 			};
-			pd_perihp@RK3399_PD_PERIHP {
-				reg = <RK3399_PD_PERIHP>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				clocks = <&cru ACLK_PERIHP>;
-				pm_qos = <&qos_perihp>,
-					 <&qos_pcie>,
-					 <&qos_usb_host0>,
-					 <&qos_usb_host1>;
-
-				pd_sd@RK3399_PD_SD {
-					reg = <RK3399_PD_SD>;
-					clocks = <&cru HCLK_SDMMC>,
-						 <&cru SCLK_SDMMC>;
-					pm_qos = <&qos_sd>;
-				};
+			pd_sd@RK3399_PD_SD {
+				reg = <RK3399_PD_SD>;
+				clocks = <&cru HCLK_SDMMC>,
+					 <&cru SCLK_SDMMC>;
+				pm_qos = <&qos_sd>;
 			};
 			pd_sdioaudio@RK3399_PD_SDIOAUDIO {
 				reg = <RK3399_PD_SDIOAUDIO>;
@@ -1070,6 +1124,8 @@
 	pmugrf: syscon@ff320000 {
 		compatible = "rockchip,rk3399-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xff320000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
 
 		pmu_io_domains: io-domains {
 			compatible = "rockchip,rk3399-pmu-io-voltage-domain";
@@ -1192,6 +1248,62 @@
 		status = "disabled";
 	};
 
+	vpu: video-codec@ff650000 {
+		compatible = "rockchip,rk3399-vpu";
+		reg = <0x0 0xff650000 0x0 0x800>;
+		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vepu", "vdpu";
+		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3399_PD_VCODEC>;
+	};
+
+	vpu_mmu: iommu@ff650800 {
+		compatible = "rockchip,iommu";
+		reg = <0x0 0xff650800 0x0 0x40>;
+		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vpu_mmu";
+		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3399_PD_VCODEC>;
+	};
+
+	vdec_mmu: iommu@ff660480 {
+		compatible = "rockchip,iommu";
+		reg = <0x0 0xff660480 0x0 0x40>, <0x0 0xff6604c0 0x0 0x40>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdec_mmu";
+		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		status = "disabled";
+	};
+
+	iep_mmu: iommu@ff670800 {
+		compatible = "rockchip,iommu";
+		reg = <0x0 0xff670800 0x0 0x40>;
+		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "iep_mmu";
+		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		status = "disabled";
+	};
+
+	rga: rga@ff680000 {
+		compatible = "rockchip,rk3399-rga";
+		reg = <0x0 0xff680000 0x0 0x10000>;
+		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA_CORE>, <&cru SRST_A_RGA>, <&cru SRST_H_RGA>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power RK3399_PD_RGA>;
+	};
+
 	efuse0: efuse@ff690000 {
 		compatible = "rockchip,rk3399-efuse";
 		reg = <0x0 0xff690000 0x0 0x80>;
@@ -1342,8 +1454,9 @@
 			compatible = "rockchip,rk3399-pcie-phy";
 			clocks = <&cru SCLK_PCIEPHY_REF>;
 			clock-names = "refclk";
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			resets = <&cru SRST_PCIEPHY>;
+			drive-impedance-ohm = <50>;
 			reset-names = "phy";
 			status = "disabled";
 		};
@@ -1592,11 +1705,11 @@
 		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "isp0_mmu";
-		clocks = <&cru ACLK_ISP0_NOC>, <&cru HCLK_ISP0_NOC>;
+		clocks = <&cru ACLK_ISP0_WRAPPER>, <&cru HCLK_ISP0_WRAPPER>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3399_PD_ISP0>;
 		rockchip,disable-mmu-reset;
-		status = "disabled";
 	};
 
 	isp1_mmu: iommu@ff924000 {
@@ -1604,11 +1717,11 @@
 		reg = <0x0 0xff924000 0x0 0x100>, <0x0 0xff925000 0x0 0x100>;
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "isp1_mmu";
-		clocks = <&cru ACLK_ISP1_NOC>, <&cru HCLK_ISP1_NOC>;
+		clocks = <&cru ACLK_ISP1_WRAPPER>, <&cru HCLK_ISP1_WRAPPER>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3399_PD_ISP1>;
 		rockchip,disable-mmu-reset;
-		status = "disabled";
 	};
 
 	hdmi_sound: hdmi-sound {
@@ -1660,21 +1773,29 @@
 	};
 
 	mipi_dsi: mipi@ff960000 {
-		compatible = "rockchip,rk3399_mipi_dsi";
+		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff960000 0x0 0x8000>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&cru SCLK_MIPIDPHY_REF>, <&cru PCLK_MIPI_DSI0>,
-		         <&cru SCLK_DPHY_TX0_CFG>;
-		clock-names = "ref", "pclk", "phy_cfg";
+		clocks = <&cru SCLK_DPHY_PLL>, <&cru PCLK_MIPI_DSI0>,
+			 <&cru SCLK_DPHY_TX0_CFG>, <&cru PCLK_VIO_GRF>;
+		clock-names = "ref", "pclk", "phy_cfg", "grf";
+		power-domains = <&power RK3399_PD_VIO>;
+		resets = <&cru SRST_P_MIPI_DSI0>;
+		reset-names = "apb";
 		rockchip,grf = <&grf>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
+
 		ports {
-			reg = <1>;
-			mipi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mipi_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+
 				mipi_in_vopb: endpoint@0 {
 					reg = <0>;
 					remote-endpoint = <&vopb_out_mipi>;
@@ -1698,6 +1819,8 @@
 		resets = <&cru SRST_P_MIPI_DSI1>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;
+		#address-cells = <1>;
+		#size-cells = <0>;
 		status = "disabled";
 
 		ports {
@@ -1765,6 +1888,7 @@
 			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "gpu", "job", "mmu";
 		clocks = <&cru ACLK_GPU>;
+		#cooling-cells = <2>;
 		power-domains = <&power RK3399_PD_GPU>;
 		status = "disabled";
 	};
@@ -1929,14 +2053,14 @@
 
 		clock {
 			clk_32k: clk-32k {
-				rockchip,pins = <0 RK_PA0 RK_FUNC_2 &pcfg_pull_none>;
+				rockchip,pins = <0 RK_PA0 2 &pcfg_pull_none>;
 			};
 		};
 
 		edp {
 			edp_hpd: edp-hpd {
 				rockchip,pins =
-					<4 RK_PC7 RK_FUNC_2 &pcfg_pull_none>;
+					<4 RK_PC7 2 &pcfg_pull_none>;
 			};
 		};
 
@@ -1944,382 +2068,409 @@
 			rgmii_pins: rgmii-pins {
 				rockchip,pins =
 					/* mac_txclk */
-					<3 RK_PC1 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PC1 1 &pcfg_pull_none_13ma>,
 					/* mac_rxclk */
-					<3 RK_PB6 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB6 1 &pcfg_pull_none>,
 					/* mac_mdio */
-					<3 RK_PB5 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB5 1 &pcfg_pull_none>,
 					/* mac_txen */
-					<3 RK_PB4 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PB4 1 &pcfg_pull_none_13ma>,
 					/* mac_clk */
-					<3 RK_PB3 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB3 1 &pcfg_pull_none>,
 					/* mac_rxdv */
-					<3 RK_PB1 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB1 1 &pcfg_pull_none>,
 					/* mac_mdc */
-					<3 RK_PB0 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB0 1 &pcfg_pull_none>,
 					/* mac_rxd1 */
-					<3 RK_PA7 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PA7 1 &pcfg_pull_none>,
 					/* mac_rxd0 */
-					<3 RK_PA6 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PA6 1 &pcfg_pull_none>,
 					/* mac_txd1 */
-					<3 RK_PA5 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PA5 1 &pcfg_pull_none_13ma>,
 					/* mac_txd0 */
-					<3 RK_PA4 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PA4 1 &pcfg_pull_none_13ma>,
 					/* mac_rxd3 */
-					<3 RK_PA3 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PA3 1 &pcfg_pull_none>,
 					/* mac_rxd2 */
-					<3 RK_PA2 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PA2 1 &pcfg_pull_none>,
 					/* mac_txd3 */
-					<3 RK_PA1 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PA1 1 &pcfg_pull_none_13ma>,
 					/* mac_txd2 */
-					<3 RK_PA0 RK_FUNC_1 &pcfg_pull_none_13ma>;
+					<3 RK_PA0 1 &pcfg_pull_none_13ma>;
 			};
 
 			rmii_pins: rmii-pins {
 				rockchip,pins =
 					/* mac_mdio */
-					<3 RK_PB5 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB5 1 &pcfg_pull_none>,
 					/* mac_txen */
-					<3 RK_PB4 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PB4 1 &pcfg_pull_none_13ma>,
 					/* mac_clk */
-					<3 RK_PB3 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB3 1 &pcfg_pull_none>,
 					/* mac_rxer */
-					<3 RK_PB2 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB2 1 &pcfg_pull_none>,
 					/* mac_rxdv */
-					<3 RK_PB1 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB1 1 &pcfg_pull_none>,
 					/* mac_mdc */
-					<3 RK_PB0 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PB0 1 &pcfg_pull_none>,
 					/* mac_rxd1 */
-					<3 RK_PA7 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PA7 1 &pcfg_pull_none>,
 					/* mac_rxd0 */
-					<3 RK_PA6 RK_FUNC_1 &pcfg_pull_none>,
+					<3 RK_PA6 1 &pcfg_pull_none>,
 					/* mac_txd1 */
-					<3 RK_PA5 RK_FUNC_1 &pcfg_pull_none_13ma>,
+					<3 RK_PA5 1 &pcfg_pull_none_13ma>,
 					/* mac_txd0 */
-					<3 RK_PA4 RK_FUNC_1 &pcfg_pull_none_13ma>;
+					<3 RK_PA4 1 &pcfg_pull_none_13ma>;
 			};
 		};
 
 		i2c0 {
 			i2c0_xfer: i2c0-xfer {
 				rockchip,pins =
-					<1 RK_PB7 RK_FUNC_2 &pcfg_pull_none>,
-					<1 RK_PC0 RK_FUNC_2 &pcfg_pull_none>;
+					<1 RK_PB7 2 &pcfg_pull_none>,
+					<1 RK_PC0 2 &pcfg_pull_none>;
 			};
 		};
 
 		i2c1 {
 			i2c1_xfer: i2c1-xfer {
 				rockchip,pins =
-					<4 RK_PA2 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PA1 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PA2 1 &pcfg_pull_none>,
+					<4 RK_PA1 1 &pcfg_pull_none>;
 			};
 		};
 
 		i2c2 {
 			i2c2_xfer: i2c2-xfer {
 				rockchip,pins =
-					<2 RK_PA1 RK_FUNC_2 &pcfg_pull_none_12ma>,
-					<2 RK_PA0 RK_FUNC_2 &pcfg_pull_none_12ma>;
+					<2 RK_PA1 2 &pcfg_pull_none_12ma>,
+					<2 RK_PA0 2 &pcfg_pull_none_12ma>;
 			};
 		};
 
 		i2c3 {
 			i2c3_xfer: i2c3-xfer {
 				rockchip,pins =
-					<4 RK_PC1 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PC0 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC1 1 &pcfg_pull_none>,
+					<4 RK_PC0 1 &pcfg_pull_none>;
 			};
 		};
 
 		i2c4 {
 			i2c4_xfer: i2c4-xfer {
 				rockchip,pins =
-					<1 RK_PB4 RK_FUNC_1 &pcfg_pull_none>,
-					<1 RK_PB3 RK_FUNC_1 &pcfg_pull_none>;
+					<1 RK_PB4 1 &pcfg_pull_none>,
+					<1 RK_PB3 1 &pcfg_pull_none>;
 			};
 		};
 
 		i2c5 {
 			i2c5_xfer: i2c5-xfer {
 				rockchip,pins =
-					<3 RK_PB3 RK_FUNC_2 &pcfg_pull_none>,
-					<3 RK_PB2 RK_FUNC_2 &pcfg_pull_none>;
+					<3 RK_PB3 2 &pcfg_pull_none>,
+					<3 RK_PB2 2 &pcfg_pull_none>;
 			};
 		};
 
 		i2c6 {
 			i2c6_xfer: i2c6-xfer {
 				rockchip,pins =
-					<2 RK_PB2 RK_FUNC_2 &pcfg_pull_none>,
-					<2 RK_PB1 RK_FUNC_2 &pcfg_pull_none>;
+					<2 RK_PB2 2 &pcfg_pull_none>,
+					<2 RK_PB1 2 &pcfg_pull_none>;
 			};
 		};
 
 		i2c7 {
 			i2c7_xfer: i2c7-xfer {
 				rockchip,pins =
-					<2 RK_PB0 RK_FUNC_2 &pcfg_pull_none>,
-					<2 RK_PA7 RK_FUNC_2 &pcfg_pull_none>;
+					<2 RK_PB0 2 &pcfg_pull_none>,
+					<2 RK_PA7 2 &pcfg_pull_none>;
 			};
 		};
 
 		i2c8 {
 			i2c8_xfer: i2c8-xfer {
 				rockchip,pins =
-					<1 RK_PC5 RK_FUNC_1 &pcfg_pull_none>,
-					<1 RK_PC4 RK_FUNC_1 &pcfg_pull_none>;
+					<1 RK_PC5 1 &pcfg_pull_none>,
+					<1 RK_PC4 1 &pcfg_pull_none>;
 			};
 		};
 
 		i2s0 {
+			i2s0_2ch_bus: i2s0-2ch-bus {
+				rockchip,pins =
+					<3 RK_PD0 1 &pcfg_pull_none>,
+					<3 RK_PD1 1 &pcfg_pull_none>,
+					<3 RK_PD2 1 &pcfg_pull_none>,
+					<3 RK_PD3 1 &pcfg_pull_none>,
+					<3 RK_PD7 1 &pcfg_pull_none>,
+					<4 RK_PA0 1 &pcfg_pull_none>;
+			};
+
 			i2s0_8ch_bus: i2s0-8ch-bus {
 				rockchip,pins =
-					<3 RK_PD0 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD1 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD2 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD3 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD4 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD5 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD6 RK_FUNC_1 &pcfg_pull_none>,
-					<3 RK_PD7 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PA0 RK_FUNC_1 &pcfg_pull_none>;
+					<3 RK_PD0 1 &pcfg_pull_none>,
+					<3 RK_PD1 1 &pcfg_pull_none>,
+					<3 RK_PD2 1 &pcfg_pull_none>,
+					<3 RK_PD3 1 &pcfg_pull_none>,
+					<3 RK_PD4 1 &pcfg_pull_none>,
+					<3 RK_PD5 1 &pcfg_pull_none>,
+					<3 RK_PD6 1 &pcfg_pull_none>,
+					<3 RK_PD7 1 &pcfg_pull_none>,
+					<4 RK_PA0 1 &pcfg_pull_none>;
 			};
 		};
 
 		i2s1 {
 			i2s1_2ch_bus: i2s1-2ch-bus {
 				rockchip,pins =
-					<4 RK_PA3 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PA4 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PA5 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PA6 RK_FUNC_1 &pcfg_pull_none>,
-					<4 RK_PA7 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PA3 1 &pcfg_pull_none>,
+					<4 RK_PA4 1 &pcfg_pull_none>,
+					<4 RK_PA5 1 &pcfg_pull_none>,
+					<4 RK_PA6 1 &pcfg_pull_none>,
+					<4 RK_PA7 1 &pcfg_pull_none>;
 			};
 		};
 
 		sdio0 {
 			sdio0_bus1: sdio0-bus1 {
 				rockchip,pins =
-					<2 RK_PC4 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PC4 1 &pcfg_pull_up>;
 			};
 
 			sdio0_bus4: sdio0-bus4 {
 				rockchip,pins =
-					<2 RK_PC4 RK_FUNC_1 &pcfg_pull_up>,
-					<2 RK_PC5 RK_FUNC_1 &pcfg_pull_up>,
-					<2 RK_PC6 RK_FUNC_1 &pcfg_pull_up>,
-					<2 RK_PC7 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PC4 1 &pcfg_pull_up>,
+					<2 RK_PC5 1 &pcfg_pull_up>,
+					<2 RK_PC6 1 &pcfg_pull_up>,
+					<2 RK_PC7 1 &pcfg_pull_up>;
 			};
 
 			sdio0_cmd: sdio0-cmd {
 				rockchip,pins =
-					<2 RK_PD0 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PD0 1 &pcfg_pull_up>;
 			};
 
 			sdio0_clk: sdio0-clk {
 				rockchip,pins =
-					<2 RK_PD1 RK_FUNC_1 &pcfg_pull_none>;
+					<2 RK_PD1 1 &pcfg_pull_none>;
 			};
 
 			sdio0_cd: sdio0-cd {
 				rockchip,pins =
-					<2 RK_PD2 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PD2 1 &pcfg_pull_up>;
 			};
 
 			sdio0_pwr: sdio0-pwr {
 				rockchip,pins =
-					<2 RK_PD3 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PD3 1 &pcfg_pull_up>;
 			};
 
 			sdio0_bkpwr: sdio0-bkpwr {
 				rockchip,pins =
-					<2 RK_PD4 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PD4 1 &pcfg_pull_up>;
 			};
 
 			sdio0_wp: sdio0-wp {
 				rockchip,pins =
-					<0 RK_PA3 RK_FUNC_1 &pcfg_pull_up>;
+					<0 RK_PA3 1 &pcfg_pull_up>;
 			};
 
 			sdio0_int: sdio0-int {
 				rockchip,pins =
-					<0 RK_PA4 RK_FUNC_1 &pcfg_pull_up>;
+					<0 RK_PA4 1 &pcfg_pull_up>;
 			};
 		};
 
 		sdmmc {
 			sdmmc_bus1: sdmmc-bus1 {
 				rockchip,pins =
-					<4 RK_PB0 RK_FUNC_1 &pcfg_pull_up>;
+					<4 RK_PB0 1 &pcfg_pull_up>;
 			};
 
 			sdmmc_bus4: sdmmc-bus4 {
 				rockchip,pins =
-					<4 RK_PB0 RK_FUNC_1 &pcfg_pull_up>,
-					<4 RK_PB1 RK_FUNC_1 &pcfg_pull_up>,
-					<4 RK_PB2 RK_FUNC_1 &pcfg_pull_up>,
-					<4 RK_PB3 RK_FUNC_1 &pcfg_pull_up>;
+					<4 RK_PB0 1 &pcfg_pull_up>,
+					<4 RK_PB1 1 &pcfg_pull_up>,
+					<4 RK_PB2 1 &pcfg_pull_up>,
+					<4 RK_PB3 1 &pcfg_pull_up>;
 			};
 
 			sdmmc_clk: sdmmc-clk {
 				rockchip,pins =
-					<4 RK_PB4 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PB4 1 &pcfg_pull_none>;
 			};
 
 			sdmmc_cmd: sdmmc-cmd {
 				rockchip,pins =
-					<4 RK_PB5 RK_FUNC_1 &pcfg_pull_up>;
+					<4 RK_PB5 1 &pcfg_pull_up>;
 			};
 
 			sdmmc_cd: sdmmc-cd {
 				rockchip,pins =
-					<0 RK_PA7 RK_FUNC_1 &pcfg_pull_up>;
+					<0 RK_PA7 1 &pcfg_pull_up>;
 			};
 
 			sdmmc_wp: sdmmc-wp {
 				rockchip,pins =
-					<0 RK_PB0 RK_FUNC_1 &pcfg_pull_up>;
+					<0 RK_PB0 1 &pcfg_pull_up>;
 			};
 		};
 
 		sleep {
 			ap_pwroff: ap-pwroff {
-				rockchip,pins = <1 RK_PA5 RK_FUNC_1 &pcfg_pull_none>;
+				rockchip,pins = <1 RK_PA5 1 &pcfg_pull_none>;
 			};
 
 			ddrio_pwroff: ddrio-pwroff {
-				rockchip,pins = <0 RK_PA1 RK_FUNC_1 &pcfg_pull_none>;
+				rockchip,pins = <0 RK_PA1 1 &pcfg_pull_none>;
 			};
 		};
 
 		spdif {
 			spdif_bus: spdif-bus {
 				rockchip,pins =
-					<4 RK_PC5 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC5 1 &pcfg_pull_none>;
 			};
 
 			spdif_bus_1: spdif-bus-1 {
 				rockchip,pins =
-					<3 RK_PC0 RK_FUNC_3 &pcfg_pull_none>;
+					<3 RK_PC0 3 &pcfg_pull_none>;
 			};
 		};
 
 		spi0 {
 			spi0_clk: spi0-clk {
 				rockchip,pins =
-					<3 RK_PA6 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA6 2 &pcfg_pull_up>;
 			};
 			spi0_cs0: spi0-cs0 {
 				rockchip,pins =
-					<3 RK_PA7 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA7 2 &pcfg_pull_up>;
 			};
 			spi0_cs1: spi0-cs1 {
 				rockchip,pins =
-					<3 RK_PB0 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PB0 2 &pcfg_pull_up>;
 			};
 			spi0_tx: spi0-tx {
 				rockchip,pins =
-					<3 RK_PA5 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA5 2 &pcfg_pull_up>;
 			};
 			spi0_rx: spi0-rx {
 				rockchip,pins =
-					<3 RK_PA4 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA4 2 &pcfg_pull_up>;
 			};
 		};
 
 		spi1 {
 			spi1_clk: spi1-clk {
 				rockchip,pins =
-					<1 RK_PB1 RK_FUNC_2 &pcfg_pull_up>;
+					<1 RK_PB1 2 &pcfg_pull_up>;
 			};
 			spi1_cs0: spi1-cs0 {
 				rockchip,pins =
-					<1 RK_PB2 RK_FUNC_2 &pcfg_pull_up>;
+					<1 RK_PB2 2 &pcfg_pull_up>;
 			};
 			spi1_rx: spi1-rx {
 				rockchip,pins =
-					<1 RK_PA7 RK_FUNC_2 &pcfg_pull_up>;
+					<1 RK_PA7 2 &pcfg_pull_up>;
 			};
 			spi1_tx: spi1-tx {
 				rockchip,pins =
-					<1 RK_PB0 RK_FUNC_2 &pcfg_pull_up>;
+					<1 RK_PB0 2 &pcfg_pull_up>;
 			};
 		};
 
 		spi2 {
 			spi2_clk: spi2-clk {
 				rockchip,pins =
-					<2 RK_PB3 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PB3 1 &pcfg_pull_up>;
 			};
 			spi2_cs0: spi2-cs0 {
 				rockchip,pins =
-					<2 RK_PB4 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PB4 1 &pcfg_pull_up>;
 			};
 			spi2_rx: spi2-rx {
 				rockchip,pins =
-					<2 RK_PB1 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PB1 1 &pcfg_pull_up>;
 			};
 			spi2_tx: spi2-tx {
 				rockchip,pins =
-					<2 RK_PB2 RK_FUNC_1 &pcfg_pull_up>;
+					<2 RK_PB2 1 &pcfg_pull_up>;
 			};
 		};
 
 		spi3 {
 			spi3_clk: spi3-clk {
 				rockchip,pins =
-					<1 RK_PC1 RK_FUNC_1 &pcfg_pull_up>;
+					<1 RK_PC1 1 &pcfg_pull_up>;
 			};
 			spi3_cs0: spi3-cs0 {
 				rockchip,pins =
-					<1 RK_PC2 RK_FUNC_1 &pcfg_pull_up>;
+					<1 RK_PC2 1 &pcfg_pull_up>;
 			};
 			spi3_rx: spi3-rx {
 				rockchip,pins =
-					<1 RK_PB7 RK_FUNC_1 &pcfg_pull_up>;
+					<1 RK_PB7 1 &pcfg_pull_up>;
 			};
 			spi3_tx: spi3-tx {
 				rockchip,pins =
-					<1 RK_PC0 RK_FUNC_1 &pcfg_pull_up>;
+					<1 RK_PC0 1 &pcfg_pull_up>;
 			};
 		};
 
 		spi4 {
 			spi4_clk: spi4-clk {
 				rockchip,pins =
-					<3 RK_PA2 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA2 2 &pcfg_pull_up>;
 			};
 			spi4_cs0: spi4-cs0 {
 				rockchip,pins =
-					<3 RK_PA3 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA3 2 &pcfg_pull_up>;
 			};
 			spi4_rx: spi4-rx {
 				rockchip,pins =
-					<3 RK_PA0 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA0 2 &pcfg_pull_up>;
 			};
 			spi4_tx: spi4-tx {
 				rockchip,pins =
-					<3 RK_PA1 RK_FUNC_2 &pcfg_pull_up>;
+					<3 RK_PA1 2 &pcfg_pull_up>;
 			};
 		};
 
 		spi5 {
 			spi5_clk: spi5-clk {
 				rockchip,pins =
-					<2 RK_PC6 RK_FUNC_2 &pcfg_pull_up>;
+					<2 RK_PC6 2 &pcfg_pull_up>;
 			};
 			spi5_cs0: spi5-cs0 {
 				rockchip,pins =
-					<2 RK_PC7 RK_FUNC_2 &pcfg_pull_up>;
+					<2 RK_PC7 2 &pcfg_pull_up>;
 			};
 			spi5_rx: spi5-rx {
 				rockchip,pins =
-					<2 RK_PC4 RK_FUNC_2 &pcfg_pull_up>;
+					<2 RK_PC4 2 &pcfg_pull_up>;
 			};
 			spi5_tx: spi5-tx {
 				rockchip,pins =
-					<2 RK_PC5 RK_FUNC_2 &pcfg_pull_up>;
+					<2 RK_PC5 2 &pcfg_pull_up>;
+			};
+		};
+
+		testclk {
+			test_clkout0: test-clkout0 {
+				rockchip,pins =
+					<0 RK_PA0 1 &pcfg_pull_none>;
+			};
+
+			test_clkout1: test-clkout1 {
+				rockchip,pins =
+					<2 RK_PD1 2 &pcfg_pull_none>;
+			};
+
+			test_clkout2: test-clkout2 {
+				rockchip,pins =
+					<0 RK_PB0 3 &pcfg_pull_none>;
 			};
 		};
 
@@ -2329,168 +2480,168 @@
 			};
 
 			otp_out: otp-out {
-				rockchip,pins = <1 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
+				rockchip,pins = <1 RK_PA6 1 &pcfg_pull_none>;
 			};
 		};
 
 		uart0 {
 			uart0_xfer: uart0-xfer {
 				rockchip,pins =
-					<2 RK_PC0 RK_FUNC_1 &pcfg_pull_up>,
-					<2 RK_PC1 RK_FUNC_1 &pcfg_pull_none>;
+					<2 RK_PC0 1 &pcfg_pull_up>,
+					<2 RK_PC1 1 &pcfg_pull_none>;
 			};
 
 			uart0_cts: uart0-cts {
 				rockchip,pins =
-					<2 RK_PC2 RK_FUNC_1 &pcfg_pull_none>;
+					<2 RK_PC2 1 &pcfg_pull_none>;
 			};
 
 			uart0_rts: uart0-rts {
 				rockchip,pins =
-					<2 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
+					<2 RK_PC3 1 &pcfg_pull_none>;
 			};
 		};
 
 		uart1 {
 			uart1_xfer: uart1-xfer {
 				rockchip,pins =
-					<3 RK_PB4 RK_FUNC_2 &pcfg_pull_up>,
-					<3 RK_PB5 RK_FUNC_2 &pcfg_pull_none>;
+					<3 RK_PB4 2 &pcfg_pull_up>,
+					<3 RK_PB5 2 &pcfg_pull_none>;
 			};
 		};
 
 		uart2a {
 			uart2a_xfer: uart2a-xfer {
 				rockchip,pins =
-					<4 RK_PB0 RK_FUNC_2 &pcfg_pull_up>,
-					<4 RK_PB1 RK_FUNC_2 &pcfg_pull_none>;
+					<4 RK_PB0 2 &pcfg_pull_up>,
+					<4 RK_PB1 2 &pcfg_pull_none>;
 			};
 		};
 
 		uart2b {
 			uart2b_xfer: uart2b-xfer {
 				rockchip,pins =
-					<4 RK_PC0 RK_FUNC_2 &pcfg_pull_up>,
-					<4 RK_PC1 RK_FUNC_2 &pcfg_pull_none>;
+					<4 RK_PC0 2 &pcfg_pull_up>,
+					<4 RK_PC1 2 &pcfg_pull_none>;
 			};
 		};
 
 		uart2c {
 			uart2c_xfer: uart2c-xfer {
 				rockchip,pins =
-					<4 RK_PC3 RK_FUNC_1 &pcfg_pull_up>,
-					<4 RK_PC4 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC3 1 &pcfg_pull_up>,
+					<4 RK_PC4 1 &pcfg_pull_none>;
 			};
 		};
 
 		uart3 {
 			uart3_xfer: uart3-xfer {
 				rockchip,pins =
-					<3 RK_PB6 RK_FUNC_2 &pcfg_pull_up>,
-					<3 RK_PB7 RK_FUNC_2 &pcfg_pull_none>;
+					<3 RK_PB6 2 &pcfg_pull_up>,
+					<3 RK_PB7 2 &pcfg_pull_none>;
 			};
 
 			uart3_cts: uart3-cts {
 				rockchip,pins =
-					<3 RK_PC2 RK_FUNC_2 &pcfg_pull_none>;
+					<3 RK_PC0 2 &pcfg_pull_none>;
 			};
 
 			uart3_rts: uart3-rts {
 				rockchip,pins =
-					<3 RK_PC3 RK_FUNC_2 &pcfg_pull_none>;
+					<3 RK_PC1 2 &pcfg_pull_none>;
 			};
 		};
 
 		uart4 {
 			uart4_xfer: uart4-xfer {
 				rockchip,pins =
-					<1 RK_PA7 RK_FUNC_1 &pcfg_pull_up>,
-					<1 RK_PB0 RK_FUNC_1 &pcfg_pull_none>;
+					<1 RK_PA7 1 &pcfg_pull_up>,
+					<1 RK_PB0 1 &pcfg_pull_none>;
 			};
 		};
 
 		uarthdcp {
 			uarthdcp_xfer: uarthdcp-xfer {
 				rockchip,pins =
-					<4 RK_PC5 RK_FUNC_2 &pcfg_pull_up>,
-					<4 RK_PC6 RK_FUNC_2 &pcfg_pull_none>;
+					<4 RK_PC5 2 &pcfg_pull_up>,
+					<4 RK_PC6 2 &pcfg_pull_none>;
 			};
 		};
 
 		pwm0 {
 			pwm0_pin: pwm0-pin {
 				rockchip,pins =
-					<4 RK_PC2 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC2 1 &pcfg_pull_none>;
+			};
+
+			pwm0_pin_pull_down: pwm0-pin-pull-down {
+				rockchip,pins =
+					<4 RK_PC2 1 &pcfg_pull_down>;
 			};
 
 			vop0_pwm_pin: vop0-pwm-pin {
 				rockchip,pins =
-					<4 RK_PC2 RK_FUNC_2 &pcfg_pull_none>;
+					<4 RK_PC2 2 &pcfg_pull_none>;
+			};
+
+			vop1_pwm_pin: vop1-pwm-pin {
+				rockchip,pins =
+					<4 RK_PC2 3 &pcfg_pull_none>;
 			};
 		};
 
 		pwm1 {
 			pwm1_pin: pwm1-pin {
 				rockchip,pins =
-					<4 RK_PC6 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC6 1 &pcfg_pull_none>;
 			};
 
-			vop1_pwm_pin: vop1-pwm-pin {
+			pwm1_pin_pull_down: pwm1-pin-pull-down {
 				rockchip,pins =
-					<4 RK_PC2 RK_FUNC_3 &pcfg_pull_none>;
+					<4 RK_PC6 1 &pcfg_pull_down>;
 			};
 		};
 
 		pwm2 {
 			pwm2_pin: pwm2-pin {
 				rockchip,pins =
-					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
+					<1 RK_PC3 1 &pcfg_pull_none>;
 			};
 
 			pwm2_pin_pull_down: pwm2-pin-pull-down {
 				rockchip,pins =
-					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_down>;
+					<1 RK_PC3 1 &pcfg_pull_down>;
 			};
 		};
 
 		pwm3a {
 			pwm3a_pin: pwm3a-pin {
 				rockchip,pins =
-					<0 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
+					<0 RK_PA6 1 &pcfg_pull_none>;
 			};
 		};
 
 		pwm3b {
 			pwm3b_pin: pwm3b-pin {
 				rockchip,pins =
-					<1 RK_PB6 RK_FUNC_1 &pcfg_pull_none>;
+					<1 RK_PB6 1 &pcfg_pull_none>;
 			};
 		};
 
 		hdmi {
 			hdmi_i2c_xfer: hdmi-i2c-xfer {
 				rockchip,pins =
-					<4 RK_PC1 RK_FUNC_3 &pcfg_pull_none>,
-					<4 RK_PC0 RK_FUNC_3 &pcfg_pull_none>;
+					<4 RK_PC1 3 &pcfg_pull_none>,
+					<4 RK_PC0 3 &pcfg_pull_none>;
 			};
 
 			hdmi_cec: hdmi-cec {
 				rockchip,pins =
-					<4 RK_PC7 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC7 1 &pcfg_pull_none>;
 			};
 		};
 
 		pcie {
-			pcie_clkreqn: pci-clkreqn {
-				rockchip,pins =
-					<2 RK_PD2 RK_FUNC_2 &pcfg_pull_none>;
-			};
-
-			pcie_clkreqnb: pci-clkreqnb {
-				rockchip,pins =
-					<4 RK_PD0 RK_FUNC_1 &pcfg_pull_none>;
-			};
-
 			pcie_clkreqn_cpm: pci-clkreqn-cpm {
 				rockchip,pins =
 					<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.17.1
