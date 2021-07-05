Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E75B8C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 15:04:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A40F613AE
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 15:04:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A40F613AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SzM05Wqw3qF/03sfkg5ufsmccSZAn654K3z+RHvq2Qw=; b=uy1KJzks1Vm/Xa
	zS/lLjX6Q2dcvzeeI7Q/poau8DK//qY5yMguLFz+IxJgTXE56YwKQT50/F5aNTrrZT1WLAJMMFMrv
	OxOzycf+eh65MMcAK7zmnVotFpetptbrQeFM6cI5qquUlycbrJCSdJsBK0aE61zEmt/eMNHIcwPqs
	SRfQJ3/Lihim9ejzvdR9oEsbLAYecuIsj/laIaVMyMdVKDUkzmWIobZD3cBRfSKGaJ9ES++oDyIXr
	HAEPkrFyJ4yK8JUOrA+P3jpzST8R/UkDhLlbkuufzortfIBMaJ7ky0Ayb+7Rc0oZsMlMBHrkT1VJa
	5OEZgAujdHaz5l1Eh4GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Q8k-009FtG-Ol; Mon, 05 Jul 2021 15:04:06 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0Q8K-009FhA-Vq; Mon, 05 Jul 2021 15:03:42 +0000
Received: by mail-pj1-x1034.google.com with SMTP id
 b5-20020a17090a9905b029016fc06f6c5bso117945pjp.5; 
 Mon, 05 Jul 2021 08:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k3EQB1N19KBv5kGh8Yy7UC54z9RBS6V9yj+hSdGGPqc=;
 b=fsN9ijmzCqXmgy4bk01ldHx1t3gsHic8unchHXOGE8CidgFL4ZnFfOI13ZrXAXW+ZW
 rZ+ksRosYoxVibFLv1Al5sy8/YBtBGvweI7G1uDDKNDysZ9Yppm//7dSXt59tOG5axfD
 c+9OnUnpgyx/1Etd6iqix4HcC0IAuBi871+kAG2Rg0pHERT6OqAbwPYxJNFHkXoopVnV
 DzE4X3CQoSz7x2yu6LstihDfH+iCFna/nFKTQ7qdwTHxQGL77X7qCzvijTGkHWsJ6ZXr
 qgWilO++x0Y6rvC0hqvUg0YgF3vQ6JiGU6Abh3SO3SlnjP668BIMbBH54v5zpqZ5N8W3
 VFrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k3EQB1N19KBv5kGh8Yy7UC54z9RBS6V9yj+hSdGGPqc=;
 b=HeWUemnkkc21UD/OTMYezakdqwviZnILd1x/axj/pgk3QShgO/UZ6ThTEo4WD/QX44
 owckRRJDLNpCb5cU4+lR/tHYTvEbfoDat48sTsej5MVPpLO78tkJc3SOl1JsM1QuoRAy
 s/hyQI1SpjTeaMMvVStv3A5bQ020dbltZfRhvf8OBzo8ZrUTATIyMF38lti2WhezSUYY
 W5/fcZ6oTmDa77kxcnp0P7KsbbU7nOqPEt0EBDd2o2oLY39zxBNt460EfHWZaYGv5Yd8
 apmq8DTEK9UZ5UG5YOieqXJxWbZRQiZLjCmMOh1o4bXREbgq6vA9b/4uGE9JBx4bGOQJ
 zHJw==
X-Gm-Message-State: AOAM532feUygrBu9eJEck/fdn3oMunUAkqt7gRNPZ4TURk7ezVZHo+BH
 ty1huJtmrlyR3L/mdotZmJo=
X-Google-Smtp-Source: ABdhPJyOzVGdpYiegn7S30CwELhiQ50zZtepaE9OHFPfVz2yFO27x9RvvLPp9o+KEtIDEiLlwJWQhg==
X-Received: by 2002:a17:902:ab95:b029:126:351c:e6ba with SMTP id
 f21-20020a170902ab95b0290126351ce6bamr12896804plr.16.1625497414070; 
 Mon, 05 Jul 2021 08:03:34 -0700 (PDT)
Received: from MacBook-Pro.lan (li1891-139.members.linode.com.
 [172.105.237.139])
 by smtp.gmail.com with ESMTPSA id q18sm13442604pfj.178.2021.07.05.08.03.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Jul 2021 08:03:33 -0700 (PDT)
From: Xiaobo Tian <peterwillcn@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	jagan@amarulasolutions.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Xiaobo Tian <peterwillcn@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: r4s: system status LEDs changed to
 flashing light
Date: Mon,  5 Jul 2021 23:03:26 +0800
Message-Id: <20210705150327.86189-1-peterwillcn@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_080341_061294_E0C2645B 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
