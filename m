Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0EEC11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EAFD610FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EAFD610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRJoRPL4gJ/YleQi95oFUNQr3kdZPlVUg8rJMlQPzxw=; b=OPmxmzvNm0K5pp
	j0g/Cldfr5UCbhE6Lv64lxKooNWCbEsGqKLUvK3E4vny0o0nlI6yw7wt+RM8uDQmHEkWps1wUu1ff
	XuvDuGz91xEFFvi/RbPuPrIkP8/PMWi9LmKsuQUwfbPePS2y7rv+kmR/NZ+rioKzoGT85PwCiRXC5
	sggd5ePBw/lteAp9ZWKH5brOmnbJHJmjhX/Twp6rMlXq2yzZePGToKuMVojHfmctCGpxDQVxWpr49
	9kyEKoLlTwviWw6nQOrmwSO9CeiMfbcoNv0gs6TRADlnbiFFfAP98ojc8vypeh9OCRumyT/A/WFaQ
	YchCYh1zij9/g5r46vSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyczb-00Eiof-HP; Wed, 30 Jun 2021 16:23:15 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczV-00Eiks-KT
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:11 +0000
Received: by mail-ed1-x532.google.com with SMTP id t3so4047889edt.12
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HFWV96FCBws5/qM3cgbgSGAba72Bo2J76/AXkWx2LDo=;
 b=V5K9BzcSixIe5CNPMXBA+P4U83CXLbI4XMgUdnzW6A/tPwqw/I6/jBPA0TTpuzqflp
 xvzZ8E2dHnjqVj1DNUL+5uYE7MSHffu1gCaPtKi8LDGW06GQ5xHG0ISyzLv/+qXiH+77
 eLySOCDOXQBrOmSzdHBl8S8bx8my6m2dXg9nyajDQxSXihNIZDRVqogUic3mUSoLP+dv
 P1qjzdxjTMlpsU3dEHqElxcD2Y0hh0h1aG9KRYSE3i6smjNbfo5kjeNuCbb7zmXMQuNz
 kgJRblBfTJlR/5lPgs6c3cb7XxLkhNbU91mQG7VtXI0vSB89InEUg5TOFWuP+QZYga48
 Vtlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HFWV96FCBws5/qM3cgbgSGAba72Bo2J76/AXkWx2LDo=;
 b=jJCmYx7PlDfFLLqrFxMlfoYwE6exsQNW4FDwY/RIbST85UDwFmDcwm5cV/pLSjIZMp
 /nIE24VF2BG65048WLQenjRd14LgZJvGljxVUronV5d9DHdkaUmv3KiECQh6C+9Gdp+K
 oEsFZjd0NZn6D5IluYtK2etP9nN7Im/fO5ovhjnoX8Y2JGAqg7eED0uy/3siSLnuSQed
 UBOusVmv6OpuKSnnDshTk/Fu6BU4wh+vYwTCcXTIDpFDoFxfDCPDRJkz2/c9OSFskyWA
 M3Sp6diZfzVBJP2jhxPDreXN6SG2K6kkQvh2GdghGfHRBtMOWeiZT6z7yUcYkJ7NUdq3
 WA1Q==
X-Gm-Message-State: AOAM531M2IEv/k1VowzpU/RPJeWxYT/FiimEgAxD9hQCaJOiXL7cB+j3
 R8CrXcVt+yun4a4CBRbPKr4=
X-Google-Smtp-Source: ABdhPJw45W52nHB0DPHzB19630p/d9XavLU4SwIB8lrqHXvJQVVSeMWZYEqGXsBDiFz4v68y/q+AaQ==
X-Received: by 2002:a05:6402:2552:: with SMTP id
 l18mr23316471edb.363.1625070188124; 
 Wed, 30 Jun 2021 09:23:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.23.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 6/6] arm: dts: rockchip: add rk3318 A95X Z2 board
