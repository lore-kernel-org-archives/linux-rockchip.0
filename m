Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC50EC7618E
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=754e+q5AWioNoAU0EjllsN+qlHo4TCuSQc40fdy9gwo=; b=m1K68JW1pPt6pB
	8S+gq6eECUlw3aIgjTLnHTkxuEEt5PzsN9Ft3euIRRbiP8EwjQ15RO5rXfMpv6ZsnkfL+7D1A8K+v
	/6M5PIdwtveC3CZuK8x/7e4GNSq+sxah1lDiLeYqfYDCFWPrFqIW+NA+BOJ+8s8jFO8PUCd7t4+NJ
	9P/EFLjUHYoA6oKY+/DiNtImDi2gGqFeTWrtypIRmo5mStS7zISRcu5n7ZOHc7rXMj7ilual2OF1p
	nK91xLhaqIadUIZVcF7A2pAq5Dhi74dRPVu1Oy44fw6zxsBmY3+bStie1CXNkuAggm/eZ72rkQ7AD
	tkuUEGTDI2VOBI+ktg1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4k-004S6Z-0f;
	Sat, 18 Mar 2023 08:38:06 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4V-004S1G-1f;
	Sat, 18 Mar 2023 08:37:54 +0000
Received: by mail-il1-x12d.google.com with SMTP id bp11so3985263ilb.3;
        Sat, 18 Mar 2023 01:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J4XWT6MRSlXQe+HsWbfuf0EGGcxWp/BstKHHlpcBm+Y=;
        b=SErLjuOrp9kuikvZJ3lrE5FFA1Erj2GPpT356MhE/ufpnspEhtw8a0C5MR4Pux3f3e
         cX+pZtDdrdZM4IZ/MXCldT/x/jQFCKWdo5878YxGL1ZlL1VSQM/4Ju8HMb4014kY0kaA
         3T2kvq1bbIGcA4yjQ5AgrEHoPD/z5y4LiNFqbcI0HyEk8sqaAWuKD3b5U0EB7Knwk5du
         z9UF31YA5oirbLVBOL1vQklJIWUnzvQPcSo5fTk5NGPbLF2kwjFcNGoRj7rFJaukH9BL
         TKaFv3ULYC6vFEGz7VUKF+XJ7n6/7gGS/LTyx0O+O29kS//xHUB40ALoCe8FDko0dGsh
         yWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J4XWT6MRSlXQe+HsWbfuf0EGGcxWp/BstKHHlpcBm+Y=;
        b=QjoXU2WEZbfxJYgWZO1k740H+SPkYV40rVK1QHmgi2dZPVNy3fiAIqGTM7/rHqeweq
         vfsxAVASi9K+VG2C9XFzmabZpdWBZJnCDTGF13Le4Rp0X/yYflsPUxuTsY9lgFUD+4Dv
         NGtIga3UNFGQnhXgR4Rx1dRTirazl8xdodQDgTcHPP+2iw9GGnTK1eo2TTYymXqbwvCW
         xJDnuDEqABqBAlT43oN5y8FJ+RndCstbtp8OLEgEF9Z3lSQ7qAa1W27BMVUH4kW7ahLh
         lqIW85aIE092qNoD6jk804CLtkBR7GICQw1uHsOqxI/pCqVpm4APabiaMqUSKG4YXm9Y
         sSjQ==
X-Gm-Message-State: AO0yUKXRRTLpnXuEx2k7tfc+GVhdKEkjzt+6Woia4NKHUnIVz/vsjsg8
	/Ux/uGuWIF79NyggakbHTGM=
X-Google-Smtp-Source: AK7set97isG2MsMxkuWT/imGqMlYj3Tk8h4hzd0CsUSFxTxnBZTEV/EBMUGJvXiKzJrJrDaYh72oPA==
X-Received: by 2002:a92:6a01:0:b0:323:cab8:3c12 with SMTP id f1-20020a926a01000000b00323cab83c12mr929777ilc.25.1679128670286;
        Sat, 18 Mar 2023 01:37:50 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id h8-20020a6b7a08000000b00746041ecbf9sm1174834iom.39.2023.03.18.01.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:37:49 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] arm64: dts: rockchip: create common dtsi for NanoPi R5 series
Date: Sat, 18 Mar 2023 16:37:41 +0800
Message-Id: <20230318083745.6181-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230318083745.6181-1-cnsztl@gmail.com>
References: <20230318083745.6181-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_013751_562137_278D1322 
X-CRM114-Status: GOOD (  12.61  )
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

