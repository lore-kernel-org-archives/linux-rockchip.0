Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13ACCC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C0A3922B4E
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C0A3922B4E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YlZUFArrCO5i1/dUmBullo6eO4McsR/027680vIW6pw=; b=Rq5vL1VQLQ4mAdpCdANOu29eBR
	LiH/+10jui1JMuiRcwjbEDlD9dptjeImIbXXaicW/BK2fEzzLiTUjcfe2IJ8OLIpLWhhSI61aJZMS
	vbbvVDPmcY4c/52Q1kog17ADTvrJrU7G1fb8hAVU1rZyHoCU1/fq2N6Jgf57kwA3zkYedySTaNPvP
	nZupVATqRjIeYIpz7bv2BV9Rhgre9GA3Mrmul+O8AODlkl9aRaBEHFFRo366hPjvXz2zjWugLuCP2
	zHBMpa284+uUcOBSvpAF7VLq6FdQsz/Jzrcs2HSTjhrBaft7qVvMMPqIfuRwMCPinZvi6grq/3J5S
	Azv01UwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Wq4-0008M8-In; Mon, 18 Jan 2021 15:53:08 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Wpr-0008Hg-PH; Mon, 18 Jan 2021 15:52:56 +0000
Received: by mail-ed1-x52d.google.com with SMTP id dj23so15534753edb.13;
 Mon, 18 Jan 2021 07:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VhphvaoMO0MSplwXzOX+UYmDiouvxFZXbU4yg9NjsGs=;
 b=Vouj50Rd8oFIgyNCzYWsOiRU+A9x8iFQkL81ktgnKTvoP68En66kpjJvjmRDt7qi5O
 BS7mKPJqYU81oEA94M8QnH37V8lvuJqL3MdJHaGCuFR8q78g6oTgIbRpSHtFAPCgOQr1
 8UYvEn6RTPxSLaQg6z4aum7UZYSvco5dufgb3Osk/Bdr8gAbxoPVZadBJulKRFRqGYob
 0M3BKZxyyaFV8MZE9my96BuDpCLF/UHQE9nECh/bkrbwf/4OPIkNvGfvYHT3Mk++jZ0U
 MSvtbFIwSndQHAgt36qJbAZ8C9lGnJzhWudTTImYTc4WuXKY5kdZiHtcaTQo2TMyNaGo
 sNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VhphvaoMO0MSplwXzOX+UYmDiouvxFZXbU4yg9NjsGs=;
 b=DRC6z8cozNWVEvTHSpXrCFofbf5SCjwOad0bRqbC2ECu2Ne0mLvpgqAfviB3zZ0tGk
 U9ZDMfcsYG8PRWyQ7KyxU72UheUTxetvBbBUDGG8sphoo+zfMGOlVdEbPwNI38+Fx/nK
 AgK4dgnmfV8NJbX1Ah+mhnqB05ThjXJ08rI0NJyFwdK0GSjR82l7oh3WXHmJhtfwuXYq
 IzeevB9cRnE8WPS1ka2givHfJCgzkVs2SS3zuyQD4tO0xHg0W4Q3uXVyslctdaRm6TTU
 t8Gtgb4e7yrSxau4O+oDoRRuigUvI0w/bS8rPb60/Y3d0JnhKi1DlF/pLs7HeWonoS90
 c8Mw==
X-Gm-Message-State: AOAM532/zlMfqVGYG5/UbgAhwhYKFJQFsMGy0TXTeQtxLZwUNOWN8xCd
 PKijor2hE4uO/QqEf2syOX2CjrB/TpQ=
X-Google-Smtp-Source: ABdhPJx4CXf+UBZO2cerSrewnW6s0+YyK4AbWXQlVAenRYhXiU3JbrruS9bNUM4ZC/xsqO88ibUlQw==
X-Received: by 2002:aa7:cd4c:: with SMTP id v12mr85455edw.17.1610985174346;
 Mon, 18 Jan 2021 07:52:54 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f13sm9561694ejf.42.2021.01.18.07.52.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 07:52:53 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/5] arm64: dts: rockchip: assign a fixed index to mmc devices
 on px30 boards
Date: Mon, 18 Jan 2021 16:52:40 +0100
Message-Id: <20210118155242.7172-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210118155242.7172-1-jbx6244@gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_105255_872671_E9105409 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recently introduced async probe on mmc devices can shuffle block IDs.
Pin them to fixed values to ease booting in environments where UUIDs are
not practical. Use newly introduced aliases for mmcblk devices from [1].
The sort order is based on reg address.

[1] https://patchwork.kernel.org/patch/11747669/

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1a73a5114..c49366cf4 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -25,6 +25,9 @@
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		mmc0 = &sdmmc;
+		mmc1 = &sdio;
+		mmc2 = &emmc;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
