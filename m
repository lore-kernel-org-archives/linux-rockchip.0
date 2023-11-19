Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A94C072A2
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 13:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SD4cn6MsYfDKhEL4iVkS9xbiRm5D/tW6oWa7Zv72AA=; b=JhaF2mNvDv0Ayu
	EPmEPRCIoUmvmp4ilFVXNVvEi8CIurMeOXP8WQyK4wK0nhjILZksuNS/w6kPfGg+h2X4uTglwgm7k
	KMrpEEwX9Kgj8MQBxGDv808Muqa/duBGRR4v7Y/jKnQEGGh4DecM1xnsrZS78MdX1A7iHrMqXvJsn
	I8c7F2Wnol1nlwquaB4CGIaa2FdbexpLx5zC77/iUNqYP0xvr8bBChwP7e6wmiB+cWAyUJlgufigy
	Khb2lX0WK/qaNR+n1d11pz2usR9TtaOZJn8Y2Vbn68c7vcxHpiUAdQ5aIDvVUrBQ2c0CPhN8ghaNS
	R32LmG656MnF7D8rXkyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hU0-00ACEb-0s;
	Sun, 19 Nov 2023 13:05:04 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTw-00ACBy-29;
	Sun, 19 Nov 2023 13:05:02 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507a0907896so5030004e87.2;
        Sun, 19 Nov 2023 05:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399099; x=1701003899; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZoMsaRCdrwzQIgA4pCYsDBIzIpTKt2NvoS4IbctX9k=;
        b=Jyb8RWzRRG5pVt6847v9QqyqBW71G9e5uSznW5JTnAtB4BDT4uncaWEkMAzQKvLmnJ
         5zxeNZbl9orB3nTKf6cqzhxC9i6QDgJcr9Nly1o56gUMwOPa4UTmHDsb+TlXiOqYsvfl
         88BvRd4GNikxAEaJD/5ivUBzmLeysBkfUBgKqNrkwJusFvuxQCcd98V0X+PFSBFYdr9M
         q87Fob02dE84sdSrfSlqWklqbUsMpiLhMiBwZTjRdudG0fcVRuPOuE571jUUyz3eBHH7
         pLGF2VMB7ewfLnXmXUcmufEKQEaAT5f2Muvc6zHwo7sxzz4xAKd1KVORuleAo5kZoW5C
         YssA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399099; x=1701003899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZoMsaRCdrwzQIgA4pCYsDBIzIpTKt2NvoS4IbctX9k=;
        b=i9XMnRekGjeDhu+HiCgq0O3ENksZ+wznsqYzIGBlgYkujXgo+pdeZHXYevHquUwMtJ
         0DEYaOCZaVE0wcKLuBg+BAf41aO1mkzts/tg0yjW9ksvAAX1HWjJUtqONmy//IaaDwjz
         kFjwP/FSG7jmD/VLD6++StCQe2N69HrQ7HPK8/lP6T97x1l29CevbS4iIhQsxG/LrFmv
         Di3Q1kggXalaUzX9CS18bw6YEOlRO6L56MN46oA4otfGBZx8KvP4WhYD932kpdtKhA4g
         pJc/Rh/A6DSbKg+CvMkTpU/NauH5p35A3THQQjsASE/QN5YcWXNe2xVD+1t2/tbH0RdP
         ynuw==
X-Gm-Message-State: AOJu0YyLGJbHD1c24AeI4v2UrFuF2qYTrZ1AIL+9ZMg+Fh52z2q+Bi8y
	YHDOMWQoS6BJv8pxbPHLNA==
X-Google-Smtp-Source: AGHT+IFM7L62fT2HxJg7ttHyaEqv4FrEgsAF5QE/0DhVscMChbLCIWZlM9L3YQDBy86/KX2TgStsCw==
X-Received: by 2002:ac2:5e81:0:b0:507:b14f:e3bc with SMTP id b1-20020ac25e81000000b00507b14fe3bcmr3437685lfq.33.1700399098722;
        Sun, 19 Nov 2023 05:04:58 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id n8-20020a1709062bc800b009dd8473559dsm2827866ejg.110.2023.11.19.05.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:04:58 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/3] ARM: dts: Add Geniatech XPI-3128 RK3128 board
