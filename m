Return-Path: <SRS0=gh3A=L6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE5CCC07E9B
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 14:01:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99F93619B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 14:01:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99F93619B4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SzM05Wqw3qF/03sfkg5ufsmccSZAn654K3z+RHvq2Qw=; b=pz9n9B/NH0PF5c
	9UD8KeX1tv4BaqiwJ3AfK0lX1yjo3guy5p/xObxeN92MaT2RImvWhIG1+h8gvYPsoUjEqHzPa1joe
	UFQ2SNb6BVZkYSURF6eurVPqq8IogN6mtbTm6OWwH8KNnTXw1RYnhn1W/LY6qAmXKePMpHQULFhXr
	evfOGTN2ZSpKilxHYTZZiwcqKB5g+L76PytjJOQMtT8hQKhJ+K6EBUDuq5pMtUJewHqM8PQ2R9Vx0
	geD5D0vzUzf9T65Vvmz2dz7bI/Bx6LPlKhPgAMMy4wOwdAfjizwePEev4v4VhAZtHOnqRCYWJO+GX
	f1rnWiRl+JdeZwkVtrsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0ldf-00BxB2-OS; Tue, 06 Jul 2021 14:01:27 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0ldT-00Bx9C-EX; Tue, 06 Jul 2021 14:01:17 +0000
Received: by mail-pf1-x42f.google.com with SMTP id 17so19327638pfz.4;
 Tue, 06 Jul 2021 07:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k3EQB1N19KBv5kGh8Yy7UC54z9RBS6V9yj+hSdGGPqc=;
 b=Sjp0hQKTcMQOb9KUOuyzlJ/tJXsjeQRjChGw834EfdqsFY1MFlnVaOxqZhKq4OdGGt
 ibuWzB5icRO5wpTFPHAENylkauYB6UTQKdIg94sn1rftJe1Crbdl6+pwpkAxkAJTSizf
 +jgQzETs0mnAsi7hlWWIbNGGC1zb+C9SxiLU/WniZ/8SnaZ8Yv7HE8Y56Ey2n00bUd+m
 cbIiJ5IBiikW69Yq/xq53MEBBb4gQjUc16Rh/w7s7weLFnSsNm6wF5vIkKsZYGiYAGFy
 ULarLxhkbBVaW5fkC2FJKhfiYEWO1cEuY8dEVIzVXGZIyI0GmYQbYq7vZwgi6SflhK/h
 sq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k3EQB1N19KBv5kGh8Yy7UC54z9RBS6V9yj+hSdGGPqc=;
 b=evMh1gKRT+zBfJtnDa5O1GYkMu36xUwwdp8ZGbLWI2ExzEXyHRMnMQTBv7UCAO1WQQ
 Iq8aoID2Uclgc6EI+DkmZDejHT5eLv5rD5ZDSfAp3zPW6YKr5uePpDsyAPrQiJKQ3f4E
 SOAn4uwaqOuag07B4pGPCubWRgp0yHFu06TkTVoRamLcXBObRCsksZOzUGbArrK5WMwB
 V/iXxn7hLxqvYYRZwipnhyA+p4gGl6DwiDBNPBi8R3DgVS4clousLJmuwTOMtCFPdas1
 WlbUr0pG+B7tn33ONNYEvmHrWuo8W+SYSHbFwD4ZUHCnIlTGp1o1hGrqFUr91OBRp9we
 WD8Q==
X-Gm-Message-State: AOAM531hELW0vPujZTUv6mKTEz/iGZkXU5bFRrClEl/s+Zdv0YEt01ZU
 0IGypTTal4ww+ZdBlqvBxvA=
X-Google-Smtp-Source: ABdhPJzw0IEup+bb69fBHhHQ6DDShZHOvvBHM1bKh7v50U5SO2QT3nv671QoCqAQwBivjKnvG4+ZmA==
X-Received: by 2002:a65:6555:: with SMTP id a21mr21491009pgw.53.1625580073953; 
 Tue, 06 Jul 2021 07:01:13 -0700 (PDT)
Received: from localhost.localdomain (li1891-139.members.linode.com.
 [172.105.237.139])
 by smtp.gmail.com with ESMTPSA id x19sm8539986pfa.104.2021.07.06.07.01.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Jul 2021 07:01:13 -0700 (PDT)
From: Xiaobo Tian <peterwillcn@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	jagan@amarulasolutions.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Xiaobo Tian <peterwillcn@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: r4s: system status LEDs changed to
 flashing light
Date: Tue,  6 Jul 2021 22:01:04 +0800
Message-Id: <20210706140104.7572-1-peterwillcn@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_070115_534511_9E39372C 
X-CRM114-Status: GOOD (  10.08  )
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

There are 4 LEDs on the motherboard, except for the power lamp,
which are LED-0 STATUS, LED-1 LAN, LED-2 WAN.
The LED-0 is repeatedly defined and therefore removed
and inherited the heartbeat status LED-0 using dtsi.

Signed-off-by: Xiaobo Tian <peterwillcn@gmail.com>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 45 +++++++------------
 1 file changed, 15 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index fa5809887643..a0f928990fdd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -1,14 +1,15 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * FriendlyElec NanoPC-T4 board device tree source
- *
+ * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
  * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
  * (http://www.friendlyarm.com)
  *
+ * Copyright (c) 2016 Arm Ltd.
  * Copyright (c) 2018 Collabora Ltd.
  *
  * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
  * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
+ * Copyright (C) 2020 Xiaobo Tian <peterwillcn@gmail.com>
  * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
  */
 
@@ -21,28 +22,6 @@ / {
 
 	/delete-node/ display-subsystem;
 
-	gpio-leds {
-		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
-
-		/delete-node/ led-0;
-
-		lan_led: led-lan {
-			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
-			label = "green:lan";
-		};
-
-		sys_led: led-sys {
-			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
-			label = "red:sys";
-			default-state = "on";
-		};
-
-		wan_led: led-wan {
-			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
-			label = "green:wan";
-		};
-	};
-
 	gpio-keys {
 		pinctrl-0 = <&reset_button_pin>;
 
@@ -72,6 +51,18 @@ &i2c4 {
 	status = "disabled";
 };
 
+&leds {
+	lan_led: led-1 {
+		gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+		label = "green:lan";
+	};
+
+	wan_led: led-2 {
+		gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+		label = "green:wan";
+	};
+};
+
 &pcie0 {
 	max-link-speed = <1>;
 	num-lanes = <1>;
@@ -80,16 +71,10 @@ &pcie0 {
 
 &pinctrl {
 	gpio-leds {
-		/delete-node/ status-led-pin;
-
 		lan_led_pin: lan-led-pin {
 			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		sys_led_pin: sys-led-pin {
-			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		wan_led_pin: wan-led-pin {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
