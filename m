Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79CC0CD1292
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 15:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RB3MT62nUzwDE1c8xT5uR6YVjxe0ML+uw6beUcy2bfI=; b=NQEl8duiZAqvk+
	Mtl5Hjp1RIagdzbsPmC+Eqpk1tmaMddzhEzGqzt3+Zq6AUBHhBWpDSnJ7xZnkr+VAWbp3afL/ylIJ
	GXDFUkaXtF8PMlMT47gqrkrdM4jzc5oZqUa1C4bGa5D41Nvw3phEkRGi8/HBfePNUVCImrEF2OV5k
	2gxybwboUhVZc/PJpAq/WaAabfdb/qXWO96Ma0R1Uu+kJPMXoTuHEnQ8HfvbuYhB3tbIGTJMl2M/Q
	jKZK06M5RrGPZPeXQXCPQrW07yKvwzRicIzjXDZV1FjNqF/n0Drd9N91FjTBR9rluYTBRgzzieTei
	rMuBkfks8xUg2Mtsb0dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2Kf-0000000GgGE-1SGx;
	Wed, 03 Apr 2024 15:15:21 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2KX-0000000Gg9q-3phR;
	Wed, 03 Apr 2024 15:15:17 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-515c3eeea5dso7774931e87.1;
        Wed, 03 Apr 2024 08:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712157311; x=1712762111; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnNLAuDvkuZ1AZfUUTp1XPrJpiRXsmEshCXq1vwGuHE=;
        b=khezBmWcsrrKLybalHOhvRSWrhZrObflvKz7T8oJb/UxZ3n98DAFGhaNAMzzx58c/B
         HyFiKO6LcoKNytEw5b3Lob5Z1N3phraBiE2TZ58j8F+mZSjaMbQwqHHT16L0HvdnO+HK
         gbiDdsje1FLFvff6GZfCheKynLhkpRv6YDzYKADpnOi+Lc3vilvZKvv6fD1QnYXQr4um
         RzMMSgYDVSP6wXbqNGGVEmbipQ6Sxmp+Ex5xYDHu7lCmUXbq6L6QpYVJfEp2v0/4ALaa
         l+Cjg3e3IKKItgqneIJy/4SCodhBzVZckAywUUu4PIF4vSpuqRBc2FRYG7LysxMSAfxf
         8lSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712157311; x=1712762111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnNLAuDvkuZ1AZfUUTp1XPrJpiRXsmEshCXq1vwGuHE=;
        b=t6Z8veAWoVbgQ1gbP9BHu24sgQXvwVEr+6zuujCy9lKcVIuVxUrbX0Iz26frtc0TRF
         3Ef4cDKpjoumd4q6cvW0T4Fd4EWNDFsu46SW8WSkofRBlEECk3JOEmZIT4WogWYWXoTI
         zcjNcircIdidhNXaJ3ihWgdbsacbv+3yG5dYsXegoPl+631lAPRY12VhBrImZejiJGhc
         PkXpn29rqMldZvgGmXoT3aaA7EgRiSVrgSQ/qviDjWpKhiRdPZoiumTX2qQbXaKlMSHi
         v1E4VzcnqLFLudPz70a+GPpEuGUjEz2A/AJ20zf/XVYAwqdFQPMTGaxWR1K+MWFjacBG
         LVUw==
X-Forwarded-Encrypted: i=1; AJvYcCVBdfF0dpE6axpbMKdjPaYIqMeeOnIWSsXGWPHma+vszyWH9ga0w8sU0I+dv2H6KN7a07PtfwdNkBwNaK8mfpCfcqOlnMS0iCwtSWJS2w/U+bewK30U2W0U0wTvk2uoq6pcH3sWCP4cApkCxwX1hBY8cv9TBlvLUxo=
X-Gm-Message-State: AOJu0YwnopfG/KEdi3zhwnVp8UREdK0aqxMAymf21oFNaEdxTgnDgfnM
	n/qzPNCZKpLbpJVz4WrjuP0oOMFiWMZ7A+wM6HkmXpMhAUVV+R3n
X-Google-Smtp-Source: AGHT+IFhPuLLAODujIpvEpVZL/7xEwm0en6PwqHAOH6UNxVNFJgncZNoH5QKqqEKbTxMP8GnvWzuoQ==
X-Received: by 2002:ac2:4851:0:b0:515:d4e9:96da with SMTP id 17-20020ac24851000000b00515d4e996damr8235967lfy.13.1712157310291;
        Wed, 03 Apr 2024 08:15:10 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id d6-20020a0565123d0600b00515c1b1fb85sm2055092lfv.233.2024.04.03.08.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 08:15:10 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add Forlinx OK3588-C
Date: Wed,  3 Apr 2024 20:12:29 +0500
Message-ID: <20240403151229.30577-4-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240403151229.30577-1-dmt.yashin@gmail.com>
References: <20240403151229.30577-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_081514_172258_AB70CE44 
X-CRM114-Status: GOOD (  15.31  )
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

Changes in v2:
- update dtsi include
- set more generic names for tca6424a, nau8822 and sound nodes
- reorder regulator and nodes in pinctrl
- reorder properties in gmac and sdmmc
- drop vmmc-supply from sdmmc and update max-frequency
- enable gpu (depends on for-next branch)
- enable usb_host nodes

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 409 ++++++++++++++++++
 2 files changed, 410 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 0192980ef37f..c6a7fe9522ae 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -116,6 +116,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
new file mode 100644
index 000000000000..009566d881f3
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -0,0 +1,409 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3588-fet3588-c.dtsi"
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
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 95 145 195 255>;
+		fan-supply = <&vcc12v_dcin>;
+		pwms = <&pwm2 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
+	sound {
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	tx_delay = <0x44>;
+	rx_delay = <0x00>;
+	status = "okay";
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	tx_delay = <0x44>;
+	rx_delay = <0x00>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+
+	tca6424a: gpio@23 {
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
+	nau8822: audio-codec@1a {
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
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	tca6424a {
+		tca6424a_int: tca6424a-int {
+			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
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
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	max-frequency = <150000000>;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
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
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
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
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
