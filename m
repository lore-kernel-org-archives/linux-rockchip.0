Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C97C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 00:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3q+BsdyyZwtIyc7b4ZMcFJlPn5c2+v02wjc0M0ixNNY=; b=ybzFTymPmZs79t
	yP9J4GcDUbJ2ylayttjWJjlXh/nwgv0mER9Yp0pWqdrfcioNmtwVYH1GVTkQjN5jiNIevHw82DlTa
	urXqp5Ystjgdf9pipkTJdt8hzwjyrhnYEBd6rJCqhxfA+thPbs30SE8i8Ji/1+UCSIZ1kWpaGVMa0
	zw7QA4LM0XQ/9pZdSQv3ibeck/66qly58oCam04uC3XeWYSASnIIz4a7J26U0v/f4TBdC+Bn7gKn+
	3GXYNacLyxVevP1PaTkOQrsnIXezsnUA/9UQwZT0KLtxONWcPGQm1gb78B7VSzQU9hu7i3WgOdIYf
	MwIeDsT28od6/LSlM39A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgE3H-007fEl-0d;
	Sun, 26 Mar 2023 00:16:03 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgE3C-007fDX-26;
	Sun, 26 Mar 2023 00:16:00 +0000
Received: by mail-wm1-x32d.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso3062890wmo.0;
        Sat, 25 Mar 2023 17:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679789756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q1Sh3NFXp4ir6XRWRZRmPrz3mlgkVC//DmmZmhPglLQ=;
        b=L9s7nTrMeJE/CJnH2LdZ1ViHgZQbuLE1JTBDAqEHrlkwtZWSk2OZMWSFp8DgisQD4f
         2wtAHn7w2ejt9aMF5nAPKpkEVINyRHJKj+OzJrozzFTF6ywKWWOMdkuJAqd+SKlDghwu
         y4n6bFQ2t+At7wMcAq+0Ccb4g1eyWDC01huQ9w8ReiroxbqwuMqT+aqQsXo9egJE+qd1
         rYgwbUoSC0cnE/AiL8AaA9myDQkLUJEiJ09NgRw1I7yRTzFzcSDn0rAH/qXQ1ajgfn98
         iB1EKi93ewckBOPr12iOzWkaaL2lrDmzggMA603QmYjWxy994W5aV+1w/JaUP4JiSwtW
         j7iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679789756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q1Sh3NFXp4ir6XRWRZRmPrz3mlgkVC//DmmZmhPglLQ=;
        b=RAs0xwUxwa1xib1j9UDyatXWB+P/BgsiHCPtFiYoduPCRGD+GZgfE/eNXekkSYa+Pq
         LourQ5QUcDBGo7Qrg5DeZg/Ptmh6LRPlDt9G+qkAO12/B+DAJDZmDkGY7KccQ36k1fGV
         Qfo/g822/EeX14l9LGUGGpcZffO26chlaJIP0p8wx6wwYVkzWLPmkqBZjm66/pAEC8w7
         Hz6BY/y2vTFLs9TWRpwTj3VAl38Jb2sfa+2yJeKhd4ufqBogtxB165vnmZW037A8Lt6J
         NegAEcRjhnF1FG3uV/1xr/yrCxXdUCgkadD1CqbwTfpi+Re7V5MRmp8EffgQCa2Vv+Ms
         ixTw==
X-Gm-Message-State: AO0yUKVxyZ+wNhdOibqeQRUvqBqYPxWkKAyU+lk04grksKTXta8kgnga
	wreMEkPvY2dOds98zOI06sk=
X-Google-Smtp-Source: AK7set98FrLiXBnESouhNJWG0k7lNq42sINT3jklbIcKjXXBz8b4wtyYracAtxDC8x/RTNYK5Csq8w==
X-Received: by 2002:a05:600c:2312:b0:3dc:4fd7:31e9 with SMTP id 18-20020a05600c231200b003dc4fd731e9mr6552181wmo.7.1679789754500;
        Sat, 25 Mar 2023 17:15:54 -0700 (PDT)
Received: from wasp.lan (cpc126518-gtya5-2-0-cust190.4-4.cable.virginm.net. [86.19.196.191])
        by smtp.googlemail.com with ESMTPSA id t20-20020a05600c451400b003ee443bf0c7sm4173934wmo.16.2023.03.25.17.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:15:54 -0700 (PDT)
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
Subject: [PATCH 1/2] arm64: dts: Add basic NanoPi R6S (RK3588S) Support
Date: Sun, 26 Mar 2023 00:15:34 +0000
Message-Id: <20230326001535.149539-1-bigbeeshane@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_171558_735777_4AA5E05A 
X-CRM114-Status: GOOD (  12.52  )
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
index 000000000000..21b26539a855
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
+	compatible = "friendlyelec,nanopi6", "rockchip,rk3588";
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