Date: Sun, 19 Nov 2023 14:03:55 +0100
Message-ID: <20231119130351.112261-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_050500_705842_6CBC9F0D 
X-CRM114-Status: GOOD (  18.94  )
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

XPI-3128 is RK3128 based SBC form Geniatec in RPi form factor

Specs:
- Rockchip RK3128
- 512MB/1 GB DDR3 DRAM
- 8/16 GB eMMC
- TF card slot
- 100 MBit ethernet / RJ45 (TI DP83848C phy)
- optional Marvell 88W8897 (USB version)
- 3 x USB host (onboard GL852G hub connected to SoC ehci host)
- 1 x USB otg
- 1 x Type-C (solely for powering the board)
- HDMI 1.4 out
- ADC button
- IR receiver
- Artasie AM1805 RTC
- 40 pin header

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 397 ++++++++++++++++++
 2 files changed, 398 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 0f46e18fe275..58868cf0510b 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3066a-mk808.dtb \
 	rk3066a-rayeager.dtb \
 	rk3128-evb.dtb \
+	rk3128-xpi-3128.dtb \
 	rk3188-bqedison2qc.dtb \
 	rk3188-px3-evb.dtb \
 	rk3188-radxarock.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
new file mode 100644
index 000000000000..61b9f069c8a2
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -0,0 +1,397 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include "rk3128.dtsi"
+
+/ {
+	model = "Geniatech XPI-3128";
+	compatible = "geniatech,xpi-3128", "rockchip,rk3128";
+
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+		serial0 = &uart1;
+	};
+
+	memory@60000000 {
+		device_type = "memory";
+		reg = <0x60000000 0x40000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <3300000>;
+
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	dc_5v: dc-5v-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "DC_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	/*
+	 * This is a vbus-supply, which also supplies the GL852G usb hub,
+	 * thus has to be always-on
+	 */
+	host_pwr_5v: host-pwr-5v-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <1500>;
+		regulator-name = "HOST_PWR_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_5v>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_drv>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio3 RK_PD2 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_int>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-power {
+			gpios = <&gpio0 RK_PD2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			pinctrl-names = "default";
+			pinctrl-0 = <&power_led>;
+		};
+
+		led-spd {
+			gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+			function = LED_FUNCTION_LAN;
+			color = <LED_COLOR_ID_GREEN>;
+			/*
+			 * currently not allowed to be set as per
+			 * https://www.kernel.org/doc/Documentation/devicetree/bindings/leds/common.yaml
+			 * and needs to set in userspace:
+			 *
+			 * linux,default-trigger = "netdev";
+			 */
+			pinctrl-names = "default";
+			pinctrl-0 = <&spd_led>;
+		};
+	};
+
+	mcu3v3: mcu3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "MCU3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_ddr: vcc-ddr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_DDR";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		vin-supply = <&vcc_sys>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_io: vcc-io-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_IO";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_lan: vcc-lan-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_LAN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_sd: vcc-sd-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
+		startup-delay-us = <500>;
+		regulator-name = "VCC_SD";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwren>;
+	};
+
+	vcc_sys: vcc-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_SYS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_5v>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc33_hdmi: vcc33-hdmi-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC33_HDMI";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcca_33>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcca_33: vcca-33-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VCCA_33";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_11: vdd-11-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_11";
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc_sys>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd11_hdmi: vdd11-hdmi-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD11_HDMI";
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vdd_11>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_arm: vdd-arm-regulator {
+		compatible = "pwm-regulator";
+		regulator-name = "VDD_ARM";
+		pwms = <&pwm1 0 25000 1>;
+		pwm-supply = <&vcc_sys>;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	/*
+	 * As per schematics vdd_log is minimum 900 mV, maximum 1400 mV.
+	 * Since there are HW blocks in PD_LOGIC (which are all driven by
+	 * this supply), that either do not have a driver at all or the
+	 * driver does not implement regulator support we have to make
+	 * sure here that the voltage never drops below 1050 mV.
+	 */
+	vdd_log: vdd-log-regulator {
+		compatible = "pwm-regulator";
+		regulator-name = "VDD_LOG";
+		pwms = <&pwm2 0 25000 1>;
+		pwm-dutycycle-range = <30 100>;
+		pwm-supply = <&vcc_sys>;
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-ramp-delay = <4000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	vmmc-supply = <&vcc_io>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	cap-mmc-highspeed;
+	mmc-ddr-3_3v;
+	no-sd;
+	no-sdio;
+	status = "okay";
+};
+
+&gpio0 {
+	gpio-line-names = /* GPIO0 A0-A7 */
+			  "", "", "HEADER_5", "HEADER_3",
+			  "", "", "", "",
+			  /* GPIO0 B0-B7 */
+			  "HEADER_22", "HEADER_23", "", "HEADER_19",
+			  "HEADER_26", "HEADER_21", "HEADER_24", "",
+			  /* GPIO0 C0-C7 */
+			  "", "HEADER_18", "", "",
+			  "", "", "", "",
+			  /* GPIO0 D0-D7 */
+			  "HEADER_36", "", "", "",
+			  "", "", "HEADER_13", "";
+};
+
+&gpio1 {
+	gpio-line-names = /* GPIO1 A0-A7 */
+			  "HEADER_7", "HEADER_35", "HEADER_33", "HEADER_37",
+			  "HEADER_40", "HEADER_38", "", "",
+			  /* GPIO1 B0-B7 */
+			  "HEADER_11", "", "", "HEADER_29",
+			  "HEADER_31", "", "", "",
+			  /* GPIO1 C0-C7 */
+			  "", "", "", "",
+			  "", "", "", "",
+			  /* GPIO1 D0-D7 */
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names = /* GPIO2 A0-A7 */
+			  "", "", "", "",
+			  "", "", "", "",
+			  /* GPIO2 B0-B7 */
+			  "", "", "", "",
+			  "", "", "", "",
+			  /* GPIO2 C0-C7 */
+			  "", "", "", "",
+			  "HEADER_27", "", "", "",
+			  /* GPIO2 D0-D7 */
+			  "", "", "HEADER_8", "HEADER_10",
+			  "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names = /* GPIO3 A0-A7 */
+			  "", "", "", "",
+			  "", "", "", "",
+			  /* GPIO3 B0-B7 */
+			  "", "", "", "",
+			  "", "", "", "",
+			  /* GPIO3 C0-C7 */
+			  "", "HEADER_32", "", "",
+			  "", "", "", "HEADER_12",
+			  /* GPIO3 D0-D7 */
+			  "", "", "", "HEADER_15",
+			  "", "", "", "";
+};
+
+&pinctrl {
+	dp83848c {
+		dp83848c_rst: dp83848c-rst {
+			rockchip,pins = <2 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	ir-receiver {
+		ir_int: ir-int {
+			rockchip,pins = <3 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		power_led: power-led {
+			rockchip,pins = <0 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		spd_led: spd-led {
+			rockchip,pins = <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb2 {
+		host_drv: host-drv {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	vmmc-supply = <&vcc_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
+	disable-wp;
+	cap-sd-highspeed;
+	no-mmc;
+	no-sdio;
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_otg {
+	vusb_a-supply = <&vcc_io>;
+	vusb_d-supply = <&vdd_11>;
+	status = "okay";
+};
+
+&usb2phy {
+	status = "okay";
+};
+
+&usb2phy_host {
+	status = "okay";
+};
+
+&usb2phy_otg {
+	status = "okay";
+};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
