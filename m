Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF0E8C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 21:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hagX+nyJ6+O4sUhgHdZVRIkx7sZ8thb4smV/fzRNCE=; b=Clm1FfVVemrMjv
	X+LzkQJAhF+4rpMUafB08bf6IB03Q2N2fC4b9fMnsP3S5EuNPqVBetLXZuseoyMoX3UnJ7TNWyGLG
	rgejbD02OU6DpxjOHYtHgtiGg4XrDBa6JpJsFrAPGUD66+tH1qr2Oi/7D5rHrplACbAB4+Ca0+FNM
	emSVzY2aLvrnsr4cBWRlhGw04NFBEOFQCkQmKw01EngY/0rhKIutxRtoHryW4GEnYY8bh8CoBMdLb
	2OqQ1OnaNRnyK3lEL/ngwhDQyXXhkQ9WpD1hrnlXPY/mrVijTgfmIzPKXARuizdvdICfOTZiULKdP
	wYZKX4I4YiOaBU9//joA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODx-000Vnm-1F;
	Tue, 23 Jan 2024 21:22:25 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODt-000Vjt-1D
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jan 2024 21:22:23 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6dddb927d02so2739874a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 13:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044878; x=1706649678; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atdXaQZCw8Ctbj/HWpcWiAsjfznuoi7ii5HEQI3brC4=;
        b=GAIjByrfdfMn+lleEfbktH95/Tj7SIfz4TkTAvxzc8W7JWGeTVyeo2ByNWvokGHv6p
         wvPk2dUmS9B6tI86yndli6QdHARH4Pzbnzx4RuxpgwRkifna86RNR/a+YcWO1NpYBOsA
         cvZGKsX8LtMwDe6EYxiXqjU1lTL96hD9MEw8ZrhvIjBLFvx3r+q+1AUG1z0al8KfXSHI
         G6i1gbe7Yq8AdHvs852B+ZJx/8XHIaJ9/QSeorgVK6Uo1W+0SgN62itHlKP5oaZ+SYAl
         Ivddb81mQnroA1vk3NOOFqNVL8glQhisvxSlMfhvxZjiMJLeqbXrmQPCe3y1VpkOhFoF
         IrRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044878; x=1706649678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=atdXaQZCw8Ctbj/HWpcWiAsjfznuoi7ii5HEQI3brC4=;
        b=bYmMY2u6fwHjUv5c3/vaxNq2rKHwSAF63OqWMIEU/RgZ43fwokWCEXOeyRVA+KX5LH
         Qg2yEfdGndQ/ZNDBjJA8SRe31utG4yrcOCelmAresQ6kNaN1m8civjcZsKArR2nR/3Kb
         pI1s7TBsbGOBAR84LyMxnRPbmfcGnqvPg1cjdjicOkeJFDUaDVBz2DmwBj10JgmRbUhr
         OV3oLTVpaPx1LFeE27rg/6KyUOQb9Bf2DRwoJNpKgvT9BBCk/u+wXfSecY8l2SgccZ6z
         +F4FR7BWeu8JEO9Nv98umUn8UCXpWWb1p2Orn0uQcYBwnV0npvjlBXCuPhobrBXj0v7k
         K6+w==
X-Gm-Message-State: AOJu0YxzrWdIXIMwEVsc2Cbp/mktETIc8D+imPD5dGiyFFILzueJ9Ggq
	pY+VnC+9gxmQu8N+GKN8I2TofwxKrJGaRDYPNm9ePU3hRxzyZRfGVq6SBkLt
X-Google-Smtp-Source: AGHT+IEuyIETcjdu3Kp6BJQc8aH1nwWNGAOF/jiKDUyXWKMQQLrHpX1zXf2tWflzeubfSv5BiXQ3dQ==
X-Received: by 2002:a05:6871:798f:b0:214:831a:76e7 with SMTP id pb15-20020a056871798f00b00214831a76e7mr2056177oac.81.1706044878445;
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
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
Subject: [PATCH 1/4] arm64: dts: rockchip: Move device specific properties
Date: Tue, 23 Jan 2024 15:21:08 -0600
Message-Id: <20240123212111.202146-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_132221_414731_2A3FF6A2 
X-CRM114-Status: GOOD (  11.75  )
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

Move device specific properties related to the ADC Joystick to
different board specific device trees. This is in preparation for
adding the Anbernic RG-Arc series of devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  | 74 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 74 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 74 -------------------
 3 files changed, 148 insertions(+), 74 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