Create commit dtsi for the FriendlyElec NanoPi R5 series.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dts   | 575 +----------------
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dtsi  | 596 ++++++++++++++++++
 2 files changed, 597 insertions(+), 574 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index 25edc82eaa3f..e9adf5e66529 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -7,12 +7,7 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/soc/rockchip,vop2.h>
-#include "rk3568.dtsi"
+#include "rk3568-nanopi-r5s.dtsi"
 
 / {
 	model = "FriendlyElec NanoPi R5S";
@@ -20,23 +15,6 @@ / {
 
 	aliases {
 		ethernet0 = &gmac0;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
-	};
-
-	chosen: chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	hdmi-con {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi_con_in: endpoint {
-				remote-endpoint = <&hdmi_out_con>;
-			};
-		};
 	};
 
 	gpio-leds {
@@ -71,130 +49,6 @@ led-wan {
 			gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
 		};
 	};
-
-	vdd_usbc: vdd-usbc-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vdd_usbc";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc3v3_sys: vcc3v3-sys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vdd_usbc>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vdd_usbc>;
-	};
-
-	vcc3v3_pcie: vcc3v3-pcie-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_pcie";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		enable-active-high;
-		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
-		startup-delay-us = <200000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
-	vcc5v0_usb: vcc5v0-usb-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_usb";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vdd_usbc>;
-	};
-
-	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_usb_host_en>;
-		regulator-name = "vcc5v0_usb_host";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v0_usb>;
-	};
-
-	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_usb_otg_en>;
-		regulator-name = "vcc5v0_usb_otg";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v0_usb>;
-	};
-
-	pcie30_avdd0v9: pcie30-avdd0v9-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "pcie30_avdd0v9";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <900000>;
-		regulator-max-microvolt = <900000>;
-		vin-supply = <&vcc3v3_sys>;
-	};
-
-	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "pcie30_avdd1v8";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc3v3_sys>;
-	};
-};
-
-&combphy0 {
-	status = "okay";
-};
-
-&combphy1 {
-	status = "okay";
-};
-
-&combphy2 {
-	status = "okay";
-};
-
-&cpu0 {
-	cpu-supply = <&vdd_cpu>;
-};
-
-&cpu1 {
-	cpu-supply = <&vdd_cpu>;
-};
-
-&cpu2 {
-	cpu-supply = <&vdd_cpu>;
-};
-
-&cpu3 {
-	cpu-supply = <&vdd_cpu>;
 };
 
 &gmac0 {
@@ -219,292 +73,6 @@ &gmac0_rgmii_clk
 	status = "okay";
 };
 
