Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C8F1E95396
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 13:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nGEvOgPMShvClcCfv/jIQy3wM/tGzfPSwCCdL63zJ8=; b=HnJT541wLD0OhI
	YpdlhpwD3VPBbaZSb8EQ6jB1A6X4N36T53ALvasnghsTUvB9LAYu/c83/e/qp46V/mmHuOxxC06vU
	GrZYM+TOGFGL2zJdfvtdgjnVmqqD+UtIt8/St7rv5JPYDaqCu3NknrORPbdMvfTBMT1sAovTucroN
	GLycV7x1+b+c4dIetvpe57GAxjJD64ZdKTwdj80L26+gHlY/e6WA9qZZJmlWI44CwMSf2YFMzUWMC
	SPLftMJS5rWFfI/YEK+P319T23HUtU4fiqRqSoW4ldeVJXeuAjeYki+7gejxI4gkbZMnv9kk1DOqO
	ktjKyckHGU2/DsNygP1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuf-00000008VdG-1MAx;
	Wed, 04 Feb 2026 13:27:21 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuc-00000008Va9-2HIf
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 13:27:20 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-34be2be4b7cso3670250a91.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Feb 2026 05:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211637; x=1770816437; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJG5+ILVKGmt9JtEwJJ6zbB4IjqEYgnBpXtMi1ZuCl8=;
        b=Q+ParTqHWQ7tJlWdk7FJpZfa2Hbd+GNkVyUybLUwdgYWC3J6rzdL7rWRFpGS9orJMm
         gRl7LfNPH7J8fWYsIyI5GWBOPn+zujULiCSqfAxhwGDTnIm/gvsRNzNTMhQCJqslUjIz
         c2jxHjRTvbr5we2Iz9bkzTHOD4zm3U7X2skFtKI7ZfiVQFJCe0SN2N1HRpqBf7MUZiLn
         qxgbDZSnSZE4iXOH2/t67pY00rO2O4F72qArIWVWWuNUe4q5wsgCkJAo1IG6cPymx5yg
         ijia+8uWsBRtl75U4KouMADF+yZaEduSTX3MZTtjIjs0vLoDf3I1D+yzupniCJNE5O4P
         pH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211637; x=1770816437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KJG5+ILVKGmt9JtEwJJ6zbB4IjqEYgnBpXtMi1ZuCl8=;
        b=v1VqGsL6zvCs32q0K/wIbVb93/Ve/7WgumoWAGZdAn+jWCwqISTrJfGmqu5wgxnWnS
         VK2S31+Zw6/S44x+NLEVFXuCpsLrI0OTTvEHPZPEAjfPBguDSDJ0o0x5FuRftWyUA5CO
         7kUd6En6dIxyKJ0snjzBPJZe21unMOMo20pMRu4fr/Ew8pxbyDVId1z57FpjpCC465r5
         M7uabHW9pQETBJmsE5hNl2wIk+8Ke3MEwWG6+g5ejSjb+hQqMb92b4XjCaPpez4c+2zR
         w/5cwMiRrXRzPOcSbiiIWKIYdLXn+y6Am95B+E8Y0eLsepdx2sdqnNrN8agWb+NIPx5/
         Q8KQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzL6yheSkX2SEh487NzHDcEPXe+iCcFIPHMvbIlILipgVlJGk5CkHISUyaTCP8N1X+OHhv5FK3bZQBW0vmrw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyks+swP6JyC2BzVnsxHHmMJK8p8IRUtOxzQoOaTDxoikKQFrKW
	HmHEkb4s72RgHfCHWZmQtT3QtSPDvlSJwlNFAOAtwe+4XiobThIVJnSC
