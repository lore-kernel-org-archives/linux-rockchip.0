Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 187DBD16262
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 13:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dxJewfCP0aHBFFWIBBmaCtjuWbvzdLpiYryUXDBHMcw=; b=sLKS5DkQn602vO
	KXf6LRc62Wr6fwZ1WY20m07zyd478TFqxFI8Fg7gcrfgZCKMQ0xavdlJC82K4jAZzRb0Gl/4nRwRL
	2iA7Z3p4oE6w7VqZV8iW74RMSWQtjJ2G7b1SMI9GhaUG/RzTeRfDyBOQdZzmH4SzQZAoo/gN0vDSF
	vHBmyxFY2ugwonJh6j5KE3lsBOI/dg96pVd/25P4sdvQtdAGgo/veQEs4/lW4E9n8c9M5cBbxi+Ln
	NdnpvEQBMq5jU3keyAj+EYBzQoyuNad7AW7VRixVli1YDtHmovaIy+Cjs8X7aIXEki8pnI8eJiFBz
	oh+wmsErVV4j2O6aY0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L1z-00000005FJH-32C2;
	Mon, 14 Oct 2024 13:22:39 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JHm-00000004vuv-0ivE;
	Mon, 14 Oct 2024 11:32:28 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-37d461162b8so2780324f8f.1;
        Mon, 14 Oct 2024 04:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728905449; x=1729510249; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=+38J0V2zqr/PrThNjdmev7OZ1t/BUMsRvbc1uHBHLLw=;
        b=SbYyeYHsIeFEWYvWQoFVcVZYKLkt8d+Eig2lfVdrxgGDVKoqCerUGenCgs4OqUPwK2
         zdBbrk0QMzSfsOUZYpvdWBHJsLHk+S8Nd6lNYWVFfNAtRcLRvsROvVXHOKMKdJuEvQLC
         /GXHcNTskXp9rbDQM8tvx5rnxRn/ssY3x/LUPnX7FbZbw8XtDsuNtwHPrFj5w/OLcGQQ
         Y7ZezOXXj/iuv2Y2qtnSPkiOKnJ2lP5b3jNe4INqYlGy+RP7G2zqN7jl9Eq3/agrrXqP
         uztnxvv2kmv/+dOOEy52kNScflImON2QdBwBFtlIBuhu8yL53MdbUEmfQkvYedEJGjMU
         evXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728905449; x=1729510249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+38J0V2zqr/PrThNjdmev7OZ1t/BUMsRvbc1uHBHLLw=;
        b=Y8w9FEM//1iy8ErqRfCPVbUlGzivNzDffnYRhx/Zya1aoY7FelHeqbUkM17mpTifuo
         PQ4y7tHPOXlRoCFJ1aqPErLP11UxLqdTtsvt8qZz2o6i9nA3RI4AlfBewbU1wroGoOxH
         cN9AJtxAH/YhyvSvSHYMosk09kXaEI1EC994YKG1Z5fHphKIKvcA68T7iKjK+54+WFNz
         9CK6fq7FPy9dDOAYGEQyIFrChD/0DAnRORS5u0QeazjTSzjcIX3+9OcMRvmAN/xs7mMX
         np2zwelUaOZ1mxix3qU7VmD/xu72pWt0yhqvNGoQteXq1D5SeacKYVr6hrQty3UxunUv
         3AtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaJ+MB+aZzGXGlHGoj3Gp/Yj1/bGvh/XiYBSaFtbMq8Zlvi1+TNNqYyzg+DVFPkHdGOUyVKOInZlq/ZZR2mmGa@lists.infradead.org, AJvYcCVKyPuuP8J7tMvVZiAkUvGuHO/kRC4P+qWN4c+5Ac3U8uNMqq92wHt/+nNCHeF/YKGDyYYgJZLdkQd3222cWTo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWMSWzY1UHcjWValou2aEN8mCEC4Y3GXH3g4xxU2/2sW7r0aFc
	rmGWPsrqLzoootBoPeVb2pIT3yn3oO7N6TIUpKt9YvWpTPQMPvCM
