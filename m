Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C77EC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 489652073A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="KNr0cRi8";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XBJyJ7yW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 489652073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yDFdsIPfxSOfAi2tWl2BuexTxKays0IwIHK8wsExIG0=; b=KNr0cRi8yDAYwOnyKm50pOjfy
	Y3gKqA6vyF3wKOSEvV8dszqusyHpKWiw7JALEDiTkFuh/SeYgEYbl2zsJFmw5vvXKvqZnoBR+li8w
	NDNtc6YPcp2Efg3HgjkMp55FsYTCdl39wF7rZCpU0gRuT7l0SBl3XiTTG1xbpNWl3xu3DqpCIOMEB
	KbtF6CbNnD9VRshl5bzMoue9aHTvVHBFev2MBa+G/KC7cn2j/o8Xx5vPt+dp2Q0e7PXbEDXg+cL6n
	tjsZS2J8ms35JcweDzFG3Lax5D9WqMUKY/SEr08gbjwBltvLq3S1VkN6sP9Lu3Dq1ViVFfCSyXsyC
	o/58zJG4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfDE-0003ut-RH; Mon, 31 Aug 2020 08:30:48 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfCN-0003Vt-7y
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:29:56 +0000
Received: by mail-pj1-x1043.google.com with SMTP id nv17so2750015pjb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X5CPGOUWWa4mK5texr7z3mEccnOicqEb24j4H7skHsw=;
 b=XBJyJ7yWN/QlW12WTAMdjRBUGxlh49Azi76WllVN99m8yQSgRFYmhiF+KHriRY4s78
 xutjvYBbp/vn//kZMGpHrydsgXvN/wseSmka6dcm31snRLcRBH56xcy5Z/kF2S9Rg6uq
 Te+rZya+CMAD6txAZn124IMODkKhQfjgI2E0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X5CPGOUWWa4mK5texr7z3mEccnOicqEb24j4H7skHsw=;
 b=uBoYRA7LRwrYZ/a/WFTs3CNEGAXdXn4xd1fpDvKJYJiagdhB1pMf9Lh++aWNMqqUNb
 7ASXRfmRL/6lfOYRLQVoTes/X1nzjRNptDYdpkgfIeV+X5uY8kQSxLIxepRYnKVwQsF4
 wSJh5aFXkSLyUOijD4OAJlIMZSG/J05o4a6Yc8QmaQVCRHTueIagFtcKRPp9zCdg2t2x
 JJGWz16PA+/hpfl3AZhfIBcBniidrO2A0TLHKFcm9gkdS4BJsYfxcqGut7cYMq8uH+q2
 5lKsMYl4xoMUV0WAtHT6qiv5/kkuVIXFm53XtD0AHLkRFyZRLZ7Rb0GozYTsJG/VdVOg
 Jllw==
X-Gm-Message-State: AOAM531SYrBa3AzKceqrIM2s6wh/42bNKDVzroWN0JG9lgbG+ptalpF0
 LBpVdJqwdgRsgRMHlEey8KYBQg==
X-Google-Smtp-Source: ABdhPJz9RauHSdZ3W9HtEtr0HT8jIbMEJ/AIawBdCajj1oOVlNtq/rDMXIolVrnFjmDyeqmz6BS2rA==
X-Received: by 2002:a17:90a:cd06:: with SMTP id
 d6mr382520pju.202.1598862593334; 
 Mon, 31 Aug 2020 01:29:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date: Mon, 31 Aug 2020 13:59:16 +0530
Message-Id: <20200831082917.17117-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042955_447444_456CEA5F 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
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
- add Amarula Solutions copyright
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
new file mode 100644
index 000000000000..58425b1e559f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
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