index 2a2821f4c580..63a18ff36cea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -8,11 +8,73 @@
 #include "rk3566-anbernic-rgxx3.dtsi"
 
 / {
+	adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&adc_mux 0>,
+			      <&adc_mux 1>,
+			      <&adc_mux 2>,
+			      <&adc_mux 3>;
+		pinctrl-0 = <&joy_mux_en>;
+		pinctrl-names = "default";
+		poll-interval = <60>;
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
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		power-supply = <&vcc_sys>;
 		pwms = <&pwm4 0 25000 0>;
 	};
+
+	gpio_mux: mux-controller {
+		compatible = "gpio-mux";
+		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
+			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+		#mux-control-cells = <0>;
+	};
 };
 
 &cru {
@@ -83,6 +145,18 @@ button-right {
 		linux,code = <BTN_DPAD_RIGHT>;
 	};
 
+	button-thumbl {
+		gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		label = "THUMBL";
+		linux,code = <BTN_THUMBL>;
+	};
+
+	button-thumbr {
+		gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+		label = "THUMBR";
+		linux,code = <BTN_THUMBR>;
+	};
+
 	button-y {
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
 		label = "WEST";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index c763c7f3b1b3..94e6dd61a2db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -17,6 +17,61 @@ aliases {
 		mmc2 = &sdmmc2;
 	};
 
+	adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&adc_mux 0>,
+			      <&adc_mux 1>,
+			      <&adc_mux 2>,
+			      <&adc_mux 3>;
+		pinctrl-0 = <&joy_mux_en>;
+		pinctrl-names = "default";
+		poll-interval = <60>;
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
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3472000>;
@@ -36,6 +91,13 @@ battery: battery {
 					<3400000 0>;
 	};
 
+	gpio_mux: mux-controller {
+		compatible = "gpio-mux";
+		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
+			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+		#mux-control-cells = <0>;
+	};
+
 	gpio_spi: spi {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -174,6 +236,18 @@ button-right {
 		linux,code = <BTN_DPAD_RIGHT>;
 	};
 
+	button-thumbl {
+		gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		label = "THUMBL";
+		linux,code = <BTN_THUMBL>;
+	};
+
+	button-thumbr {
+		gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+		label = "THUMBR";
+		linux,code = <BTN_THUMBR>;
+	};
+
 	button-y {
 		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
 		label = "WEST";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 8cbf3d9a4f22..18b8c2e7befa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -14,51 +14,6 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	adc-joystick {
-		compatible = "adc-joystick";
-		io-channels = <&adc_mux 0>,
-			      <&adc_mux 1>,
-			      <&adc_mux 2>,
-			      <&adc_mux 3>;
-		pinctrl-0 = <&joy_mux_en>;
-		pinctrl-names = "default";
-		poll-interval = <60>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		axis@0 {
-			reg = <0>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <1023 15>;
-			linux,code = <ABS_X>;
-		};
-
-		axis@1 {
-			reg = <1>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <15 1023>;
-			linux,code = <ABS_RX>;
-		};
-
-		axis@2 {
-			reg = <2>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <15 1023>;
-			linux,code = <ABS_Y>;
-		};
-
-		axis@3 {
-			reg = <3>;
-			abs-flat = <32>;
-			abs-fuzz = <32>;
-			abs-range = <1023 15>;
-			linux,code = <ABS_RY>;
-		};
-	};
-
 	adc_keys: adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 0>;
@@ -77,16 +32,6 @@ button-mode {
 		};
 	};
 
-	adc_mux: adc-mux {
-		compatible = "io-channel-mux";
-		channels = "left_x", "right_x", "left_y", "right_y";
-		#io-channel-cells = <1>;
-		io-channels = <&saradc 3>;
-		io-channel-names = "parent";
-		mux-controls = <&gpio_mux>;
-		settle-time-us = <100>;
-	};
-
 	gpio_keys_control: gpio-keys-control {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&btn_pins_ctrl>;
@@ -128,18 +73,6 @@ button-start {
 			linux,code = <BTN_START>;
 		};
 
-		button-thumbl {
-			gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
-			label = "THUMBL";
-			linux,code = <BTN_THUMBL>;
-		};
-
-		button-thumbr {
-			gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
-			label = "THUMBR";
-			linux,code = <BTN_THUMBR>;
-		};
-
 		button-up {
 			gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
 			label = "DPAD-UP";
@@ -172,13 +105,6 @@ button-vol-up {
 		};
 	};
 
-	gpio_mux: mux-controller {
-		compatible = "gpio-mux";
-		mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
-			    <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
-		#mux-control-cells = <0>;
-	};
-
 	hdmi-con {
 		compatible = "hdmi-connector";
 		ddc-i2c-bus = <&i2c5>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
