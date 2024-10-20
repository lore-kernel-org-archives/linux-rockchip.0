Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C21D3C92D
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Oct 2024 17:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkmNwda78Iu70zmuHr7utk164RNU/w+Byn6VY960vN4=; b=m9EfNkXiMiKVqK
	FGDO+ZHjGYTHN0s4sPNakecR7jOVBK+cFlcdKsQE3xQMMzwBjYDz/awl0s0AIVO3bi+3U9biFLupP
	QTRE+Tg3Z+7vSIUygiuXSiw+Jxe07YfMx1PDN1pHqJeKttBSp+4jA2J9D2qrcXOLyodrq9G8kqbIu
	x3wEPxdJ6/GPdInCFKCcnd0aln2CKngfC61EvPN5B0XNa/OIonRqJs1Q00cv49xkCWd4uJWjBaAol
	6prFRj3han/+ngKU6t6ZsfAO36R2Loav765am+u3fp8V7NittqyaYkEL1mtK5KX5yK+jGnnawlMbE
	nYOaBhtci9isGCZiaq/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ZxF-00000005CAq-206I;
	Sun, 20 Oct 2024 17:43:01 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ZuO-00000005BfY-3Ehj;
	Sun, 20 Oct 2024 17:40:06 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-20e6981ca77so20009615ad.2;
        Sun, 20 Oct 2024 10:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729446004; x=1730050804; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7o92lz0oFcTpYsmecmcfHw8c4nt9Cx5Uos0cyvDqZgU=;
        b=RwQ0QaKY4NvvgbHLFCAmhOCcNTKMTmpNdKXlPBvzpipzIPFZxf2oxKmhNhcLQdBAff
         hZ05gLvyNNJyvQAcRVSuCXlBseQ9l3vO/Hqs0E4gIweOPrUh1BN4yCRkOk5PjfKv2fy2
         ZyPkCkOMogrnH6ly3MqZt2VF+Sr7vMGdOsz5SNzevMf2qdvPXNKkOP6Str9v2pVLf9hI
         ke+MS1+CdWE4nZZx7mKg/dFJwHuAtjOHhRNoB6MpwwvSLugO0OO/Ox4ze/5p17qecqeM
         7B7BHjrLpthb31qBr5xjrIMxT4b6ElQZd9Zd9MVTg8lay8dM92zAOtDc+aT6Pz9cMCaW
         73Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729446004; x=1730050804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7o92lz0oFcTpYsmecmcfHw8c4nt9Cx5Uos0cyvDqZgU=;
        b=tobj+EXHnnb/MWA23E/TpzS/hqDZzERoWu1dLySDQHkd9riGc0gu+76nKu+NxCSNza
         finF7DEdl0obc/ESUDKsawk7uRJaEO0p26iPsmrAQKB5d8ZeTaoyJ1aIcBk2BlnKByuL
         6YrULBFgCVfyt9k2QyiiQ1CU0xxajvO8cwsklJCptcrteLTyOCYYUcs5NlYwLrxdBr4M
         DQi/uPKdKLpSQ4++nfI/mil4kOF6nFCktAvDtrBvOKEnuzjuUFRkawcV+wZjgdKMR7/x
         TO0bwH64rYME1hjvbXfoqNrR4xyFn9caMHM7rtpOpKNU7/j1D2Pat2GmEb3UXP1VD1M5
         QOmA==
X-Forwarded-Encrypted: i=1; AJvYcCVhmWkshTJWjsWvszcHmZ94LeYEnWuwaP2tou0j7dyfqxmghcForG2T1pvfnt6QgvCHURB4PGe5gNuoQr2xTis=@lists.infradead.org, AJvYcCXdZTZCQh+HSRzx/rsN4yYCG8GlIEhDZcQ+bsElw79YCjCye0rPR6TmYfPJPPQbzngZUSgsBFNsoQf6KA/sTBPw@lists.infradead.org
X-Gm-Message-State: AOJu0YwPt5O0YFsE5Cgj1eVdKolBlzS8QPZd/7mC9m9ufzz4KWiVOORD
	08ZnBAmWasB74rHnIhYbAg11BiebXsoO10984kNA2sAhmkBDOq8/
