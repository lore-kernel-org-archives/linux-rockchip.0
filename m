Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5624BEF99F0
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Feb 2026 02:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mneXBIV5P1a5+KkX7AXkRafBMLg+5i3A7tUSsyFFkYQ=; b=25ypOL5i8nh7y7
	D89aDDiiZiYPruWd4NG7HWysadJax1ykQ7MmLimfT9MBisWiudquyh8HjYwFlgvMR/3LB2Ma0cgrb
	BQiuEfp7vr2hKTY/fTJemV/3CLmRJ/ERK3TekDVUvT+/xPqAzQw+r2lIil+l/Hl2fY00IYJq1Vwa7
	79A7eDzHH2WdmMzAGLoJdBbuu8Ca3G/WZuLxR+TiAcUuSD2XorCT+WHgZBLTPt4bJ1uHxZqzfS6AW
	u9VW1gA324jtQMWAnkkpTjLGUMpQhBc5+dQu+Ka2gwTn9pS0+/29H7x3Pm0AZzB01QfMvoqJdpOBA
	CrbtyoVU08DTXsPVHuAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EO-000000049gQ-0EWg;
	Sat, 14 Feb 2026 02:18:00 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EK-000000049aL-3GVL
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Feb 2026 02:17:58 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-4358fb60802so1048877f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Feb 2026 18:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035475; x=1771640275; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VhO/qYqiosSKExqeNWU5ng7qojbf2T2pdtsPL45D4w=;
        b=fBfO0aPgexkcYOfDzgKE9Yhta74snNNk59roKgy7FVyCspDGWWKAaTTd5wHHQQtBkj
         J/VtTRNiogTJxYGnpdx2edsOGLtORjCQxuI9ZKGltC0FC7Qe/jmurA5ImWnRGwQQAFAh
         eFhSNovar54+VR0D6Vwy/Za6zXnx1Y/sTLXpllH7dfjXNHXOYH2fnElY3yz1YrnWrYeZ
         xPjPk7luuTxsZOosfA6c3jyKOuCm2RL8PYe2IW2vYLBhvblV9iamYfo0wH3xroqXP/2n
         OzEwmgEXdiBVK+IaGYcePIs7yEPPGR5aYtyN4VPzRgmdL0rmZy9QBWnjo3pa+UzbTWGi
         Z8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035475; x=1771640275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6VhO/qYqiosSKExqeNWU5ng7qojbf2T2pdtsPL45D4w=;
        b=XEtrWY5D601OPLs5zF/oRTZlP1OM103T0+sGkg/XNoq3YB3kb3Ioe9DWDw2raMjk2O
         DaFcCwRPgSmOR+sAaTaQtZMQb2r1BBDuVVHLOLIPz+vIBtioL/KSMiVJ0PC8GDk6Xy2z
         y7ceZd8CZmpxsGumyR4EKDKj8Id6mSd6Bz9pIt3f7KSgJxW6AviP7CjiXuRUcYfDJKFw
         7w1kqu32cazJxqtCPsGZZmcgCZZ2LnOJo768z5GG4nmqQA+VhYPBoY6VPZmrvmxbuyVv
         0qSkr2vLJs8ZNVtSbf2FTJzjH/o0WztsuLCFpQIcNewmNvtO8aMRXawLm48W+QXCNaJj
         nXPQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6Oghqd5yeWG1b5K5t8NgIdnDieXUf3k6icYfuAyF335GEyCylfxr7pMLH2W4uNwk0eS2iFq9hfjahcAs0WA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAFbh7+R+1K/u6V8FR0BsB/RsZbOpcrH3X1VU6+q9LcgkhpKG2
	Zzk42/7JF7gC1zEDB4kDiUtJ3KpJWuozof51+AVEtvUtOEPIpQx8OM0j
X-Gm-Gg: AZuq6aJCIVd4gF/Oebr6ZeKuJ+vwkFNCeFPQ30c0BXW+TedwwHtuTqsQSyElK59P9Qn
	88TEj6kYn9GsMDMO+LG2tY/ua8+x1AuRPnd8zFOaowjBRZbktceNjFl3cjRMXAa29+SNaON3cDr
	NFHkzGzADHT8/u4QZJ+jyG7v6qmv99xzGSD2IT89FfiKomQ8/Mk59ZlvXKvUXfM+lTBaWmhml2w
	qZgL2ycRSJoamUxzCRfaY0fj+kjyiHcRFTf73YYyhgODLH5KBjc2ynd10Vr6dS3OGsp6PNImg21
	ciR0WZU6liTb5gmFK3XyIvhcIB8jR5bJicVeDIYyibhJWlikKgtHS0zlDGH86Aa2SKJjoLYO6lq
	/FPIO+H6+eCnCH6A38LqqeniJr3cWkLPIfn6xcgNGmpigg9Le1q61BnHIdE3kGOwqi/VceP7EeE
	ElhJFqBYiypF5zwpdPBMn9
X-Received: by 2002:a05:6000:228a:b0:430:fd0e:a502 with SMTP id ffacd0b85a97d-4379d61a68amr3274684f8f.22.1771035474722;
        Fri, 13 Feb 2026 18:17:54 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:54 -0800 (PST)
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
	jonas@kwiboo.se,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v5 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
Date: Sat, 14 Feb 2026 10:17:16 +0800
Message-ID: <20260214021719.620752-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260214021719.620752-1-jerrysteve1101@gmail.com>
References: <20260214021719.620752-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_181756_871359_4FD26A38 
X-CRM114-Status: GOOD (  14.07  )
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
 .../rockchip/rk3566-onething-edge-cube.dts    | 342 ++++++++++++++++++
 2 files changed, 343 insertions(+)
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
index 000000000000..b57bf7bf10f5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
@@ -0,0 +1,342 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/pwm/pwm.h>
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
+			pinctrl-names = "default";
+			pinctrl-0 = <&rgb_led_b_enable_l>;
+		};
+
+		rgb_led_g: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&rgb_led_g_enable_l>;
+		};
+
+		rgb_led_r: led-2 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_LOW>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&rgb_led_r_enable_l>;
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
+		gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
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
+		pwms = <&pwm0 0 5000 PWM_POLARITY_INVERTED>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "vdd_cpu";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-settling-time-up-us = <250>;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_fixed: regulator-vdd-fixed {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "vdd_fixed";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_logic: regulator-vdd-logic {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
+		regulator-name = "vdd_logic";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1100000>;
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
+	gmac {
+		eth_phy_reset_pin: eth-phy-reset-pin {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	leds {
+		rgb_led_b_enable_l: rgb-led-b-enable-l {
+			rockchip,pins = <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		rgb_led_g_enable_l: rgb-led-g-enable-l {
+			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		rgb_led_r_enable_l: rgb-led-r-enable-l {
+			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
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
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	no-sd;
+	no-sdio;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
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
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
