Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58A09C10F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kBEkfJW5ek3XqKtnTrtQD7YL74LP5/iWSS7YJerjZQQ=; b=ZolLuTm40E1evr
	ViEanSZD6pxQt8M0RiY39Yr3zyFbZSLg1LtjjnosD78PsmMv90zsTt2v3BbMlKGZVeiYwQbGGBZ4R
	pg4OoMxjAIVo5jB+O27EzxINOt3ATsLetzxO8cPFxUHjdSupR7AyiNiOWT9E3CSJQnqdi1ZemZjNz
	9C50Gn2N46nQb3VsVUmoByDOtasVLVOrdO/L0vy85hQwlgayGX2jXJOhr2tL9xtYAJoOD0FjHlAja
	fdrJzmTPg0mQOAZ/L7y3QipfxkIOx14aNnxBKxzhK0DocP0T2wpoGvAkPx1lWFTgnFgWwsrY+ybT6
	MqXbwH53tsUAdbc2i8Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80zt-00GGbn-Bs; Wed, 21 Dec 2022 15:27:09 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80zT-00GGFe-56; Wed, 21 Dec 2022 15:26:45 +0000
Received: by mail-pl1-x631.google.com with SMTP id n4so15872579plp.1;
        Wed, 21 Dec 2022 07:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=moPxJHyso3Z+EGSD9+trUmBD2WlEDmA8VO5VfxYCHXY=;
        b=PZbdixsq4U9cijuAeD+QFfNRx9q760tf+jKbRJ5IeCxj++AW+MDReXFIVegA5wqoio
         /eBC4Qp4zM9/Y69c+jlUbLvjV///he6NsNYRyKABkPDzx9Kh6qXwJsPVbBMEJyCaB8Su
         bk9vZVMEOqaFdP70f0v3UH1P8rD6mYzHAhNNei0yBB55TdTVKNs4SwzQRSm1GiXQ+nAZ
         xkYWXGNh4nzf7MXkLVKQi49mqls/l7G0axkmhZQpqStzpK9jAPVj5naFpapJ7XMHdMaV
         FIyJ17DvTK5qTgoywOaIe36cqJAs387jxkiVbHvrEmkj2vLrp+e/sXUreK3ve/mqyILf
         Kxhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=moPxJHyso3Z+EGSD9+trUmBD2WlEDmA8VO5VfxYCHXY=;
        b=hXBucGb/4BVnuV+2WKJkzn5dAWUsW2x8LlfAVaQgHJfYjGilcvi0SF2u0V28FJWuH1
         0c6Obr/YDTsko8nTfWuvT7kHBXcsRAL5dSI6CeUO6Q4gxw5/MQVeStDUspzKDsV/umCx
         P01+FmN8U7fPm02+RzqP1IE1d1lW1IyygkYudvpVfu7mCqZqCyKfVGaszLhEwyCcFnBH
         HpWIisMXL5qx7WJamD4uu1JG3AilqsboSLEH6Nw5u8yiB4pvi/bBl1yBts/6kBuaENF8
         yc+wrSzXWRZVe0ip6iaOMql6R1tfVaIJKAM1Bj9u+b4KcDsiJ/NQQ0TY8P0QXo5ZoYhf
         k8RA==
X-Gm-Message-State: AFqh2kqtmw2//dMNpYS/opw0zxHSODx9QMIkh0s3nEDcm7/sZuW7kJO7
	qpIxonWZqKHpzXxmxRmXceo=
X-Google-Smtp-Source: AMrXdXtsc0cT6KC73qIOHhKaf2qDMtZvgxxAZ2JMUFSsaA8cRUpaS6wbMOW/YYd6Ngk7xu/E+U4SZA==
X-Received: by 2002:a05:6a20:a682:b0:b2:c76:dc71 with SMTP id ba2-20020a056a20a68200b000b20c76dc71mr3759248pzb.49.1671636402230;
        Wed, 21 Dec 2022 07:26:42 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.3])
        by smtp.gmail.com with ESMTPSA id a23-20020a656417000000b0046ae5cfc3d5sm5790807pgv.61.2022.12.21.07.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Dec 2022 07:26:41 -0800 (PST)
