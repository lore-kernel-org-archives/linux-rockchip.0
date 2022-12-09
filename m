Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7934BC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Dec 2022 10:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBmF6X8bSQwl0J+q6ARI1BDWxE78D8pE0NvzLe68W7w=; b=ETrcqPx4JG5b5C
	IDrcULJeO0/s4qo1lYpJ2r/aLPRruqlLK7P16C1yJSArdry5GIheTr5oBtWkloCJFJdSUDu2Lh7xG
	s6e4zBj4EW2gPqZ8FAf7kvZphoQmRsb31eiOpq40Sj5x5ethwMe6ZuhPTrvqx2E2qJYiBH6Pir22I
	RTQU5yk6E0ZK1URQRaKD2c3t/Lr3GGXi/qQDAAUQYzfl099mzDoVDmn3LmQsslyXdyMd5MQPivpOi
	CvvsslHxxStNuuNWYyB6hTWqYCTmAJxD59bQPhz+IAqB+fCQHehroeMYal1Ex8oNrv9cdrvAW8mch
	EtPm9m8IKhcIlnTqjezA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3aaG-006bm9-UA; Fri, 09 Dec 2022 10:26:24 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3aZi-006b62-1J; Fri, 09 Dec 2022 10:25:54 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.194])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id A002080011A;
	Fri,  9 Dec 2022 18:25:36 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa CM3I E25
Date: Fri,  9 Dec 2022 18:25:24 +0800
Message-Id: <20221209102524.129367-3-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221209102524.129367-1-amadeus@jmu.edu.cn>
References: <20221209102524.129367-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGkpIVkoeH0sYSB1JQ0lCTlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJPWVdZFhoPEhUdFFlBWU9LSFVKSktPS0NVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ogg6Izo6Lj0hDksyTEIvIzhL
	LwlPCjFVSlVKTUxLTkNKTkhMTUpMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJPWVdZCAFZQUpMQ0JDNwY+
X-HM-Tid: 0a84f66b4841b03akuuua002080011a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_022550_377217_44E159B0 
X-CRM114-Status: GOOD (  12.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Radxa E25 is a network application carrier board for the Radxa CM3
Industrial (CM3I) SoM, which is based on the Rockchip RK3568 SoC.

It has the following features:

- MicroSD card socket, on board eMMC flash
- 2x 2.5GbE Realtek RTL8125B Ethernet transceiver
- 1x USB Type-C port (Power and Serial console)
- 1x USB 3.0 OTG port
- mini PCIe socket (USB or PCIe)
- ngff PCIe socket (USB or SATA)
- 1x User LED and 16x RGB LEDs
- 26-pin expansion header

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 416 ++++++++++++++++++
 .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 229 ++++++++++
 3 files changed, 646 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 0a76a2ebb5f6..19dd314e425e 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -81,4 +81,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
new file mode 100644
index 000000000000..225dbbe4955d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -0,0 +1,416 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Radxa CM3 Industrial Board";
+	compatible = "radxa,cm3i", "rockchip,rk3568";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_user: led-0 {
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_user_en>;
+		};
+	};
+
+	pcie30_avdd0v9: pcie30-avdd0v9-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v_input>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v_input>;
+	};
+
+	/* labeled +5v_input in schematic */
+	vcc5v_input: vcc5v-input-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v_input";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&combphy2 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&display_subsystem {
+	status = "disabled";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1150000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v_input>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-always-on;
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-name = "vdd_npu";
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-name = "vdda0v9_image";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-name = "vcca_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-name = "vcca1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-name = "vcca1v8_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&pinctrl {
+	leds {
+		led_user_en: led_user_en {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
new file mode 100644
index 000000000000..fb96019b0e87
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3568-radxa-cm3i.dtsi"
+
+/ {
+	model = "Radxa E25";
+	compatible = "radxa,e25", "rockchip,rk3568";
+
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
+	};
+
+	pwm-leds {
+		compatible = "pwm-leds-multicolor";
+
+		multi-led {
+			color = <LED_COLOR_ID_RGB>;
+			max-brightness = <255>;
+
+			led-red {
+				color = <LED_COLOR_ID_RED>;
+				pwms = <&pwm1 0 1000000 0>;
+			};
+
+			led-green {
+				color = <LED_COLOR_ID_GREEN>;
+				pwms = <&pwm2 0 1000000 0>;
+			};
+
+			led-blue {
+				color = <LED_COLOR_ID_BLUE>;
+				pwms = <&pwm12 0 1000000 0>;
+			};
+		};
+	};
+
+	vbus_typec: vbus-typec-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vbus_typec_en>;
+		regulator-name = "vbus_typec";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_minipcie: vcc3v3-minipcie-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&minipcie_enable_h>;
+		regulator-name = "vcc3v3_minipcie";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_ngff: vcc3v3-ngff-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ngffpcie_enable_h>;
+		regulator-name = "vcc3v3_ngff";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* actually fed by vcc5v0_sys, dependent
+	 * on pi6c clock generator
+	 */
+	vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie30x1_enable_h>;
+		regulator-name = "vcc3v3_pcie30x1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
+	};
+
+	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie20_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pi6c_05>;
+	status = "okay";
+};
+
+&pcie30phy {
+	data-lanes = <1 2>;
+	status = "okay";
+};
+
+&pcie3x1 {
+	num-lanes = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x1m0_pins>;
+	reset-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30x1>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	num-lanes = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x2_reset_h>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pi6c_05>;
+	status = "okay";
+};
+
+&pinctrl {
+	pcie {
+		pcie20_reset_h: pcie20-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x1_enable_h: pcie30x1-enable-h {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x2_reset_h: pcie30x2-reset-h {
+			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		minipcie_enable_h: minipcie-enable-h {
+			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		ngffpcie_enable_h: ngffpcie-enable-h {
+			rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vbus_typec_en: vbus_typec_en {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
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
+&pwm12 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm12m1_pins>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	/* Also used in pcie30x1_clkreqnm0 */
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
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
+&usb_host0_xhci {
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
+&usb2phy0_otg {
+	phy-supply = <&vbus_typec>;
+	status = "okay";
+};
+
+&usb2phy1_host {
+	phy-supply = <&vcc3v3_minipcie>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	phy-supply = <&vcc3v3_ngff>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
