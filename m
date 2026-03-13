Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A23105F7A9
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 13:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQchT3Z3/WEmheZPlRkaPIl93Y8OpS1KrCEGl6ZTJ2s=; b=EHkyc/YC9/+w3e
	IxTQrtU+jqmvaV3G6OyPqcA2ksRp6lGxrvgwORUJgps4nB7tG0PUlD7VTBz0c7gbrHWKHwxqmLWXO
	HMP5eXricyhz229vMs+/YgOh4kP45K7XC2S3jSbba/PMDkf7LF+RNnbEQ9wyvLTACx65TY7CFRCXY
	O6D7Q6mKCR3R4AmwLeXW7Us3d7yc00sY4EmaC/5Qlp6BQsT3LK+bPvi53wWaVO6yaWDsORT3j+r+m
	wqZmpGw04zT4/rGvYfY+sxrN3a3vv0uSyJ9oQIjB1Uy0lNvPdCmQ9rOaYohlpfuHnp6e0eYsyPWWA
	na2AgMcEejj7pcb/WW2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12Ih-00000000BWl-3Llj;
	Fri, 13 Mar 2026 13:11:35 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12Ic-00000000BSe-2cdc
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 13:11:34 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-128b9b7e3edso2678928c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 06:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407490; x=1774012290; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96wIKyTh0AzqeditJlQ3kQuExY/YGJnegboCLTZQauE=;
        b=EevOmYYf7saDs9awZiBPKEUK1pINuxMWZ+moh2fi5uEKDYLJxkAkic9IP7H3HsCJB3
         6PlJXq7Kv2e1/GzfNRQuVPmxVuiiNg1i+RoXZF86NzBT5lMUVv4tjpLB0kOKscd2u/F3
         YCHzePgYmh4h0OlqWWZebXnhaIdp1cdVZDSqfB7CwhgK7/I+p/hwSfOtO8TBZXt92ykR
         Obmf1GSFqCJOtMw2rwkHTenvZchVGhnbUqqKQVCqQrzyWg3NoyO0lIDV7cCWqyeGbAYx
         glGGc+YaeQTShD/NNKU+PirCxscZE5Q3WmSUXmYIfEaaE47i5GQGIH/eYxoiJeyZbpTd
         FNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407490; x=1774012290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=96wIKyTh0AzqeditJlQ3kQuExY/YGJnegboCLTZQauE=;
        b=Q3aOQ9X8pP/jWj4I2OvbEVdcA0GAXbN5PF7uQQPvXL8v/Szo0QcNt++AoGHrPJyehK
         6FZEs/KiFoKQOI7HetoZBjsD0IT12XR17+bEi/M339KSkPe39Cx8H+V0F6KgJJG/RZp8
         /kB/obat4FPjwRxZDH/pQCklhcW/1gYKe9kBiKx8HqgpRDqjEdEnWvmmx06VlGoJ08oR
         /DWlE7OJQuR55kWaCIsgXKlWiQY8BpFxYjQRbm7PMqTR1XAu+RjxKH5j+4YprL9keGns
         bHpGafPLVOAc25IP5TypDC7snxGMpg0YNER1Zf6A1LCw7FkC6S6wE5AMgYpmsdbRzaQy
         ioNw==
X-Forwarded-Encrypted: i=1; AJvYcCW3zpM+33o4d1CzTCkFKwcU0A38e3S9N+68GHxuYV/soM/ciRKPV/H//9R/BohOnNjDNMwZ8HJIlmucSZbprQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVB5vzZ8Wmu5wiTlkMKgW1ynMyt/z7raZIxfFYTGTf+b5dgNlf
	i71pfjKfcd+idCxolbYgJEbzFFBF+udVMKyFCdQbYoMtiq27/BXerBAR
