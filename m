Return-Path: <SRS0=PGv2=LG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9993C48BCF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Jun 2021 18:47:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5119561287
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Jun 2021 18:47:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5119561287
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9tAB42BrpebuPxOhLuUUAN+TJLvr/2pBgfdD9nnd8cI=; b=iZWPR+gkEmG7rM
	WBx8A7XPub9QX2bT+VAbFP3Lq0LdfBc7WYCdVLnhkF6j3MVoLD82iRtXD79shLDHCBBlHB5G0S2+G
	RBiUBdGB/nBP8CqyHa8fX6q0vwTpJZbMTqwlUgIJ68Jtpw4G7BjnPVuaeFUsu3txv2MqbyuUIAkF6
	RAWuN6z0JKiGu/ftqi8n4v8JPfm43eXXKQ7WmPyN/On+YI3x7+mrlGiQiv/QnJROylvoiq81irpB9
	4GTHcZFeNUsYn6/TLPkwdTJUmMZs1QSK521fpYw8GlHcgkcYyof6TM3GoXcoDQKhK8I+5hfIr/IQb
	mGNF0CxzxEEcLPbe1BzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ls8fc-008xkX-W4; Sat, 12 Jun 2021 18:47:49 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ls8fb-008xk2-55; Sat, 12 Jun 2021 18:47:48 +0000
Received: by mail-ed1-x52c.google.com with SMTP id f5so36041559eds.0;
 Sat, 12 Jun 2021 11:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AkaLNrdh2vimxp/He0IGozYNrPKG32CCBg/tput8n7s=;
 b=kY5mGH5jRDZHQ2g+wLpSi3Bjon3oyvrsWySSetNIWyyrpPxFJp8apUqyi/ZyJB9pLB
 WEnU/1QJ/1okEUnQ5i6Tr5h6GGBV/FWH4ux33OiJqY/4mAve14RFaVWe30oJpy0m1LyQ
 Sd7X9iBG5ODkIi9T9qOcE7GFtwuc2HP5ZbzyKB4ocT2rt1+GzQtWuqJbBV5WQDrDJcXr
 bPKhxWt+kfQANCno0rAT4n1blR6vccR/RP4heuWqtPCGSrXZeM6TOzt0tzykJPP+Kl+V
 bj5VZjF0DV4ltOgb2+A8MIKOYP3NLakiUVW8Zag44fKRtigQVVqCqtKFD8cmfIkdRTGe
 xJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AkaLNrdh2vimxp/He0IGozYNrPKG32CCBg/tput8n7s=;
 b=hAlZ01st4ESfsJ4FbdYR4Tmo1iNQiPXUnkpKbt+r5XY/KJFvcvS+4dois4fDFtDlrf
 nv2BgZLDHfJY+xqFgvNuBe1CMQgcOL/IHTVkQq8QdU7H4in+bSvICpX169umtWVy3qT8
 MwLi0D3owuHOHOMExPRlQexY4uxJXQiLCDz3rlSXHe7g7ux7oIcZ1paUoHnla9t8FWDQ
 DQXwbKj1qgd7b6Vpxm6ZMWBU0433gOdXSJ8kkyQbgtFAqN4uaZUV6QcvxZywEqHQEkux
 ZGa37dsMCnHl2VvIGS0AW3SKrLxSBodnA+2ybwDbfVgatWq49pDO4XX6aFrPEKnq5iYq
 pUmA==
X-Gm-Message-State: AOAM531Y5iboxSgMcwl2nTd0oR9c+itdrNXT4JkA9PqgTS3MSYVPxb7w
 dZ4B/Ew2hiEMsWz6inydPo4CXWHR7LY+3Q==
X-Google-Smtp-Source: ABdhPJw+XKHPcmiUY6C+yc3nz8FUZrfa/fchlm09RALpPMSJdRMusz+2Qe0jzAb25p9Ra/u111b1mw==
X-Received: by 2002:aa7:ce82:: with SMTP id y2mr9623571edv.264.1623523661655; 
 Sat, 12 Jun 2021 11:47:41 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f21sm4309933edr.45.2021.06.12.11.47.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 12 Jun 2021 11:47:41 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, paweljarosz3691@gmail.com
Subject: [PATCH] ARM: dts: rockchip: add labels to the timer nodes on rk3066a
Date: Sat, 12 Jun 2021 20:47:33 +0200
Message-Id: <20210612184733.2331-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210612_114747_233272_0E35DC23 
X-CRM114-Status: GOOD (  11.98  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

While the kernel doesn't care so much right now, boot loaders like
u-boot need to refine the node on their side, so to make life easier
for everyone add the labels to the timer nodes on rk3066a.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 511311d25..b15cbbe23 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -217,7 +217,7 @@
 				       <150000000>, <75000000>;
 	};
 
-	timer@2000e000 {
+	timer2: timer@2000e000 {
 		compatible = "snps,dw-apb-timer-osc";
 		reg = <0x2000e000 0x100>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
@@ -238,7 +238,7 @@
 		};
 	};
 
-	timer@20038000 {
+	timer0: timer@20038000 {
 		compatible = "snps,dw-apb-timer-osc";
 		reg = <0x20038000 0x100>;
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
@@ -246,7 +246,7 @@
 		clock-names = "timer", "pclk";
 	};
 
-	timer@2003a000 {
+	timer1: timer@2003a000 {
 		compatible = "snps,dw-apb-timer-osc";
 		reg = <0x2003a000 0x100>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
