Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C8DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 16:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+YbAI7LHG+wfBDjDW49QK544WI2ASP0yjulVEQ9FxO8=; b=exhuZ3lvc6Azjf
	rx/eHIoyIWE75tYHN0K821I+UQda33IRF0IIMYB3pTGLojtLFxsDRyzrC8ZblMukLnxBD7nnPse6k
	BcZZ4f3UdlodoTxu6NsocfTbRvlLj8T+ViRnKCKxvvjKHdgt0eKvD7TFIrNrhVx0CkOqZCDDqAL2A
	u/Equm1YQ9d1mfe6CC2Jda5LXQz0gztd2NzYgdFDlYAvPnql7eVivga6m3R2RUBliaSanFX5JSkZh
	RrimvVNfO+IpJ1mgU9/+FSOAHr16oBs1Sg/mjTl7MkvK6FC0QrzdYXWJ9RknrruMDPfOXaU9X1B+r
	H79F9VL/q0Qk6e5/NqDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBfjE-001MTq-AF; Sun, 23 Jan 2022 16:28:32 +0000
Received: from mail.pidancet.net ([51.15.50.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBfj0-001MRA-GK; Sun, 23 Jan 2022 16:28:21 +0000
Received: from authenticated-user (mail.pidancet.net [51.15.50.178])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.pidancet.net (Postfix) with ESMTPSA id 248877E08E;
 Sun, 23 Jan 2022 17:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pidancet.net; s=mail;
 t=1642954815; bh=8hGxTEDhpfWNvrLKvHFmv2mDqr7pxBw8hsu2m3JKoWw=;
 h=From:To:Cc:Subject:Date:From;
 b=shJPNkAeIDWDGhwXW2fyskDA6IU6tIAhwWKBcpoeTq8Q2TEhf0+PuxlTnE+cDLTH0
 mdM+UsxG3dpoasNezTI/k4DXVgAm9/ErSAIkE963+NgCRxi6bdpAbGij4fz5rqnbXz
 gzwOHgFLjoUQSYzrd367nY1knxtI5kOTVdOTREVgFVfLfG76YvOmTgdDTYFBY4JtPD
 3x+5OyfaVXH32OVjpAtL6thOj7arnOqk1E6o1vZtjK3l4PlWhXsFcTBz+Lsw4g3UBF
 ZcNM509E6EnWgh8y9wFSQxxA0YhMfKSIx3w0mPSn+S0w3XmKkHiQCsVRJRodmVN7Xx
 tWuQER5tvXRAw==
From: Julian Pidancet <julian@pidancet.net>
To: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, mj8263788@gmail.com,
 robin.murphy@arm.com, Julian Pidancet <julian@pidancet.net>
Subject: [PATCH v2] rockchip: rk3328: add support for FriendlyARM NanoPi NEO3
Date: Sun, 23 Jan 2022 17:19:19 +0100
Message-Id: <20220123161919.1024653-1-julian@pidancet.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_082819_018028_FD9943F9 
X-CRM114-Status: GOOD (  14.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This patch adds support for FriendlyARM NanoPi NEO3

Soc:      RockChip RK3328
RAM:      1GB/2GB DDR4
LAN:      10/100/1000M Ethernet with unique MAC
USB Host: 1x USB3.0 Type A and 2x USB2.0 on 2.54mm pin header
MicroSD:  x 1 for system boot and storage
LED:      Power LED x 1, System LED x 1
Key:      User Button x 1
Fan:      2 Pin JST ZH 1.5mm Connector for 5V Fan
GPIO:     26 pin-header, include I2C, UART, SPI, I2S, GPIO
Power:    5V/1A, via Type-C or GPIO

Signed-off-by: Julian Pidancet <julian@pidancet.net>
---

This is another shot at previous work submitted by Marty Jones
<mj8263788@gmail.com> (https://lore.kernel.org/linux-arm-kernel/20201228152836.02795e09.mj8263788@gmail.com/),
which is now a year old.

v2: Following up on Robin Murphy's comments, the NEO3 DTS is now
standalone and no longer includes the nanopi R2S one. The lan_led and
wan_len nodes have been removed, and the sys_led node has been renamed
to stat_led in accordance with the board schematics.

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3328-nanopi-neo3.dts  | 396 ++++++++++++++++++
 2 files changed, 397 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 479906f3a..5f6ffb496 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-neo3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
new file mode 100644
index 000000000..1eb7fd5f7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
@@ -0,0 +1,396 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 David Bauer <mail@david-bauer.net>
+ * Copyright (c) 2022 Julian Pidancet <julian@pidancet.net>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "rk3328.dtsi"
+
+/ {
+	model = "FriendlyElec NanoPi NEO3";
+	compatible = "friendlyarm,nanopi-neo3", "rockchip,rk3328";
+
+	aliases {
+		led-boot = &stat_led;
+		led-failsafe = &stat_led;
+		led-running = &stat_led;
+		led-upgrade = &stat_led;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	gmac_clk: gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac_clkin";
+		#clock-cells = <0>;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&reset_button_pin>;
+		pinctrl-names = "default";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+			debounce-interval = <50>;
+		};
+	};
+
+	vcc_rtl8153: vcc-rtl8153-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8153_en_drv>;
+		regulator-always-on;
+		regulator-name = "vcc_rtl8153";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&stat_led_pin>;
+		pinctrl-names = "default";
+
+		stat_led: led-0 {
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-neo3:green:stat";
+		};
+	};
+
+	vcc_io_sdio: sdmmcio-regulator {
+		compatible = "regulator-gpio";
+		enable-active-high;
+		gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&sdio_vcc_pin>;
+		pinctrl-names = "default";
+		regulator-name = "vcc_io_sdio";
+		regulator-always-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-settling-time-us = <5000>;
+		regulator-type = "voltage";
+		startup-delay-us = <2000>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
+		vin-supply = <&vcc_io_33>;
+	};
+
+	vcc_sd: sdmmc-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
+		pinctrl-names = "default";
+		regulator-name = "vcc_sd";
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io_33>;
+	};
+
+	vdd_5v: vdd-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
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
+&display_subsystem {
+	status = "disabled";
+};
+
+&gmac2io {
+	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+	assigned-clock-parents = <&gmac_clk>, <&gmac_clk>;
+	clock_in_out = "input";
+	phy-handle = <&rtl8211e>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_io_33>;
+	pinctrl-0 = <&rgmiim1_pins>;
+	pinctrl-names = "default";
+	rx_delay = <0x18>;
+	snps,aal;
+	tx_delay = <0x24>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211e: ethernet-phy@1 {
+			reg = <1>;
+			pinctrl-0 = <&eth_phy_reset_pin>;
+			pinctrl-names = "default";
+			reset-assert-us = <10000>;
+			reset-deassert-us = <50000>;
+			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	rk805: pmic@18 {
+		compatible = "rockchip,rk805";
+		reg = <0x18>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk805-clkout2";
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-names = "default";
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vdd_5v>;
+		vcc2-supply = <&vdd_5v>;
+		vcc3-supply = <&vdd_5v>;
+		vcc4-supply = <&vdd_5v>;
+		vcc5-supply = <&vcc_io_33>;
+		vcc6-supply = <&vdd_5v>;
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
+			vcc_io_33: DCDC_REG4 {
+				regulator-name = "vcc_io_33";
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
+
+	usb {
+		rtl8153_en_drv: rtl8153-en-drv {
+			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&io_domains {
+	pmuio-supply = <&vcc_io_33>;
+	vccio1-supply = <&vcc_io_33>;
+	vccio2-supply = <&vcc18_emmc>;
+	vccio3-supply = <&vcc_io_sdio>;
+	vccio4-supply = <&vcc_18>;
+	vccio5-supply = <&vcc_io_33>;
+	vccio6-supply = <&vcc_io_33>;
+	status = "okay";
+};
+
+&pinctrl {
+	button {
+		reset_button_pin: reset-button-pin {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	ethernet-phy {
+		eth_phy_reset_pin: eth-phy-reset-pin {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		stat_led_pin: stat-led-pin {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sd {
+		sdio_vcc_pin: sdio-vcc-pin {
+			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
+	pinctrl-names = "default";
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vcc_io_sdio>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <0>;
+	rockchip,hw-tshut-polarity = <0>;
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
+&u2phy_otg {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb20_otg {
+	status = "okay";
+	dr_mode = "host";
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
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+
+	usb-eth@2 {
+		compatible = "realtek,rtl8153";
+		reg = <2>;
+
+		realtek,led-data = <0x87>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