X-Gm-Gg: ATEYQzwZcvE/LXYtFCsQmxnMZnGWOzXrANQbpkIFtoFIT4mrKhZqXy1EaF3sPWbexFw
	TmTVzog+Q5tvowwjcuhqqNQ/zjho7R6CfLRINfESP7TeHg5flzuPI/c3WwzbzvMffbEJbaca9gb
	0MC1gjaNYae/ELqWKQa/UwMVu1TOlnWDLFAcGSezIrKUuJAMo88k2jwLdSBW94w3KBl2YqgxgmI
	ztMQjSazhIvO7ddQsNcBZf9/QzE+sbwKsHTugVSYS0sx7/e/g72sU7p82628XfN2ZudYg53ej/G
	LT2+9OCcmee8lkkIEx3bIIkzjHbZXB8U7sWQnCPrm4fP8ukMTZ+KMab08WhZ8+gCvIvYYg6LhPF
	E5Hlzk7YuDDlPd7+BSDNM+y/5SM3gzrEsQfoBLzviJFPrDF1ln/ab31lOhjnMZWJGahdYl8D3mi
	GhKmAuL4gxblF58XbzXq709ohGl1sGAo+7M1mXuvdwNzBituDeRmv65CnW/AfRM4DGFsQAjirX/
	5uj
X-Received: by 2002:a05:7301:1688:b0:2be:ca4:e13d with SMTP id 5a478bee46e88-2bea55f5207mr1416328eec.30.1773407489117;
        Fri, 13 Mar 2026 06:11:29 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5702e5sm2602315eec.29.2026.03.13.06.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:11:27 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v7 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Fri, 13 Mar 2026 10:10:58 -0300
Message-ID: <20260313131058.708361-4-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
References: <20260313131058.708361-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_061131_271522_E88FD323 
X-CRM114-Status: GOOD (  17.55  )
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

From: Fabio Estevam <festevam@nabladev.com>

The Onion Omega4 Evaluation Board is based on the RV1103B SoC and has:

 - 256 MB of RAM
 - 256 MB of SPI-NAND
 - Ethernet
 - USB OTG
 - Wifi
 - SD card
 - Camera connector

The details can be found at:
https://documentation.onioniot.com/omega4/getting-started/

Add the initial support for this board so that it can fully boot into
Linux with the root file system stored in the SPI NAND.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v6:
- Added SD card and SDIO support.

 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1103b-omega4-evb.dts  |  63 ++++++++
 .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 151 ++++++++++++++++++
 3 files changed, 215 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 716f5540e438..d0154fd7ff24 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103b-omega4-evb.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1109-relfor-saib.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
new file mode 100644
index 000000000000..d63aa3515403
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2026 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "rv1103b-omega4.dtsi"
+
+/ {
+	model = "Onion Omega4 Evaluation Board";
+	compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0	{
+			pinctrl-names = "default";
+			pinctrl-0 = <&led>;
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "sys";
+			default-state = "on";
+		};
+	};
+};
+
+&fspi0 {
+	status = "okay";
+};
+
+&sdmmc0 {
+	status = "okay";
+};
+
+&sdmmc1 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		led: led {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
new file mode 100644
index 000000000000..eda0189af7a8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2026 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include "rv1103b.dtsi"
+
+/ {
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		post-power-on-delay-ms = <300>;
+		reset-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc3v3_sd: vcc3v3-sd {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwren>;
+		gpio = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+		regulator-name = "vcc3v3_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	vccio_sd: vccio-sd {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_volt>;
+		regulator-name = "vccio_sd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_HIGH>;
+		states = <3300000 1 1800000 0>;
+	};
+};
+
+&uart0 {
+	bootph-all;
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+};
+
+&fspi0 {
+	spi_nand: flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		bootph-pre-ram;
+		bootph-some-ram;
+		spi-max-frequency = <75000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "env";
+				reg = <0x00000000 0x00040000>;
+			};
+
+			partition@40000 {
+				label = "idblock";
+				reg = <0x00040000 0x00100000>;
+				read-only;
+			};
+
+			partition@140000 {
+				label = "uboot";
+				reg = <0x00140000 0x00100000>;
+				read-only;
+			};
+
+			partition@240000 {
+				label = "boot";
+				reg = <0x00240000 0x00800000>;
+			};
+
+			partition@a40000 {
+				label = "ubi";
+				reg = <0x00a40000 0x0f5c0000>;
+			};
+		};
+	};
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "disabled";
+};
+
+&sdmmc1 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-sd;
+	no-mmc;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_cmd &sdmmc1_clk &sdmmc1_bus4>;
+	status = "disabled";
+};
+
+&wdt {
+	status = "okay";
+};
+
+&pinctrl {
+	sdio-pwrseq {
+		/omit-if-no-ref/
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc {
+		/omit-if-no-ref/
+		sdmmc_pwren: sdmmc-pwren {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc_volt: sdmmc-volt {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wireless-wlan {
+		/omit-if-no-ref/
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
