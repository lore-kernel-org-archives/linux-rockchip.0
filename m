Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B61C32771
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 22:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgyerGQsyJFaOOqnLuG4OFmgHhQcpdxyzSurf4fVip4=; b=zaAdE8IhIwh7xx
	QAgwg/ynmY/Iu3fHJTrB/Ds3VG0VMNUwLhwpvX3aqOmp06ihiMgFCsPAcD0Ia5o9yyKQ6HoOqNRVg
	jG18KOQANtx2sPWTEP0b54vyo/Ndk4Zps1SnGt1iE58ergaBxfryrGit85RZbZMXGCAagX59a+qBT
	/jcwCROpXvzkNMbvPqGhCZNUWRXbHqeR57VGHmCAGGA5XCoPqv9RjXvRGxGg+bKJqegiQRF1wpa1f
	Tz/jkrlt4YPGaZbUfrYgKDOy11X82z8pL5tpk86XYx4/TRxT38ovdEIbjjznb73Vy4yqDgMiIMMKp
	YPUOoOTlot609fj4vDCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQt-00Cqu6-Vg; Fri, 19 Aug 2022 22:25:39 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQo-00Cqnj-9f
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 22:25:37 +0000
Received: by mail-oi1-x229.google.com with SMTP id c185so6202161oia.7
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Aug 2022 15:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=+9oBnSfU/aiopBxo6ytGnTq3bROsHwijWZdOobasvls=;
        b=E4u0X1ig0kop+ngBrPvu0zp2UdsYv/onHiv88oG7TbSii45/boVj8fnGMwwarRUX+8
         OVWZ77z4QbhRGdqTvR2FOSnYUvFenO9nUeTlbSt/8KBAiIQYBgEEOp2xvIEYTa+tLANj
         IUQ8CvWZS52geyfYC8FlFHUnyRytVBS2kX8+HYMEXbvoPLnd8Yt2ofeSQlgQ2Xon4tT1
         ikXqhGQ1pDvRcD9KiCbhGSY6FDOIqaT7sJk6QzYLCAUvfV7s7w2AfR+oGvsVrhIsxZKW
         eFRFwZPtSYijl7FcrAFvaU37Neg7X/X+3JWQr3b99hOdilNItDH+aYYE3+uKFUwSzQbS
         AIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=+9oBnSfU/aiopBxo6ytGnTq3bROsHwijWZdOobasvls=;
        b=umStmQwcLIZX7ZQgdoN1+fDqu7VKK7KMGPV5B+h8ptgIe4f5tKDPqox/g7DI4E9/W5
         IwcJ5MoalBDww427bWppJmgHkNUUtyh8s4BVB8DrL4taUJwi6je8CAEY6dwrPzD8kSrH
         OqNcyp5fSKJu0JD6Ld0Gn7VXq6riK1oTCctSOTExVikf2kfhePirmzirlO5jSG9Tr7VU
         SlgYk6PNNcch0cRKKQ//aKySIxLwhcAqLtkbZUUtnkE9H6OrgKrL/nqBQmzDn7uNfLXA
         TY5ZbavN1t9ThPpotXXKnzg96Mm+LxW4DAAabo3uzpvKp5m9PKLvZyGMNW85m2s8Hxf1
         eZCA==
X-Gm-Message-State: ACgBeo3MVDNBvXbJeUGE+Y5U3caYqQ0KQoF5sw0vCnPxsGIOfEzofk4H
	tz09VDiwwTYoNLqJ3Im/SRg=
X-Google-Smtp-Source: AA6agR54clcoQFWbjucBq58AFrEsSKQ1VwteeRPOPuHCRfLJK3qAVOr3CChJ/L5ch9ihRbF4RvUVaQ==
X-Received: by 2002:a05:6808:ec6:b0:337:ae28:d6a4 with SMTP id q6-20020a0568080ec600b00337ae28d6a4mr6585814oiv.218.1660947933811;
        Fri, 19 Aug 2022 15:25:33 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
