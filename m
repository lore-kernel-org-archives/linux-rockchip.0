Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E7C0C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj2Z8cq3IBKSFcosUG0S8H6ItK3Wy2pF2ScRgtar5m8=; b=fyNrg4a1ZG/tOw
	oKR1lzeBlry1rz0vyVMmmfSbxs8riDFh0LQSeNopoVnUGZVwJGbxCNa/uAY0JjJZ3s47GTD3VItMm
	p6OoDE53k//77W5HkAtmyYMtnu3MaOUOzZjCMG9sVWHe9vPdXHxnCNCYs+Gvpsq1XBAeFg7pc5CMV
	8VhNUoPQ+IX+aiIBHaD/+rY5t0SRRZkKDAFpkozPiKFbgJPrSHJWi/3NKypPd0l609/b0/gQQx1bY
	vA7mTrAz+YSgjHl3xb9VWbsl2eR2bqCLVTRS8LeEBFhyrYus7wY4gNkAjnZrM5PbZMMS1qzGKMdfp
	sCwbm6U2eJVEaFYot3lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTal-00DzK9-0t;
	Wed, 15 Mar 2023 16:03:07 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTab-00DzFR-1D;
	Wed, 15 Mar 2023 16:02:59 +0000
Received: by mail-il1-x130.google.com with SMTP id 4so10603013ilz.6;
        Wed, 15 Mar 2023 09:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678896176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lFzqFZRMZgGQdmFzxV9ulZZAbwZchm//ia0DXnJhhKw=;
        b=ncRmZFHUwrkXVVHHCGFYzwNyo5iHMljChv9O+6aMRxW3ZhxGZjAGztuRedOdHkEOaR
         5mKYS/mHqJUYQdlqT3c2hBzKiuInrVH0NWBCwVXQtzE0uMv1m0slEl/z14v55rOo6OXJ
         A1a4O9qmgiJnipBkHRhCp4jl3jJ7ip37ebh7F4ZMHlIwkHWDAiGqvVAA2yu1BhkeTsLl
         OwvuhnE+oYvQSUFQuOW8Ux+eulnpqoslMqLi+o8UwAMfLK7pY/GYoB1QAA0q3yYxjdbr
         kf3W9x5i6F9pQ1mnwMGwQfepoBZDls/wIxioKISVaaOHN4XGGWnCcSO0L9SVtf1XOYKn
         pbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678896176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lFzqFZRMZgGQdmFzxV9ulZZAbwZchm//ia0DXnJhhKw=;
        b=nMzEbz64TwAwFhgW4sC7niR6MKKYBHucGbx+NQ2Ixt1d2yyHIeEJdHFMXVMxQJvUda
         rQSnkwgw+ZSsCORfHgxCUchLeCMqfrQIAfBcuaLEAaREAwPQg2gUqIEZtIQK2DKZTs7a
         WajNoh8Qc2UdZVbn6+8Me00umgObi7IWE01uTQXxjraRrN6CU7clvVYuKpe/XNf/2Zhn
         xHh+C2IeDUXlQOMjzCdb7keZYjV52jPY527gK3t4+sxo6zzovbi59SK3XHgWrltlqyx6
         8JG5IsryWra6gmz5dmInvHPhZVqQKkGfcCwpIaW59BTTZ8eYmMUatuFjkD3oTpc1C8N7
         4CVw==
X-Gm-Message-State: AO0yUKV5vN8PhsdYCOJfPRVreuRwEK7VsTSO0YYvyIx5e4n/fnXof156
	fMXsFS71bvAEbMC/QaQIhPo=
X-Google-Smtp-Source: AK7set+QYCuqCM8GoBYnVx8BMDvR95or95rrZy5638dGLI13hPlwpxUyIrQeWAMDcM0TsiBkp9mR2Q==
X-Received: by 2002:a92:dd88:0:b0:318:a732:2b6f with SMTP id g8-20020a92dd88000000b00318a7322b6fmr4930587iln.20.1678896176540;
        Wed, 15 Mar 2023 09:02:56 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id l2-20020a92d942000000b00313fa733bcasm1730725ilq.25.2023.03.15.09.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 09:02:56 -0700 (PDT)
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
Subject: [PATCH 3/5] arm64: dts: rockchip: Add FriendlyElec NanoPi R5C
Date: Thu, 16 Mar 2023 00:02:26 +0800
Message-Id: <20230315160228.2362-4-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230315160228.2362-1-cnsztl@gmail.com>
References: <20230315160228.2362-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090257_426707_3FB2BE0A 
X-CRM114-Status: GOOD (  14.87  )
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

FriendlyElec NanoPi R5C is an open-sourced mini IoT gateway device.

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
index 000000000000..26b391910464
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2022 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyelec.com)
+ *
+ * Copyright (c) 2023 Tianling Shen <cnsztl@immortalwrt.org>
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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
