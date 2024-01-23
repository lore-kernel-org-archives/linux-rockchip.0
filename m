Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A4AC47DDC
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 21:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzQ8NFzDc9+R04kBF86qIIPwVv+tJQhO1MQIdxB4ztI=; b=RcBXAN0Hp5//J6
	JyxrI0G3G31z9WiJsTSiMy6Ub+MO8O6Bxf/vluhDGwLfv6TKSWM1uAPsH4flavDmJ1HNZWgGZJgRC
	YfZgWrBXJM6MgIQyJyY99VZJb4w3gmJmpLsvbhxP5iunhF5kezJW7NnlTYeWPXzCBIsDvLx9Gja5E
	nzIwAJtYnxCvqIiYFhNn8Cat/0wnqqnEuGlfxezFMegDdZ1du88H6doC/PAH+fi3Az7tgQzpnBgzM
	3oxlB5KiqqWKpUQUi359uGFigsIYg7QGXYseS612GGxfybBxMUim6aPw8P3zrbnn482wf63AJoFqN
	czJ+hMblPh6qNf1I1Oqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODy-000Voc-1N;
	Tue, 23 Jan 2024 21:22:26 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODv-000Vke-0e
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jan 2024 21:22:25 +0000
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6e0f993265cso448882a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 13:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044880; x=1706649680; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WUsZb/Hef6hbGG3VErk0RnqOC/xgv8DmG7DKbj1X9/M=;
        b=Lq3OaZfuGxlfb2gydVVc4+vvFlTuAQYBjNOF0Ai5JSwCPSdt+8VgbIUR9ouES3V5n2
         6yNvnWhvfPmyFsGBuqgAiiyoylG7G+CQpSJzcGtu3SrVHpybQq88TLxGTkSACk5BfbEh
         BOoIELQ+52deYh27+IGVWcegijdCjIKmUfQUGSIF2yKSeo3oRGdD2FN02EwR/t1B3fKp
         Kp/WAO2eYY4C4WqfNamO6Hy5vZe2ds8/A6LM1qlDS+vL4cid7Vj0xjbQOuc0jaJCEd6t
         1DeKq41+IRl1kXhkNJ6VibzlAWsP0ooVUNxv/qV4aTUwBJofznH5s+GTXOrZ6beWrL8+
         z4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044880; x=1706649680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WUsZb/Hef6hbGG3VErk0RnqOC/xgv8DmG7DKbj1X9/M=;
        b=EMT3PEQbQyfyMtFOAmi/DAxUGcxFUooG3Ej6QZWI6m0NF1y3Acmk6cyOs4l34Ulnmy
         7p0dP/oib7e3vXZDkymgsOte6J1ShhZ/y13M+Q6caELcdcvQVBqF7yziMc7RPdrR2nGB
         hmSRnARBY+YFkFRT/099mGO7Eb19xp1polll5MUl6DVen3c4/FVqPHTEW8gZQ3ssJVDj
         W7Rzd28mBKbEJPZTQ6fyq3uDYjD6CJsDBm8kHiAyP5x7pdwFnxxKQqav+hqEMotdbJeB
         LCbbomQADqivhoo0gItjP+RkQs+GwIPaYshnvYNRkKeKCTHPxbdXWql8kjL1XNT+EiqX
         6hHg==
X-Gm-Message-State: AOJu0YxoetPSSv2rAQpLaGmtDRZ43O+mJ86kI5peApHWYBznOsY84/Oi
	6/ttdKTDKzTl5gUs0qvskFyVvxdt6kBiVTW6Oe4S1fCnG/KBn50SyjVlz/lM
X-Google-Smtp-Source: AGHT+IHoYQTBzj14M376es0XqjB4xp6jJSj7xoJ0LTJO8+DKXJKAOG979Nc4/JF5GA9RlC1AoCLA+A==
X-Received: by 2002:a9d:4814:0:b0:6dc:5d73:d744 with SMTP id c20-20020a9d4814000000b006dc5d73d744mr496801otf.23.1706044880112;
        Tue, 23 Jan 2024 13:21:20 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D
Date: Tue, 23 Jan 2024 15:21:11 -0600
Message-Id: <20240123212111.202146-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_132223_266571_052E4B27 
X-CRM114-Status: GOOD (  17.85  )
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

