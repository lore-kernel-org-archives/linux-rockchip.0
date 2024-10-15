Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E720D1F9C5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 19:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yxvq+QXGlRdEMPMWNhm6hZIfZNJvWVcij+/qZV8W3wY=; b=ORPaBqSRtQoWNW
	xl8ZK/hKxMfbMGzzmeiNBArBG36i7fDwUtx1ygJItrzQzSp6rLrcVKmUkf4b1sv9xM9LrHyTjgr9L
	hcUqkmlnGwld46aksK5SOmcMDuF+BHXhXdvObqSl5tikHIPJGAl+SDIAU76BzK1socY+wcyX138d5
	9+nYEaZedxgqhcwYKdBHn1ahqrAAXtJHNKHrDo8qilDJp1lKYP/mY5yozrFJGS9OZhGKKGVHStYM8
	iKef97cnqhDIj1u9xO7YnuBxHLJcRxTaaP/QDBJAXdARu/d5yFHsri4iTeSJAiJxpgTyLErvjeeGL
	YYgWER7Hqo4QGRoLnySQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nNO-00000009Q1m-3AIQ;
	Tue, 15 Oct 2024 19:38:38 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nCS-00000009OIy-11Eo;
	Tue, 15 Oct 2024 19:27:22 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5c97cc837c3so3463451a12.0;
        Tue, 15 Oct 2024 12:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1729020438; x=1729625238; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+8T3OhozsvXIuobDbuxRbMF3CQCe/wtiUBQDUXrW15k=;
        b=Ud21dppZN3kgIwlymmHYTSxBVIKQ/M5PabYWBWAi61SR4RGuXHg1i9VvEL3508HN3y
         dmE/IHOE6pdyIo+cSlYUJfbVMt7NjO635Won71qRTgZhQvXZMgAz472LwsMTxAh04l03
         eKgT4nFvgk5Duqek6cFByVchFnpZQr3ZuNjGNYNnJoay2EP1Pl35FwfecOzVvxEuS3JI
         307wfUHjTA3oS2yTclDjbbkQPWwI6Lzqz5KvDaIuCd5KpLeHNcS9EyYGUcRZw6r8S5gs
         IXsuwdy7sj8ayWYvk5slU2ze5uDuOyTZBi7oqiBDwfSCZXvTzJqwP96C7M1r7qh0gwhT
         6pSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729020438; x=1729625238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+8T3OhozsvXIuobDbuxRbMF3CQCe/wtiUBQDUXrW15k=;
        b=hfo22WJiCupkkCWBdRc73SxAybGNpIRz1Jr8pDJiuAU+rDbE4PJtqo2cCPcNrzATKl
         B1lBrUlBteOuH0JcsXIt39fmP7+aihTcH58VnxJKK/gRJ/i1jh7IfpCtzehL4pyrGrwx
         Q+xSvEwi7Qc8o5XI+hd/MfgoGIANSx+3DdD3WjTEflGM2ev0DL/IfGAUU7hN4Q77U7tD
         d6RbNhYlvbB/bGuAMeXI4IsRIZ0btjTVk1cO6Aua1K8iEMnWfEDmth3yBrr6pnMGVv8C
         qU0gVjbbzSy5tQA4BoEjvtgQ4O+Qi+MMB1X5znt4rsD3MbxAC5RWRc+qgIgD4c2VTElM
         DxPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaNnY12N269QXc8AQJD+i+7BaFMz0TrI5XE6ZLWYGgSUYq7YHc1hddlgfNPs0lWiLQnRsqkftwvj5rNE9Je8sk@lists.infradead.org, AJvYcCWRYZab7A8QxFwfI5lcTg0VGJZeAbK/oiGATMtAKlw/l09UAv0kEa+ddzUzqMHPqVAlo5OT5yBAZGQajuNI+pQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxo8Sa4sN7tuTcvYFdHPdv3cHIJJ6qocCZlMMtjjcWakbQrBycD
	v07T3VNpa9945wpcpn20fHOFQu6YLgDllrOPSk/SFK6cennu7FGg
X-Google-Smtp-Source: AGHT+IHOggSDr/CFs52R6HHIXrqLiZ15ljdWIcb55H0Y0gz7PMHv7wyRqh+3g33lbZSPkOWzRVvptg==
X-Received: by 2002:a17:907:3e1b:b0:a99:ce2f:b0ff with SMTP id a640c23a62f3a-a99ce2fb227mr1273234566b.33.1729020437688;
        Tue, 15 Oct 2024 12:27:17 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:43a9:8917:3db1:25e8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a298443f3sm101324966b.165.2024.10.15.12.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 12:27:17 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Jing Luo <jing@jing.rocks>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v 2/2] arm64: dts: rockchip: Add rk3588-orangepi-5b device tree and refactor
Date: Tue, 15 Oct 2024 21:26:20 +0200
Message-ID: <20241015192650.28648-2-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241015192650.28648-1-cenk.uluisik@googlemail.com>
References: <20241015192650.28648-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_122720_344812_EDB5C5C3 
X-CRM114-Status: GOOD (  16.58  )
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

Implements a slightly modified rk3588s-orangepi-5b.dts from the vendor.
Unfortunately the &wireless_bluetooth and &wireless_wlan are not
implemented yet.

Bigger parts of the rk3588s-orangepi-5.dts file were moved into a new
rk3588s-orangepi-5.dtsi file, so that both device trees from the
orangepi-5 and 5b include from it and avoid including from the .dts.

This changes the Orange Pi 5's sdmmc alias to be mmc1, breaking existing
users if they used the /dev/mmc0 device file, so it's consistent with all
the other rk3588 DTS, which, is also the new default that rockchip wants
to use.
https://github.com/orangepi-xunlong/linux-orangepi/commit/
bce92d16b230b8e93c2831fb7768839fd7bbab04
Therefore add the sdhc alias to be mmc0 on the rk3588s-orangepi-5b.dts.

The "enable-active-low" warning is addressed here:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/
commit/?h=v6.12-armsoc/dtsfixes&id=f4d29bebaa6118c1e51e8f1c21ce2b34f43e1479
The "leds-gpio" warning was already there because the DTS checking script
might not like the ID, which is probably avoidable by renaming it, but this
will be addressed in a seperate issue.

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
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |  18 +
 4 files changed, 64 insertions(+), 789 deletions(-)
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
index 000000000000..158cc27c444c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
@@ -0,0 +1,18 @@
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
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
