Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34861C197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 23:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmB5gp9Mr7SLbwuM9Bjebf8jVl1Ac2Ee8/VDoG3S//4=; b=Lgp8Hthi6J5M6X
	P0dEME30AENqeLJUO7epHyahPvAAEpu1Zk9Ff7xh9CDHRwmS4os0ZkN8yeIoriE2ZDo9zjc6c0Y7a
	IgAoK+dQte8qc2kHbiwc8Ri6qNVQ5+6ams2FHfSp8lGCJiIa0vNC9riuMr+giPrEE2mAn3EhsobjK
	6d6gAbClMnh9e2y3yrEZaXpTaoVz26OgHHEHo9cyXt0PlVC5e63T1CfRLzzbalJkWfA8CgSOp8aIC
	o+hbGEGkqZgmvvGRxBnZHPQZS7boHqpwu4xa2ZpxsUZGCezTPejMdFS5esviCdvResfjrTHTi+OFJ
	HeR7JvUlz4jOEN8agjmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DH0-00F1jj-1w;
	Mon, 20 Nov 2023 23:01:46 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGu-00F1hg-2z
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 23:01:43 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5842ea6f4d5so3199851eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 15:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521299; x=1701126099; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaJblTqOraA4b0pwv3FeVRpuhHWv0v/WPeOvoc/Mjtw=;
        b=TZkWFj3zg0l5fAUYHjcyno1GLbgPJ4iEYMNif4/NvqErZjljuGp+NRc4lF7kR873mq
         QNggmOsUutkykM1866VIFqGYQ2+NH/X4OE+1mZnwIdEfg9B1GobbJwFBRkPxZ96P0C2M
         ui8LEjBDD0GvpgeLN8zex0mz+dxMQmZOF+wz6DM8ul5ESQvf5Q7TG4CvqHR8igW7hV1F
         BpMfN/2FJGQQvv4l2fgzU3qAwql7o6f77qH7oLMgBTc2MxYumP9R2B5Sd/GmDlHlLiXB
         SGthQdq0RJ03NxPkYHpuaqWnr4W8biinlvS49V/IpRc2SZbl4xY5zcvsQ+kQSrderhhI
         0KHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521299; x=1701126099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EaJblTqOraA4b0pwv3FeVRpuhHWv0v/WPeOvoc/Mjtw=;
        b=uDImtaO+YJRhos5/y/pVYbV6qlOJNg1KUZmBRs0mcjBP+lmW16GjpU8rx/Z6R20cIO
         5Mgdvbnk0AaIj+z6ViRf/pWZwXHTtiFxJowAtyU7WTkuHWg3S0xlMkvd89Y6oUi7xePF
         aW49fcD3pANukd6pTwH6VS9iFzDZkXn0wNlPTfpNr4Yf1t/oFxNplprG+9F3wJDlJSf9
         sJJpgSONL9nNm/c24NKfEpOESOZGDZFkurjWUtc/XWDALYDkS0pPR+dLwXSXR5Jy47+U
         ddwwBMSBERHbaYGXc4jBTvwBcbWQgEK3xTwuWFRzbouDMENiasU+yg+1JW9rXmTxvkAr
         kGtQ==
X-Gm-Message-State: AOJu0Yw6kErkC/LavLwClDKUBOAV3ZG3nR2Qh39q8C4Ja9MHTsTJjqYV
	SYdO3ZGwhu9xnn62slyrCZo=
X-Google-Smtp-Source: AGHT+IFRkwfcyWKNxdMVo5rCuv0mDlHnMlNSA3Lzjlyz8fYFrQPdfGcIT4stVxhXXAUfLuN/+c2fkg==
X-Received: by 2002:a05:6820:61a:b0:589:dc3c:576a with SMTP id e26-20020a056820061a00b00589dc3c576amr9857720oow.0.1700521298721;
        Mon, 20 Nov 2023 15:01:38 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Split RG351M from Odroid Go Advance
Date: Mon, 20 Nov 2023 17:01:30 -0600
Message-Id: <20231120230131.57705-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_150141_008728_348D33E1 
X-CRM114-Status: GOOD (  16.61  )
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

Split the RG351M into its own DTSI file. The RG351M, unlike the Odroid
Go Advance, has no ADC joysticks, no GPIO buttons (except for volume
on the RG351V), a PWM vibrator that interferes with an Odroid
regulator, and different LEDs. Split the RG351M into a DTSI file
that can then be imported into the DTS files for the RG351M and a
new RG351V.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3326-anbernic-rg351m.dts   |  18 +-
 .../dts/rockchip/rk3326-anbernic-rg351m.dtsi  | 478 ++++++++++++++++++
 2 files changed, 480 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
index ce318e05f0a6..f4d20f29c1b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
@@ -6,30 +6,16 @@
  */
 
 /dts-v1/;
-#include "rk3326-odroid-go.dtsi"
+#include "rk3326-anbernic-rg351m.dtsi"
 
 / {
 	model = "Anbernic RG351M";
 	compatible = "anbernic,rg351m", "rockchip,rk3326";
-
-	vibrator {
-		compatible = "pwm-vibrator";
-		pwms = <&pwm0 0 1000000 0>;
-		pwm-names = "enable";
-	};
 };
 
