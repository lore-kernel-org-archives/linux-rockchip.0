Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB11C2BD05
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 20:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBg/gEkyuKpAGEfBpE4mi1GWtVZU8JDjF74d5bTrBn0=; b=lw6XR0BiSkzt6p
	Ln1jx5+1XsvtAVFyBzGJCzVo2Crh7Z2OwBP9AJPku/cH1/gXWkVBK6Fb8Qe+LIOuy4p6a2smCb8pi
	BivELVAJxAL3eNR5LrrxNV57rEGJiS138uIxVWPuHaSkDUSgIe5qJjhSK3wlufJkVKqdd/JKwuwYv
	ntMyNzCTzbYWJgUgWfvctSeAu3DWTCMXxC3E1M31vJF1KvOCUKdTkBKELAvO7SD7fLgmspZzG7lXP
	Q2NnExNuU0wz0bify3hd2BBZvt7K9ot+mhZ2Mc8wYmySei/qiXxEpTdLOvTBetFFcwEM8VLsd0W7n
	u8L9Pdfj86CtcL+6NFMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTcC-0000000Ej2L-1nxV;
	Sun, 23 Jun 2024 20:15:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTcA-0000000Ej0w-2tBq
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 20:15:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=oqdMWcx9hQMJ2Xhl5np6t/Lgmhl+/tpMFdRTn4kX5T0=; b=efr70qSoFtKycVZRh8GmUaU1De
	Y6XHnGNY09aXmaVfXKyU+SfJfZrTemI/KD6E1L94z4YJSdW9a2hRwP0gq29veGMXtTAQFvdR6GlDb
	NTlft1ZVAINt1gbEi+Jli3xQ9+8/s/5z5rcxxkkW77vaEysv9plqieE5WG+u/RgGXYsNHTAijMFgH
	U0IbeUgZTBcxMba1G3yGCIPAP7/K6hL+vbMYOaW/UN3PNL66PRL51rIR6P+MJJjIP3gAGP1PWaqIR
	jYuz427qXJjENsUkFFLUCmQE5m1lYMoRON1RqzYls3cEeysloLyzc7CnnFG0v2ktGM4sckoQHo3VY
	TgLVjCGA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTc0-00000009NUW-10ua
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 20:15:02 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NKEMoc007026;
	Mon, 24 Jun 2024 05:14:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 2/3] arm64: dts: rockchip: prepare common .dtsi for Radxa ROCK Pi E
Date: Mon, 24 Jun 2024 05:14:14 +0900
Message-ID: <20240623201415.3205-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
References: <20240623201415.3205-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_211456_749752_EDD6FDA2 
X-CRM114-Status: GOOD (  11.56  )
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

Radxa ROCK Pi E v1.2x and ROCK Pi E v3.0 share most of their parts.
prepare rk3328-rock-pi-e-base.dtsi as a common dtsi for both boards.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v3:
- move mmc aliases from base to board dts. no functional change
Changes in v2:
- include changes for rk3328-rock-pi-e.dts to make dtb buildable
---
 .../dts/rockchip/rk3328-rock-pi-e-base.dtsi   | 440 ++++++++++++++++++
 .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 432 +----------------
 2 files changed, 441 insertions(+), 431 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