X-Google-Smtp-Source: AGHT+IFEwRhwK/Viw/6Ih/aKV7mZCWJcYXumcTLo5/cEXJTALnz0uUV2QQuySQ0c324mp8Odmb7rKQ==
X-Received: by 2002:a17:902:db12:b0:20c:5fd7:d71 with SMTP id d9443c01a7336-20e5a76da90mr145527185ad.22.1729446003674;
        Sun, 20 Oct 2024 10:40:03 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:5b64:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7eee8b94sm12600785ad.4.2024.10.20.10.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 10:40:03 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board
Date: Mon, 21 Oct 2024 01:39:46 +0800
Message-ID: <20241020173946.225960-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241020173946.225960-1-cnsztl@gmail.com>
References: <20241020173946.225960-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_104004_858009_A1F02BFA 
X-CRM114-Status: GOOD (  14.19  )
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

The NanoPi R3S(as "R3S") is an open source platform with dual-Gbps
Ethernet ports designed and developed by FriendlyElec for IoT
applications.

Specification:
- Rockchip RK3566
- 2GB LPDDR4X RAM
- optional 32GB eMMC module
- SD card slot
- 2x 1000 Base-T
- 3x LEDs (POWER, LAN, WAN)
- 2x Buttons (Reset, MaskROM)
- 1x USB 3.0 Port
- Type-C 5V 2A Power

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-nanopi-r3s.dts   | 554 ++++++++++++++++++
 2 files changed, 555 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8e1025cb5d20..e641033d23d1 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -109,6 +109,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-model-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lckfb-tspi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-nanopi-r3s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
new file mode 100644
index 000000000000..951dd9bcb4b0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
@@ -0,0 +1,554 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ *
+ * Copyright (c) 2024 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2024 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3566.dtsi"
+
+/ {
+	model = "FriendlyARM NanoPi R3S";
+	compatible = "friendlyarm,nanopi-r3s", "rockchip,rk3566";
+
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&reset_button_pin>;
+
+		button-reset {
+			label = "reset";
+			gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+			debounce-interval = <50>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&power_led_pin>, <&lan_led_pin>, <&wan_led_pin>;
+
+		power_led: led-0 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		lan_led: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+			gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan_led: led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WAN;
+			gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	vdd_usbc: vdd-usbc-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_usbc";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vdd_usbc>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_usb: vcc5v0_usb-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en>;
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
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
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-mode = "rgmii-id";
+	phy-handle = <&rgmii_phy1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m0_miim
+		     &gmac1m0_tx_bus2_level3
+		     &gmac1m0_rx_bus2
+		     &gmac1m0_rgmii_clk_level2
+		     &gmac1m0_rgmii_bus_level3>;
+	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	status = "okay";
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
+		vin-supply = <&vcc5v0_sys>;
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
+		system-power-controller;
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
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
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <950000>;
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
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PC3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy_reset_pin>;
+	};
+};
+
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&pinctrl {
+	gpio-leds {
+		lan_led_pin: lan-led-pin {
+			rockchip,pins = <3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		power_led_pin: power-led-pin {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led_pin: wan-led-pin {
+			rockchip,pins = <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gmac {
+		eth_phy_reset_pin: eth-phy-reset-pin {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pcie {
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	rockchip-key {
+		reset_button_pin: reset-button-pin {
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	rtc {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb {
+		vcc5v0_usb_host_en: vcc5v0-usb-host-en {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_3v3>;
+	vccio5-supply = <&vcc_1v8>;
+	vccio6-supply = <&vcc_3v3>;
+	vccio7-supply = <&vcc_3v3>;
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	sd-uhs-sdr50;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&tsadc {
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
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+	status = "okay";
+};
+
+&usb_host1_xhci {
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
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