X-Google-Smtp-Source: AGHT+IGI9+b5wHZznKlsX8zzPLTqZru/oi5TcLT3ImWGVTyW/KudEkF3ytRQL0UDG+vZazWoNLwhJw==
X-Received: by 2002:adf:f3c2:0:b0:37d:3dfc:949c with SMTP id ffacd0b85a97d-37d5ff6cdddmr5085192f8f.41.1728905448359;
        Mon, 14 Oct 2024 04:30:48 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:bb77:bd6d:6fe3:9eed])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b9190f7sm11084477f8f.114.2024.10.14.04.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:30:47 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] arm64: dts: rockchip: Add rk3588-orangepi-5b device tree and refactor
Date: Mon, 14 Oct 2024 13:29:55 +0200
Message-ID: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_043050_321579_3BD8D70C 
X-CRM114-Status: GOOD (  15.47  )
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

Implements a slightly modified rk3588s-orangepi-5b.dts
from the vendor. Unfortunately the &wireless_bluetooth
and &wireless_wlan are not implemented yet.

Bigger parts of the rk3588s-orangepi-5.dts file were
moved into a new rk3588s-orangepi-5.dtsi file, so
that both device trees from the orangepi-5 and 5b
include from it and avoid including from the .dts.

This changes the Orange Pi 5's sdmmc alias to be mmc1,
breaking existing users if they used the /dev/mmc0 device
file, so it's consistent with all the other rk3588 DTS,
which, is also the new default that rockchip wants to use.
https://github.com/orangepi-xunlong/linux-orangepi/commit/bce92d16b230b8e93c2831fb7768839fd7bbab04
Therefore also add the sdhc alias to be mmc0 on the
rk3588s-orangepi-5b.dts.

