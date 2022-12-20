Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6860DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 10:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uIQi8BwEDgHmGRFed5PYGMcPSRtP3Smy9NNtWdoPpLc=; b=lpu6T6O9lI1WbE
	A9NfVd2Rqi/4xNoDyyp/V4fNr15vrV2Zbgn6eYPp0NlbcX8UEgGxQzRi/98RDJChVqKi967ZkrgYO
	irSTM7c3+dOYM4ghqv9GJ5MMNsrnjGvECq066/rhi++b5sBiWg3lhGPB1ckL3cOAIBydjFKlMnc+D
	H2Cs3q+YZvyyvgXR0T/5z8rWgVNKW7nfHhrfsC6MA8Y1KNyF2NxWhIKJiweRurT3XBO07iZEqvq7w
	C7yqUwT/cJQyGaQi+oISHcj2Sz1ffP0Zm+KMIlNicQaoCsyqO9nFTO98PSJLS8W/PayBxqF0Cqpr5
	cFkZNFDpbATob00ibwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Zqw-00DIIq-IU; Tue, 20 Dec 2022 10:28:06 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7ZkV-00DFaE-7v; Tue, 20 Dec 2022 10:21:31 +0000
Received: by mail-pl1-x630.google.com with SMTP id t2so11824307ply.2;
        Tue, 20 Dec 2022 02:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FA3e+3c7tfrpNagJISAwNU9Zy3rPj18qvbfGB/lf3rM=;
        b=K8DYMsmB0dIvJ00w6OAF4TgpX2WOHF4caj/VI0qQiPY+2AGJlDwXlbMMAa1GiZZ4E6
         CbD5yqhRkQ7QXogGjl3XPgnlEGqk4PeYPRnZ2ffBRucjBr7UGIlGiwhG8Zt5v0sKCRtv
         baPx+R3H4d+pbZ8YsVFIGcpO3F8orL4/86zR2vWv0wI1FoMLf4krAdJ7vsEWRW/lstxL
         9HRAqeSRhya+Fvu+5XmqFsiGIcXqQieYLudOCPhjg4wwMG2CSxcsTrsKRJ7EctiKLQ1n
         +xGA2W0su0wKkiye66xcNulpyAQh1XL+B1s+E667Ufo7wywwymTQ8vqt9sdu2W5Bqk93
         WK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FA3e+3c7tfrpNagJISAwNU9Zy3rPj18qvbfGB/lf3rM=;
        b=rZSZGIhpDSFVDl663oImG6SGHJuSyTY3bHHAij0W8vYFCLje8glGRVbY48y1jbRJPm
         alGvGOBqVpRz8NfpQWAsXDUHgJJu/C4Labk6i2JuMWTf5iGS9zdcG/0i6fZEqcXeibtj
         stY707kPaG93iqfbvLskhVuUPFjP6GKkhOpvR7CCBMCJ+/ZUKHwwvI4AGsm1SCMiAGU9
         8dBRa15OCxDQhnHedjp+NojZlMGYRO6KQdrLV1WE+ORzuGe5W8gvDcM+XoFwpSeeiTpa
         95akwDrkietTSNnFgAu6II+HsQ8B4nkwcR4TvlFksBvVJr8QUpe0U7CT5FG4BjL62dbe
         iPpA==
X-Gm-Message-State: ANoB5pknBYuq19+9KiIMrSpeh3f/Sq+j6dwGNKS7SUt/yo3P0bq6fndS
	B/I4IyUV1JpDTV66HQpcrMI=
X-Google-Smtp-Source: AA0mqf4BZ2z8BIz1c4HJAgQlpC+c1XJcvQZJRvXzmW8sCkQeNata8RGVqlwpNQhKHrgIegskyzrj7Q==
X-Received: by 2002:a17:902:c3c6:b0:18c:cee:b265 with SMTP id j6-20020a170902c3c600b0018c0ceeb265mr34475366plj.53.1671531683905;
        Tue, 20 Dec 2022 02:21:23 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.4])
        by smtp.gmail.com with ESMTPSA id j5-20020a170903024500b0018971fba556sm8923332plh.139.2022.12.20.02.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 02:21:22 -0800 (PST)
Date: Tue, 20 Dec 2022 18:21:18 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>, DHDAXCW <lasstp5011@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add RK3566 LubanCat 1
Message-ID: <Y6GMnq3AC7Kbnag8@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_022127_425225_31A82EE8 
X-CRM114-Status: GOOD (  15.08  )
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

LubanCat 1 is a Rockchip RK3566 SBC based
is developed by EmbedFire Electronics Co., Ltd.
Mini Linux Card Type Cheap Computer Development Board
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

Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-lubancat-1.dts   | 600 ++++++++++++++++++
 3 files changed, 606 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..84d39a3a8843 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -781,6 +781,11 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: EmbedFire LubanCat 1
+        items:
+          - const: embedfire,lubancat-1
+          - const: rockchip,rk3566
+
 additionalProperties: true
 
 ...
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
index 000000000000..af1abb38d45c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -0,0 +1,600 @@
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
+	dc_5v: dc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
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
+		vin-supply = <&dc_5v>;
+	};
+
+	pcie_3v3: pcie2-3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie_3v3";
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
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		#clock-cells = <1>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		#sound-dai-cells = <0>;
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
+    phy-mode = "rgmii";
+    clock_in_out = "output";
+    snps,reset-gpio = <&gpio2 RK_PB0 GPIO_ACTIVE_LOW>;
+    snps,reset-active-low;
+    /* Reset time is 100ms, 100ms */
+    snps,reset-delays-us = <0 75000 100000>;
+    assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+    assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+    assigned-clock-rates = <0>, <125000000>;
+    pinctrl-names = "default";
+    pinctrl-0 = <&gmac1m1_miim
+             &gmac1m1_tx_bus2_level3
+             &gmac1m1_rx_bus2
+             &gmac1m1_rgmii_clk_level2
+             &gmac1m1_rgmii_bus_level3>;
+    tx_delay = <0x1a>;
+    rx_delay = <0x0c>; 
+    phy-handle = <&rgmii_phy1>;
+    status = "okay";
+};
+
+&mdio1 {
+    rgmii_phy1: phy@0 {
+        compatible = "ethernet-phy-ieee802.3-c22";
+        reg = <0x0>;
+    };
+};
+
+&pcie2x1 {
+    reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+    disable-gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+    vpcie3v3-supply = <&pcie_3v3>;
+    status = "okay";
+};
+
+&pinctrl {
+	leds {
+		sys_led_pin: sys-status-led-pin {
+			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+    usb {
+        vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
+            rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+        };
+
+        vcc5v0_usb30_host_en: vcc5v0-usb30-host-en {
+            rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+        };
+    };
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
+    max-frequency = <150000000>;
+    supports-sd;
+    bus-width = <4>;
+    cap-mmc-highspeed;
+    cap-sd-highspeed;
+    disable-wp;
+    sd-uhs-sdr104;
+    vmmc-supply = <&vcc3v3_sd>;
+    vqmmc-supply = <&vccio_sd>;
+    pinctrl-names = "default";
+    pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+    status = "okay";
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