X-Gm-Gg: AZuq6aLgt52QEJmUj7l82Q5hGTUJTJuTEtU6FMCqbKFwO8LR/Dw2GCyeBfh8jsIqNQp
	4ntl+iM0yMokESeQKSOJPvIjv+Ml0/+UPt3Z9b4aY7aSTb2mws+2pJAfTnRXOqlkjVzJI3wOH7T
	AKujsa3TBAX51CL2Zs9YcbEZzhxW8VS+/HFgL7P4V5gzM4WV609ph7YvD5gevRhFErOk/pRH+hG
	aaBq3+yhOatALMlFiHcDwxMTNo+EHN1rVZ9ExTxfEW9MBQzhcUmA5kpGxWNjs3SsSRTtXlvzpGx
	9Avdeyg3SbAsqACottAr3o75k2PBBHeCZoKn0S9j8F203WMClAMZ+zTslCzkQl/j4myPoIBrqq4
	1mKLQwqvq6woPVMxs7erxeoim/u2ebK+Uuq7pLrfypo9LD/o3IDxZ0H/Toq8OG8l8FUllGyoYzm
	D0neqMQB8E
X-Received: by 2002:a17:90b:2682:b0:354:5ac4:2d5d with SMTP id 98e67ed59e1d1-354871fbf27mr2411953a91.36.1770211637403;
        Wed, 04 Feb 2026 05:27:17 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:17 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
Date: Wed,  4 Feb 2026 21:26:56 +0800
Message-ID: <20260204132700.329894-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204132700.329894-1-jerrysteve1101@gmail.com>
References: <20260204132700.329894-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_052718_593727_CEF10A9F 
X-CRM114-Status: GOOD (  14.67  )
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

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.

Other than the difference in RAM capacity, the OEC and OEC-turbo are
identical in all other specifications.

  Specification:
    - Rockchip RK3566
    - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
    - eMMC 8GB
    - Gigabit Ethernet port x 1
    - USB 3.0 port x 1
    - USB-C 2.0 port x 1
    - 12V DC Power supply
    - SATA 3.0 connector x 1

These devices do not have a PMIC, and their hardware circuit design
is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
are not available at this time, with the vendor firmware dts available
for reference[2].

Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.

[1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
[2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3566-onething-edge-cube.dts    | 312 ++++++++++++++++++
 2 files changed, 313 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4d384f153c13..71a7ab8e7223 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-edge-cube.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
new file mode 100644
index 000000000000..36462ae2848d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
@@ -0,0 +1,312 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566.dtsi"
+
+/ {
+	model = "OneThing Edge Cube (OEC)/OEC Turbo";
+	compatible = "onething,edge-cube", "rockchip,rk3566";
+
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdhci;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		rgb_led_b: led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		};
+
+		rgb_led_g: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		};
+
+		rgb_led_r: led-2 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	vcc_1v8: regulator-vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_3v3: regulator-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc12v0_dcin: regulator-vcc12v0-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v0_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v3_sys: regulator-vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc12v0_dcin>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v0_dcin>;
+	};
+
+	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en>;
+		regulator-name = "vcc5v0_usb_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_cpu: regulator-vdd-cpu {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_cpu";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_fixed: regulator-vdd-fixed {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_fixed";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_logic: regulator-vdd-logic {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 1>;
+		regulator-name = "vdd_logic";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1100000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+};
+
+
+/* No hardware video output port */
+&display_subsystem {
+	status = "disabled";
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&combphy2 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		    &gmac1m1_tx_bus2
+		    &gmac1m1_rx_bus2
+		    &gmac1m1_rgmii_clk
+		    &gmac1m1_rgmii_bus
+		    &gmac1m1_clkinout>;
+	rx_delay = <0x0>;
+	tx_delay = <0x0>;
+	status = "okay";
+};
+
+&gpu {
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	usb {
+		vcc5v0_usb_host_en: vcc5v0-usb-host-en {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc_3v3>;
+	pmuio2-supply = <&vcc_3v3>;
+	vccio1-supply = <&vcc_1v8>;
+	vccio3-supply = <&vcc_3v3>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
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
+&sata2 {
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
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
+
+&usb_host1_xhci  {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
