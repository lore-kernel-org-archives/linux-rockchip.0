Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5005FC55178
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F5F824650
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zxpqM7hS";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="n/j/Feg6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F5F824650
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bmsP3IzYTNRagHG02fae2lDblGbut5/xrpX/WnIHUhY=; b=zxpqM7hSYesApQTqf4YVBD5PM
	7m2l0GplQ2nV/md9qpyNvDXuPfSAEb35lNMJ6MTuXVBtjTZLyQGaTxSI3W0ECocM9R9hj0k2c0Rid
	8GnZhM809fxwzU0T0lNf7kBScY8uh0eEsyK2UoO3DKSH0adWACyfR+dY247h8v8W78Bi+PHxeF/QU
	JzPvteg8Ran0HfScaGcCBXhRYRi+r5F3q3KQw2Iig2RYEQpFNaO8VVoc09pWG1wJ4hFnEboAt7Xuq
	JVw4qZjww3xwq4J+/sqGBXmua6aDArKOci12Mh+VdzB3XBsI0DXo+eiO/YoR39P3qCeGTObBUhIud
	lJertJMLw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlau-0002n8-R8; Wed, 28 Oct 2020 13:34:28 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlar-0002ki-Q9
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id 15so2772890pgd.12
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gm0NCK5qr9+yoFpRlLj3zXUHNxTSdQyPNE7JnghEWa8=;
 b=n/j/Feg6Jw1xEZiEKsXPacqWHee8o3wZge7Bf7vmtEf95gPybecyMt5GuR6TCguAli
 g/Kzdu17k+Cs+lTaWK4ONBx2j2v4/7bDWk+QX09nEG/Bh6AexMeMkMpy6GjCTmU6uZVU
 YGG6H5kkgoFR0utOsXEQ+1tEdtfIuxrUYNDWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gm0NCK5qr9+yoFpRlLj3zXUHNxTSdQyPNE7JnghEWa8=;
 b=XyU/kM/bC1rLcs/odeiqCm8pjStPMF/QSmHeUnomJ22hJ/6HK7E+TSu/0UTQheYC69
 7H9v3GQ+Qg5UNUS2MRmyXbTQb9oVTkbzXysSQ7KtumZ+UfXY6ACQ0FCqUXdTIQz5Cg78
 wSp1lVSIWw73+gscuK4/fVdNWl3ej1tuMq0aB9V+55M5PZrK5PiHtxyBAxT1/0r9NSaw
 O8vlk6MhoeuXf5XClX2m6NlaHCM4xn5Jqi88VURmu15iuzbLgbsjiOtAEhebhwY1Qo+G
 4W6KdCdkpGqN7y9hIpIv7WhxVtrsiPinCbqgbjHm8ENB/onDCMkv+4ZLmZUzUkt+taNA
 kfSQ==
X-Gm-Message-State: AOAM531d8pMj7xLO3NyRNta+MxsAH06uvBBEPqmtxhouEUqmGlk79sPz
 xVfwtaTo9QeDkVH8Yzsyb67cGQ==
X-Google-Smtp-Source: ABdhPJwDmJ3b6OPRTIRPtH7f91J2b7TXle2JebFtljw5q9286+0hovZg9Hbgk2/I2XvXlDr2sFAmKw==
X-Received: by 2002:a63:1365:: with SMTP id 37mr6710710pgt.247.1603892063704; 
 Wed, 28 Oct 2020 06:34:23 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 4/8] board: engicam: Attach i.MX6 common code
Date: Wed, 28 Oct 2020 19:03:44 +0530
Message-Id: <20201028133348.241839-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093425_915533_1E10CD35 
X-CRM114-Status: GOOD (  15.74  )
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
Changes for v4:
- none

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
