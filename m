Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48A19C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 09:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORmtEtOxnlzMz5mi+OlAkrhcyLBKuylK/SE5Zf54HKU=; b=U9HTmkSXQQ2Uzl
	J9/yZkV+xn1ssVwc/rPIursZcGmMPvuSSGtBZ/uL0WD5OJCRF2mwUExyBpYpL6Q2Mx4xNNdPY08Q+
	X3VcaBNPyWLhE9Ob9YqN5zkmmndbfUVKp/kdlA5IwXcAyN0vcR/lNgItKUflB9XTzIkNt0ds8x/P4
	9uxPwQjO/B2hKZfy+QQK6xzn6fnPUDU1Z7Q+X3YFZqErUl+IYXiZd/NbRHdVzWhDXh0EvIep3E5jG
	hY6MSeWKaAxBAKr9OYlt4uNwvjfhB04RJi2jwXU3D4VpucXSPKp2YF/HUJ27c0w4iA3ATak0uq7E1
	qpIA9wsyxbn0YcD5fUUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ8Pb-00Bi3X-4o; Tue, 29 Mar 2022 09:45:15 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ8PF-00BhxP-UY; Tue, 29 Mar 2022 09:44:55 +0000
Received: by mail-pl1-x62e.google.com with SMTP id c23so17163597plo.0;
 Tue, 29 Mar 2022 02:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=faYHMKnLq2irGAWjUiczrO+q02J4dyijYrMoF3VOQuU=;
 b=U34bNbo9z64kBwVLkvLwZqtubtjO+yTsK2oQkHnTdgXiq0oXKeTvodl0mq0ozYVjIu
 +pt6ij4Lgieqi6rn8sYBxQdLRdCb0+ww/w7mxLf5+DhffFSw95bKGSxeXC396i/8UEeG
 5yNBmCjgYO0wzSL/mgDh9hVgEhReofzE+hh0dI33alAFwzZiTJX5fHFGt4RePaBYQyQo
 wZdXO3iOdZRZE6e1Q+aMWGii8iufl6XX1Ej//KCIIzcfqTI4HvpPdi8cFFc8iB84iiz0
 nN9eQ7TQmUUh7p/fLAurHN7+In6CjFRv7nUAIwSbfIW3pXcBMnwLLBjKfgVbrQRbPZsd
 tGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=faYHMKnLq2irGAWjUiczrO+q02J4dyijYrMoF3VOQuU=;
 b=boTfDbS6dzv/8KKFnzi4IUoK49CS90bXUPFTKTtpQyuuSd3wDrpXj2NlIs5Mek5jio
 wM2VCoRR4/tEEgNtJaOfxoQJN/Qkmit5i4nroLOTi/BSodwtyN3XO6o6V8Zasp7zvkEC
 bdhDwJiYdua6C8ePlhMTBolMDEUgSynHCkdyXCxC+eRo7dyu4X5VokpHFGgxUDIzlsGc
 nIusuib9ydgz1VeeTsy98t0pNvKyK3Ns7GNTodbo2wt4BZhevGFXbzeGeecdv4JquJSX
 p42AnKNvACn6Eu8maQZkOeLeGHck9uUA/Do1K6ai5xBAoqk2G1/c3Vwc3SV0uWi14uHm
 gI5w==
X-Gm-Message-State: AOAM5318pGtTAnPGBhh1dJBVcjWAJKvDD5N8YHYDW2PkW3uWxi0/fnRr
 4/ixUGvqYbE6SjxcXnLiPna5OYeLHGW2dQ==
X-Google-Smtp-Source: ABdhPJwk+jfEycE9pGxeAaKidfEnKXmTv1f5Js813FSP/ZTGWNUsQyfjygufdcJwZ0mYNQrLSoPnow==
X-Received: by 2002:a17:90b:4d08:b0:1c7:7567:9f6b with SMTP id
 mw8-20020a17090b4d0800b001c775679f6bmr3738839pjb.134.1648547093216; 
 Tue, 29 Mar 2022 02:44:53 -0700 (PDT)
Received: from anyang.. ([106.250.177.234])
 by smtp.googlemail.com with ESMTPSA id
 m15-20020a638c0f000000b003827bfe1f5csm15090968pgd.7.2022.03.29.02.44.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 02:44:52 -0700 (PDT)
From: Dongjin Kim <tobetter@gmail.com>
To: 
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
Date: Tue, 29 Mar 2022 18:44:46 +0900
Message-Id: <20220329094446.415219-2-tobetter@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220329094446.415219-1-tobetter@gmail.com>
References: <20220329094446.415219-1-tobetter@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_024454_014498_74FD1B76 
X-CRM114-Status: GOOD (  15.16  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch is to add a device tree for new board Hardkernel ODROID-M1
based on Rockchip RK3568, includes basic peripherals -
uart/eMMC/uSD/i2c and on-board ethernet.

Signed-off-by: Dongjin Kim <tobetter@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 406 ++++++++++++++++++
 2 files changed, 407 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4ae9f35434b8..81d160221227 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -61,3 +61,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
new file mode 100644
index 000000000000..d1a5d43127e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -0,0 +1,406 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Hardkernel Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Hardkernel ODROID-M1";
+	compatible = "rockchip,rk3568-odroid-m1", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac0;
+		i2c0 = &i2c3;
+		i2c3 = &i2c0;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		serial0 = &uart1;
+		serial1 = &uart0;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	dc_12v: dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		led_power: led-0 {
+			gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_RED>;
+			linux,default-trigger = "default-on";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_power_en>;
+		};
+		led_work: led-1 {
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_BLUE>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_work_en>;
+		};
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
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
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	status = "okay";
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x2d>;
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		 fcs,suspend-voltage-selector = <1>;
+		 regulator-name = "vdd_cpu";
+		 regulator-always-on;
+		 regulator-boot-on;
+		 regulator-min-microvolt = <800000>;
+		 regulator-max-microvolt = <1150000>;
+		 regulator-ramp-delay = <2300>;
+		 vin-supply = <&vcc3v3_sys>;
+
+		 regulator-state-mem {
+			 regulator-off-in-suspend;
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
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	leds {
+		led_power_en: led_power_en {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		led_work_en: led_work_en {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
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
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_3v3>;
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
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe &emmc_rstnout>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
