Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3EEC54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 14:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81LvSv0/zgzwMufMN47iQdeP7T1nw6R7Zdx7HbfGfDc=; b=F/kJwoGlk0uny1
	TgCCd1TgEs2akAMSLWFnooRdy3N2fxkXbZEfG9gC5JC6hnW54bAtWcHpoXfJ4mbIaodT4f3pP0sWJ
	wo4EUAYsyE0CuLZ+lIuCP/4BcGFc1biBnNddE4CO2DK56ZzWc/kFzLLIO4t5DKA1llgNW5eIlIan9
	lQiLvbKpJ0Y8r3wE6xlvqJuiyOkb6vzUZ2TuXq3dNah+dtbO0x+9FEaprCDAoWTlLiDlWIjp2gIjs
	zjhmpYIwhbf1b+b/Vo7kctXYPFqNd0/4rzI9IoxNuwBIw0aNhdlS8sxLOD3TxBwlByfAybOFEi4HC
	GIu3Uu6q8ngmgIGRIz5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl8Sy-00000000SVb-1xia;
	Fri, 15 Mar 2024 14:23:24 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl8Sn-00000000SNs-0pgU;
	Fri, 15 Mar 2024 14:23:15 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-513d23be0b6so2019554e87.0;
        Fri, 15 Mar 2024 07:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710512590; x=1711117390; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6qAqs9AMTD+AVZZ8XUtu0Jhputkpur+QmSeGU9Jq2w=;
        b=LUmzfMzll4aWOZYdBuFpDoDmtw3F7ul6CETPYLIvmRapFLzwHVsoAGf+0heAZha7vY
         6VTQo5d6EWGGyUf/V9vZmLOgo0Z6Gs8nEjdmCaOoK5klOeaO6zHWuMel6qDDLazKxhJR
         hUjeaE3wDHLcK1/iZkk4Y9JBALtMrU/uc1cH8oMgWKs6KZEpGX+whuuUXXiae0mrA6mX
         OVzZc92uF5UVxu2LOX+vn3hcjc7/3uI6p0iVhyhFtaUmqglqRVo5FsvBhrCgerFGbhaa
         2HsTVW9OzTWQQsgVhiQM0p/6eIrAdRrL9kuvRn7jZjYZJEnyENrrDf9u9FNU0fuZGny1
         pPnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710512590; x=1711117390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6qAqs9AMTD+AVZZ8XUtu0Jhputkpur+QmSeGU9Jq2w=;
        b=FaLkwnrPfFXoiitooZD7f5lYxX2fyt8VxBGZYpPi1gsBNSPxs3a3yAnlmeYPSNpcgw
         gok9Dxv6jY3ys0s1+Xfvyv2CeleMxVFPVoNTrsLoGtMZZ0VWIUq2i7wuMHXKupMZbi7c
         wPC5EFbIzNFS76sOhsMOO0EtKQbN2Nl5IFiciWc+w9BSoK2h+vo1+X4c1nq71dLdBaZJ
         0jFdrAXsMUxfbvMx2HbafJgjMYjrvLBlWtyMsy1rgp3w2f24Bu05gdMBg8UcvatWmdOg
         sM0+IKh7pKRzVFte4I1g0qLA9H7l1vPYg0SgJ3XUPt0GZyPwhek/G+EjfNYz2oDHO0bW
         OiHw==
X-Forwarded-Encrypted: i=1; AJvYcCXoI3ki88wqpWTRS0lL7ka5TthfSFtFUatlip3CajE1/XQtgNpdOGj7TaOMW2apEe3tZ/YgqUEHW1dW2l+OtfXdbV9q/sDeMbRkZJ1aojrP6ZRCqpJreI5g/DpkpfzonWnSpI1gfPtZ7BVrc5XdoZPzrKCuVOHTcmc=
X-Gm-Message-State: AOJu0Yy3P4QpbEoQ1V7/YYr0szaibEjWLYkynMfmAPCE0nMOobWiHacY
	UFfFxyCBDslkpxw85W5GAWIfmp5eVcurBzqGQYsPg4mdtoCqxEca
X-Google-Smtp-Source: AGHT+IH0I4rdw80flzZdwLw2/7JFH7zyfYxixqtDabJsrTPfSisglymCHDs5A4ntJqo5QcG9nZzpNw==
X-Received: by 2002:a05:6512:3293:b0:513:ba0c:cb6 with SMTP id p19-20020a056512329300b00513ba0c0cb6mr3202373lfe.2.1710512590034;
        Fri, 15 Mar 2024 07:23:10 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id r18-20020ac25f92000000b00513c82518fasm649651lfe.223.2024.03.15.07.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 07:23:09 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: add Forlinx OK3588-C
