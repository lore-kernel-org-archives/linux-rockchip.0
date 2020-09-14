Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BA76C43461
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3B1B20756
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Nhjv0cOb";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WcDBB7Vn"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3B1B20756
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iFaMn1eRdyc7m7kwO2GJ3UvFegW6K9PRuadpERxaYSQ=; b=Nhjv0cObv6151wvsFzRr18tHqZ
	DtdDSsQIpei1GTHzPhSVyelEAVtp/uFEqt56nNPMIzOvsP8XkznAmk/s7PKO74C1F5B4n6xtNIJmM
	P/8BVsbORfnrEBpJg5dLBFfTNxW6gL8mS+FA3sn/lk+CxCD+Cew3z1Ns5A0bUHzXSYI/wMIhbPSFC
	GT9Hec9oy6HM3ZAittXlwmz2f2QfoFo6wxWfsnHqbrn+/uxm1f0i6fPOCPvqdFH1Ilbqwnrz1m/P5
	W0m2p6FKnXFIgjz/reMceEn1ikuL8W/SWbrRigdha7phU9DC8qk6nWLobqH5mEcwXrIIuY7LD8aLw
	wLHijFtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHqXW-0003nA-8F; Mon, 14 Sep 2020 15:37:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqXS-0003kT-HX
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 15:37:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id s65so106079pgb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2020 08:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bhBy3ywQ4Z63W/q49wSLetu0CHgYvpDBfL1SSy8p1IU=;
 b=WcDBB7Vnz8jXdOnxhsZqYFURh6adgNYIddO9/rkc1EEwQSw1uPdEMJi8w/ND+HBDov
 6wcRpQyI0BjVoojei/itYizUJikyDiWUYqHQuBJZo4kBjpNMFo+1CK2zn4D9Ztdwj9RL
 gLpKlNpBbwiTPKVJy2gY0gbl6SYLpBXy/NEuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bhBy3ywQ4Z63W/q49wSLetu0CHgYvpDBfL1SSy8p1IU=;
 b=MuNM8KkN2c+3LP7XTsxIg8MniMVURxCFQXO1IUdrCpOfNnpacrU3GG5Lj6QcwPkwPc
 DAgBg9BO9+bB6kxmoG1HgXY5+nV37i5Dyj/t8VuG2vqZIiHBgH593Ij7Ow0oEBMsnf6G
 D/DvzMIaMuNIQNhR8Cr1fILRuoj4ucwOdCcplcn1toTBLO4Nl8JS8nRwO/RNtpQgZF9a
 UoB3+DLHvk7KOH5hMqDjYUUniGkTMfnhY5UmW/ZindbRQaa8mm17HI6O5VNMTLFVulm1
 RjDUMHHQ5PYl3Azs86gKjSelH2zbMeMUludeyhdgyqTXf1ULeklJm+6B2AXNMbdii7f5
 4uRw==
X-Gm-Message-State: AOAM531u1Vfm3S5m4UnYAl8DIKjcsHndunstUxst03NN+mmeQB7WZK6y
 znLXW0bCaij2U2QHUMX6FTKtjg==
X-Google-Smtp-Source: ABdhPJwDLcCBdSa8ODwc+ECnkRnfcp7/3L8S8Fx7+D15NbWV8oSXNBBKHAgP4w+CdeTozBXqg/59OQ==
X-Received: by 2002:aa7:8d4c:0:b029:13f:e666:8f05 with SMTP id
 s12-20020aa78d4c0000b029013fe6668f05mr5181120pfe.0.1600097824549; 
 Mon, 14 Sep 2020 08:37:04 -0700 (PDT)
Received: from localhost.localdomain ([124.123.169.115])
 by smtp.gmail.com with ESMTPSA id ml20sm9711026pjb.20.2020.09.14.08.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:37:03 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v2 3/7] rockchip: px30: Add EVB_PX30 Kconfig help
Date: Mon, 14 Sep 2020 21:06:30 +0530
Message-Id: <20200914153634.18121-4-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914153634.18121-1-sunil@amarulasolutions.com>
References: <20200914153634.18121-1-sunil@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_113706_598595_45F7D7B1 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, jagan@amarulasolutions.com,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

TARGET_EVB_PX30 can be possible to use other px30 boards.

Add the help text for existing EVB, so-that the new boards
which are resuing this config option can mention their board
help text.

This would help to track which boards are using EVB_PX30 config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v2:
- Collect Kever Yang r-b tag

 arch/arm/mach-rockchip/px30/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-rockchip/px30/Kconfig b/arch/arm/mach-rockchip/px30/Kconfig
index f5373c6f9f..6cd65dfa97 100644
--- a/arch/arm/mach-rockchip/px30/Kconfig
+++ b/arch/arm/mach-rockchip/px30/Kconfig
@@ -2,6 +2,11 @@ if ROCKCHIP_PX30
 
 config TARGET_EVB_PX30
 	bool "EVB_PX30"
+	help
+	  This target config option used for below listed px30 boards.
+
+	  EVB_PX30:
+	  * EVB_PX30 is an evaluation board for Rockchip PX30.
 
 config TARGET_ODROID_GO2
 	bool "ODROID_GO2"
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
