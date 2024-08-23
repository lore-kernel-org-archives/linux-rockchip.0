Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EACCAC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHrOLZUqxNMk6CYCBlHFCE4w5Yza0RBJaBhME/v5MgQ=; b=BTuszfJVXoJ8Nv
	KFEeqKY6cY7ZJIYb88BKyGmaLOqK7ZYffA61xa3VDlgnvCMpro70IPsitlYgBXiRZ34PfYhF/e4Hx
	qw97iI8BbiNNbKc53ZZeTHncerbsJRNSprXWiEGIbYLoscNyTRP19c4HOQFN9QiWkWOZV+XyxA3C3
	+rL2aahMdaXnHtQhksEYJLEi3bWAC/UNlBHVoyYW1IG35+SA82rxk6B7+qIavfSf1F1bcO8NTGUgw
	tVlKGNBCy42poq9H0oNyhJ51vMKMSLubbr2SOEYJ+YcBR/uXk0A6hspv3sUkGpv27ywqr8RKtkiTk
	0DNWNeGfSp7CFX1Noqvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWSz-0000000HMmO-3kqP;
	Fri, 23 Aug 2024 15:44:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWOa-0000000HLLI-3CAx
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 15:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XUqDjCWuXrk416VODHC6oHQySkJkEmuyRMAeXe+uFJk=; b=QKYpzhx9+eDzkFsZnWoWEbInrc
	Zj6T3300ekXjAxS9kFZf4lAMTkl4o17SFk1KROODrB5kliiER+Pu1Vnm+Y+r1w+3ugTqCIOKDV8d8
	+PGzw86JeB7yVbt+oxt75Ne9+/pGFSMGGEScBaAFno9qxAXX0IFQNOjGs03z9O3Y6xOa+BXb7we4s
	Hy28VF4HJJ11mOKIr66jXvDIMxANU4PCSInQWzWGeCl+ARpCuYbGkNUWrbaFaqVk6WgyOVgZO+dAF
	Mu55ACzrIRNhUEwNx/uJ4gEnnqY/haS0xmSYSPKg1KsXVkbK+l+u6je96aCevH/Qs5CeX19nYxjpL
	BbNVNG2Q==;
Received: from omta34.uswest2.a.cloudfilter.net ([35.89.44.33])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWOU-0000000BsTD-2Fea
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:40:11 +0000
Received: from eig-obgw-6008a.ext.cloudfilter.net ([10.0.30.227])
	by cmsmtp with ESMTPS
	id hTY4sNSgjVpzphWKYseDPj; Fri, 23 Aug 2024 15:36:02 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKVsSWc2DJElhWKXsmYBG; Fri, 23 Aug 2024 15:36:02 +0000
X-Authority-Analysis: v=2.4 cv=H5XdwfYi c=1 sm=1 tr=0 ts=66c8ac62
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=I_wu4Jv3biSIBr8osoMA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=XUqDjCWuXrk416VODHC6oHQySkJkEmuyRMAeXe+uFJk=; b=MqTBJDAigMEYcumq1+EuCeAJwp
	aZCcF0lz7jeBQlezW02Jgz/gBPddHGdExIttUSt8FTqaHbzAogi22yZyxNChzMPYMCE/NXYrX87mL
	l+6gCvdt7/LY6pYZaSSnzsZE85x1yT1RnNfAR1WXC99gHeqOz7nQlr+739rDdEAHgq0s630qZMr97
	n9dIegSesBwgwb0csjx7IuiN7kJ9eavBOpiaUJwh1Du7Ib1B5ldDAAnvRWU/iedRuFs7n2kbPf3iz
	jw/hRR0Lt1v1PV8wH0IBoGzQA00Vmbi3CR4TJSEBbl8fVvsDQ54CBo0OcWa/HBI3hYlgM2MUvkMm6
	UzWBReyA==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKU-000GB4-1Z;
	Fri, 23 Aug 2024 21:05:58 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH 8/8] ARM: dts: rockchip: Add Relfor Saib board
