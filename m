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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C837C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Dec 2020 19:04:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 33B6820702
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Dec 2020 19:04:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 33B6820702
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tadncoo/HiepeEaXJEkGYw7LHnbIsVp7utvQghHQpxg=; b=Qd7jDI5Hxu6IW5fxGbv8ZXXnsK
	Zi1EbRQxhK/pAQ01NzoHRq1AxVDodME1Ve9Hh0J+qOhDIA1ER188b0H2TLCe3O46/Pad9MzDqMxq5
	5Dj4mBKV6v4AYADPnU+mQEegYdwh7YyfYhqOByxz7sa5I6+yZcmPAcrjbE5yIWGUHt3FgjvQ7qXbe
	ETl8SIbrK3Dbt3/4kvnzO3e/L+d5bIBTLwRS9pmIAWaudE9QTQ1GruHFytwP9m8wLQy62lIAoeE3R
	p74KRi8WMpVDEfM7DJZ1WQdV14hD7am1jYw1WHmKkSn5CTdsJjec63lcUnud2vtflLa9WrSaw2Hlj
	RFYTUP1g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ktxow-0000B9-Gl; Mon, 28 Dec 2020 19:04:42 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ktxor-00009q-Sm; Mon, 28 Dec 2020 19:04:38 +0000
Received: by mail-qk1-x734.google.com with SMTP id n142so9632334qkn.2;
 Mon, 28 Dec 2020 11:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=mGTgZ9y0sznFu389i8ixc9xFKhiElZYdIPiIEFBsaiA=;
 b=CwtsKxxSMLRiMlgzYooxhDmzBfz6EghDc/th8U2gB/lylXxpJ8ppMkI9Yx+aXXXB9T
 tL6ZxfB86b4lI4FJFzqXUasS3zbroTr2+V7xqgbox6gGzcKUfRf4bvPSqWr18Tg0iTJc
 mx4US5Ojsf5MgaJdN96hOtfvYEdPKTWaTw0j+cC7yVggujMaOPjAuGMVKnD/RWAkV7PI
 mayJYzDcy0DbCMaV59K2SNhnm/U+N70l3TXAJ1ISSZ/2vaPldHIYlPawM0LrjV8JzxbS
 Vda8tLnASeomAwidGZ9ywNdZrt6qXeRHK1o55fot/atKo9HYzfWs2cqInhpv61udi16Y
 6AzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=mGTgZ9y0sznFu389i8ixc9xFKhiElZYdIPiIEFBsaiA=;
 b=tRQ0Xpem8HeD/aXm5MYoezfTTVAqP93O0tcC/mABOdh5kTp8Xce0qepqD5c8+5wmcW
 w9UAJ+zPzdlK9aSEch09fSTbVpcPzy6JXZZqlcJGuLpyYprRhrnmz6e0VgwudFE8thg+
 3wnLn+PrvhV0pJIqBQt1KB8YYHAJHzQbk4j43FOGsmNvVSZ+/Crp/ZSvLLjdldithnaV
 4whLQXywiLjoBAJ5dyHe7zU5UDr+Yop5EcwmB9nLLauf3Uc6oLfBO97hTprJk6gq1iFr
 KicbXdVxzSmdqqQI9xE6bDo8zoJTbcCFtfO53/FlLVTKa+iZ98Q5bIWffE3gqT2QZ4Vw
 4i0g==
X-Gm-Message-State: AOAM530Ji5YhKa6NmLYTQ3Cnx6x1KHcNeEbIlc3bt9/yrc3bfOYnSKL7
 gvVJhgxRHKsNWrQRHF0usHxZDJrMRgHN5yQI
X-Google-Smtp-Source: ABdhPJwOTsoO2/RLML0KrOksIOGQlgQasrvPqz7SjxScQYfbJ9v8BXmzv/tpX7xc/x7NXGKrX9gpHg==
X-Received: by 2002:a37:8505:: with SMTP id h5mr24949994qkd.44.1609182273797; 
 Mon, 28 Dec 2020 11:04:33 -0800 (PST)
Received: from marty-x570 ([172.58.230.134])
 by smtp.gmail.com with ESMTPSA id n3sm23742584qtp.72.2020.12.28.11.04.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Dec 2020 11:04:33 -0800 (PST)
Date: Mon, 28 Dec 2020 14:04:24 -0500
From: Marty Jones <mj8263788@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] rockchip: rk3328: Add support for FriendlyARM NanoPi NEO3
Message-ID: <20201228140424.2b5d71d6@marty-x570>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201228_140437_971176_77C1C1A9 
X-CRM114-Status: GOOD (  16.01  )
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