Date: Fri, 19 Aug 2022 17:25:20 -0500
Message-Id: <20220819222520.3069-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220819222520.3069-1-macroalpha82@gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_152534_593329_F5B0DC0C 
X-CRM114-Status: GOOD (  19.51  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Anbernic RG353P and RG503 are both RK3566 based handheld gaming devices
from Anbernic.

Both devices have:
 - 2 SDMMC slots.
 - A Realtek rtl8821cs WiFi/Bluetooth adapter.
 - A mini HDMI port.
 - A USB C host port and a USB C otg port (currently only working as
   device).
 - Multiple GPIO buttons and a single ADC button.
 - Dual analog joysticks controlled via a GPIO mux.
 - A headphone jack with amplified stereo speakers via a SGM4865 amp.
 - A PWM based vibrator for force feedback.

The RG353P has:
 - 2GB LPDDR4 RAM.
 - A 32GB eMMC.
 - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
   controlled touchscreen (touchscreen is a Hynitron CST340).

The RG503 has:
 - 1GB LPDDR4 RAM.
 - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
   with part number ams495qa04. Data for this panel is provided via the
   DSI interface, however commands are sent via a 9-bit 3-wire SPI
   interface. The MISO pin of SPI3 of the SOC is wired to the input of
   the panel, so it must be bitbanged.

This devicetree enables the following hardware:
 - HDMI (plus audio).
 - Analog audio, including speakers.
 - All buttons.
 - All SDMMC/eMMC/SDIO controllers.
 - The ADC joysticks (note a pending patch is required to use them).
 - WiFi/Bluetooth (note out of tree drivers are required).
 - The PWM based vibrator motor.

The following hardware is not enabled:
 - The display panels (drivers are being written and there are issues
   with the upstream DSI and VOP2 subsystems).
 - Battery (driver pending).
 - Touchscreen on the RG353P (note the i2c2 bus is enabled for it).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
 4 files changed, 1019 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ef79a672804a..1402274a78a0 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
new file mode 100644
index 000000000000..f9333ed1ecc7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rgxx3.dtsi"
+
+/ {
+	model = "RG353P";
+	compatible = "anbernic,rg353p", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_sys>;
+		pwms = <&pwm4 0 25000 0>;
+	};
+};
+
+&gpio_keys_control {
+	button-5 {
+		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+		label = "DPAD-LEFT";
+		linux,code = <BTN_DPAD_RIGHT>;
+	};
+
+	button-6 {
+		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
+		label = "DPAD-RIGHT";
+		linux,code = <BTN_DPAD_LEFT>;
+	};
+
+	button-9 {
+		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		label = "TR";
+		linux,code = <BTN_TR2>;
+	};
+
+	button-10 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "TR2";
+		linux,code = <BTN_TR>;
+	};
+
+	button-14 {
+		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
+		label = "WEST";
+		linux,code = <BTN_WEST>;
+	};
+
+	button-15 {
+		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
+		label = "EAST";
+		linux,code = <BTN_EAST>;
+	};
+};
+
+&i2c0 {
+	/* This hardware is physically present but unused. */
+	cw2015@62 {
+		compatible = "cellwise,cw2015";
+		reg = <0x62>;
+		status = "disabled";
+	};
+};
+
+&i2c2 {
+	pintctrl-names = "default";
+	pinctrl-0 = <&i2c2m1_xfer>;
+	status = "okay";
+};
+
+&pinctrl {
+	gpio-lcd {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&sdhci {
+	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_datastrobe>, <&emmc_rstnout>;
+	pinctrl-names = "default";
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
new file mode 100644
index 000000000000..8effda100b26
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rgxx3.dtsi"
+
+/ {
+	model = "RG503";
+	compatible = "anbernic,rg503", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdmmc1;
+		mmc2 = &sdmmc2;
+	};
+
+	gpio_spi: spi {
+		compatible = "spi-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		sck-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+		num-chipselects = <0>;
+	};
+};
+
+&gpio_keys_control {
+	button-5 {
+		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+		label = "DPAD-LEFT";
+		linux,code = <BTN_DPAD_LEFT>;
+	};
+
+	button-6 {
+		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
+		label = "DPAD-RIGHT";
+		linux,code = <BTN_DPAD_RIGHT>;
+	};
+
+	button-9 {
+		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		label = "TR";
+		linux,code = <BTN_TR>;
+	};
+
+	button-10 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "TR2";
+		linux,code = <BTN_TR2>;
+	};
+
+	button-14 {
+		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
+		label = "EAST";
+		linux,code = <BTN_EAST>;
+	};
+
+	button-15 {
+		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
+		label = "WEST";
+		linux,code = <BTN_WEST>;
+	};
+};
+
+&pinctrl {
+	gpio-spi {
+		spi_pins: spi-pins {
+			rockchip,pins =
+				<4 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>,
+				<4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>,
+				<4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gpio-lcd {
+		lcd_enable: lcd-enable {
+			rockchip,pins =
+				<4 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
new file mode 100644
index 000000000000..7fbbee2fad8e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -0,0 +1,821 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3566.dtsi"
+
+/ {
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&adc_mux 0>,
+			      <&adc_mux 1>,
+			      <&adc_mux 2>,
+			      <&adc_mux 3>;
+		pinctrl-0 = <&joy_mux_en>;
+		pinctrl-names = "default";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_RX>;
+		};
+
+		axis@2 {
+			reg = <2>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_Y>;
+		};
+
+		axis@3 {
+			reg = <3>;
+			abs-flat = <32>;
+			abs-fuzz = <32>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_RY>;
+		};
+	};
+
+	adc_keys: adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <60>;
+
+		/*
+		 * Button is mapped to F key in BSP kernel, but
+		 * according to input guidelines it should be mode.
+		 */
+		button-mode {
+			label = "MODE";
+			linux,code = <BTN_MODE>;
+			press-threshold-microvolt = <1750>;
+		};
+	};
+
+	adc_mux: adc-mux {
+		compatible = "io-channel-mux";
+		channels = "left_x", "right_x", "left_y", "right_y";
+		#io-channel-cells = <1>;
+		io-channels = <&saradc 3>;
+		io-channel-names = "parent";
+		mux-controls = <&gpio_mux>;
+		settle-time-us = <100>;
+	};
+
+	gpio_keys_control: gpio-keys-control {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&btn_pins_ctrl>;
+		pinctrl-names = "default";
+
+		button-1 {
+			gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+			label = "THUMBL";
+			linux,code = <BTN_THUMBL>;
+		};
+
+		button-2 {
+			gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+			label = "THUMBR";
+			linux,code = <BTN_THUMBR>;
+		};
+
+		button-3 {
+			gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
+			label = "DPAD-UP";
+			linux,code = <BTN_DPAD_UP>;
+		};
+
+		button-4 {
+			gpios = <&gpio3 RK_PA4 GPIO_ACTIVE_LOW>;
+			label = "DPAD-DOWN";
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+
+		button-7 {
+			gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_LOW>;
+			label = "TL";
+			linux,code = <BTN_TL>;
+		};
+
+		button-8 {
+			gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
+			label = "TL2";
+			linux,code = <BTN_TL2>;
+		};
+
+		button-11 {
+			gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_LOW>;
+			label = "START";
+			linux,code = <BTN_START>;
+		};
+
+		button-12 {
+			gpios = <&gpio3 RK_PB6 GPIO_ACTIVE_LOW>;
+			label = "SELECT";
+			linux,code = <BTN_SELECT>;
+		};
+
+		button-13 {
+			gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
+			label = "NORTH";
+			linux,code = <BTN_NORTH>;
+		};
+
+		button-16 {
+			gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_LOW>;
+			label = "SOUTH";
+			linux,code = <BTN_SOUTH>;
+		};
+	};
+
+	gpio_keys_vol: gpio-keys-vol {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-0 = <&btn_pins_vol>;
+		pinctrl-names = "default";
+
+		button-vol-down {
+			gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+			label = "VOLUMEDOWN";
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+
+		button-vol-up {
+			gpios = <&gpio3 RK_PA7 GPIO_ACTIVE_LOW>;
+			label = "VOLUMEUP";
+			linux,code = <KEY_VOLUMEUP>;
+		};
+	};
+
+	gpio_mux: mux-controller {
+		compatible = "gpio-mux";
+		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
+			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+		#mux-control-cells = <0>;
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "c";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&led_pins>;
+		pinctrl-names = "default";
+
+		green_led: led-0 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		};
+
+		amber_led: led-1 {
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_CHARGING;
+			gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+			retain-state-suspended;
+		};
+
+		red_led: led-2 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	/* Channels reversed for both headphones and speakers. */
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "anbernic_rk817";
+		simple-audio-card,aux-devs = <&spk_amp>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Internal Speakers";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Internal Speakers", "Speaker Amp OUTL",
+			"Internal Speakers", "Speaker Amp OUTR",
+			"Speaker Amp INL", "HPOL",
+			"Speaker Amp INR", "HPOR";
+		simple-audio-card,pin-switches = "Internal Speakers";
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk817 1>;
+		clock-names = "ext_clock";
+		pinctrl-0 = <&wifi_enable_h>;
+		pinctrl-names = "default";
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
+	};
+
+	spk_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&spk_amp_enable_h>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amp";
+	};
+
+	vcc3v3_lcd0_n: regulator-vcc3v3-lcd0 {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		pinctrl-0 = <&vcc_lcd_h>;
+		pinctrl-names = "default";
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc3v3_lcd0_n";
+		vin-supply = <&vcc_3v3>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vcc_sys: regulator-vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+		regulator-name = "vcc_sys";
+	};
+
+	vcc_wifi: regulator-vcc-wifi {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vcc_wifi_h>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc_wifi";
+	};
+
+	vibrator: pwm-vibrator {
+		compatible = "pwm-vibrator";
+		pwm-names = "enable";
+		pwms = <&pwm5 0 1000000000 0>;
+	};
+};
+
+&combphy1 {
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
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		#clock-cells = <1>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
+		wakeup-source;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
+		vcc8-supply = <&vcc_sys>;
+		vcc9-supply = <&dcdc_boost>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_gpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_3v3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_acodec";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc1v8_dvp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc2v8_dvp: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-name = "vcc2v8_dvp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			dcdc_boost: BOOST {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <4700000>;
+				regulator-max-microvolt = <5400000>;
+				regulator-name = "boost";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			otg_switch: OTG_SWITCH {
+				regulator-name = "otg_switch";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	vdd_cpu: regulator@40 {
+		compatible = "fcs,fan53555";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-init-microvolt = <900000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c1 {
+	/* Unknown/unused device at 0x3c */
+	status = "disabled";
+};
+
+&i2s0_8ch {
+	status = "okay";
+};
+
+&i2s1_8ch {
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+	pinctrl-names = "default";
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&pinctrl {
+	audio-amplifier {
+		spk_amp_enable_h: spk-amp-enable-h {
+			rockchip,pins =
+				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gpio-btns {
+		btn_pins_ctrl: btn-pins-ctrl {
+			rockchip,pins =
+				<3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PC0 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		btn_pins_vol: btn-pins-vol {
+			rockchip,pins =
+			<3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
+			<3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gpio-led {
+		led_pins: led-pins {
+			rockchip,pins =
+				<0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>,
+				<0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>,
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	joy-mux {
+		joy_mux_en: joy-mux-en {
+			rockchip,pins =
+				<0 RK_PB5 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	vcc3v3-lcd {
+		vcc_lcd_h: vcc-lcd-h {
+			rockchip,pins =
+				<0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	vcc-wifi {
+		vcc_wifi_h: vcc-wifi-h {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc1v8_dvp>;
+	vccio7-supply = <&vcc_3v3>;
+};
+
+&pwm5 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	pinctrl-names = "default";
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&sdmmc1 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk &sdmmc1_det>;
+	pinctrl-names = "default";
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc1v8_dvp>;
+	status = "okay";
+};
+
+&sdmmc2 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
+	pinctrl-names = "default";
+	vmmc-supply = <&vcc_wifi>;
+	vqmmc-supply = <&vcca1v8_pmu>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-0 = <&uart1m1_xfer &uart1m1_ctsn &uart1m1_rtsn>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8821cs-bt";
+		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
+		host-wake-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+/*
+ * Lack the schematics to verify, but port works as a peripheral
+ * (and not a host or OTG port).
+ */
+&usb_host0_xhci {
+	dr_mode = "peripheral";
+	phys = <&usb2phy0_otg>;
+	phy-names = "usb2-phy";
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
+&usb_host1_xhci {
+	phy-names = "usb2-phy", "usb3-phy";
+	phys = <&usb2phy1_host>, <&combphy1 PHY_TYPE_USB3>;
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
