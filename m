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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58197C07E9B
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 05:06:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 135A0613D1
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 05:06:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 135A0613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3kpc/2jih9kaHvZc4cB+8jBrpbeCQQ4vXGpDU3LJbUg=; b=CFwKhITwX5FJt9
	A5tmRZUJD/wFUiOuBLQQ3yM1fseVR+0KT8HMkWN92r9KdIss5nCY5isOznwXlZUKXjmB+gV8hbpfo
	+cvkrynnFwRx3UVNnfMai6Z/lc7N49695F1vwr1cD0i2MIT1AEC9j1ddBxkvdm+xbE9VSL2OoPlrj
	K7hPrmbLHMwdFpaJrqmg0TNTCxB25q0W5skISINOV7W94/+r1JhE6h+UxiDQ7AoPi5nyr6lhZoZuc
	iRWxkbAKpFcffgeOjISbuXHjMdJjY1WLMN5pMimCb5wonHxRzXMMKpuj1wXE3XnYIx8IThsgAWf9I
	tbQDU7kaezFxBf0/9+JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0GoV-007oug-LY; Mon, 05 Jul 2021 05:06:35 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0GoI-007ou3-U9; Mon, 05 Jul 2021 05:06:24 +0000
Received: by mail-pf1-x429.google.com with SMTP id a127so15676933pfa.10;
 Sun, 04 Jul 2021 22:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GzjTRiPs2qC1s6QzHtMFXJiM7L5wXCluJCBvtQgJ4kI=;
 b=r5XZja2TMf/S4kOo1jNAHGdtGhR3OGYm3qID+PfddIdTLe1I6rHu+nUo/BUdQt0yWz
 +wJup1WFzSc2vMm8fNw2p6R1nj+/WQxbOGKH54Mc9DIiBL8JshwhjjDvGUjix436WKlF
 tGKxoiZA3+sanOBirIffB+aUMtxwW9J/+EmqQqNA8ICh30uJUQvVCqGgfYx6ZDn7ea6+
 Ed4XBhH8KORjZbNuSMmXGXvyz3RT3bG9X8ZyGYmvLSvvIBW/eIJhFyj1RlEl8Ok349fA
 GpKNyQ7YDN2DvyNPOGg4K8ALdwD4Q1RtREC0TgOoiOkc03JgVHOsYiliJ70CY39HQBN5
 fBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GzjTRiPs2qC1s6QzHtMFXJiM7L5wXCluJCBvtQgJ4kI=;
 b=iAIujVaYf2/wVZb1LTtEmREfQnOybIPkjNJ2Hl+DcX+T1B7lud3hWQdMqruGT4DwkG
 jECFGr5scU94WEfMH2bH6Dw7IRp6b2e8N31SnGidJFC6NXgcOfdS3snth3TELtjYjbUU
 I8vfD5fdMZTbf6qVdnppGIGnkYe7jpxSfJR+RsUuz/gTcd8w8dJJwbThUxzWzaoFg7ga
 ZkR6vqHpiYDo1MzBw3Wy5x0gToDeM8yFA6lCLUxe1fCEYFQnWqZS1WvMEbnnkxwihpS3
 Yp7owHtsaD8phUebfu6tJFF1uC13hHnc177bmq7+dEQ66+Bjy+962n02iCHXyC+0LGv6
 HFPg==
X-Gm-Message-State: AOAM530XH6ikz/QSa3ntJt5nHLRhu/v/NcdBd41YTDCqCtYp4EHiqpkh
 jSVgx6NTDf9nWy1m2YPDnxC1Wpnf8o0o+ZD7
X-Google-Smtp-Source: ABdhPJzBSZcwpeoGnEnKETeEyi2UI0S+46U7PI5aR/w5UkGzURbMNPkjpuvbJnhHz4XlvqA9xM6rVQ==
X-Received: by 2002:a65:5343:: with SMTP id w3mr13817521pgr.51.1625461581824; 
 Sun, 04 Jul 2021 22:06:21 -0700 (PDT)
Received: from MacBook-Pro.lan (li1891-139.members.linode.com.
 [172.105.237.139])
 by smtp.gmail.com with ESMTPSA id p14sm12549861pgb.2.2021.07.04.22.06.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 04 Jul 2021 22:06:21 -0700 (PDT)
From: xiaobo <peterwillcn@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	jagan@amarulasolutions.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 xiaobo <peterwillcn@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: arm64: make the system run light
 heartbeat
Date: Mon,  5 Jul 2021 13:06:14 +0800
Message-Id: <20210705050614.75564-1-peterwillcn@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_220623_028800_2F72F2F2 
X-CRM114-Status: GOOD (  10.03  )
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

Make the system run light heartbeat, remove the wrong supply voltage.

Signed-off-by: xiaobo <peterwillcn@gmail.com>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 49 ++++++-------------
 1 file changed, 15 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index fa5809887643..899c6a0fc6a1 100644
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
@@ -127,7 +112,3 @@ &uart0 {
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-
-&vcc3v3_sys {
-	vin-supply = <&vcc5v0_sys>;
-};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