new file mode 100644
index 000000000000..1da518fd31fd
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
@@ -0,0 +1,440 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
+ *
+ * Based on ./rk3328-rock64.dts, which is
+ *
+ * Copyright (c) 2017 PINE64
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+#include "rk3328.dtsi"
+
+/ {
+	aliases {
+		ethernet0 = &gmac2io;
+		ethernet1 = &gmac2phy;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1750000>;
+
+		/* This button is unpopulated out of the factory. */
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <10000>;
+		};
+	};
+
+	gmac_clkin: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac_clkin";
+		#clock-cells = <0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&led_pin>;
+		pinctrl-names = "default";
+
+		led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	vcc_sd: sdmmc-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0m1_pin>;
+		regulator-name = "vcc_sd";
+		regulator-boot-on;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_host_5v: vcc-host-5v-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb30_host_drv>;
+		enable-active-high;
+		regulator-name = "vcc_host_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_sys: vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc_wifi: vcc-wifi-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_en>;
+		regulator-name = "vcc_wifi";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_io>;
+	};
+};
+
+&analog_sound {
+	status = "okay";
+};
+
+&codec {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc18_emmc>;
+	status = "okay";
+};
+
+&gmac2io {
+	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&rtl8211>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_io>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins>;
+	snps,aal;
+	snps,rxpbl = <0x4>;
+	snps,txpbl = <0x4>;
+	tx_delay = <0x26>;
+	rx_delay = <0x11>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211: ethernet-phy@1 {
+			reg = <1>;
+			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
+			pinctrl-names = "default";
+			interrupt-parent = <&gpio1>;
+			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <50000>;
+			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gmac2phy {
+	status = "okay";
+};
+
+&gpio0 {
+	gpio-line-names =
+		/* GPIO0_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_D0 - D7 */
+		"", "", "", "pin-15 [GPIO0_D3]", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+		/* GPIO1_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_D0 - D7 */
+		"", "", "", "", "pin-07 [GPIO1_D4]", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+		/* GPIO2_A0 - A7 */
+		"pin-08 [GPIO2_A0]", "pin-10 [GPIO2_A1]", "pin-11 [GPIO2_A2]",
+		"pin-13 [GPIO2-A3]", "pin-27 [GPIO2_A4]", "pin-28 [GPIO2_A5]",
+		"pin-33 [GPIO2_A6]", "",
+		/* GPIO2_B0 - B7 */
+		"", "", "", "", "pin-26 [GPIO2_B4]", "", "", "pin-36 [GPIO2_B7]",
+		/* GPIO2_C0 - C7 */
+		"pin-32 [GPIO2_C0]", "pin-35 [GPIO2_C1]", "pin-12 [GPIO2_C2]",
+		"pin-38 [GPIO2_C3]", "pin-29 [GPIO2_C4]", "pin-31 [GPIO2_C5]",
+		"pin-37 [GPIO2_C6]", "pin-40 [GPIO2_C7]",
+		/* GPIO2_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+		/* GPIO3_A0 - A7 */
+		"pin-23 [GPIO3_A0]", "pin-19 [GPIO3_A1]", "pin-21 [GPIO3_A2]",
+		"", "pin-03 [GPIO3_A4]", "", "pin-05 [GPIO3_A6]", "",
+		/* GPIO3_B0 - B7 */
+		"pin-24 [GPIO3_B0]", "", "", "", "", "", "", "",
+		/* GPIO3_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO3_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&i2c1 {
+	status = "okay";
+
+	rk805: pmic@18 {
+		compatible = "rockchip,rk805";
+		reg = <0x18>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk805-clkout2";
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_io>;
+		vcc6-supply = <&vcc_sys>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-name = "vdd_log";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <712500>;
+				regulator-max-microvolt = <1450000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <712500>;
+				regulator-max-microvolt = <1450000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_io: DCDC_REG4 {
+				regulator-name = "vcc_io";
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
+			vcc_18: LDO_REG1 {
+				regulator-name = "vcc_18";
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
+			vcc18_emmc: LDO_REG2 {
+				regulator-name = "vcc18_emmc";
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
+			vdd_10: LDO_REG3 {
+				regulator-name = "vdd_10";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+		};
+	};
+};
+
+&i2s1 {
+	status = "okay";
+};
+
+&io_domains {
+	pmuio-supply = <&vcc_io>;
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc18_emmc>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vcc_io>;
+	vccio5-supply = <&vcc_io>;
+	vccio6-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&pinctrl {
+	ephy {
+		eth_phy_int_pin: eth-phy-int-pin {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		eth_phy_reset_pin: eth-phy-reset-pin {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		led_pin: led-pin {
+			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb3 {
+		usb30_host_drv: usb30-host-drv {
+			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_en: wifi-en {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
+	vmmc-supply = <&vcc_sd>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_18>;
+	status = "okay";
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a608a219543e..cbeb2e567bf9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -1,445 +1,15 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
- *
- * Based on ./rk3328-rock64.dts, which is
- *
- * Copyright (c) 2017 PINE64
- */
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-
-#include "rk3328.dtsi"
+#include "rk3328-rock-pi-e-base.dtsi"
 
 / {
 	model = "Radxa ROCK Pi E";
 	compatible = "radxa,rockpi-e", "rockchip,rk3328";
 
 	aliases {
-		ethernet0 = &gmac2io;
-		ethernet1 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	adc-keys {
-		compatible = "adc-keys";
-		io-channels = <&saradc 0>;
-		io-channel-names = "buttons";
-		keyup-threshold-microvolt = <1750000>;
-
-		/* This button is unpopulated out of the factory. */
-		button-recovery {
-			label = "Recovery";
-			linux,code = <KEY_VENDOR>;
-			press-threshold-microvolt = <10000>;
-		};
-	};
-
-	gmac_clkin: external-gmac-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "gmac_clkin";
-		#clock-cells = <0>;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-0 = <&led_pin>;
-		pinctrl-names = "default";
-
-		led-0 {
-			color = <LED_COLOR_ID_BLUE>;
-			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	vcc_sd: sdmmc-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_pin>;
-		regulator-name = "vcc_sd";
-		regulator-boot-on;
-		vin-supply = <&vcc_io>;
-	};
-
-	vcc_host_5v: vcc-host-5v-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb30_host_drv>;
-		enable-active-high;
-		regulator-name = "vcc_host_5v";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc_sys>;
-	};
-
-	vcc_sys: vcc-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc_wifi: vcc-wifi-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_en>;
-		regulator-name = "vcc_wifi";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc_io>;
-	};
-};
-
-&analog_sound {
-	status = "okay";
-};
-
-&codec {
-	status = "okay";
-};
-
-&cpu0 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&cpu1 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&cpu2 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&cpu3 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&emmc {
-	bus-width = <8>;
-	cap-mmc-highspeed;
-	mmc-ddr-1_8v;
-	mmc-hs200-1_8v;
-	non-removable;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
-	vmmc-supply = <&vcc_io>;
-	vqmmc-supply = <&vcc18_emmc>;
-	status = "okay";
-};
-
-&gmac2io {
-	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
-	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
-	clock_in_out = "input";
-	phy-handle = <&rtl8211>;
-	phy-mode = "rgmii";
-	phy-supply = <&vcc_io>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmiim1_pins>;
-	snps,aal;
-	snps,rxpbl = <0x4>;
-	snps,txpbl = <0x4>;
-	tx_delay = <0x26>;
-	rx_delay = <0x11>;
-	status = "okay";
-
-	mdio {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		rtl8211: ethernet-phy@1 {
-			reg = <1>;
-			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
-			pinctrl-names = "default";
-			interrupt-parent = <&gpio1>;
-			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <50000>;
-			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
-		};
-	};
-};
-
-&gmac2phy {
-	status = "okay";
-};
-
-&gpio0 {
-	gpio-line-names =
-		/* GPIO0_A0 - A7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO0_B0 - B7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO0_C0 - C7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO0_D0 - D7 */
-		"", "", "", "pin-15 [GPIO0_D3]", "", "", "", "";
-};
-
-&gpio1 {
-	gpio-line-names =
-		/* GPIO1_A0 - A7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO1_B0 - B7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO1_C0 - C7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO1_D0 - D7 */
-		"", "", "", "", "pin-07 [GPIO1_D4]", "", "", "";
-};
-
-&gpio2 {
-	gpio-line-names =
-		/* GPIO2_A0 - A7 */
-		"pin-08 [GPIO2_A0]", "pin-10 [GPIO2_A1]", "pin-11 [GPIO2_A2]",
-		"pin-13 [GPIO2-A3]", "pin-27 [GPIO2_A4]", "pin-28 [GPIO2_A5]",
-		"pin-33 [GPIO2_A6]", "",
-		/* GPIO2_B0 - B7 */
-		"", "", "", "", "pin-26 [GPIO2_B4]", "", "", "pin-36 [GPIO2_B7]",
-		/* GPIO2_C0 - C7 */
-		"pin-32 [GPIO2_C0]", "pin-35 [GPIO2_C1]", "pin-12 [GPIO2_C2]",
-		"pin-38 [GPIO2_C3]", "pin-29 [GPIO2_C4]", "pin-31 [GPIO2_C5]",
-		"pin-37 [GPIO2_C6]", "pin-40 [GPIO2_C7]",
-		/* GPIO2_D0 - D7 */
-		"", "", "", "", "", "", "", "";
-};
-
-&gpio3 {
-	gpio-line-names =
-		/* GPIO3_A0 - A7 */
-		"pin-23 [GPIO3_A0]", "pin-19 [GPIO3_A1]", "pin-21 [GPIO3_A2]",
-		"", "pin-03 [GPIO3_A4]", "", "pin-05 [GPIO3_A6]", "",
-		/* GPIO3_B0 - B7 */
-		"pin-24 [GPIO3_B0]", "", "", "", "", "", "", "",
-		/* GPIO3_C0 - C7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO3_D0 - D7 */
-		"", "", "", "", "", "", "", "";
-};
-
-&i2c1 {
-	status = "okay";
-
-	rk805: pmic@18 {
-		compatible = "rockchip,rk805";
-		reg = <0x18>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		clock-output-names = "xin32k", "rk805-clkout2";
-		gpio-controller;
-		#gpio-cells = <2>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
-		wakeup-source;
-
-		vcc1-supply = <&vcc_sys>;
-		vcc2-supply = <&vcc_sys>;
-		vcc3-supply = <&vcc_sys>;
-		vcc4-supply = <&vcc_sys>;
-		vcc5-supply = <&vcc_io>;
-		vcc6-supply = <&vcc_sys>;
-
-		regulators {
-			vdd_log: DCDC_REG1 {
-				regulator-name = "vdd_log";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <712500>;
-				regulator-max-microvolt = <1450000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-
-			vdd_arm: DCDC_REG2 {
-				regulator-name = "vdd_arm";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <712500>;
-				regulator-max-microvolt = <1450000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <950000>;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_io: DCDC_REG4 {
-				regulator-name = "vcc_io";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcc_18: LDO_REG1 {
-				regulator-name = "vcc_18";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcc18_emmc: LDO_REG2 {
-				regulator-name = "vcc18_emmc";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vdd_10: LDO_REG3 {
-				regulator-name = "vdd_10";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-		};
-	};
-};
-
-&i2s1 {
-	status = "okay";
-};
-
-&io_domains {
-	pmuio-supply = <&vcc_io>;
-	vccio1-supply = <&vcc_io>;
-	vccio2-supply = <&vcc18_emmc>;
-	vccio3-supply = <&vcc_io>;
-	vccio4-supply = <&vcc_io>;
-	vccio5-supply = <&vcc_io>;
-	vccio6-supply = <&vcc_io>;
-	status = "okay";
-};
-
-&pinctrl {
-	ephy {
-		eth_phy_int_pin: eth-phy-int-pin {
-			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-
-		eth_phy_reset_pin: eth-phy-reset-pin {
-			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-	};
-
-	leds {
-		led_pin: led-pin {
-			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	usb3 {
-		usb30_host_drv: usb30-host-drv {
-			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	wifi {
-		wifi_en: wifi-en {
-			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-sd-highspeed;
-	disable-wp;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
-	vmmc-supply = <&vcc_sd>;
-	status = "okay";
-};
-
-&saradc {
-	vref-supply = <&vcc_18>;
-	status = "okay";
-};
-
-&tsadc {
-	status = "okay";
-};
-
-&u2phy {
-	status = "okay";
-};
-
-&u2phy_host {
-	status = "okay";
-};
-
-&uart2 {
-	status = "okay";
-};
-
-&usbdrd3 {
-	dr_mode = "host";
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