-/delete-node/ &builtin_gamepad;
-/delete-node/ &vcc_host; /* conflicts with pwm vibration motor */
-
 &internal_display {
 	compatible = "elida,kd35t133";
 	iovcc-supply = <&vcc_lcd>;
+	rotation = <270>;
 	vdd-supply = <&vcc_lcd>;
 };
-
-&pwm0 {
-	status = "okay";
-};
-
-/delete-node/ &rk817_charger;
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi
new file mode 100644
index 000000000000..89e64647b4fa
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi
@@ -0,0 +1,478 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Hardkernel Co., Ltd
+ * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
+ * Copyright (c) 2022 Maya Matuszczyk <maccraft123mc@gmail.com>
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3326.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &sdmmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_bl>;
+		pwms = <&pwm1 0 25000 0>;
+	};
+
+	/*
+	 * LED is a tri-state. Driven high it is red, driven low it is
+	 * green, and not driven at all (pin set to input) it is amber.
+	 * Additionally, there is a 2nd LED that is not controllable
+	 * that is on (red) when plugged in to power.
+	 */
+	gpio_led: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin>;
+
+		red_green_led: led-0 {
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_CHARGING;
+		};
+	};
+
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rk817_int";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Speaker", "SPKO";
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+		};
+	};
+
+	vccsys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v8_sys";
+		regulator-always-on;
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+	};
+
+	vibrator {
+		compatible = "pwm-vibrator";
+		pwms = <&pwm0 0 1000000 0>;
+		pwm-names = "enable";
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
+&cru {
+	assigned-clocks = <&cru PLL_NPLL>,
+		<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
+		<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
+		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>;
+
+	assigned-clock-rates = <1188000000>,
+		<200000000>, <200000000>,
+		<150000000>, <150000000>,
+		<100000000>, <200000000>;
+};
+
+&display_subsystem {
+	status = "okay";
+};
+
+&dsi {
+	status = "okay";
+
+	ports {
+		mipi_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	internal_display: panel@0 {
+		reg = <0>;
+		backlight = <&backlight>;
+		reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&dsi_dphy {
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_logic>;
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	i2c-scl-falling-time-ns = <16>;
+	i2c-scl-rising-time-ns = <280>;
+	status = "okay";
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		#clock-cells = <1>;
+		clock-names = "mclk";
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clocks = <&cru SCLK_I2S1_OUT>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
+		pinctrl-names = "default";
+		#sound-dai-cells = <0>;
+		wakeup-source;
+
+		vcc1-supply = <&vccsys>;
+		vcc2-supply = <&vccsys>;
+		vcc3-supply = <&vccsys>;
+		vcc4-supply = <&vccsys>;
+		vcc5-supply = <&vccsys>;
+		vcc6-supply = <&vccsys>;
+		vcc7-supply = <&vccsys>;
+		vcc8-supply = <&vccsys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1150000>;
+				regulator-min-microvolt = <950000>;
+				regulator-name = "vdd_logic";
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1350000>;
+				regulator-min-microvolt = <950000>;
+				regulator-name = "vdd_arm";
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_ddr";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc_3v3";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1000000>;
+				regulator-min-microvolt = <1000000>;
+				regulator-name = "vdd_1v0";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "vccio_sd";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG6 {
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc_sd";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_bl: LDO_REG7 {
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc_bl";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_lcd: LDO_REG8 {
+				regulator-max-microvolt = <2800000>;
+				regulator-min-microvolt = <2800000>;
+				regulator-name = "vcc_lcd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <2800000>;
+				};
+			};
+
+			vcc_wifi: LDO_REG9 {
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc_wifi";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			usb_midu: BOOST {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <5400000>;
+				regulator-min-microvolt = <5000000>;
+				regulator-name = "usb_midu";
+			};
+		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
+	};
+};
+
+&i2s1_2ch {
+	status = "okay";
+};
+
+&io_domains {
+	vccio1-supply = <&vcc_3v3>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc_3v3>;
+	vccio4-supply = <&vcc_3v3>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	status = "okay";
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
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	cd-gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_LOW>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&sfc {
+	#address-cells = <1>;
+	pinctrl-0 = <&sfc_clk &sfc_cs0 &sfc_bus2>;
+	pinctrl-names = "default";
+	#size-cells = <0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <108000000>;
+		spi-rx-bus-width = <2>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+
+	u2phy_host: host-port {
+		status = "okay";
+	};
+
+	u2phy_otg: otg-port {
+		status = "disabled";
+	};
+};
+
+&usb20_otg {
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m1_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
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
+&pinctrl {
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		led_pin: led-pin {
+			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		dc_det: dc-det {
+			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		soc_slppin_gpio: soc_slppin_gpio {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		soc_slppin_rst: soc_slppin_rst {
+			rockchip,pins = <0 RK_PA4 2 &pcfg_pull_none>;
+		};
+
+		soc_slppin_slp: soc_slppin_slp {
+			rockchip,pins = <0 RK_PA4 1 &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
