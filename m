Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A537C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDA0120754
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1rSb7KrD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="l3rOM9SP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DDA0120754
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=coNZFnsMXmlpvBdmuuQOpMcyj6vDVlozgyLDalNqCkg=; b=1rSb7KrD5U6ZNeH7ZvBbxtPP0
	ebDGW1LQIuiO2sqghshux4u69a/BE21b9YZRAxT2b8tfEnGKG1Ebp3hoWAB2L0vK869r79F7Kq/bv
	+PUfw5ZfqSA0V1AKm9xBCQ2Mh+WFz2mFALDSjHuyG0HkVhJWUrmk9ypfutvwXgE0GSLwYscHRrTRr
	5TVvXZw/Qa1zdl2chrAli5qCHsxed3wZthp2waZAprLDbJXfum7xd1APO8c7kjqbGfkrZAxapA9nj
	u8jWtZLBfRhQtKjX5ljgZ2F4ApGoTycL01Yy7fRGrLH3knqN6UUTAAcG9aMd8YIo27RlO61npbm7r
	vdrDFpW4g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbzJ-0000FO-TX; Wed, 30 Sep 2020 13:17:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbzI-0000DO-5D
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:17:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id d6so1148237pfn.9
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9vw/hl60gUGUHCnvuCbMQQslS1+gjD//Hqlhqfz2Vvw=;
 b=l3rOM9SP88DNoj6D95GJJBk1sucwY1cWVFQSA+/tgQKqVYY0gaI0mq9yOPlPwt0PD+
 mRlog0fliKrH/4gvhXAi2CTR7jnXGBh7XZxvnhnfqQLM4SlPoYIAtxQd3Cj866eA1afr
 dFKo7XVgEt6HixwilGwQ91juLSOt4XxmB6jV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9vw/hl60gUGUHCnvuCbMQQslS1+gjD//Hqlhqfz2Vvw=;
 b=RiFsPqv/p94lXqYvo8xS4YWyGdFiv7TUOLMrIHAQ69P2/YCKCR7uwos7rA4jIeIxKK
 vNwV8lqllNpWPNIDAQ4S00C+IHC51quk7IvqzWFsqp4fUMMOS/QSoA6pxFdzuQ0qc2mu
 jeRFBR5MKUyRE+iTEquvmXE7prvH1A5SNjakeI7Fdgv7FQRiuz/gmKFeRM7qTWvwyu3U
 o21z4c9izx68/8nYGWoC9k/fSfoW/SGb0Y/7XOxyvhACUM5zoYFL+lj0tbxcf257yAEH
 ArIoQOVdEk2uF47rrlucMXCsCxv5qUG0/qV8CejTF/ZmJNE0se1gSblJxFSObMTgFHzr
 kC0g==
X-Gm-Message-State: AOAM533b//1ycrh/DmJ37nSY74j1VZGAMELdN2DYzCbsvA6KYaoKOqw5
 mVPmxctV8m82jjnE2iYRvf17Pg==
X-Google-Smtp-Source: ABdhPJyzeaQnYYEnKqhs7Jqe56XDTuk3AYaOoSk/Vi8J3cInquuZJ9OL+mgqR6AmPHnA6FuDsHaZUQ==
X-Received: by 2002:a05:6a00:2283:b029:142:2501:35e0 with SMTP id
 f3-20020a056a002283b0290142250135e0mr2728790pfe.64.1601471857886; 
 Wed, 30 Sep 2020 06:17:37 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:17:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 4/8] board: engicam: Attach i.MX6 common code
Date: Wed, 30 Sep 2020 18:46:22 +0530
Message-Id: <20200930131626.265206-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200930131626.265206-1-jagan@amarulasolutions.com>
References: <20200930131626.265206-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091740_204281_4F42F76A 
X-CRM114-Status: GOOD (  16.12  )
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Stefano Babic <sbabic@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The existing common code for Engicam boards uses i.MX6,
so attach that into i.MX6 Engicam boards so-that adding
new SoC variants of Engicam boards become meaningful.

Add support for it.

Cc: Stefano Babic <sbabic@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- new patch

 board/engicam/common/Kconfig  | 8 ++++++++
 board/engicam/common/Makefile | 7 +++++--
 board/engicam/imx6q/Kconfig   | 2 ++
 board/engicam/imx6ul/Kconfig  | 2 ++
 4 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 board/engicam/common/Kconfig

diff --git a/board/engicam/common/Kconfig b/board/engicam/common/Kconfig
new file mode 100644
index 0000000000..38328fd5ea
--- /dev/null
+++ b/board/engicam/common/Kconfig
@@ -0,0 +1,8 @@
+config IMX6_ENGICAM_COMMON
+	bool "Engicam i.MX6 Common code"
+	depends on SPL && MX6
+	default y if TARGET_MX6Q_ENGICAM || TARGET_MX6UL_ENGICAM
+	help
+	  Common SPL and U-Boot proper code for Engicam i.MX6 targets.
+
+	  Enable it in board Kconfig if it uses i.MX6 variant Engicam boards.
diff --git a/board/engicam/common/Makefile b/board/engicam/common/Makefile
index b392bf6cb1..15f0eaa1ec 100644
--- a/board/engicam/common/Makefile
+++ b/board/engicam/common/Makefile
@@ -1,5 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0+
 # Copyright (C) 2016 Amarula Solutions B.V.
 
-obj-y := board.o
-obj-$(CONFIG_SPL_BUILD) += spl.o
+ifdef CONFIG_SPL_BUILD
+obj-$(CONFIG_IMX6_ENGICAM_COMMON) += spl.o
+else
+obj-$(CONFIG_IMX6_ENGICAM_COMMON) += board.o
+endif
diff --git a/board/engicam/imx6q/Kconfig b/board/engicam/imx6q/Kconfig
index 48eb60c09a..fab8da0e73 100644
--- a/board/engicam/imx6q/Kconfig
+++ b/board/engicam/imx6q/Kconfig
@@ -9,4 +9,6 @@ config SYS_VENDOR
 config SYS_CONFIG_NAME
 	default "imx6-engicam"
 
+source "board/engicam/common/Kconfig"
+
 endif
diff --git a/board/engicam/imx6ul/Kconfig b/board/engicam/imx6ul/Kconfig
index e91dd15970..58f25d0623 100644
--- a/board/engicam/imx6ul/Kconfig
+++ b/board/engicam/imx6ul/Kconfig
@@ -9,4 +9,6 @@ config SYS_VENDOR
 config SYS_CONFIG_NAME
 	default "imx6-engicam"
 
+source "board/engicam/common/Kconfig"
+
 endif
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