Date: Wed, 21 Dec 2022 23:26:37 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Wenhao Cui <lasstp5011@gmail.com>
Subject: [PATCH v7 1/2] arm64: dts: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6MlrbGKiIVc6tXt@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_072643_376807_934768FD 
X-CRM114-Status: GOOD (  15.95  )
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

From: Wenhao Cui <lasstp5011@gmail.com>

The LubanCat 1 is a RK3566 based SBC, developed by EmbedFire Electronics
Co., Ltd.

It has the following characteristics:
- MicroSD card slot, onboard eMMC flash memory
- 1GbE Realtek RTL8211F Ethernet Transceiver
- 1 USB Type-C port (power and USB2.0 OTG)
- 1 USB 3.0 Host port
- 3 USB 2.0 Host ports
- 1 HDMI
- 1 infrared receiver
- 1 MIPI DSI
- 1 MIPI CSI
- 1 x 4-section headphone jack
- Mini PCIe socket (USB or PCIe)
- 1 SIM Card slot
- 1 SYS LED and 1 PWR LED
- 40-pin GPIO expansion header

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>

---

Changed in V2:
  - Remove RNG node
Changed in V3:
  - Sent E-mail with a wrong attachment
Changed in V4:
  - Modify all node names
Changed in V5:
  - Fixed node name of vcc3v3_sys
  - Fixed order in document
  - Fixed commit message wrapping
Changed in V6:
  - Fixed Signed-off-by order
Changed in V7:
  - Fixed From with real name
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-lubancat-1.dts   | 598 ++++++++++++++++++
 2 files changed, 599 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 0a76a2ebb5f6..e52bda04d45a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-blade.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-model-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
new file mode 100644
index 000000000000..881fe5c61537
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -0,0 +1,598 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+* Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+*/
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3566.dtsi"
+
+/ {
+	model = "EmbedFire LubanCat 1";
+	compatible = "embedfire,lubancat-1", "rockchip,rk3566";
+
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
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
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		sys_led: sys-led {
+			label = "sys_led";
+			linux,default-trigger = "heartbeat";
+			default-state = "on";
+			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sys_led_pin>;
+		};
+	};
+
+	usb_5v: usb-5v-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&usb_5v>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_usb20_host: vcc5v0-usb20-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb20_host_en>;
+		regulator-name = "vcc5v0_usb20_host";
+		regulator-always-on;
+	};
+
+	vcc5v0_usb30_host: vcc5v0-usb30-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb30_host_en>;
+		regulator-name = "vcc5v0_usb30_host";
+		regulator-always-on;
+	};
+};
+
+&uart2 {
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
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
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
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
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
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
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
+				regulator-boot-on;
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
+				regulator-always-on;
+				regulator-boot-on;
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
+	};
+};
+
+&i2s1_8ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&gmac1 {
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+	snps,reset-gpio = <&gpio2 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 75ms, 100ms */
+	snps,reset-delays-us = <0 75000 100000>;
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+			&gmac1m1_tx_bus2_level3
+			&gmac1m1_rx_bus2
+			&gmac1m1_rgmii_clk_level2
+			&gmac1m1_rgmii_bus_level3>;
+	tx_delay = <0x1a>;
+	rx_delay = <0x0c>; 
+	phy-handle = <&rgmii_phy1>;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+	};
+};
+
+&pcie2x1 {
+	reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+	disable-gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		sys_led_pin: sys-status-led-pin {
+			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_usb30_host_en: vcc5v0-usb30-host-en {
+			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_3v3>;
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
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&sdhci {
+	assigned-clocks = <&cru BCLK_EMMC>, <&cru TCLK_EMMC>, <&cru CCLK_EMMC>;
+	assigned-clock-rates = <200000000>, <24000000>, <200000000>;
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	mmc-hs200-1_8v;		
+	non-removable;	
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;	
+	supports-emmc;
+	status = "okay";
+};
+
+&sdmmc0 {
+	max-frequency = <150000000>;
+	supports-sd;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	status = "okay";
+};
+
+/* USB OTG/USB Host_1 USB 2.0 Comb */
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	status = "okay";
+};
+
+&usb2phy0_otg {
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
+/* USB Host_2/USB Host_3 USB 2.0 Comb */
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+};
+
+&usb2phy1_otg {
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
+/* USB3.0 Host */
+&usb_host1_xhci {
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
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
