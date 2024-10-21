Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E683D15D98
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 14:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S1Ikb0yUzk/lhMpItZZENKEgYpiSmk6Tx8AaQbYJuiQ=; b=zfx
	nr1fn2Zqwd7Lc3zz8+gpKKgdMOCv0t4V4Pajmly9bh5h7MLLKM8ELa0kY3fHkqVVlzyLWviQgSwh9
	8CpkyyW4iBIYzLqICxKkWvrsi9eaHlzgas6eHng6GyX+kRRver0ptwITM2xBZQVF1NL/0fi35zaRu
	0BNeGSmNHWr4Bhtnl/cv389H6oXtL/QlvUae1lOBWo6OqoHmCY9wxLL4SF+yiElWuNG+f8H77aNUU
	cluBtK7d4QWHOsKZPbmTcCXjptqg51SPMENXKNg9mKOmncVazarMvvETP6pgXMvEQfL2YcejFHR40
	hsHbsLLTVEopyFhohJF2cNBxeIl+vNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sws-00000007WbS-0yPx;
	Mon, 21 Oct 2024 13:59:54 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sbQ-00000007RVo-2CsN
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 13:37:46 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-539f8490856so4732461e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Oct 2024 06:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729517862; x=1730122662; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tnKriZiWGm7T3mH4EjB03EnNUCGH2cBP/vsocRhQXh0=;
        b=gudv1MGdKOQndgXtDvjzARuXPn4UKNMOO5yJiijlINx+OgZGndTXScyfuKAxAj02V9
         P8qr+fRPDJMmCGcr0GlS/69hVA0F2imwf4+zfrvboXAaRXql+o05g+4MsYhuocyOt2iN
         6LsiC+yA7K5jdRE/VVU969zaEpZrVTn80kF7/rvYmhK1BQseAYs6ISGKMK2bcL9coTnF
         1lLmcIdVKq/pSc0JLojtFbU/AfqwLQFc70gfU/+1RNzafG+81WzvPmbpbOb0ob9qlev4
         ug7wj1HPaP0Qj09c4Mow/V5EagZ+XcC7NCV7nCa5fhwY98ZG0fg8fPrG7flf1DilHUKc
         utQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729517862; x=1730122662;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tnKriZiWGm7T3mH4EjB03EnNUCGH2cBP/vsocRhQXh0=;
        b=TN+zIOCLxb++J3XC+qoqnSvSw+KOAgQ+rR76xu/aJr9MmyfVANX5CJvTqNqP1srPzB
         OwV4rVInLYLvNfUqDexJwMd+r+aOT+ZAd1EloifledD8ITGiztCT84JLtb4HKGLQL4q3
         YULPFHH9CJ2D0m8FWjb0kC/pr94MNKLjFQRpVwskKbKoC+i0b7pbtzwf7AQZrA0+I55i
         ebT6FB08tb2ttmmXMBG6id7gIt1PhI6fdSLTMYnJsccL2R7myyzKExDR26kmbVi0yq0W
         9lRQJr0NSdYYCzrf7FlCSDCB/CFbfBGwjFrCedhHb2Eg27Qzv5t0YGBCbX65BcQWIpG9
         ItIw==
X-Gm-Message-State: AOJu0YwmCjVjWQOp3G88H19Zun+nqDLR5UzSE2PVW9W1TCgnQBlBMf02
	UHSYug50KCrzaBM0FgObCiFuYe+xY55oTe6mTF19caOA5BCuTyFhuDytA/MAioRZ3R1NbYGE8OI
	ja14Jt669XN6fGwCxkRK97WxJXggs
X-Google-Smtp-Source: AGHT+IFKOi5lFNfCv31kUz7Od8IFRzHwJBYTE7R6SrqtAflwPaZuuAUYo5PAeUCBdkA1wEI6JSmKNZi4m+bfB4jI+zA=
X-Received: by 2002:a05:6512:3e04:b0:539:f593:c19e with SMTP id
 2adb3069b0e04-53a15509561mr4556281e87.60.1729517861752; Mon, 21 Oct 2024
 06:37:41 -0700 (PDT)