Date: Wed, 30 Jun 2021 18:22:51 +0200
Message-Id: <20210630162251.7378-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
References: <20210630162251.7378-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092309_719640_25BBFFA1 
X-CRM114-Status: GOOD (  17.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rk3318 A95X Z2 boards are sold as TV box.
No further documentation is given, but from the dts files
extracted it seems that the rk3318 processor is simulair
to the rk3328. This dts file contains only the basic nodes
that have support in the mainline kernel. Included extra
dtsi file for U-boot specific properties.

Features:

CPU: RK3318 Quad-Core Cortex-A53
GPU: Mali-450
RAM: 2/4GB DDR3
ROM: EMMC 16/32/64GB
HDMI: HDMI 2.0a for 4k@60Hz
Ethernet: 10/100M standard RJ-45
WiFi: 2.4G+5G WIFI, 802.11 b/g/n
Bluetooth: 4.0
1 x USB 3.0
1 x USB 2.0
1 x Micro SD card slot
1 x SPDIF
1 x AV
1 x DC IN

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/Makefile                   |   1 +
 arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi |  59 +++++
 arch/arm/dts/rk3318-a95x-z2.dts         | 384 ++++++++++++++++++++++++++++++++
 3 files changed, 444 insertions(+)
 create mode 100644 arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3318-a95x-z2.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 9918e46633..3e1e2209b7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -107,6 +107,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3308) += \
 	rk3308-roc-cc.dtb
 
 dtb-$(CONFIG_ROCKCHIP_RK3328) += \
+	rk3318-a95x-z2.dtb \
 	rk3328-evb.dtb \
 	rk3328-nanopi-r2s.dtb \
 	rk3328-roc-cc.dtb \