Add support for the Anbernic RG-ARC S and RG-ARC D devices. These
devices feature the following:
 - Rockchip RK3566 SoC
 - 4 inch 480x640 display (rotated)
 - Goodix multi-touch (ARC D only, untested as I lack the device)
 - 1GB (ARC S) or 2GB (ARC D) of RAM
 - 2 SDMMC slots
 - eMMC (ARC D only)
 - Realtek 8821CS WiFi/Bluetooth
 - External stereo speakers
 - 6 face buttons (A, B, C, X, Y, Z) along with a D-Pad and start and
   select buttons.
 - A PWM vibrator.

Note that the Goodix touchscreen on I2C2 is not defined, as I lack
the necessary hardware to confirm it works correctly with the mainline
driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg-arc-d.dts |  42 ++++
 .../dts/rockchip/rk3566-anbernic-rg-arc-s.dts |  19 ++
 .../dts/rockchip/rk3566-anbernic-rg-arc.dtsi  | 237 ++++++++++++++++++
 4 files changed, 300 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a7b30e11beaf..647be86ea8a6 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -71,6 +71,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-d.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353ps.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
new file mode 100644
index 000000000000..795fbedc3c1b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rg-arc.dtsi"
+
+/ {
+	model = "Anbernic RG ARC-D";
+	compatible = "anbernic,rg-arc-d", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+};
+
+/*
+ * Unknown Goodix touchscreen at i2c2 0x14. Needs testing before it's
+ * enabled.
+ */
+&i2c2 {
+	pinctrl-0 = <&i2c2m1_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>,
+		    <&emmc_datastrobe>, <&emmc_rstnout>;
+	pinctrl-names = "default";
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
new file mode 100644
index 000000000000..6264a8c78d0b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rg-arc.dtsi"
+
+/ {
+	model = "Anbernic RG ARC-S";
+	compatible = "anbernic,rg-arc-s", "rockchip,rk3566";
+
+	aliases {
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi
new file mode 100644
index 000000000000..a4a60e4a53d4
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi
@@ -0,0 +1,237 @@
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
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_sys>;
+		pwms = <&pwm4 0 25000 0>;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
+					<3400000 0>;
+	};
+
+	/* Channels reversed for both headphones and speakers. */
+	sound {
+		compatible = "simple-audio-card";
+		pinctrl-0 = <&hp_det>;
+		pinctrl-names = "default";
+		simple-audio-card,name = "rk817_ext";
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
+	spk_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&spk_amp_enable_h>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amp";
+	};
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <128000000>;
+};
+
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		compatible = "anbernic,rg-arc-panel", "sitronix,st7701";
+		reg = <0>;
+		backlight = <&backlight>;
+		IOVCC-supply = <&vcc3v3_lcd0_n>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+		rotation = <90>;
+		VCC-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+/*
+ * Device uses a non-standard six button layout for a gamepad with X,
+ * Y, and Z on the top row of buttons and A, B, and C under the bottom
+ * row.
+ */
+&gpio_keys_control {
+	button-a {
+		gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_LOW>;
+		label = "A";
+		linux,code = <BTN_A>;
+	};
+
+	button-b {
+		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
+		label = "B";
+		linux,code = <BTN_B>;
+	};
+
+	button-c {
+		gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+		label = "C";
+		linux,code = <BTN_C>;
+	};
+
+	button-left {
+		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
+		label = "DPAD-LEFT";
+		linux,code = <BTN_DPAD_LEFT>;
+	};
+
+	button-r1 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "TR";
+		linux,code = <BTN_TR>;
+	};
+
+	button-r2 {
+		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		label = "TR2";
+		linux,code = <BTN_TR2>;
+	};
+
+	button-right {
+		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+		label = "DPAD-RIGHT";
+		linux,code = <BTN_DPAD_RIGHT>;
+	};
+
+	button-x {
+		gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
+		label = "X";
+		linux,code = <BTN_X>;
+	};
+
+	button-y {
+		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
+		label = "Y";
+		linux,code = <BTN_Y>;
+	};
+
+	button-z {
+		gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		label = "Z";
+		linux,code = <BTN_Z>;
+	};
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
+	gpio-lcd {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins =
+				<4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