Date: Fri, 23 Aug 2024 21:05:28 +0530
Message-Id: <20240823153528.3863993-9-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shWKU-000GB4-1Z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 83
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfFwgC42ctHlKPXlh0F7UZTa46JJM1Yj0jC5YwJ2RkfYrM4V4NnY9hZZbUDe+sYkrY0hn61ucQhfPGu8J3JI+5YRYwfBSqvjxbubUfDzOcWelNaV9XsU+
 E4woVa2xijZVGOqbKxRepFvV/eEQWy34hmGaU60j+psQx47TR2BKalG/0yce7sHq60HrZm4tGrjH4VcyTgCUG0WFTnjLF4NNz0ENn/ZmGt21Ip2/LrLBC8lW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_164006_895528_1663252E 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

Saib is an consumer electronics board from Relfor
consists of 1GB RAM, 4GB eMMC.
Other peripherals:
 - Bluetooth 4.2
 - WiFi 5G/2.5G
 - IR transmitter/receiver
 - RTC rv3028
 - User leds
 - Switch

Add support for it.

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1109-relfor-saib.dts  | 439 ++++++++++++++++++
 2 files changed, 440 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index ab4cd9aab722..716f5540e438 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1109-relfor-saib.dtb \
 	rv1109-sonoff-ihost.dtb \
 	rv1126-edgeble-neu2-io.dtb \
 	rv1126-sonoff-ihost.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts b/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts
