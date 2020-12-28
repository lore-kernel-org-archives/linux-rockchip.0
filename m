Return-Path: <SRS0=U8bK=GA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BDB2C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Dec 2020 20:28:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F0AF2222A
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Dec 2020 20:28:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F0AF2222A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tadncoo/HiepeEaXJEkGYw7LHnbIsVp7utvQghHQpxg=; b=P41a7uZiY1S3Szva3qih4aDf/N
	wQ9PaIZWVH6Q6aKWW+zxpLyzzX80/no9EPEHRX+7YVoralbuJSLKHmwsfgwo9xFaLQu+HO7hYMLHr
	osSOu0ZZXEgYHFg+Dsnuu8C0JfCKsDZEZ7eAnJYpR1R3mP2DuFQpvU+mdS/VTJNYKiS6dO6nPFQF7
	wjyTP8Plkvo5uiRFGl/apLAs9xQmf7lzMMB/x8LVBiAjJoI8C5c45R1XNISPQvaowngxKmtttGnc5
	k30ZwSbt2eWr1xB608TPQNwgXjPsxrutvrz3QjIQEVThc7vJR7NEMPtzoZWDWXwo5Az4d5isJLG2f
	K5Dqto2g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ktz8H-0007tG-TZ; Mon, 28 Dec 2020 20:28:45 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ktz8C-0007sB-H3; Mon, 28 Dec 2020 20:28:41 +0000
Received: by mail-qt1-x830.google.com with SMTP id c14so7721616qtn.0;
 Mon, 28 Dec 2020 12:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=mGTgZ9y0sznFu389i8ixc9xFKhiElZYdIPiIEFBsaiA=;
 b=p8vaQ4SyHILYHJii+BFXoM8az/ULqABmoz5/yj2Xd+TI16+3mCnZznQoaUEbPaNJLb
 nPW6OKCoUrtbUOg50gUozJ1RDGmDYc7lppVkkBGxWnYnnFXromDwgaXujb4xPCIBvmDX
 enIfSlESGRdkxC9P5NL6hZMLnWv4/yq46xFKZ5XU1j7rRXrJQZOLZuuc/xI7sFxEWrob
 17rfs95Rj4CXMNx1uIXAN8o+JvDD+/cjFDjI7Sc63ed5RqLwrHVJq5FJVKTmTYUkMVRy
 4pozwLTPENkzVYDOTtMlz/a+dsGAM5sTCfC5m56SpYRlQc5eF2IS0NtyjPtOkqzi2+sT
 cIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=mGTgZ9y0sznFu389i8ixc9xFKhiElZYdIPiIEFBsaiA=;
 b=Ez3l3SQlp6+IxJTc/NKjS7IIr0mEm8LFlo+ZOp22BYm4s4Q730Q5/5dW2gxH/lQH2m
 mNprCrpatudqWT3WRECi58f+AqUaJ0ZtLbubqqu+gwOiT6+GB36sXB9u1F9x32GimBJJ
 bda6/Mykm2+Uu7W4RSlDMVVa0mC50eM78OzZZGspy4yWmDbG2kGd3RZUMLPypiGm5x7X
 Sh4tLwsVseb1qCpFpKLZoswF0RiWDVfaUngo6NaDFd02TXJvAeqmcDfvWitH8MOP1q30
 ZEK6n8d10SnmNGtOr5b/jUJOZxkzHA6P49I3ZGBCdjqolaVjKKLgGSIGKw7BS6r5PoOv
 0uvA==
X-Gm-Message-State: AOAM531s8E0AvCpPMPGq39KOfJaMZhOszPlWivouc5KybmJZ8L7xX/kw
 gym2jGflfbhlAr0uyllRyYy5+BH0gFZOVnuc
X-Google-Smtp-Source: ABdhPJwUzDCrN4dj2SuVfeeBgEVO9ga+VjTGrcCskFQbJ7zC26fbaYj/2NJt/9z8L/7mtoszg8kqiw==
X-Received: by 2002:ac8:5187:: with SMTP id c7mr45663547qtn.12.1609187318467; 
 Mon, 28 Dec 2020 12:28:38 -0800 (PST)
Received: from marty-x570 ([172.58.230.134])
 by smtp.gmail.com with ESMTPSA id y187sm24842314qkc.120.2020.12.28.12.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Dec 2020 12:28:37 -0800 (PST)
Date: Mon, 28 Dec 2020 15:28:36 -0500
From: Marty Jones <mj8263788@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH resend] rockchip: rk3328: Add support for FriendlyARM NanoPi
 NEO3
Message-ID: <20201228152836.02795e09.mj8263788@gmail.com>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201228_152840_621604_DA232155 
X-CRM114-Status: GOOD (  16.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From 7fc1fbf4d223ddf911f04adc756e41683cbd2948 Mon Sep 17 00:00:00 2001
From: Marty Jones <mj8263788@gmail.com>
Date: Mon, 28 Dec 2020 13:01:28 -0500
Subject: [PATCH] rockchip: rk3328: add support for FriendlyARM NanoPi NEO3

This patch adds support for FriendlyARM NanoPi NEO3

Soc:      RockChip RK3328
RAM:      1GB/2GB DDR4
LAN:      10/100/1000M Ethernet with unique MAC
USB Host: 1x USB3.0 Type A and 2x USB2.0 on 2.54mm pin header
MicroSD:  x 1 for system boot and storage
LED:      Power LED x 1, System LED x 1
Key:      User Button x 1
Fan:      2 Pin JST ZH 1.5mm Connector for 5V Fan
GPIO:     26 pin-header, include I2C, UART, SPI, I2S, GPIO
Power:    5V/1A, via Type-C or GPIO

Signed-off-by: Marty Jones <mj8263788@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3328-nanopi-neo3.dts  | 35 +++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1ab55a124a87..e2d8dcac7592 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-neo3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
new file mode 100644
index 000000000000..b62b169bdb2e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3328-nanopi-r2s.dts"
+
+/ {
+	model = "FriendlyElec NanoPi NEO3";
+	compatible = "friendlyarm,nanopi-neo3", "rockchip,rk3328";
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
+		pinctrl-names = "default";
+
+		lan_led: led-0 {
+			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-neo3:green:lan";
+			status = "disabled";
+		};
+
+		sys_led: led-1 {
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-neo3:green:sys";
+		};
+
+		wan_led: led-2 {
+			gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-neo3:green:wan";
+			status = "disabled";
+		};
+	};
+};
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
