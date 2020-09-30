Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C708C47420
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E525F20754
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LcM6pWj0";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YtiMbF4n"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E525F20754
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4e+J4BRhoiueIydyP4K9lUIEODExCJ63F1nJPZ5SioM=; b=LcM6pWj07204yyZ/CNB19gbqP
	Y64up93RrMcxtmTM8QEKsPKC/TDDhvc1t3BMgnIQM7fEB/MSxGP/IFtCANPc8PvWMu/X5yxjMu4+w
	l6A0FhH8KSPVjf/AeK8USpUMYOMzjR07w0M+eMCMaM5B6jTvxE/5vjIGGVM8DQ+FbGckqtKYvFXCr
	di2M8mrN0NIIiVV6NtImKKWkzRuDK3nrNDkGsb8yvUblMsvNYgG+gs/fmowufePaDb3q7Zy0ilSh8
	SGE6unJ+utI0+ql5nEKeqXlDUOJj5qVr7xGAXN3tGWWPNq7vRkotBRpinjUeG89HRqUqEOOSpwY3m
	LM8T5UBBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbzV-0000LF-Hr; Wed, 30 Sep 2020 13:17:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbzT-0000JO-8o
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:17:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id n14so1162070pff.6
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EGt4sDjxeGXzXaVCL31jzEdYaBO9mg1lt5sOkxHZR7I=;
 b=YtiMbF4nn3uoGgYTcJ/X2stUomssPbIo5v5eb271Tk4XWflhN0YZs2mHqT4LjaIF7B
 jI71qCxaCDL/lfOJIl19e9ILq660WCXX1x0gEM+0e9bCPCwtPhja3xgDEPTGdlZZSBKO
 e1OdKWFsxbk/d4UlwPfHCSzfKwiOO9f9A4CrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EGt4sDjxeGXzXaVCL31jzEdYaBO9mg1lt5sOkxHZR7I=;
 b=nRm8wi2mT8zbYEpLVI8APEOyB8/w/qGS53taqd+YL7GF18TqnTwPjKIWGrGSREAUGC
 LOqOVlsdhUElBnmP/BSCey7KJC91q0xy9HAdH6C7REhZ7kWarcq2C7aRF7sIGPgXt2dq
 V4xV6E2KXjj8KdskxqbX2UpfPObNH8wPCrPa1E7jsYtDyhhnzCyZ8fSh09DJhOPxch90
 ZmQ/O9bVu3+mkLKaxNiCr6GPL9IqGKjGmN/AUr1ZsCc2eU/GRj68d/DRj1CLGJ80Stxd
 DSq22untcbmILKljfXuzHzTtgbThXMnG5Wr6r2NbjDfdoGVA/R8YF6f46bIWD3UT2dMo
 Yy3A==
X-Gm-Message-State: AOAM532R7ZW/fN0sIJ/MacpwZ//oyB/QYDa6tevn5M/pOZlInkF/wpOQ
 5uz31DxPFu6QW7PXIqRROg8W/g==
X-Google-Smtp-Source: ABdhPJyICZLdoHapgtWJ5V14W8Q++3RTmNn2FPWKnuKYR05XxSX5ejEW5xCbr8D4xnIsCn4eHQo+/A==
X-Received: by 2002:aa7:8d15:0:b029:142:2501:39fe with SMTP id
 j21-20020aa78d150000b0290142250139femr2410354pfe.77.1601471869293; 
 Wed, 30 Sep 2020 06:17:49 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:17:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 6/8] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date: Wed, 30 Sep 2020 18:46:24 +0530
Message-Id: <20200930131626.265206-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200930131626.265206-1-jagan@amarulasolutions.com>
References: <20200930131626.265206-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091751_360952_BC530144 
X-CRM114-Status: GOOD (  14.05  )
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
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Engicam C.TOUCH 2.0 is an EDIMM compliant general purpose
carrier board with capacitive touch interface.

Genaral features:
- TFT 10.1" industrial, 1280x800 LVDS display
- Ethernet 10/100
- Wifi/BT
- USB Type A/OTG
- Audio Out
- CAN
- LVDS panel connector

SOM's like PX30.Core needs to mount on top of this Carrier board
for creating complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
Changes for v3:
- changes to support TPL
Changes for v2:
- Add more content in patch description to describe the board capabilities
- Add Michael Trimarchi as one of the contributors
- Add additional copyright

 arch/arm/dts/px30-engicam-ctouch2.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/arm/dts/px30-engicam-ctouch2.dtsi

diff --git a/arch/arm/dts/px30-engicam-ctouch2.dtsi b/arch/arm/dts/px30-engicam-ctouch2.dtsi
new file mode 100644
index 0000000000..58425b1e55
--- /dev/null
+++ b/arch/arm/dts/px30-engicam-ctouch2.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