How does this board differ from the original Orange Pi 5?
  - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
    slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
    for the WiFi.
  - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
    "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
    hooked to BT_WAKE_HOST.
  - builtin eMMC storage
  - no SPI NOR flash (u-boot, preboot etc. initiates
      from within the eMMC
      storage)
  - ap6275p Wifi module (like the Orange Pi 5 Plus)
  - builtin BlueTooth module

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 798 +-----------------
 ...orangepi-5.dts => rk3588s-orangepi-5.dtsi} |  36 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |  27 +
 4 files changed, 73 insertions(+), 789 deletions(-)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts (95%)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-orangepi-5.dts => rk3588s-orangepi-5.dtsi} (96%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 09423070c992..45249ce15175 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -154,3 +154,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
dissimilarity index 95%
index feea6b20a6bf..9c0d1348281b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -1,766 +1,32 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/usb/pd.h>
-#include "rk3588s.dtsi"
-
-/ {
-	model = "Xunlong Orange Pi 5";
-	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
-
-	aliases {
-		ethernet0 = &gmac1;
-		mmc0 = &sdmmc;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	adc-keys {
-		compatible = "adc-keys";
-		io-channels = <&saradc 1>;
-		io-channel-names = "buttons";
-		keyup-threshold-microvolt = <1800000>;
-		poll-interval = <100>;
-
-		button-recovery {
-			label = "Recovery";
-			linux,code = <KEY_VENDOR>;
-			press-threshold-microvolt = <1800>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&leds_gpio>;
-
-		led-1 {
-			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
-			label = "status_led";
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	vbus_typec: vbus-typec-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&typec5v_pwren>;
-		regulator-name = "vbus_typec";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
-		compatible = "regulator-fixed";
-		enable-active-low;
-		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
-		regulator-name = "vcc_3v3_sd_s0";
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
-	vcc3v3_pcie20: vcc3v3-pcie20-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
-		regulator-name = "vcc3v3_pcie20";
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		startup-delay-us = <50000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-};
-
-&combphy0_ps {
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
-&gmac1 {
-	clock_in_out = "output";
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-rxid";
-	pinctrl-0 = <&gmac1_miim
-		     &gmac1_tx_bus2
-		     &gmac1_rx_bus2
-		     &gmac1_rgmii_clk
-		     &gmac1_rgmii_bus>;
-	pinctrl-names = "default";
-	tx_delay = <0x42>;
-	status = "okay";
-};
-
-&gpu {
-	mali-supply = <&vdd_gpu_s0>;
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
-&i2c2 {
-	status = "okay";
-
-	vdd_npu_s0: regulator@42 {
-		compatible = "rockchip,rk8602";
-		reg = <0x42>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <550000>;
-		regulator-max-microvolt = <950000>;
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
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c6m3_xfer>;
-	status = "okay";
-
-	usbc0: usb-typec@22 {
-		compatible = "fcs,fusb302";
-		reg = <0x22>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usbc0_int>;
-		vbus-supply = <&vbus_typec>;
-		status = "okay";
-
-		usb_con: connector {
-			compatible = "usb-c-connector";
-			label = "USB-C";
-			data-role = "dual";
-			op-sink-microwatt = <1000000>;
-			power-role = "dual";
-			sink-pdos =
-				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
-			source-pdos =
-				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			try-power-role = "source";
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					usbc0_hs: endpoint {
-						remote-endpoint = <&usb_host0_xhci_drd_sw>;
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-					usbc0_ss: endpoint {
-						remote-endpoint = <&usbdp_phy0_typec_ss>;
-					};
-				};
-
-				port@2 {
-					reg = <2>;
-					usbc0_sbu: endpoint {
-						remote-endpoint = <&usbdp_phy0_typec_sbu>;
-					};
-				};
-			};
-		};
-	};
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
-&mdio1 {
-	rgmii_phy1: ethernet-phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x1>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reset-gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
-	};
-};
-
-&pcie2x1l2 {
-	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie20>;
-	status = "okay";
-};
-
-&pinctrl {
-	gpio-func {
-		leds_gpio: leds-gpio {
-			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	usb-typec {
-		usbc0_int: usbc0-int {
-			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		typec5v_pwren: typec5v-pwren {
-			rockchip,pins = <3 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&saradc {
-	vref-supply = <&avcc_1v8_s0>;
-	status = "okay";
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-sd-highspeed;
-	disable-wp;
-	max-frequency = <150000000>;
-	no-mmc;
-	no-sdio;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_sd_s0>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
-&sfc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&fspim0_pins>;
-	status = "okay";
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0x0>;
-		spi-max-frequency = <100000000>;
-		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <1>;
-	};
-};
-
-&spi2 {
-	status = "okay";
-	assigned-clocks = <&cru CLK_SPI2>;
-	assigned-clock-rates = <200000000>;
-	num-cs = <1>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
-
-	pmic@0 {
-		compatible = "rockchip,rk806";
-		reg = <0x0>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
-				<&rk806_dvs2_null>, <&rk806_dvs3_null>;
-		spi-max-frequency = <1000000>;
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
-			vdd_gpu_s0: dcdc-reg1 {
-				regulator-name = "vdd_gpu_s0";
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <400>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_cpu_lit_s0: dcdc-reg2 {
-				regulator-name = "vdd_cpu_lit_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_log_s0: dcdc-reg3 {
-				regulator-name = "vdd_log_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <750000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdd_vdenc_s0: dcdc-reg4 {
-				regulator-name = "vdd_vdenc_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_ddr_s0: dcdc-reg5 {
-				regulator-name = "vdd_ddr_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <900000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <850000>;
-				};
-			};
-
-			vcc_1v1_nldo_s3: vdd2_ddr_s3: dcdc-reg6 {
-				regulator-name = "vdd2_ddr_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-max-microvolt = <1100000>;
-				regulator-min-microvolt = <1100000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <2000000>;
-				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <2000000>;
-				};
-			};
-
-			vcc_3v3_s3: dcdc-reg8 {
-				regulator-name = "vcc_3v3_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vddq_ddr_s0: dcdc-reg9 {
-				regulator-name = "vddq_ddr_s0";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8_s3: dcdc-reg10 {
-				regulator-name = "vcc_1v8_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			avcc_1v8_s0: pldo-reg1 {
-				regulator-name = "avcc_1v8_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8_s0: pldo-reg2 {
-				regulator-name = "vcc_1v8_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			avdd_1v2_s0: pldo-reg3 {
-				regulator-name = "avdd_1v2_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1200000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v3_s0: pldo-reg4 {
-				regulator-name = "vcc_3v3_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vccio_sd_s0: pldo-reg5 {
-				regulator-name = "vccio_sd_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			pldo6_s3: pldo-reg6 {
-				regulator-name = "pldo6_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vdd_0v75_s3: nldo-reg1 {
-				regulator-name = "vdd_0v75_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdd_ddr_pll_s0: nldo-reg2 {
-				regulator-name = "vdd_ddr_pll_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <850000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <850000>;
-				};
-			};
-
-			avdd_0v75_s0: nldo-reg3 {
-				regulator-name = "avdd_0v75_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_0v85_s0: nldo-reg4 {
-				regulator-name = "vdd_0v85_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <850000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_0v75_s0: nldo-reg5 {
-				regulator-name = "vdd_0v75_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
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
-&u2phy0 {
-	status = "okay";
-};
-
-&u2phy0_otg {
-	status = "okay";
-};
-
-&u2phy2 {
-	status = "okay";
-};
-
-&u2phy2_host {
-	status = "okay";
-};
-
-&u2phy3 {
-	status = "okay";
-};
-
-&u2phy3_host {
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
-&usbdp_phy0 {
-	mode-switch;
-	orientation-switch;
-	sbu1-dc-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
-	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
-	status = "okay";
-
-	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usbdp_phy0_typec_ss: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&usbc0_ss>;
-		};
-
-		usbdp_phy0_typec_sbu: endpoint@1 {
-			reg = <1>;
-			remote-endpoint = <&usbc0_sbu>;
-		};
-	};
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
-&usb_host0_xhci {
-	dr_mode = "otg";
-	usb-role-switch;
-	status = "okay";
-
-	port {
-		usb_host0_xhci_drd_sw: endpoint {
-			remote-endpoint = <&usbc0_hs>;
-		};
-	};
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
-&usb_host2_xhci {
-	status = "okay";
-};
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-orangepi-5.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5";
+	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
+
+	vcc3v3_pcie20: vcc3v3-pcie20-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vcc3v3_pcie20";
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&pcie2x1l2 {
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie20>;
+	status = "okay";
+};
+
+&sfc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
similarity index 96%
copy from arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
copy to arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index feea6b20a6bf..6436703a94f4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -10,12 +10,9 @@
 #include "rk3588s.dtsi"
 
 / {
-	model = "Xunlong Orange Pi 5";
-	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
-
 	aliases {
 		ethernet0 = &gmac1;
-		mmc0 = &sdmmc;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
@@ -79,18 +76,6 @@ vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_3v3_s3>;
 	};
-
-	vcc3v3_pcie20: vcc3v3-pcie20-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
-		regulator-name = "vcc3v3_pcie20";
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		startup-delay-us = <50000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
 };
 
 &combphy0_ps {
@@ -291,12 +276,6 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
-&pcie2x1l2 {
-	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie20>;
-	status = "okay";
-};
-
 &pinctrl {
 	gpio-func {
 		leds_gpio: leds-gpio {
@@ -326,6 +305,17 @@ &saradc {
 	status = "okay";
 };
 
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "disabled";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
@@ -342,7 +332,7 @@ &sdmmc {
 &sfc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&fspim0_pins>;
-	status = "okay";
+	status = "disabled";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
new file mode 100644
index 000000000000..55eee855cacc
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-orangepi-5.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5B";
+	compatible = "xunlong,orangepi-5b", "rockchip,rk3588s";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&sfc {
+	status = "disabled";
+};
+
+&pcie2x1l2 {
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