Date: Fri, 15 Mar 2024 19:18:07 +0500
Message-ID: <63993cce35990f184e5d748ffb30eb70e9376caa.1710506374.git.dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1710506373.git.dmt.yashin@gmail.com>
References: <cover.1710506373.git.dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_072313_496035_96C87333 
X-CRM114-Status: GOOD (  14.39  )
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

OK3588-C is the carrier board for FET3588-C System on Module.

OK3588-C features:
- 2x 1GbE Realtek RTL8211F Ethernet
- 1x HDMI Type A out
- 1x HDMI Type A in
- 3x USB 3.1 Type C (2x OTG and 1x serial console)
- 1x USB 2.0 Type A
- 1x USB 3.0 & USB 2.0 Combo M.2 M Key (4G/5G modem)
- 1x PCIE 2.0 M.2 E Key (1 lane)
- 1x PCIE 2.0 PCIe (1 lane)
- 1x PCIE 3.0 PCIe (4 lanes)
- 1x TF scard slot
- 5x MIPI CSI
- 2x MIP DSI
- 2x CAN2.0B
- 1x RS485
- 1x NAU8822 onboard audio
- 1x FAN connector
- 1x RTC
- 20-pin expansion header
- ADC keys

Add support for Forlinx OK3588-C board.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 390 ++++++++++++++++++
 2 files changed, 391 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a7b30e11beaf..39357fb293ad 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -107,6 +107,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
new file mode 100644
index 000000000000..9977928b7677
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -0,0 +1,390 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3588-forlinx-fet3588-c.dtsi"
+
+/ {
+	model = "Forlinx OK3588-C Board";
+	compatible = "forlinx,ok3588-c", "forlinx,fet3588-c", "rockchip,rk3588";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		mmc1 = &sdmmc;
+	};
+
+	adc-keys-0 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-maskrom {
+			label = "Maskrom";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <400>;
+		};
+	};
+
+	adc-keys-1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-volume-up {
+			label = "V+/Recovery";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <17000>;
+		};
+
+		button-volume-down {
+			label = "V-";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <417000>;
+		};
+
+		button-menu {
+			label = "Menu";
+			linux,code = <KEY_MENU>;
+			press-threshold-microvolt = <890000>;
+		};
+
+		button-escape {
+			label = "ESC";
+			linux,code = <KEY_ESC>;
+			press-threshold-microvolt = <1235000>;
+		};
+	};
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,name = "RK3588 OK3588-C Audio";
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpio = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,pin-switches = "Headphones", "Speaker";
+		simple-audio-card,widgets =
+			"Headphones", "Headphones",
+			"Speaker", "Speaker",
+			"Microphone", "Internal Microphone",
+			"Microphone", "Headset Microphone";
+		simple-audio-card,routing =
+			"Headphones", "LHP",
+			"Headphones", "RHP",
+			"Speaker", "LSPK",
+			"Speaker", "RSPK",
+			"LMICP", "Headset Microphone",
+			"RMICP", "Internal Microphone";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&nau8822>;
+		};
+	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 95 145 195 255>;
+		fan-supply = <&vcc12v_dcin>;
+		pwms = <&pwm2 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc1v8_sys: vcc1v8-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_sys";
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
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie2x1l2: vcc3v3-pcie2x1l2-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie30: vcc3v3_pcie30-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie30";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+};
+
+&gmac0 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x44>;
+	rx_delay = <0x00>;
+	status = "okay";
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x44>;
+	rx_delay = <0x00>;
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+
+	tca6424a: gpio-controller@23 {
+		compatible = "ti,tca6424";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA4 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&tca6424a_int>;
+		vcc-supply = <&vcc3v3_sys>;
+	};
+};
+
+&i2c5 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5m2_xfer>;
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&i2c7 {
+	status = "okay";
+
+	nau8822: nau8822@1a {
+		compatible = "nuvoton,nau8822";
+		reg = <0x1a>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+	};
+};
+
+
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@1 {
+		/* RTL8211F */
+		compatible = "ethernet-phy-id001c.c916",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8211f_0_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@2 {
+		/* RTL8211F */
+		compatible = "ethernet-phy-id001c.c916",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <0x2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8211f_1_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	status = "okay";
+};
+
+&pcie2x1l2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_2_rst>;
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
+	status = "okay";
+};
+
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3_rst>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
+&pinctrl {
+	audio {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	rtl8211f {
+		rtl8211f_0_rst: rtl8211f-0-rst {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		rtl8211f_1_rst: rtl8211f-1-rst {
+			rockchip,pins = <1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	tca6424a {
+		tca6424a_int: tca6424a-int {
+			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie3 {
+		pcie3_rst: pcie3-rst {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&avcc_1v8_s0>;
+	status = "okay";
+};
+
+&sdmmc {
+	max-frequency = <200000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	status = "okay";
+};
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
