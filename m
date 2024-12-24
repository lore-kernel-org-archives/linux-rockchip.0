Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F8F5E7718D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 21:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNtV5lY1BUFuLH9VbvF9u56TCYr3/66p/oZYfnRFOJ8=; b=G2IitINCespZ6g
	y3aXdRcqrfLOa3ltACpbz7kCjg9m0KJXSzE6LTCCjG1ef/swRpMWkHQfJMx3a5RHSGP1rphOeaSlu
	f/Xmyij3r8evSx+lxZT9I6DyLElG8HMeULfddOSTCWA5ltIA6X2MH9ciydEdJxdTQaNSihfudtqFQ
	uRTsPKq4n3cKozQ17a3IqgKG7RjubbTXUIMYV6KEjjhIJ6/AfSnwjd73MFIJ1LP7iPnGK8IeiF3as
	d78ZkTZquXp3ngbjrPGMjnuTzOmKFFSFPY5M1vx/wdwGF8NtFw9UyRKrXEfdTVGKVqX2q5o7VqTZX
	P9qQmohdsNFtjvZh445A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQCA4-0000000CoPP-00rD;
	Tue, 24 Dec 2024 21:09:52 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQCA0-0000000CoMK-13hB
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 21:09:50 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BOL9KQE031471;
	Wed, 25 Dec 2024 06:09:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