-&gpu {
-	mali-supply = <&vdd_gpu>;
-	status = "okay";
-};
-
-&hdmi {
-	avdd-0v9-supply = <&vdda0v9_image>;
-	avdd-1v8-supply = <&vcca1v8_image>;
-	status = "okay";
-};
-
-&hdmi_in {
-	hdmi_in_vp0: endpoint {
-		remote-endpoint = <&vp0_out_hdmi>;
-	};
-};
-
-&hdmi_out {
-	hdmi_out_con: endpoint {
-		remote-endpoint = <&hdmi_con_in>;
-	};
-};
-
-&hdmi_sound {
-	status = "okay";
-};
-
-&i2c0 {
-	status = "okay";
-
-	vdd_cpu: regulator@1c {
-		compatible = "tcs,tcs4525";
-		reg = <0x1c>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_cpu";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1150000>;
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	rk809: pmic@20 {
-		compatible = "rockchip,rk809";
-		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc5-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
-		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-		wakeup-source;
-
-		regulators {
-			vdd_logic: DCDC_REG1 {
-				regulator-name = "vdd_logic";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_gpu: DCDC_REG2 {
-				regulator-name = "vdd_gpu";
-				regulator-always-on;
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-initial-mode = <0x2>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vdd_npu: DCDC_REG4 {
-				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8: DCDC_REG5 {
-				regulator-name = "vcc_1v8";
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
-			vdda0v9_image: LDO_REG1 {
-				regulator-name = "vdda0v9_image";
-				regulator-min-microvolt = <950000>;
-				regulator-max-microvolt = <950000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda_0v9: LDO_REG2 {
-				regulator-name = "vdda_0v9";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_pmu: LDO_REG3 {
-				regulator-name = "vdda0v9_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <900000>;
-				};
-			};
-
-			vccio_acodec: LDO_REG4 {
-				regulator-name = "vccio_acodec";
-				regulator-always-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-name = "vccio_sd";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_pmu: LDO_REG6 {
-				regulator-name = "vcc3v3_pmu";
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
-			vcca_1v8: LDO_REG7 {
-				regulator-name = "vcca_1v8";
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
-			vcca1v8_pmu: LDO_REG8 {
-				regulator-name = "vcca1v8_pmu";
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
-			vcca1v8_image: LDO_REG9 {
-				regulator-name = "vcca1v8_image";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v3: SWITCH_REG1 {
-				regulator-name = "vcc_3v3";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_sd: SWITCH_REG2 {
-				regulator-name = "vcc3v3_sd";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-
-	};
-};
-
-&i2c5 {
-	status = "okay";
-
-	hym8563: rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <0>;
-		clock-output-names = "rtcic_32kout";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
-		wakeup-source;
-	};
-};
-
-&i2s0_8ch {
-	status = "okay";
-};
-
-&i2s1_8ch {
-	rockchip,trcm-sync-tx-only;
-	status = "okay";
-};
-
 &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -568,146 +136,5 @@ wan_led_pin: wan-led-pin {
 			rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	pmic {
-		pmic_int: pmic-int {
-			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	usb {
-		vcc5v0_usb_host_en: vcc5v0-usb-host-en {
-			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		vcc5v0_usb_otg_en: vcc5v0-usb-otg-en {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&pmu_io_domains {
-	pmuio1-supply = <&vcc3v3_pmu>;
-	pmuio2-supply = <&vcc3v3_pmu>;
-	vccio1-supply = <&vccio_acodec>;
-	vccio3-supply = <&vccio_sd>;
-	vccio4-supply = <&vcc_1v8>;
-	vccio5-supply = <&vcc_3v3>;
-	vccio6-supply = <&vcc_1v8>;
-	vccio7-supply = <&vcc_3v3>;
-	status = "okay";
-};
-
-&saradc {
-	vref-supply = <&vcca_1v8>;
-	status = "okay";
-};
-
-&sdhci {
-	bus-width = <8>;
-	max-frequency = <200000000>;
-	non-removable;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
-	status = "okay";
-};
-
-&sdmmc0 {
-	max-frequency = <150000000>;
-	no-sdio;
-	no-mmc;
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	vmmc-supply = <&vcc3v3_sd>;
-	vqmmc-supply = <&vccio_sd>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	status = "okay";
-};
-
-&tsadc {
-	rockchip,hw-tshut-mode = <1>;
-	rockchip,hw-tshut-polarity = <0>;
-	status = "okay";
 };
 
-&uart2 {
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
-&usb_host0_xhci {
-	extcon = <&usb2phy0>;
-	dr_mode = "host";
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
-	status = "okay";
-};
-
-&usb2phy0 {
-	status = "okay";
-};
-
-&usb2phy0_host {
-	phy-supply = <&vcc5v0_usb_host>;
-	status = "okay";
-};
-
-&usb2phy0_otg {
-	status = "okay";
-};
-
-&usb2phy1 {
-	status = "okay";
-};
-
-&usb2phy1_host {
-	phy-supply = <&vcc5v0_usb_otg>;
-	status = "okay";
-};
-
-&usb2phy1_otg {
-	status = "okay";
-};
-
-&vop {
-	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
-	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
-	status = "okay";
-};
-
-&vop_mmu {
-	status = "okay";
-};
-
-&vp0 {
-	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
-		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
-		remote-endpoint = <&hdmi_in_vp0>;
-	};
-};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
new file mode 100644
index 000000000000..dd9a7907a1c5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -0,0 +1,596 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2022 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyelec.com)
+ *
+ * Copyright (c) 2023 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3568.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	vdd_usbc: vdd-usbc-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_usbc";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vdd_usbc>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vdd_usbc>;
+	};
+
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <200000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_usb: vcc5v0-usb-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vdd_usbc>;
+	};
+
+	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en>;
+		regulator-name = "vcc5v0_usb_host";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en>;
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	pcie30_avdd0v9: pcie30-avdd0v9-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
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
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vdda0v9_image>;
+	avdd-1v8-supply = <&vcca1v8_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1150000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-always-on;
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-name = "vdd_npu";
+				regulator-init-microvolt = <900000>;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-name = "vdda0v9_image";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <950000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-name = "vcca_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-name = "vcca1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-name = "vcca1v8_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+
+	};
+};
+
+&i2c5 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		clock-output-names = "rtcic_32kout";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
+&i2s0_8ch {
+	status = "okay";
+};
+
+&i2s1_8ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&pcie30phy {
+	data-lanes = <1 2>;
+	status = "okay";
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb {
+		vcc5v0_usb_host_en: vcc5v0-usb-host-en {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_usb_otg_en: vcc5v0-usb-otg-en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	max-frequency = <150000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
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
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+	dr_mode = "host";
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
+&usb_host1_xhci {
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
+	phy-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