MIME-Version: 1.0
From: John The Cooling Fan <ivan8215145640@gmail.com>
Date: Mon, 21 Oct 2024 16:37:30 +0300
Message-ID: <CAKx_Wg6eAeifdJVxWGwWCjj2gChufH8HmCkEGELD0b1NNHnpKA@mail.gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add board device tree for rk3566-bigtreetech-cb2
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_063744_626983_C7FC467A 
X-CRM114-Status: GOOD (  10.42  )
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

---
 .../dts/rockchip/rk3566-
bigtreetech-cb2.dts   | 913 ++++++++++++++++++
 1 file changed, 913 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts
b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts
new file mode 100644
index 000000000000..00332198673f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts
@@ -0,0 +1,913 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 BigTree Tech Co., LTD
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+
+#include "rk3566.dtsi"
+
+/ {
+ model = "BigTreeTech CB2";
+ compatible = "bigtreetech,cb2", "rockchip,rk3566";
+
+ aliases {
+ serial0 = &uart0;
+ };
+
+ chosen {
+ stdout-path = "serial0:1500000n8";
+ };
+
+ hdmi-con {
+ compatible = "hdmi-connector";
+ type = "a";
+
+ port {
+ hdmi_con_in: endpoint {
+ remote-endpoint = <&hdmi_out_con>;
+ };
+ };
+ };
+
+ leds {
+ compatible = "gpio-leds";
+
+ led_power: led-power {
+ gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_LOW>;
+ label = "led_power";
+ linux,default-trigger = "default-on";
+ pinctrl-names = "default";
+ pinctrl-0 = <&led_power_en>;
+ };
+
+ led_work: led-work {
+ gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+ label = "led_work";
+ linux,default-trigger = "heartbeat";
+ pinctrl-names = "default";
+ pinctrl-0 = <&led_work_en>;
+ };
+ };
+
+ rk809_sound: rk809-sound {
+ status = "okay";
+ compatible = "simple-audio-card";
+ simple-audio-card,format = "i2s";
+ simple-audio-card,name = "rockchip,rk809-codec";
+ simple-audio-card,mclk-fs = <256>;
+ simple-audio-card,widgets =
+ "Microphone", "Microphone Jack",
+ "Headphones", "Headphones Jack";
+ simple-audio-card,routing =
+ "Mic Jack", "MICBIAS1",
+ "IN1R", "Mic Jack",
+ "Headphone Jack", "HPOL",
+ "Headphone Jack", "HPOR";
+ simple-audio-card,cpu {
+ sound-dai = <&i2s1_8ch>;
+ };
+ simple-audio-card,codec {
+ sound-dai = <&rk809>;
+ };
+ };
+
+ dc_12v: dc-12v {
+ compatible = "regulator-fixed";
+ regulator-name = "dc_12v";
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <12000000>;
+ regulator-max-microvolt = <12000000>;
+ };
+
+ vcc3v3_sys: vcc3v3-sys {
+ compatible = "regulator-fixed";
+ regulator-name = "vcc3v3_sys";
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <3300000>;
+ regulator-max-microvolt = <3300000>;
+ vin-supply = <&dc_12v>;
+ };
+
+ vcc5v0_sys: vcc5v0-sys {
+ compatible = "regulator-fixed";
+ regulator-name = "vcc5v0_sys";
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <5000000>;
+ regulator-max-microvolt = <5000000>;
+ vin-supply = <&dc_12v>;
+ };
+
+ vcc5v0_host: vcc5v0-host-regulator {
+ compatible = "regulator-fixed";
+ enable-active-high;
+ gpio = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&vcc5v0_host_vbus_en>;
+ regulator-name = "vcc5v0_host";
+ regulator-boot-on;
+ regulator-always-on;
+
+ };
+
+ vcc5v0_host2: vcc5v0-host2-regulator {
+ compatible = "regulator-fixed";
+ enable-active-high;
+ gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&vcc5v0_host2_vbus_en>;
+ regulator-name = "vcc5v0_host";
+ regulator-boot-on;
+ regulator-always-on;
+
+ };
+
+ vcc5v0_host3: vcc5v0-host3-regulator {
+ compatible = "regulator-fixed";
+ enable-active-high;
+ gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&vcc5v0_host3_vbus_en>;
+ regulator-name = "vcc5v0_host";
+ regulator-boot-on;
+ regulator-always-on;
+
+ };
+
+ vcc5v0_otg: vcc5v0-otg-regulator {
+ compatible = "regulator-fixed";
+ enable-active-high;
+ gpio = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&vcc5v0_otg_en>;
+ regulator-name = "vcc5v0_otg";
+ };
+
+ vcc3v3_pcie: vcc3v3-pcie-regulator {
+ compatible = "regulator-fixed";
+ enable-active-high;
+ gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&pcie_enable_h>;
+ regulator-name = "vcc3v3_pcie";
+ regulator-min-microvolt = <3300000>;
+ regulator-max-microvolt = <3300000>;
+ vin-supply = <&vcc5v0_sys>;
+ };
+
+ sdio_pwrseq: sdio-pwrseq {
+ compatible = "mmc-pwrseq-simple";
+ clocks = <&rk809 1>;
+ clock-names = "ext_clock";
+ pinctrl-names = "default";
+ pinctrl-0 = <&wifi_enable_h &wifi_32k>;
+ reset-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
+ };
+
+ gmac1_clkin: external-gmac1-clock {
+ compatible = "fixed-clock";
+ clock-frequency = <125000000>;
+ clock-output-names = "gmac1_clkin";
+ #clock-cells = <0>;
+ };
+
+ mcp2515_clock: mcp2515_clock {
+ compatible = "fixed-clock";
+ #clock-cells = <0>;
+ clock-frequency  = <12000000>;
+ };
+};
+
+&combphy1 {
+ status = "okay";
+};
+
+&combphy2 {
+ status = "okay";
+};
+
+&cpu0 {
+ cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+ cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+ cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+ cpu-supply = <&vdd_cpu>;
+};
+
+&dsi_dphy1 {
+ status = "okay";
+};
+
+&dsi1 {
+ status = "okay";
+ #address-cells = <1>;
+ #size-cells = <0>;
+
+ panel@0 {
+ compatible = "btt-pitft";
+ reg = <0x0>;
+ status = "okay";
+ vddc-supply = <&reg_display>;
+ #address-cells = <1>;
+ #size-cells = <0>;
+
+ ports {
+ #address-cells = <1>;
+ #size-cells = <0>;
+
+ port@0 {
+ reg = <0>;
+ panel_in: endpoint {
+ remote-endpoint = <&mipi_dsi_out>;
+ };
+ };
+ };
+ };
+
+ ports {
+ #address-cells = <1>;
+ #size-cells = <0>;
+ dsi1_in: port@0 {
+ reg = <0>;
+
+ dsi1_in_vp1: endpoint {
+ remote-endpoint = <&vp1_out_dsi1>;
+ };
+ };
+
+ dsi1_out: port@1 {
+ reg = <1>;
+
+ mipi_dsi_out: endpoint {
+ remote-endpoint = <&panel_in>;
+ };
+ };
+ };
+};
+
+&gmac1 {
+ assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru
SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
+ assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru
SCLK_GMAC1>, <&gmac1_clkin>;
+ clock_in_out = "input";
+ phy-supply = <&vcc_3v3>;
+ phy-mode = "rgmii";
+ pinctrl-names = "default";
+ pinctrl-0 = <&gmac1m0_miim
+     &gmac1m0_tx_bus2
+     &gmac1m0_rx_bus2
+     &gmac1m0_rgmii_clk
+     &gmac1m0_clkinout
+     &gmac1m0_rgmii_bus>;
+ snps,reset-gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
+ snps,reset-active-low;
+ snps,reset-delays-us = <0 20000 100000>;
+ tx_delay = <0x19>;
+ rx_delay = <0x05>;
+ phy-handle = <&yt8531c>;
+ status = "okay";
+};
+
+&gpu {
+ mali-supply = <&vdd_gpu>;
+ status = "okay";
+};
+
+&hdmi {
+ avdd-0v9-supply = <&vdda0v9_image>;
+ avdd-1v8-supply = <&vcca1v8_image>;
+ status = "okay";
+};
+
+&hdmi_in {
+ hdmi_in_vp0: endpoint {
+ remote-endpoint = <&vp0_out_hdmi>;
+ };
+};
+
+&hdmi_out {
+ hdmi_out_con: endpoint {
+ remote-endpoint = <&hdmi_con_in>;
+ };
+};
+
+&hdmi_sound {
+ status = "okay";
+};
+
+&i2c0 {
+ status = "okay";
+
+ vdd_cpu: regulator@1c {
+ compatible = "tcs,tcs4525";
+ reg = <0x1c>;
+ fcs,suspend-voltage-selector = <1>;
+ regulator-name = "vdd_cpu";
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <712500>;
+ regulator-max-microvolt = <1390000>;
+ regulator-ramp-delay = <2300>;
+ vin-supply = <&vcc5v0_sys>;
+
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ rk809: pmic@20 {
+ compatible = "rockchip,rk809";
+ reg = <0x20>;
+ interrupt-parent = <&gpio0>;
+ interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+ pinctrl-names = "default";
+ pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
+
+ rockchip,system-power-controller;
+ wakeup-source;
+ #clock-cells = <1>;
+ clock-output-names = "rk808-clkout1", "rk808-clkout2";
+ #sound-dai-cells = <0>;
+
+ vcc1-supply = <&vcc3v3_sys>;
+ vcc2-supply = <&vcc3v3_sys>;
+ vcc3-supply = <&vcc3v3_sys>;
+ vcc4-supply = <&vcc3v3_sys>;
+ vcc5-supply = <&vcc3v3_sys>;
+ vcc6-supply = <&vcc3v3_sys>;
+ vcc7-supply = <&vcc3v3_sys>;
+ vcc8-supply = <&vcc3v3_sys>;
+ vcc9-supply = <&vcc3v3_sys>;
+
+ rtc_rk808: rk808_rtc {
+ compatible = "rk808-rtc";
+ status = "disabled";
+ };
+
+ regulators {
+ vdd_log: DCDC_REG1 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <500000>;
+ regulator-max-microvolt = <1350000>;
+ regulator-ramp-delay = <6001>;
+ regulator-initial-mode = <0x2>;
+ regulator-name = "vdd_log";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vdd_gpu: DCDC_REG2 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <900000>;
+ regulator-max-microvolt = <1350000>;
+ regulator-ramp-delay = <6001>;
+ regulator-initial-mode = <0x2>;
+ regulator-name = "vdd_gpu";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vcc_ddr: DCDC_REG3 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-initial-mode = <0x2>;
+ regulator-name = "vcc_ddr";
+ regulator-state-mem {
+ regulator-on-in-suspend;
+ };
+ };
+
+ vdd_npu: DCDC_REG4 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <900000>;
+ regulator-max-microvolt = <1350000>;
+ regulator-ramp-delay = <6001>;
+ regulator-initial-mode = <0x2>;
+ regulator-name = "vdd_npu";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vdda0v9_image: LDO_REG1 {
+ regulator-boot-on;
+ regulator-always-on;
+ regulator-min-microvolt = <900000>;
+ regulator-max-microvolt = <900000>;
+ regulator-name = "vdda0v9_image";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vdda_0v9: LDO_REG2 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <900000>;
+ regulator-max-microvolt = <900000>;
+ regulator-name = "vdda_0v9";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vdda0v9_pmu: LDO_REG3 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <900000>;
+ regulator-max-microvolt = <900000>;
+ regulator-name = "vdda0v9_pmu";
+ regulator-state-mem {
+ regulator-on-in-suspend;
+ regulator-suspend-microvolt = <900000>;
+ };
+ };
+
+ vccio_acodec: LDO_REG4 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <3300000>;
+ regulator-max-microvolt = <3300000>;
+ regulator-name = "vccio_acodec";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vccio_sd: LDO_REG5 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <1800000>;
+ regulator-max-microvolt = <3300000>;
+ regulator-name = "vccio_sd";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vcc3v3_pmu: LDO_REG6 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <3300000>;
+ regulator-max-microvolt = <3300000>;
+ regulator-name = "vcc3v3_pmu";
+ regulator-state-mem {
+ regulator-on-in-suspend;
+ regulator-suspend-microvolt = <3300000>;
+ };
+ };
+
+ vcca_1v8: LDO_REG7 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <1800000>;
+ regulator-max-microvolt = <1800000>;
+ regulator-name = "vcca_1v8";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vcca1v8_pmu: LDO_REG8 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <1800000>;
+ regulator-max-microvolt = <1800000>;
+ regulator-name = "vcca1v8_pmu";
+ regulator-state-mem {
+ regulator-on-in-suspend;
+ regulator-suspend-microvolt = <1800000>;
+ };
+ };
+
+ vcca1v8_image: LDO_REG9 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <1800000>;
+ regulator-max-microvolt = <1800000>;
+ regulator-name = "vcca1v8_image";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vcc_1v8: DCDC_REG5 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-min-microvolt = <1800000>;
+ regulator-max-microvolt = <1800000>;
+ regulator-name = "vcc_1v8";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vcc_3v3: SWITCH_REG1 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-name = "vcc_3v3";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+
+ vcc3v3_sd: SWITCH_REG2 {
+ regulator-always-on;
+ regulator-boot-on;
+ regulator-name = "vcc3v3_sd";
+ regulator-state-mem {
+ regulator-off-in-suspend;
+ };
+ };
+ };
+ };
+};
+
+&i2c2 {
+ status = "okay";
+ pinctrl-names = "default";
+ clock-frequency = <100000>;
+ pinctrl-0 = <&i2c2m1_xfer>;
+ avdd-1v8-supply = <&vcca1v8_image>;
+ avdd-0v9-supply = <&vdda0v9_image>;
+ power-domains = <&power RK3568_PD_VI>;
+ #address-cells = <1>;
+ #size-cells = <0>;
+
+ reg_display: regulator@45 {
+ compatible = "raspberrypi,7inch-touchscreen-panel-regulator";
+ reg = <0x45>;
+ };
+
+ touchscreen@38 {
+ compatible = "edt,edt-ft5406";
+ reg = <0x38>;
+
+ touchscreen-size-x = <800>;
+ touchscreen-size-y = <480>;
+ touchscreen-inverted-x;
+ touchscreen-inverted-y;
+ };
+};
+
+&i2c3 {
+ pinctrl-names = "default";
+ pinctrl-0 = <&i2c3m0_xfer>;
+ status = "okay";
+};
+
+&i2s0_8ch {
+ status = "okay";
+};
+
+&i2s1_8ch {
+ status = "okay";
+ rockchip,clk-trcm = <1>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&i2s1m0_sclktx
+     &i2s1m0_lrcktx
+     &i2s1m0_sdi0
+     &i2s1m0_sdo0>;
+};
+
+&i2s2_2ch {
+ status = "okay";
+};
+
+&spdif {
+ status = "okay";
+};
+
+&mdio1 {
+ yt8531c: ethernet-phy@0 {
+ compatible = "ethernet-phy-id4f51.e91b", "ethernet-phy-ieee802.3-c22";
+ reg = <0x0>;
+ motorcomm,clk-out-frequency-hz = <125000000>;
+ };
+};
+
+&pcie2x1 {
+ reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&pcie_reset_h>;
+ vpcie3v3-supply = <&vcc3v3_pcie>;
+ status = "okay";
+};
+
+&spi1 {
+ status = "disabled";
+ pinctrl-names = "default";
+ pinctrl-0 = <&spi1m1_pins>;
+ cs-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>,
+   <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+
+ can: mcp2515@0 {
+ status = "disabled";
+ compatible = "microchip,mcp2515";
+ reg = <0x0>;
+ clocks = <&mcp2515_clock>;
+ spi-max-frequency = <10000000>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&can0_pin_irq>;
+ interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+ interrupt-parent = <&gpio4>;
+ vdd-supply = <&vcc3v3_sys>;
+ xceiver-supply = <&vcc3v3_sys>;
+ };
+
+ tft_35: st7796@1 {
+ status = "disabled";
+ compatible = "sitronix,st7796s";
+ dc-gpios  = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+ reg = <1>;
+ spi-max-frequency =<10000000>;
+ fps =<60>;
+ buswidth = <8>;
+ rotate =<0>;
+ width = <480>;
+ height = <320>;
+ bpp = <24>;
+ bgr;
+ regwidth = <8>;
+ debug = <0x00>;
+ txbuflen = <307200>;
+ spi-cpol;
+ spi-cpha;
+ };
+};
+
+&pinctrl {
+ leds {
+ led_power_en: led-power-en {
+ rockchip,pins = <4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ led_work_en: led-work-en {
+ rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+ };
+
+ bt {
+ bt_enable_h: bt-enable-h {
+ rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ bt_host_wake_l: bt-host-wake-l {
+ rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_down>;
+ };
+
+ bt_wake_l: bt-wake-l {
+ rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+ };
+
+ pcie {
+ pcie_enable_h: pcie-enable-h {
+ rockchip,pins = <4 RK_PB1  RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ pcie_reset_h: pcie-reset-h {
+ rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+ };
+
+ pmic {
+ pmic_int: pmic-int {
+ rockchip,pins =
+ <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+ };
+ };
+
+ sdio-pwrseq {
+ wifi_enable_h: wifi-enable-h {
+ rockchip,pins =<2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ wifi_host_wake: wifi-host-wake {
+ rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
+ };
+
+ wifi_32k: wifi-32k {
+ rockchip,pins = <2 RK_PC6 1 &pcfg_pull_none>;
+ };
+ };
+
+ usb {
+ vcc5v0_otg_en: vcc5v0-otg-en {
+ rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ vcc5v0_host_vbus_en: vcc5v0-host-en {
+ rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ vcc5v0_host2_vbus_en: vcc5v0-host2-en {
+ rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+
+ vcc5v0_host3_vbus_en: vcc5v0-host3-en {
+ rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+ };
+ };
+
+ can {
+ can0_pin_irq: can0-pin-irq {
+ rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+ };
+ };
+};
+
+&pmu_io_domains {
+ status = "okay";
+ pmuio1-supply = <&vcc3v3_pmu>;
+ pmuio2-supply = <&vcc3v3_pmu>;
+ vccio1-supply = <&vccio_acodec>;
+ vccio3-supply = <&vccio_sd>;
+ vccio4-supply = <&vcc_1v8>;
+ vccio5-supply = <&vcc_3v3>;
+ vccio6-supply = <&vcc_1v8>;
+ vccio7-supply = <&vcc_3v3>;
+};
+
+&saradc {
+ vref-supply = <&vcca_1v8>;
+ status = "okay";
+};
+
+&sdhci {
+ bus-width = <8>;
+ supports-emmc;
+ non-removable;
+ max-frequency = <200000000>;
+ status = "okay";
+};
+
+&sdmmc0 {
+ max-frequency = <150000000>;
+ supports-sd;
+ bus-width = <4>;
+ cap-mmc-highspeed;
+ cap-sd-highspeed;
+ disable-wp;
+ sd-uhs-sdr104;
+ vmmc-supply = <&vcc3v3_sd>;
+ vqmmc-supply = <&vccio_sd>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+ status = "okay";
+};
+
+&sdmmc1 {
+ /* WiFi & BT combo module AMPAK AP6256 */
+ #address-cells = <1>;
+ #size-cells = <0>;
+ bus-width = <4>;
+ clock-frequency = <150000000>;
+ cap-sdio-irq;
+ cap-sd-highspeed;
+ sd-uhs-sdr104;
+ keep-power-in-suspend;
+ mmc-pwrseq = <&sdio_pwrseq>;
+ non-removable;
+ pinctrl-names = "default";
+ pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
+ vmmc-supply = <&vcc_3v3>;
+ vqmmc-supply = <&vcca_1v8>;
+ status = "okay";
+
+ brcmf: wifi@1 {
+ compatible = "brcm,bcm4329-fmac";
+ reg = <1>;
+ interrupt-parent = <&gpio2>;
+ interrupts = <RK_PB1 IRQ_TYPE_LEVEL_HIGH>;
+ interrupt-names = "host-wake";
+ pinctrl-names = "default";
+ pinctrl-0 = <&wifi_host_wake>;
+ };
+};
+
+&tsadc {
+ status = "okay";
+};
+
+&uart1 {
+ pinctrl-names = "default";
+ pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
+ uart-has-rtscts;
+ status = "okay";
+
+ bluetooth {
+ compatible = "brcm,bcm4345c5";
+ clocks = <&rk809 1>;
+ clock-names = "lpo";
+ device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+ host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+ shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
+ pinctrl-names = "default";
+ pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+ vbat-supply = <&vcc3v3_sys>;
+ vddio-supply = <&vcca_1v8>;
+ };
+};
+
+&uart2 {
+ status = "okay";
+};
+
+&usb2phy0_host {
+ phy-supply = <&vcc5v0_host>;
+ status = "okay";
+};
+
+&usb2phy0_otg {
+ phy-supply = <&vcc5v0_otg>;
+ status = "okay";
+};
+
+&usb2phy1_host {
+ phy-supply = <&vcc5v0_host2>;
+ status = "okay";
+};
+
+&usb2phy1_otg {
+ phy-supply = <&vcc5v0_host3>;
+ status = "okay";
+};
+
+&usb2phy0 {
+ status = "okay";
+};
+
+&usb2phy1 {
+ status = "okay";
+};
+
+&usb_host0_xhci {
+ status = "okay";
+};
+
+&usb_host1_xhci {
+ status = "okay";
+};
+
+&usb_host0_ehci {
+ status = "okay";
+};
+
+&usb_host0_ohci {
+ status = "okay";
+};
+
+&usb_host1_ehci {
+ status = "okay";
+};
+
+&usb_host1_ohci {
+ status = "okay";
+};
+
+&vop {
+ status = "okay";
+ assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+ assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+ disable-win-move;
+
+};
+
+&vop_mmu {
+ status = "okay";
+};
+
+&vp0 {
+ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+ reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+ remote-endpoint = <&hdmi_in_vp0>;
+ };
+};
+
+&vp1 {
+ vp1_out_dsi1: endpoint@ROCKCHIP_VOP2_EP_MIPI1 {
+ reg = <ROCKCHIP_VOP2_EP_MIPI1>;
+ remote-endpoint = <&dsi1_in_vp1>;
+ };
+};
--
2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
