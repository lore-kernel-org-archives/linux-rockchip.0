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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563A4C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1849722B39
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1849722B39
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MDzrIjmtJsYm85C+776OBL35nAf76FzB5zaj70pYd5U=; b=2eWetqaTbZSHL2ac0JK1Rxgggm
	o3jVIJ7dinSwQMMT5A9c/y+oByfQNgB+kxL3nMLYcgxbS4n+q1A8YorlHHs7uvHUn2IT4gBhjw+uq
	OcNtGkwParLm5fCq4c4p5hKqYgMUqrORjdg3A14ezFbS6q/TmdOrBpCDhDQ8uQqvSpR/CtHgN6jFU
	H5Ma4EaG/iWgIsRqCLawY73Q9/LvWpBaXlg6tq66OYCxXnAFbQLOFxMoOPz2w9GfoisUUdnh2GKHC
	Yp5S0qsyLqloc83STfThFGew2vzENvVG9Q4TdEPgiMPyAT+CkqfCnM/oN1ANFOR1HbXdRi+z03c4P
	enblqiRg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Wpr-0008I8-Mt; Mon, 18 Jan 2021 15:52:55 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Wpp-0008Go-GY; Mon, 18 Jan 2021 15:52:54 +0000
Received: by mail-ej1-x62a.google.com with SMTP id by1so17944079ejc.0;
 Mon, 18 Jan 2021 07:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bpv56niFjct5w6LbQ/DkAciW7isXZ8qi5X4Zeb1XX6Y=;
 b=IpHuRpIFuVFujFy5t9HcQNNG/7HGMeq6IPbI118FOlbOKiCNMUiYo2EB6e6iYuNUc5
 HCUQxQ+WRrk53KVYiL4yppa4qgCeXzBL8MGLTJxVGJjb4xfX7ltqH0amF6XFEoGwpWnr
 PGRHHG6nAyJVt2jaoetXvuouBCxixHdEgMDb0XsrGTIAxGXdRb1KCGzFGo8j782DB5nP
 6Ze7+LnRqdpI9Jo2ffadmsFIgCMS6CfS5X7GYBqVJxCJEA5RohPA/Y2DFRHBTfAwLUol
 wara7zYTapg8myTlm3FvRskfjWAqxqaXH+RF25woqIl2fogZQIujkm+uEMDuWdAD6UAk
 sDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bpv56niFjct5w6LbQ/DkAciW7isXZ8qi5X4Zeb1XX6Y=;
 b=TPR7DKsF9B0iL+feT38I0R6fYUUUkHB63x3MMFXxHXMC2ZmGt1rnII33iXFCO27jX/
 Yva4QJby9r/ReKxc/95I7RPdacGR2YGXsQxWbsXz4NXipqPG+WUsNR24dK2tiuTHno3w
 VglnWiYpVk+6G1QElN1RlTGSULmqzNIBKVJTGAkjyHBAd1qEk4jB3aBBHj7ZM4MNg7Wj
 M+Ik0C1fNzs/+VE5kRx6TpGwBT5bS7kQTAVi5RW0sOvlmr6yp5AozigN1yGMS13JVAF+
 M5yea4BSxGapMs4Du2ka+uCJKtJo9XmDxohkOEl/qaryTAhg5t8/jHtIEc3YGsni3WnY
 CLJQ==
X-Gm-Message-State: AOAM531g1uxA8H6whqMfZahfUJGdo2KuiAKh2CJ/E9qgkIpzqWFVHSB9
 cqptVMr2xADZHGshmWGbMyEnVZ/2FBQ=
X-Google-Smtp-Source: ABdhPJzCkES0uIah85lOrhLCxqlNpN6TfPMxHwPwGpmokPHpCfuVQ2ublkAr1ApqwXEQh+RWsmLlgA==
X-Received: by 2002:a17:906:59a:: with SMTP id 26mr206706ejn.309.1610985170471; 
 Mon, 18 Jan 2021 07:52:50 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f13sm9561694ejf.42.2021.01.18.07.52.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 07:52:49 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/5] ARM: dts: rockchip: assign a fixed index to mmc devices
 on rk322x boards
Date: Mon, 18 Jan 2021 16:52:38 +0100
Message-Id: <20210118155242.7172-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_105253_558889_6E94AC55 
X-CRM114-Status: GOOD (  11.42  )
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
 arch/arm/boot/dts/rk322x.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 9910f9b5c..f10c4d2fa 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -14,6 +14,9 @@
 	interrupt-parent = <&gic>;
 
 	aliases {
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
