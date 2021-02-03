Return-Path: <SRS0=CWUy=HF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E2C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 17:56:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B6CC64E08
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 17:56:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B6CC64E08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=arxXaOnuxf8YjQgh9QJjdq1vApxE7hkOHPVrzQ7Rz4s=; b=22qGume5dUS4XdzS3H9zcZy0l3
	jkc8KIyLEoDHyaACpv3ee5ubEfcSGbcq9u6gBsfDwFsqHLOQFrWBGGzsR/54hK5dVctjRALYonTet
	Y0/Ft4C6rTqm52i6Znb7+iQw2ITaJC1NNmr1i865ryg7ER2ShySmqu+4tp/DX6T6glp4T8pKfSu1q
	dINbiYxdBDX/L4KDJhNjXpNCL/LHAzQkMlaS+44XovyCeTYEEOjG64hCM1+SYydGQ5ZAfwTLP7miD
	2uAXba/XgZ6+AFXinFka7TTpZ/3m8nI9bwZphu/h2JtFkjF0cZTS6HNbhEmlcpOG+OS0cYVAqoDeM
	tTecH0Rg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7MO8-0002nH-LR; Wed, 03 Feb 2021 17:56:24 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7LOa-0003v7-H1; Wed, 03 Feb 2021 16:52:50 +0000
Received: by mail-ed1-x52c.google.com with SMTP id l12so417547edt.3;
 Wed, 03 Feb 2021 08:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PMs0NDSuf1zcUrhFtkHc3rUKSCkURTHcknmuZn+qw+Y=;
 b=geo41BrGzKU4OH40sIUY27Y+Xsbx+6t3yM73U+tZTOLHdvnj8CwZgKZEGd6uOjnBse
 hAH4OGul+2rrYOhXI7AmBMtRN1Rb4pyDDa1Ej+orYWa2Q+5naJzTlevELZGzZzmhMbbo
 +XE3UbKggw6K4cOjTEItCBXiOi6z25mtJRPc4av12jDbsdPnA1E9f90y0XeB7A9a6EsC
 Cr/XYdGiXZhetMrmBAjgGTTdkMvTk37EHjmy8SYhh0pb394jXeMal5gbw83aIplVlu/E
 pPhnAUD3bQ3PHcLBKvq1wBLlxixLAK7c6s/3Cqk5Ns7o3nHGAIO68eli3q53cM41CD+i
 5yHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PMs0NDSuf1zcUrhFtkHc3rUKSCkURTHcknmuZn+qw+Y=;
 b=rXy10+EYfBiaVkuIsjkTutHSbnAYctXP6LXOCh4kJxc/LoHlikTl3DYct4Wfm0Sfpr
 SbXvzZa9HYyOPtBYJXnGL3KEMnMzJJ81pZ9SbD1hNVMLLh0Va/JnYfc7WZnWo893/RV+
 yGcv1fXMbWKNd4IhMScVEwBOGLXNqGwDZaTyLdqdVxaTJhGjFa1HC38hKz/Ks1o2rMk7
 pvEjcLsySxOz/4g88q8idv9KN7zw/LyEVzcLAb7OkizQhOzvla2tBr0xBhnmtrMMbgX8
 Wj0wklyefpz21A9EzPvGAHCisu/l7+LREo4hMdsOz9S3/3WUqq+zISpf9hOA4mJK77v6
 kniw==
X-Gm-Message-State: AOAM532r/ZQRbHjIzCTArSzxyuhN0e6owEY7HjBKLoNGyPcHjh4aNiF7
 yp0w7pIXmOnTADgZ61IbmPQ=
X-Google-Smtp-Source: ABdhPJwSKL2/RABPjQr6OIwdlGCvg4cQWkDOExMBDUqjjU3Sl65Zz7+TwMx1lj3vzItxNZDBk8F3Sw==
X-Received: by 2002:a50:acc1:: with SMTP id x59mr3898959edc.43.1612371167242; 
 Wed, 03 Feb 2021 08:52:47 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a25sm1135471eds.48.2021.02.03.08.52.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 08:52:46 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 7/7] dts64: rockchip: enable dwc3 usb for A95X Z2
Date: Wed,  3 Feb 2021 17:52:33 +0100
Message-Id: <20210203165233.22177-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210203165233.22177-1-jbx6244@gmail.com>
References: <20210203165233.22177-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210203_115248_642324_B6658AC3 
X-CRM114-Status: GOOD (  11.62  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable dwc3 usb for A95X Z2.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 30c73ef25..e71870768 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -357,6 +357,11 @@
 	status = "okay";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
