Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68699C76195
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 08:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/yyQPX8veeq7YFnJ0zTg4FLdLr8aKM4YI3TPVOiV3g=; b=iHmrYaP40PSqxY
	5jJ1E7ELYspKc0fi3z6DOqPJfjHTdZ+WcAdyLGpjkMt2CZAwL6iQWZysjLgO9q46UoKzBZ2i//ePy
	I31SxAH1yOG92ICyECDeHFHAnsx90ej3bx/hQICYnvpTYgdXbHRnWQZGcPK+/1WR1sZZ1bKTQ7LE9
	sTvBrHVti6DjTCHBJxGPO9oCP2Bc+Sq6ejYzHbobC8l7xdwvZmpa3Y8/YtWKBoTmwgt2dET0jkS8G
	pr8VHni1Jm0X57KKjvFlvivK+fkLVOf+N2ugjusW7CRMOUzMsNJmSe1+N8T2TBTmULMPt2kouNj2v
	rxfU0xskwipDLhVRcmGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4q-004S9j-2z;
	Sat, 18 Mar 2023 08:38:12 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4Y-004S29-1D;
	Sat, 18 Mar 2023 08:37:55 +0000
Received: by mail-io1-xd36.google.com with SMTP id bf15so3320526iob.7;
        Sat, 18 Mar 2023 01:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nW/scCTY9Dmueil8S8WFtiNyT6dE9CaUDzdfsDXcttU=;
        b=ZgF5nT6i5jtnkCi9JA6sPCKaaRzw20EfQyRs1Ce4dVYwxEHiQT8sErjJsIgm9z3lr2
         OQNrrXgYZjsd3APgMl8WEeNIuPGjLzpVwIFqAAKLIrfMWirF5hags6eVxFeOqa3cYuW4
         gx21owrwi8hULDPDRYMECTD6CYraXX3hMnZi02psbpmcv8mo73oMBlFPyjLmcsZ2RsMy
         VH1XXj1WmjzYTyo7yV5569RwzDDW97o+OM9ZsrnG74NbjVXUdshe4ekjz9mVRJkobtAB
         0RSpKJ+Y3WpyUq3Ew8ft0OyOQGef3FlZONl3FaNIWnZesvqbqqefXvYoKM9NBUY9krS2
         AfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nW/scCTY9Dmueil8S8WFtiNyT6dE9CaUDzdfsDXcttU=;
        b=ie2rOGNoYhu+kD5XLUcUF93irwWk9yrjW1/Ba+rls4MPkUDsDlHz7h2HEqithH9Gxw
         NSfYCgft+5o7DDbNUxUXIve+Q5SOWtfLVyj++QhUPy1euqJy3oT9WsuLACEW3TRkZ0y5
         7bCx8o8e5TUK7mS+xBEX2bzJOKrgiO8uLz/pUUfAfPDRkAYwUQTBxkZd7fRB8RsIKZZa
         a7mzO4kvOn88tP9e6LJ/hMCWb31gYWoKrH1mEzlC/x11kzfI+NHKYIYAIGmdJEnhugWY
         SfEJ+sVa5QD5/ndW7ZNbDfvaQJVn8Sc3jweYVpk4Vf560/ZSnjBZ9C55BytF3QZ/htwL
         HUIg==
X-Gm-Message-State: AO0yUKU9f790/ImVZSQTpQfUp+eBl6EGYwWotlt8lkSpA2UHqCCeMoJU
	t+CKe8WT+w7WfLHe1UTHEZM=
X-Google-Smtp-Source: AK7set8TrXQXrZOn0kgtnZouj6F/JixV39r9b71jOeAjdyf6ZI7PXuvNHY9cSwsPyU/9rXjJMP6FMw==
X-Received: by 2002:a5e:8f43:0:b0:753:9316:76c with SMTP id x3-20020a5e8f43000000b007539316076cmr967563iop.21.1679128673213;
        Sat, 18 Mar 2023 01:37:53 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id h8-20020a6b7a08000000b00746041ecbf9sm1174834iom.39.2023.03.18.01.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:37:52 -0700 (PDT)
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
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Add FriendlyARM NanoPi R5C
Date: Sat, 18 Mar 2023 16:37:43 +0800
Message-Id: <20230318083745.6181-4-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230318083745.6181-1-cnsztl@gmail.com>
References: <20230318083745.6181-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_013754_422550_51DB3494 
X-CRM114-Status: GOOD (  14.51  )
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

FriendlyARM NanoPi R5C is an open-sourced mini IoT gateway device.

Specification:
- Rockchip RK3568
- 1/4GB LPDDR4X RAM
- 8/32GB eMMC
- SD card slot
- M.2 Connector
- 2x USB 3.0 Port
- 2x 2500 Base-T (PCIe, r8125)
- HDMI 2.0
- MIPI DSI/CSI
- USB Type C 5V

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-nanopi-r5c.dts   | 112 ++++++++++++++++++
 2 files changed, 113 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ade66d846a20..a315a8117b0f 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -84,6 +84,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-lubancat-2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
new file mode 100644
index 000000000000..f70ca9f0470a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2022 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyelec.com)
+ *
+ * Copyright (c) 2023 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3568-nanopi-r5s.dtsi"
+
+/ {
+	model = "FriendlyElec NanoPi R5C";
+	compatible = "friendlyarm,nanopi-r5c", "rockchip,rk3568";
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&reset_button_pin>;
+
+		button-reset {
+			debounce-interval = <50>;
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&lan_led_pin>, <&power_led_pin>, <&wan_led_pin>, <&wlan_led_pin>;
+
+		led-lan {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+			gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_HIGH>;
+		};
+
+		power_led: led-power {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_POWER;
+			linux,default-trigger = "heartbeat";
+			gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-wan {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WAN;
+			gpios = <&gpio3 RK_PA4 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-wlan {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WLAN;
+			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie20_reset_pin>;
+	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&pcie3x1 {
+	num-lanes = <1>;
+	reset-gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	num-lanes = <1>;
+	reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+&pinctrl {
+	gpio-leds {
+		lan_led_pin: lan-led-pin {
+			rockchip,pins = <3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		power_led_pin: power-led-pin {
+			rockchip,pins = <3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led_pin: wan-led-pin {
+			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wlan_led_pin: wlan-led-pin {
+			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie {
+		pcie20_reset_pin: pcie20-reset-pin {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	rockchip-key {
+		reset_button_pin: reset-button-pin {
+			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