new file mode 100644
index 000000000000..7d7292bad779
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts
@@ -0,0 +1,439 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Relfor Labs Pvt. Ltd.
+ */
+
+
+/dts-v1/;
+#include "rv1109.dtsi"
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Rockchip RV1109 Relfor Saib Board";
+	compatible = "relfor,saib", "rockchip,rv1109";
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
+	/* Power sequence 1 */
+	vcc_0v8: vcc-0v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_0v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		startup-delay-us = <150>;
+		regulator-max-microvolt = <800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* Power sequence 2 */
+	vdd_npu_vepu: vdd-npu-vepu {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 1>;
+		regulator-name = "vdd_npu_vepu";
+		regulator-min-microvolt = <650000>;
+		regulator-max-microvolt = <950000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <18000>;
+		pwm-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc5v0_sys>;
+		status = "okay";
+	};
+
+	vdd_arm: vdd-arm {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_arm";
+		regulator-min-microvolt = <720000>;
+		regulator-max-microvolt = <1000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <18000>;
+		pwm-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc5v0_sys>;
+		status = "okay";
+	};
+
+	/* Power sequence 3 */
+	vcc_1v8: vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		startup-delay-us = <51000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* Power sequence 4 */
+	vcc_1v2_ddr: vcc-1v2-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v2_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		startup-delay-us = <75000>;
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* Power sequence 5 */
+	vcc3v3_sys: vcc3v3-sys {
+		status = "okay";
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		startup-delay-us = <75000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* LDO 2.5V */
+	vcc_2v5_ddr: vcc-2v5-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_2v5_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	/* Power IR transmitter */
+	vcc1v8_ir: vcc1v8-ir {
+		status = "okay";
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_ir";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	sdio_pwrseq: pwrseq-sdio {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rtc0>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_LOW>;
+	};
+
+	ir_receiver: ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio3  RK_PB4 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_rx>;
+		status = "okay";
+	};
+
+	ir_transmitter: ir-transmitter {
+		compatible = "pwm-ir-tx";
+		pwms = <&pwm11 0 10000000 1>;
+		status = "okay";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button {
+			gpios = <&gpio2 RK_PA7 GPIO_ACTIVE_HIGH>;
+			status = "okay";
+			linux,code = <KEY_DATA>;
+			label = "GPIO User Switch";
+			linux,input-type = <1>;
+		};
+	};
+
+	led-controller {
+		compatible = "pwm-leds-multicolor";
+
+		multi-led {
+			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_INDICATOR;
+			max-brightness = <65535>;
+
+			led-0 {
+				active-low;
+				color = <LED_COLOR_ID_BLUE>;
+				pwms = <&pwm9 0 50000 0>;
+			};
+
+			led-1 {
+				active-low;
+				color = <LED_COLOR_ID_GREEN>;
+				pwms = <&pwm6 0 50000 0>;
+			};
+
+			led-2 {
+				active-low;
+				color = <LED_COLOR_ID_RED>;
+				pwms = <&pwm10 0 50000 0>;
+			};
+		};
+	};
+
+	pwm-leds {
+		compatible = "pwm-leds";
+		status = "okay";
+
+		led-0 {
+			pwms = <&pwm2 0 50000 0>;
+			max-brightness = <255>;
+			linux,default-trigger = "none";
+		};
+
+		led-1 {
+			pwms = <&pwm8 0 50000 0>;
+			max-brightness = <0>;
+			linux,default-trigger = "none";
+		};
+
+		led-2 {
+			pwms = <&pwm5 0 50000 0>;
+			max-brightness = <255>;
+			linux,default-trigger = "none";
+		};
+	};
+
+	thermal_sensor1: thermal-sensor1 {
+		compatible = "generic-adc-thermal";
+		status = "okay";
+		#thermal-sensor-cells = <0>;
+		io-channels = <&saradc 1>;
+		io-channel-names = "sensor-channel";
+		temperature-lookup-table = <(-40000) 826
+					    85000 609>;
+	};
+
+	thermal_sensor2: thermal-sensor2 {
+		compatible = "generic-adc-thermal";
+		status = "okay";
+		#thermal-sensor-cells = <0>;
+		io-channels = <&saradc 2>;
+		io-channel-names = "sensor-channel";
+		temperature-lookup-table = <(-40000) 826
+					    85000 609>;
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
+&emmc {
+	bus-width = <8>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk>;
+	rockchip,default-sample-phase = <90>;
+	vmmc-supply = <&vcc3v3_sys>;
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3m2_xfer>;
+	pinctrl-names = "default";
+
+	rtc0: rtc@52 {
+		compatible = "microcrystal,rv3028";
+		reg = <0x52>;
+		#clock-cells = <0>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_int>;
+	};
+};
+
+&i2s0 {
+	/delete-property/ pinctrl-0;
+	status = "okay";
+	rockchip,trcm-sync-rx-only;
+	pinctrl-names = "default";
+	pinctrl-0 =  <&i2s0m0_sclk_rx>,
+		     <&i2s0m0_lrck_rx>,
+		     <&i2s0m0_sdi0>;
+};
+
+&pinctrl {
+	bluetooth-pins {
+		bt_reset: bt-reset {
+			rockchip,pins =
+			<1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		bt_wake_dev: bt-wake-dev {
+			rockchip,pins =
+			<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		bt_wake_host: bt-wake-host {
+			rockchip,pins =
+			<1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	buttons {
+		switch: switch {
+			rockchip,pins = <2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	ir {
+		ir_rx: ir-rx {
+			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pwm {
+		pwm0m0_pins_pull_up: pwm0m0-pins-pull-up {
+			rockchip,pins =
+			/* pwm0_pin_m0 */
+			<0 RK_PB6 3 &pcfg_pull_up>;
+		};
+		pwm1m0_pins_pull_up: pwm1m0-pins-pull-up {
+			rockchip,pins =
+			/* pwm1_pin_m0 */
+			<0 RK_PB7 3 &pcfg_pull_up>;
+		};
+	};
+
+	rtc {
+		rtc_int: rtc-int {
+			rockchip,pins = <2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmuio0-supply = <&vcc3v3_sys>;
+	pmuio1-supply = <&vcc3v3_sys>;
+	vccio4-supply = <&vcc3v3_sys>;
+	vccio5-supply = <&vcc3v3_sys>;
+	vccio6-supply = <&vcc3v3_sys>;
+	vccio7-supply = <&vcc3v3_sys>;
+};
+
+&pwm0 {
+	/delete-property/ pinctrl-0;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0m0_pins_pull_up>;
+};
+
+&pwm1 {
+	/delete-property/ pinctrl-0;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm1m0_pins_pull_up>;
+};
+
+&pwm2 {
+	/delete-property/ pinctrl-0;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm2m1_pins>;
+};
+
+&pwm5 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm5m0_pins>;
+};
+
+&pwm6 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm6m0_pins>;
+};
+
+&pwm8 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm8m1_pins>;
+};
+
+&pwm9 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm9m1_pins>;
+};
+
+&pwm10 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm10m1_pins>;
+};
+
+&pwm11 {
+	/delete-property/ pinctrl-0;
+	status = "okay";
+	pinctrl-0 = <&pwm11m1_pins>;
+	pinctrl-names = "default";
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vcc_1v8>;
+};
+
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	max-frequency = <100000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sys>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_ctsn &uart0_rtsn>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8822cs-bt";
+		device-wake-gpios = <&gpio1 RK_PC5 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
+		host-wake-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&bt_reset>, <&bt_wake_dev>, <&bt_wake_host>;
+		pinctrl-names = "default";
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
