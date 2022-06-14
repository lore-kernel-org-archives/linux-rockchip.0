Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F49C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 06:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uxxPzSeyYDvZDbLuJuELnGpKmUYnLEfBE1UTbv/mAE=; b=o/mQC8AgOD7d3I
	I1W0BxgNz4Fg3DAWkdSSh4rjWPHG64uaz723YMWiQXGoWGq40pX4CkXGAMWj2OIlIWdAz7GR7BrUU
	OST+TNLdv0BcN35XIcBIPCK48K4pazR+PrgCHt9r3YQrF+voi6DDUnbHqCY+dpNNiCWGZImxBsUNZ
	k73h0rBFNNETil01LHEPML8L2qIhqUwbWkZhx4QibvqKcV3u3PQW4w+nnxQOPKVaAV5Vl/py5sT/g
	NMIS4+TmgWn6TQob/Q0MOwwCx38tVD3c4TTAZuAaSpeBk54BXyKypD1EDAjNp0g2XyUaeWe2fMytz
	2QymBbBF2RvSnYsL23WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10NA-007MyO-36; Tue, 14 Jun 2022 06:49:56 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10MM-007MJl-Hv; Tue, 14 Jun 2022 06:49:08 +0000
Received: from beast.luon.net (simons.connected.by.freedominter.net [45.83.240.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 847D366016A7;
	Tue, 14 Jun 2022 07:49:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655189342;
	bh=RymYh+TOb0DzyQZ0t7lBzomfx+2GPLrBuLxgSUhKoCw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jLsDVR6vmmMNZZpobNA+AkRcnc8sQI+sp9KJ9YE486DIPEW/Aii1fpvYqx6MEOKnG
	 GkoyArSMnJNPaGuEOw2CtVx9vDADReur2rSzpLFNZQkir7g1m3nXuP877Q3CYjBIwf
	 3a3Ex9dwPYkn107BuMH0DpLk+FyMxohvNwNCGuueW+Yd91HWCQawltCKktc/nWlqF/
	 EfFwFIu+9QRTMXZrIE5/wBp4hB36zoa0zGh42Yw2xegr3sVOZH/20J/wP+QtYjM0vT
	 91HAScaF3iYp1573KExaK6uTYhKFpVUd0cHONZYr/PS2F/+hY8lN7eE5bl5ZIbcUeJ
	 hIq4NBkxngh8g==
Received: by beast.luon.net (Postfix, from userid 1000)
	id 8BD124179E44; Tue, 14 Jun 2022 08:48:59 +0200 (CEST)
From: Sjoerd Simons <sjoerd@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Akash Gajjar <akash@openedev.com>,
	Alex Bee <knaerzche@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Levin Du <djw@t-chip.com.cn>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Tue, 14 Jun 2022 08:48:56 +0200
Message-Id: <20220614064858.1445817-3-sjoerd@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220614064858.1445817-1-sjoerd@collabora.com>
References: <20220614064858.1445817-1-sjoerd@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_234906_891419_348160D8 
X-CRM114-Status: GOOD (  15.46  )
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

From: Akash Gajjar <akash@openedev.com>

ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
- 256MB/512MB DDR3 RAM
- SD, NAND flash (optional on board 1/2/4/8Gb)
- 100MB ethernet, PoE (optional)
- Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
- USB2.0 Type-A HOST x1
- USB3.0 Type-C OTG x1
- 26-pin expansion header
- USB Type-C DC 5V Power Supply

This patch enables
- Console
- NAND Flash
- SD Card

Signed-off-by: Akash Gajjar <akash@openedev.com>
[sjoerd: Sort dt nodes, drop properties duplicated from dtsi]
Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 204 ++++++++++++++++++
 2 files changed, 205 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 18d00eae3072..ef79a672804a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
new file mode 100644
index 000000000000..9095efe25ccd
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <akash@openedev.com>
+ * Copyright (c) 2019 Jagan Teki <jagan@openedev.com>
+ */
+
+/dts-v1/;
+#include "rk3308.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi S";
+	compatible = "radxa,rockpis", "rockchip,rk3308";
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&green_led_gio>, <&heartbeat_led_gpio>;
+
+		green-led {
+			default-state = "on";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			label = "rockpis:green:power";
+			linux,default-trigger = "default-on";
+		};
+
+		blue-led {
+			default-state = "on";
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+			label = "rockpis:blue:user";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-0 = <&wifi_enable_h>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc_1v8: vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_io: vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_ddr: vcc-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_otg: vcc5v0-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		regulator-name = "vcc5v0_otg";
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
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
+
+	vdd_core: vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		pwm-supply = <&vcc5v0_sys>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-init-microvolt = <1015000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+
+	vdd_log: vdd-log {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&emmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	non-removable;
+	vmmc-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	leds {
+		green_led_gio: green-led-gpio {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		heartbeat_led_gpio: heartbeat-led-gpio {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake: wifi-host-wake {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	max-frequency = <1000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-sd-highspeed;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
