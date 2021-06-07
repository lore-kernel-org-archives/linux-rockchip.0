Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0DCCC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 08:18:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4ECD60FF1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 08:18:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A4ECD60FF1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5lqZe0ECGRmR7cecAKHMqJFkEP2Xpjoui69ClY94bmI=; b=xAFfC2GJPmVI5s
	od7F6sw8NzVK8xGuLxYMEqYTIwdyoG5jxXHy937GdP89NUWCpNHjUjDbF1FbAcDPiwEvdmnKWv2S8
	xgzozkErLtopKWr0tyHHIC1JqS270xZZgu0WDRqwkgbO3Mc2mdscT40Cq64dUvIsHzJdgUtvNTH1D
	1sXaD2ZROulvTMlzRZCaafJQAIkhjx7T1gp6d205MFTEVRryaIJDdDpR/HSS1AZtpIiyENLW9rtni
	W0I9GziEOxIeUJGXst2d0x6Jw47Sxn+8rElfOmXpbP4puENru58c1TBlzPgqhXmJzZCMiGcGFfmWy
	fmDT+EwvwbRdcmmmVtVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqATF-002FmI-MA; Mon, 07 Jun 2021 08:18:53 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqASy-002Fel-Mm; Mon, 07 Jun 2021 08:18:40 +0000
Received: by mail-io1-f51.google.com with SMTP id k22so17427950ioa.9;
 Mon, 07 Jun 2021 01:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=czqKwG1LbZCbqfUJ6Cb3XGLmd8Y0lJGxTGZrfP4Cg5s=;
 b=N3stUPjGoubypJQgu04Oyf22jW/skTo5MTOFz6+4r5D8ssVlhgcy5hYj0Az3VXwL4T
 A+m36C1QCoQljTAHR+MRofkPqkBbYfvo3grr8CNdI3EoU28Whg3prHYYVnlC+/ewOJz2
 MXqTuE5xqN5KEAsaEgIbCFVLH7tiIqhyFFinwzfUkHgmXmY3I1VuO5GhNxIt92lVB9E0
 acS1QIlCQzuQh1aORBMmbN5IiZwhSLKmaH8skDcy+9lV4YvFgwp4qIMleD5D1rx03ENf
 kSsroitGGXS5KEHs5NUBfwQVww4+QMBzmvxb0wUDih0vB9ABvty8FpYxahKB6QVaNtzr
 nT7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=czqKwG1LbZCbqfUJ6Cb3XGLmd8Y0lJGxTGZrfP4Cg5s=;
 b=fAFihUMSE5XpDaE1RW2JDwQmMBZO41HrRR/i4zcRr09ro++sUugEL3weU4LTrMEuOj
 yXx5KEe1SO50RceWHHD4nn9YxwTylh5mYpdz7Ee9HH2UDVmC2LvRXSCEo9UI4U6O6GqT
 c0oNELjoKoqp5gwjUCWAxiwSOrsGG16e0EQgcN8KTRUvbXte21VXSqG1NqYtTI0ILu9z
 o7hN3kxcd1xqdqdEohsEwr4qvbYVu5SNoscnxROZlp5BQ6w99b3Rz490DnBniNqEH+s4
 yTpBGBZ4sKnTJ1qwqX8uOHd3mTY/Yq+C9snJTL+19sLaA44c0eikv8/hAeCtYjqc9WZm
 SOlg==
X-Gm-Message-State: AOAM532SBrhsHZ5fAkk61yw9i/xULZZ/p013Ksxj6ibqpyWA1xwjZia6
 H1SrU+PI+cZWhERMx8Cb/ow=
X-Google-Smtp-Source: ABdhPJz/1MBOkzpS7y6WmKk0MVpl+kk6nIuutlGTZhOsXT0acxa5zyI/XQl59SaKwe79Qw7azZ26kg==
X-Received: by 2002:a02:9109:: with SMTP id a9mr15389804jag.93.1623053854155; 
 Mon, 07 Jun 2021 01:17:34 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id k9sm8416936ioa.13.2021.06.07.01.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 01:17:33 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tianling Shen <cnsztl@gmail.com>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Mon,  7 Jun 2021 16:17:27 +0800
Message-Id: <20210607081727.4723-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_011836_777365_AD2C12D2 
X-CRM114-Status: GOOD (  11.24  )
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

NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
stores the MAC address.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index cef4d18b599d..4a82f50a07c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -68,6 +68,15 @@
 	status = "disabled";
 };
 
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		read-only; /* This holds our MAC */
+	};
+};
+
 &i2c4 {
 	status = "disabled";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