diff --git a/arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi b/arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
new file mode 100644
index 0000000000..5010925e9a
--- /dev/null
+++ b/arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include "rk3328-u-boot.dtsi"
+#include "rk3328-sdram-ddr3-666.dtsi"
+
+/ {
+	chosen {
+		u-boot,spl-boot-order = "same-as-spl", &sdmmc, &emmc;
+	};
+
+	smbios {
+		compatible = "u-boot,sysinfo-smbios";
+
+		smbios {
+			system {
+				manufacturer = "zkmagic";
+				product = "a95x-z2_rk3318";
+			};
+
+			baseboard {
+				manufacturer = "zkmagic";
+				product = "a95x-z2_rk3318";
+			};
+
+			chassis {
+				manufacturer = "zkmagic";
+				product = "a95x-z2_rk3318";
+			};
+		};
+	};
+};
+
+&gmac2phy {
+	status = "broken";
+};
+
+&gpio0 {
+	u-boot,dm-spl;
+};
+
+&pcfg_pull_up_4ma {
+	u-boot,dm-spl;
+};
+
+&pinctrl {
+	u-boot,dm-spl;
+};
+
+&sdmmc0m1_pin {
+	u-boot,dm-spl;
+};
+
+&usb20_otg {
+	dr_mode = "otg";
+};
+
+&vcc_sd {
+	u-boot,dm-spl;
+};
diff --git a/arch/arm/dts/rk3318-a95x-z2.dts b/arch/arm/dts/rk3318-a95x-z2.dts
new file mode 100644
index 0000000000..d41f786b2f
--- /dev/null
+++ b/arch/arm/dts/rk3318-a95x-z2.dts
@@ -0,0 +1,384 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include "rk3328.dtsi"
+
+/ {
+	model = "A95X Z2";
+	compatible = "zkmagic,a95x-z2", "rockchip,rk3318";
+
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdio;
+		mmc2 = &emmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		recovery {
+			label = "recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <17000>;
+		};
+	};
+
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&ir_int>;
+		pinctrl-names = "default";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&cyx_led_pin>;
+		pinctrl-names = "default";
+
+		cyx_led: led-0 {
+			default-state = "on";
+			gpios = <&gpio2 RK_PC7 GPIO_ACTIVE_LOW>;
+			label = "CYX_LED";
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-0 = <&wifi_enable_h>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+
+	spdif-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "SPDIF";
+
+		simple-audio-card,cpu {
+			sound-dai = <&spdif>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&spdif_out>;
+		};
+	};
+
+	spdif_out: spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+	};
+
+	/* Power tree */
+	vccio_1v8: vccio-1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	vccio_3v3: vccio-3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	vcc_otg_vbus: otg-vbus-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&otg_vbus_drv>;
+		pinctrl-names = "default";
+		regulator-name = "vcc_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	vcc_sd: sdmmc-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
+		pinctrl-names = "default";
+		regulator-name = "vcc_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vccio_3v3>;
+	};
+
+	vdd_arm: vdd-arm {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_arm";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 1>;
+		regulator-name = "vdd_log";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&analog_sound {
+	status = "okay";
+};
+
+&codec {
+	status = "okay";
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
+&cpu0_opp_table {
+	opp-1200000000 {
+		status = "disabled";
+	};
+
+	opp-1296000000 {
+		status = "disabled";
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	non-removable;
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&gmac2phy {
+	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
+	assigned-clock-rate = <50000000>;
+	assigned-clocks = <&cru SCLK_MAC2PHY>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_log>;
+};
+
+&hdmi {
+	ddc-i2c-scl-high-time-ns = <9625>;
+	ddc-i2c-scl-low-time-ns = <10000>;
+	status = "okay";
+};
+
+&hdmiphy {
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2s0 {
+	status = "okay";
+};
+
+&i2s1 {
+	status = "okay";
+};
+
+&io_domains {
+	pmuio-supply = <&vccio_3v3>;
+	vccio1-supply = <&vccio_3v3>;
+	vccio2-supply = <&vccio_1v8>;
+	vccio3-supply = <&vccio_3v3>;
+	vccio4-supply = <&vccio_1v8>;
+	vccio5-supply = <&vccio_3v3>;
+	vccio6-supply = <&vccio_3v3>;
+	status = "okay";
+};
+
+&pinctrl {
+	ir {
+		ir_int: ir-int {
+			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		cyx_led_pin: cyx-led-pin {
+			rockchip,pins = <2 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		pwm0_pin_pull_up: pwm0-pin-pull-up {
+			rockchip,pins = <2 RK_PA4 1 &pcfg_pull_up>;
+		};
+	};
+
+	pwm1 {
+		pwm1_pin_pull_up: pwm1-pin-pull-up {
+			rockchip,pins = <2 RK_PA5 1 &pcfg_pull_up>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1 {
+		clk_32k_out: clk-32k-out {
+			rockchip,pins = <1 RK_PD4 1 &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		host_vbus_drv: host-vbus-drv {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	pinctrl-0 = <&pwm0_pin_pull_up>;
+	pinctrl-names = "active";
+	status = "okay";
+};
+
+&pwm1 {
+	pinctrl-0 = <&pwm1_pin_pull_up>;
+	pinctrl-names = "active";
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vccio_1v8>;
+	status = "okay";
+};
+
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	max-frequency = <125000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk &clk_32k_out>;
+	pinctrl-names = "default";
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_dectn &sdmmc0_bus4>;
+	pinctrl-names = "default";
+	vmmc-supply = <&vcc_sd>;
+	status = "okay";
+};
+
+&spdif {
+	pinctrl-0 = <&spdifm0_tx>;
+	status = "okay";
+};
+
+&soc_crit {
+	temperature = <115000>; /* millicelsius */
+};
+
+&target {
+	temperature = <105000>; /* millicelsius */
+};
+
+&threshold {
+	temperature = <90000>; /* millicelsius */
+};
+
+&tsadc {
+	rockchip,hw-tshut-temp = <120000>;
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	status = "okay";
+};
+
+&u2phy_otg {
+	phy-supply = <&vcc_otg_vbus>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb20_otg {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbdrd3 {
+	dr_mode = "host";
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
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
