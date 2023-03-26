Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09BB2C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 18:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFmcU8jCPDxGEzeys6+qYk4byLBzKjqblZphoFYH6e4=; b=lFUG0kITpsxOF8
	MCGzu/8X0+N+FOOgjaF+GIl7UC8aF/yRMiA1TsZONbbNwNVmg2U4XD8ayIVqWxnus9BcpNryzJsJx
	4GQoQeKgd2Jo+FR79INmqol2sQo1JrQ+/fb0qkwO8g6nLNfFXq4wn39xF5A27U8lWllyQMLjREFue
	dXTQAytLa8hCntV1FI324S1BSZh6/BlIgxF1bQj7QKnQZuh76iiBDQovThjmEfLbq4agIrNkWVwks
	AAtyZO7MFEk/5AWiPtzBzD9FBIf/Fu9XkatrMWW+Wlyg86UekCfYYDrz//oQbflPYfWYX/JMrTbmy
	n2ahYIzxR1ucdCPCL1cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgVJx-0091sY-0K;
	Sun, 26 Mar 2023 18:42:25 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgVJt-0091rH-0p;
	Sun, 26 Mar 2023 18:42:22 +0000
Received: by mail-wr1-x42e.google.com with SMTP id v1so6498302wrv.1;
        Sun, 26 Mar 2023 11:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679856139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wgqnsrfkL76jzLCKncLrfF0GPI0QEM+cSOxrzCexZZU=;
        b=hC22Y0WScJ9Cj6pJ2gJ2fMMG5IJh8x48S8c1+WLaEYj56YSt9sc96yd3bblaj8g0AA
         r+2BEE8KlRM9pxoyqu/lb/RFWeu4Uzet1mL/tZ3xSnlBwpJgs+bfG3L6gWRaV/qDrqRZ
         i8fOYQmzft2IAfllxnl8+PirkVkpHxADSRptcvQbYa9C4uS/pHAqP5lLenK8N0puSpeZ
         Q/UBoqHxReAriskymU+VgABR+085MnYKz2rKjfoNcdIKLjFkTTecZn2PBca07WM8Gx+F
         H10Rb2PMYFG3F8AimsGLuD+43Q0JIlz8I3g7VlUZ6/iwbstEPJCEbY/EQZaiB+oXNYt2
         gfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679856139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wgqnsrfkL76jzLCKncLrfF0GPI0QEM+cSOxrzCexZZU=;
        b=1Z6REsMgVVi3A6sxxruDOW19Q8algvzShX3L0V9QKv2nwiBpGYNDKBX+tj67ensebt
         tEcfKkruIdJnxnVCX/mZyqAiocsgYkpAgHcq88ZIpfgaaWZ87Ny1xTAMWBYcPBtwM1qh
         afnx9v2CZwCeedmwkJi66/GLbIkkdWLCJUX2DCRWTvkTM8sfBw2vQqOAEwyMwYkAPg4A
         2zmld075XzxdCqLooMSrTkxS8eB2X9RWa6BzfqU1EwxDXQjHkWsO2a9GwnPqZk6JZ6Bd
         dRFlUxr7jeJzLMpwKrNZFPPUbOkEhVqUrPmI3sC6Fy42ZDRLU7fD55k3dgop89MQ7fZz
         tY/Q==
X-Gm-Message-State: AAQBX9cEGW0Zo+lrQmIhw6ufwNdq0zeCaMJVsOWH/eycbIj6vf0OoXcE
	SRSFfFHNa2fCLFfVXukMCrtqN3YQhRqsew==
X-Google-Smtp-Source: AKy350YSItVYu2768t2b/EWfC5QuV3MRJMX9O0GqKeFGuDCXabJgUE/oz5TTL5YU+uHD0hv75IDl/Q==
X-Received: by 2002:a5d:4e90:0:b0:2ce:a85d:5319 with SMTP id e16-20020a5d4e90000000b002cea85d5319mr8434686wru.39.1679856139274;
        Sun, 26 Mar 2023 11:42:19 -0700 (PDT)
Received: from wasp.lan (cpc126518-gtya5-2-0-cust190.4-4.cable.virginm.net. [86.19.196.191])
        by smtp.googlemail.com with ESMTPSA id a6-20020a056000100600b002c8ed82c56csm23194725wrx.116.2023.03.26.11.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 11:42:19 -0700 (PDT)
From: Shane Francis <bigbeeshane@gmail.com>
To: 
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	bigbeeshane@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] arm64: dts: Add basic NanoPi R6S (RK3588S) Support
Date: Sun, 26 Mar 2023 19:40:38 +0100
Message-Id: <20230326184040.33008-1-bigbeeshane@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230326001535.149539-1-bigbeeshane@gmail.com>
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_114221_317979_DAA77040 
X-CRM114-Status: GOOD (  13.09  )
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

This adds basic support for the NanoPi R6S SBC

Currently working :
  - UART
  - mmc storage (internal)
  - RGMII / GMAC 1Gb ethernet
  - SYS LED

Signed-off-by: Shane Francis <bigbeeshane@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 126 ++++++++++++++++++
 2 files changed, 127 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 99a44c400d6a..39cad757d29d 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -91,3 +91,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
new file mode 100644
index 000000000000..c9e9df669e11
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
@@ -0,0 +1,126 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "rk3588s.dtsi"
+
+/ {
+	model = "NanoPi R6S - RK3588S";
+	compatible = "friendlyarm,nanopi6", "rockchip,rk3588";
+
+	aliases {
+		mmc0 = &sdhci;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	gpio_leds: gpio-leds {
+		compatible = "gpio-leds";
+
+		sys_led: led-0 {
+			gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
+			label = "sys_led";
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sys_led_pin>;
+		};
+
+		wan_led: led-1 {
+			gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+			label = "wan_led";
+			pinctrl-names = "default";
+			pinctrl-0 = <&wan_led_pin>;
+		};
+
+		lan1_led: led-2 {
+			gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
+			label = "lan1_led";
+			pinctrl-names = "default";
+			pinctrl-0 = <&lan1_led_pin>;
+		};
+
+		lan2_led: led-3 {
+			gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
+			label = "lan2_led";
+			pinctrl-names = "default";
+			pinctrl-0 = <&lan2_led_pin>;
+		};
+	};
+};
+
+&pinctrl {
+	gpio-leds {
+		sys_led_pin: sys-led-pin {
+			rockchip,pins =
+				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led_pin: wan-led-pin {
+			rockchip,pins =
+				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		lan1_led_pin: lan1-led-pin {
+			rockchip,pins =
+				<1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		lan2_led_pin: lan2-led-pin {
+			rockchip,pins =
+				<1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	rtl8211f {
+		rtl8211f_rst: rtl8211f-rst {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x42>;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-id001c.c916";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8211f_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
