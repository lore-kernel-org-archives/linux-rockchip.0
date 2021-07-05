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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C97FC07E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 04:25:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8E5E6135B
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 04:25:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8E5E6135B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O8/iJ9dyJvG8Z3na9fLjjoFW4C0EYxleNLbOeYWagwI=; b=ZLEskPJJXBHaJa
	EorDWxVAv89PjnhIujVl13mj59CS4hK/SYZ8QMHxMhqprkjkH7TxEf2/TWNF3P7IMgzWKuR/r9Egh
	wkpN9dDpAwD7uU7iGH+rkbD273FSD8hLWvVAQqmO78yzSioO9A6WC6pU8gD1zqk7YtKkoliAM2vur
	+V99R0OiCobzvWixuBqk4J+ulcg4eDDDFmrcWhl6qiEmSjGxRaY9bG7D1L8ykkkoT2E1ZQ3t7OJmR
	nCfQL/I7CVGhv0UT4rQ2wekVnAdh7V15sPv79irrzCcM/0FgxhgYqyl7fqed5nMWcwI69ufmv7wID
	u2SVdD/89clCfg7g7usA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0GAw-007mP6-9v; Mon, 05 Jul 2021 04:25:42 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0GAi-007mNV-36; Mon, 05 Jul 2021 04:25:29 +0000
Received: by mail-pl1-x62b.google.com with SMTP id x3so1080329pll.5;
 Sun, 04 Jul 2021 21:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CezojO8vgU2ciWRQCwI8Je8AW8CoxE+fBvoSOeytX3g=;
 b=H+Aym2TrR+/Gf/i0628tyudJloBMt2SbXVM+ULDBCxfIwMWEPgcElL+RjkTSKtskN6
 CTcutL9BV6nNUyC/YR77jeiKfio24KqEtckiiw4A0Knff6t5FCA+EQIz6sa13O25ejiP
 /obDBmcMP2XGG1LxPicF0I/htXVinDOzJzuXtuYnpcwVthS1ydXISu7747mCsVaZrd9t
 7oKG+HmA5FoJxDRR+VBh4K58hy0qeR2qwFWw0r5rPIKk55mj1iqq8Ks4du3k/qd0XVao
 kjEn/xSx3ngeGIb53Vzq3Oj9ZmXUK8IPE6VYpRvtXH/MkqE/BCZh5MHw1FB38xXsfetq
 MBEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CezojO8vgU2ciWRQCwI8Je8AW8CoxE+fBvoSOeytX3g=;
 b=qcO7iHmL0uHiqk0VpfWeFeXXQFpMsEhJyl6a0qFJiEIYscMWcYqd3MAs50Fs+cN86m
 68StCi+r1NhFGJAqswVaqHPIoN1Vg7nkZhopmabilKQbrMzZFrzWJMyMGVp4tYTO9jZ7
 Nhoy/tPmxyZuUKHTysLhOPnadBx7XCKy7o+FmIMOaJJGp9q0TwD2i6QbXzvJm8472rFd
 Nxh5dzdSfYqkVwsfpluZNTJQfpvgDUwj2HyrOTAMIZDaxBiCJ5Ji//oNyLgIaKVkNblf
 xnAvRtuAsTqiTV/jKSi7Lnv5Lqf6WgNn9w3UzVEQquLdhA7H5WhhaCXRYJNjA3CTwsff
 PELg==
X-Gm-Message-State: AOAM531bAsXmE8v6qfqXWaEVWqabANm9a4qunSxiIF+BDZ+U1Ermwifw
 vrJZDuCMoihL9I+4nJLSsXw=
X-Google-Smtp-Source: ABdhPJxIZ26QO8powLdK2ZfjgBU247iw0wX2eVFACIg2JLtzft/0+KnHY00PmWf06ThXN3YC3sqGIw==
X-Received: by 2002:a17:90a:d596:: with SMTP id
 v22mr13326797pju.51.1625459126325; 
 Sun, 04 Jul 2021 21:25:26 -0700 (PDT)
Received: from MacBook-Pro.lan (li1891-139.members.linode.com.
 [172.105.237.139])
 by smtp.gmail.com with ESMTPSA id v1sm9274498pjg.19.2021.07.04.21.25.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 04 Jul 2021 21:25:26 -0700 (PDT)
From: xiaobo <peterwillcn@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	jagan@amarulasolutions.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 xiaobo <peterwillcn@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: arm64: make the system run light
 heartbeat
Date: Mon,  5 Jul 2021 12:25:18 +0800
Message-Id: <20210705042518.73843-1-peterwillcn@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_212528_178905_BB3A1F5B 
X-CRM114-Status: GOOD (  10.09  )
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
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 23 +++----------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index fa5809887643..943f8d7c7909 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * FriendlyElec NanoPC-T4 board device tree source
- *
  * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
  * (http://www.friendlyarm.com)
  *
@@ -9,6 +7,7 @@
  *
  * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
  * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
+ * Copyright (C) 2020 Xiaobo Tian <peterwillcn@gmail.com>
  * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
  */
 
@@ -24,20 +23,12 @@ / {
 	gpio-leds {
 		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
 
-		/delete-node/ led-0;
-
-		lan_led: led-lan {
+		lan_led: led-1 {
 			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
 			label = "green:lan";
 		};
 
-		sys_led: led-sys {
-			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
-			label = "red:sys";
-			default-state = "on";
-		};
-
-		wan_led: led-wan {
+		wan_led: led-2 {
 			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 			label = "green:wan";
 		};
@@ -86,10 +77,6 @@ lan_led_pin: lan-led-pin {
 			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		sys_led_pin: sys-led-pin {
-			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		wan_led_pin: wan-led-pin {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -127,7 +114,3 @@ &uart0 {
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