Date: Tue, 24 Dec 2024 21:09:12 +0000
Message-ID: <20241224210912.2121-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_130948_527721_8B128FC1 
X-CRM114-Status: UNSURE (   6.02  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, alchark@gmail.com, michael.riesch@wolfvision.net, macromorgan@hotmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Use the shared rk3588-rock-5.dtsi and the board-specific
rk3588-rock-5b.dts.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 1026 ++---------------
 1 file changed, 119 insertions(+), 907 deletions(-)
 rewrite arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts (93%)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
dissimilarity index 93%
index d597112f1d5b..7e2f569af123 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -1,907 +1,119 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/soc/rockchip,vop2.h>
-#include "rk3588.dtsi"
-
-/ {
-	model = "Radxa ROCK 5B";
-	compatible = "radxa,rock-5b", "rockchip,rk3588";
-
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc;
-		mmc2 = &sdio;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	analog-sound {
-		compatible = "audio-graph-card";
-		label = "rk3588-es8316";
-
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
-
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-
-		dais = <&i2s0_8ch_p0>;
-		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&hp_detect>;
-	};
-
-	hdmi0-con {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi0_con_in: endpoint {
-				remote-endpoint = <&hdmi0_out_con>;
-			};
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_rgb_b>;
-
-		led_rgb_b {
-			function = LED_FUNCTION_STATUS;
-			color = <LED_COLOR_ID_BLUE>;
-			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	fan: pwm-fan {
-		compatible = "pwm-fan";
-		cooling-levels = <0 120 150 180 210 240 255>;
-		fan-supply = <&vcc5v0_sys>;
-		pwms = <&pwm1 0 50000 0>;
-		#cooling-cells = <2>;
-	};
-
-	rfkill {
-		compatible = "rfkill-gpio";
-		label = "rfkill-m2-wlan";
-		radio-type = "wlan";
-		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
-	};
-
-	rfkill-bt {
-		compatible = "rfkill-gpio";
-		label = "rfkill-m2-bt";
-		radio-type = "bluetooth";
-		shutdown-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
-	};
-
-	vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie2_0_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie2x1l0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <50000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
-	vcc3v3_pcie2x1l2: regulator-vcc3v3-pcie2x1l2 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_pcie2x1l2";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <5000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
-	vcc3v3_pcie30: regulator-vcc3v3-pcie30 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie30";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <5000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
-	vcc5v0_host: regulator-vcc5v0-host {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		regulator-boot-on;
-		regulator-always-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		enable-active-high;
-		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
-	vcc5v0_sys: regulator-vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_1v1_nldo_s3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-};
-
-&combphy0_ps {
-	status = "okay";
-};
-
-&combphy1_ps {
-	status = "okay";
-};
-
-&combphy2_psu {
-	status = "okay";
-};
-
-&cpu_b0 {
-	cpu-supply = <&vdd_cpu_big0_s0>;
-};
-
-&cpu_b1 {
-	cpu-supply = <&vdd_cpu_big0_s0>;
-};
-
-&cpu_b2 {
-	cpu-supply = <&vdd_cpu_big1_s0>;
-};
-
-&cpu_b3 {
-	cpu-supply = <&vdd_cpu_big1_s0>;
-};
-
-&cpu_l0 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&cpu_l1 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&cpu_l2 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&cpu_l3 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&gpu {
-	mali-supply = <&vdd_gpu_s0>;
-	status = "okay";
-};
-
-&hdmi0 {
-	status = "okay";
-};
-
-&hdmi0_in {
-	hdmi0_in_vp0: endpoint {
-		remote-endpoint = <&vp0_out_hdmi0>;
-	};
-};
-
-&hdmi0_out {
-	hdmi0_out_con: endpoint {
-		remote-endpoint = <&hdmi0_con_in>;
-	};
-};
-
-&hdptxphy_hdmi0 {
-	status = "okay";
-};
-
-&i2c0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c0m2_xfer>;
-	status = "okay";
-
-	vdd_cpu_big0_s0: regulator@42 {
-		compatible = "rockchip,rk8602";
-		reg = <0x42>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_cpu_big0_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <550000>;
-		regulator-max-microvolt = <1050000>;
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vdd_cpu_big1_s0: regulator@43 {
-		compatible = "rockchip,rk8603", "rockchip,rk8602";
-		reg = <0x43>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_cpu_big1_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <550000>;
-		regulator-max-microvolt = <1050000>;
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-};
-
-&i2c6 {
-	status = "okay";
-
-	hym8563: rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-		clock-output-names = "hym8563";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		wakeup-source;
-	};
-};
-
-&i2c7 {
-	status = "okay";
-
-	es8316: audio-codec@11 {
-		compatible = "everest,es8316";
-		reg = <0x11>;
-		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
-		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
-		assigned-clock-rates = <12288000>;
-		#sound-dai-cells = <0>;
-
-		port {
-			es8316_p0_0: endpoint {
-				remote-endpoint = <&i2s0_8ch_p0_0>;
-			};
-		};
-	};
-};
-
-&i2s0_8ch {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2s0_lrck
-		     &i2s0_mclk
-		     &i2s0_sclk
-		     &i2s0_sdi0
-		     &i2s0_sdo0>;
-	status = "okay";
-
-	i2s0_8ch_p0: port {
-		i2s0_8ch_p0_0: endpoint {
-			dai-format = "i2s";
-			mclk-fs = <256>;
-			remote-endpoint = <&es8316_p0_0>;
-		};
-	};
-};
-
-&package_thermal {
-	polling-delay = <1000>;
-
-	trips {
-		package_fan0: package-fan0 {
-			temperature = <55000>;
-			hysteresis = <2000>;
-			type = "active";
-		};
-
-		package_fan1: package-fan1 {
-			temperature = <65000>;
-			hysteresis = <2000>;
-			type = "active";
-		};
-	};
-
-	cooling-maps {
-		map0 {
-			trip = <&package_fan0>;
-			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
-		};
-
-		map1 {
-			trip = <&package_fan1>;
-			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
-		};
-	};
-};
-
-&pcie2x1l0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
-	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
-	status = "okay";
-};
-
-&pcie2x1l2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
-	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
-	status = "okay";
-};
-
-&pcie30phy {
-	status = "okay";
-};
-
-&pcie3x4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
-	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie30>;
-	status = "okay";
-};
-
-&pinctrl {
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	leds {
-		led_rgb_b: led-rgb-b {
-			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	sound {
-		hp_detect: hp-detect {
-			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pcie2 {
-		pcie2_0_rst: pcie2-0-rst {
-			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
-			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		pcie2_2_rst: pcie2-2-rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pcie3 {
-		pcie3_rst: pcie3-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
-			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&pwm1 {
-	status = "okay";
-};
-
-&saradc {
-	vref-supply = <&avcc_1v8_s0>;
-	status = "okay";
-};
-
-&sdhci {
-	bus-width = <8>;
-	no-sdio;
-	no-sd;
-	non-removable;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
-	status = "okay";
-};
-
-&sdmmc {
-	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
-&sdio {
-	max-frequency = <200000000>;
-	no-sd;
-	no-mmc;
-	non-removable;
-	bus-width = <4>;
-	cap-sdio-irq;
-	disable-wp;
-	keep-power-in-suspend;
-	wakeup-source;
-	sd-uhs-sdr12;
-	sd-uhs-sdr25;
-	sd-uhs-sdr50;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_pcie2x1l0>;
-	vqmmc-supply = <&vcc_1v8_s3>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdiom0_pins>;
-	status = "okay";
-};
-
-&sfc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&fspim2_pins>;
-	status = "okay";
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <104000000>;
-		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <1>;
-	};
-};
-
-&uart6 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
-	status = "okay";
-};
-
-&spi2 {
-	status = "okay";
-	assigned-clocks = <&cru CLK_SPI2>;
-	assigned-clock-rates = <200000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
-	num-cs = <1>;
-
-	pmic@0 {
-		compatible = "rockchip,rk806";
-		spi-max-frequency = <1000000>;
-		reg = <0x0>;
-
-		interrupt-parent = <&gpio0>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
-			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
-
-		system-power-controller;
-
-		vcc1-supply = <&vcc5v0_sys>;
-		vcc2-supply = <&vcc5v0_sys>;
-		vcc3-supply = <&vcc5v0_sys>;
-		vcc4-supply = <&vcc5v0_sys>;
-		vcc5-supply = <&vcc5v0_sys>;
-		vcc6-supply = <&vcc5v0_sys>;
-		vcc7-supply = <&vcc5v0_sys>;
-		vcc8-supply = <&vcc5v0_sys>;
-		vcc9-supply = <&vcc5v0_sys>;
-		vcc10-supply = <&vcc5v0_sys>;
-		vcc11-supply = <&vcc_2v0_pldo_s3>;
-		vcc12-supply = <&vcc5v0_sys>;
-		vcc13-supply = <&vcc_1v1_nldo_s3>;
-		vcc14-supply = <&vcc_1v1_nldo_s3>;
-		vcca-supply = <&vcc5v0_sys>;
-
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl1";
-			function = "pin_fun0";
-		};
-
-		rk806_dvs2_null: dvs2-null-pins {
-			pins = "gpio_pwrctrl2";
-			function = "pin_fun0";
-		};
-
-		rk806_dvs3_null: dvs3-null-pins {
-			pins = "gpio_pwrctrl3";
-			function = "pin_fun0";
-		};
-
-		regulators {
-			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_gpu_s0";
-				regulator-enable-ramp-delay = <400>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_cpu_lit_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_log_s0: dcdc-reg3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <750000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_log_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_vdenc_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_ddr_s0: dcdc-reg5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <900000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_ddr_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <850000>;
-				};
-			};
-
-			vdd2_ddr_s3: dcdc-reg6 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vdd2_ddr_s3";
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <2000000>;
-				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_2v0_pldo_s3";
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <2000000>;
-				};
-			};
-
-			vcc_3v3_s3: dcdc-reg8 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_3v3_s3";
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vddq_ddr_s0: dcdc-reg9 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vddq_ddr_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8_s3: dcdc-reg10 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8_s3";
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			avcc_1v8_s0: pldo-reg1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "avcc_1v8_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8_s0: pldo-reg2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			avdd_1v2_s0: pldo-reg3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1200000>;
-				regulator-name = "avdd_1v2_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v3_s0: pldo-reg4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vcc_3v3_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vccio_sd_s0: pldo-reg5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vccio_sd_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			pldo6_s3: pldo-reg6 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "pldo6_s3";
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vdd_0v75_s3: nldo-reg1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-				regulator-name = "vdd_0v75_s3";
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdd_ddr_pll_s0: nldo-reg2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <850000>;
-				regulator-name = "vdd_ddr_pll_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <850000>;
-				};
-			};
-
-			avdd_0v75_s0: nldo-reg3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-				regulator-name = "avdd_0v75_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_0v85_s0: nldo-reg4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <850000>;
-				regulator-name = "vdd_0v85_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_0v75_s0: nldo-reg5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-				regulator-name = "vdd_0v75_s0";
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-	};
-};
-
-&tsadc {
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
-&u2phy1 {
-	status = "okay";
-};
-
-&u2phy1_otg {
-	status = "okay";
-};
-
-&u2phy2 {
-	status = "okay";
-};
-
-&u2phy2_host {
-	/* connected to USB hub, which is powered by vcc5v0_sys */
-	phy-supply = <&vcc5v0_sys>;
-	status = "okay";
-};
-
-&u2phy3 {
-	status = "okay";
-};
-
-&u2phy3_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&usbdp_phy1 {
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
-&usb_host1_xhci {
-	dr_mode = "host";
-	status = "okay";
-};
-
-&usb_host2_xhci {
-	status = "okay";
-};
-
-&vop_mmu {
-	status = "okay";
-};
-
-&vop {
-	status = "okay";
-};
-
-&vp0 {
-	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
-		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
-		remote-endpoint = <&hdmi0_in_vp0>;
-	};
-};
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rk3588-rock-5.dtsi"
+
+/delete-node/ &eeprom;
+/delete-node/ &pcie30x2_perstn_m1;
+/delete-node/ &pcie3x2;
+/delete-node/ &vcc_5v;
+
+/ {
+	model = "Radxa ROCK 5B";
+	compatible = "radxa,rock-5b", "rockchip,rk3588";
+
+	aliases {
+		mmc2 = &sdio;
+	};
+
+	regulator-3v3-1 {
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+	};
+
+	regulator-5v0-2 {
+		gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill {
+		label = "rfkill-m2-wlan";
+		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-bt {
+		label = "rfkill-m2-bt";
+	};
+
+	sound {
+		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&pinctrl {
+	pcie {
+		ekey_en: regulator-3v3-1 {
+			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sound {
+		hp_detect: sound-0 {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_pwren_h: regulator-5v0-2 {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdio {
+	bus-width = <4>;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	no-mmc;
+	no-sd;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdiom0_pins>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_wf>;
+	vqmmc-supply = <&vcc_1v8_s3>;
+	wakeup-source;
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v_usb>;
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc5v0_sys */
+	phy-supply = <&vcc5v0_sys>;
+};
+
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
+	status = "okay";
+};
+
+&usbc0 {
+	/*
+	 * When the board is starting to send power-delivery messages
+	 * too late (5 seconds according to the specification), the
+	 * power-supply reacts with a hard-reset. That removes the
+	 * power from VBUS for some time, which resets the whole board.
+	 */
+	status = "fail";
+};
+
+&usbc0_con {
+	power-role = "sink";
+	try-power-role = "sink";
+	op-sink-microwatt = <1000000>;
+	sink-pdos =
+		<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
+		<PDO_VAR(5000, 20000, 5000)>;
+};
+
+&usbdp_phy0 {
+	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
