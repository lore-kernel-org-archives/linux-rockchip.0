Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CFF9C2BC11
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F303820756
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IwQcomB0";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="eqKG+m8s"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F303820756
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Bx3tyrKCT1toLgIDjmzVrJKyCR/TRoeyfWZ7pS9xJc=; b=IwQcomB0sB2OoDxIqvXed+E66Q
	tQsA1SNYB7ojMSR70NhIjZMYRuwLTv6R6jrvbIvzhTaFRyMlzrgFSkwGq43119MUF5NnYZEUuuZ3U
	bURh18jhi2mLsUPWNd1pYMGBkZRQ/w4YJooYfjGrMHhDRh+bbxv6yahYPw+4iIbFnk/Nfgo8jVZPi
	bEDuc6vExlI7sdHXscKbyMgNvOUPIo8vxx0LFQn4NkQZH/j/kjoZ8Dm4T19MkhYxex6j8/Z6NQQog
	IDgsVTPwRvpK+VuxuMNcg8ykebCkxWt1Mr9tYlJOckNpZmR5gj+1jI1jNvdPCSwuyls1SmFpTO8Vl
	d7aMiCTQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHqXd-0003qm-3j; Mon, 14 Sep 2020 15:37:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqXa-0003oE-4Y
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 15:37:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id x123so12948488pfc.7
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2020 08:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RLnyZJOEA45n+2/UO2vdBCAfzLxuD+REuUk8UOAD0/0=;
 b=eqKG+m8sfA+YWwjQMKHe23iHi4h2iSg07Aha8blFOKZ0gAZk3xiFOZKT4SOyHXnV5R
 bU4j7J7dRhllx3ok/WF0MVcHYVo76lHxLzsV88IxLtSD6cO+n17n2/7+9r5CE3m3F+oX
 BjNIk45wue1DSrhFgtaxD6R+gxAU6Xye78bV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RLnyZJOEA45n+2/UO2vdBCAfzLxuD+REuUk8UOAD0/0=;
 b=X7JKUjlrVjjYiqcgpr2KPm9+YulfJ8u3FMcd7Nr29Rkw56K2l+dFwehwQd5iupHMK5
 WgekBbtZfKwKjIan1cMbwNCS7GRowlhGZFmZ62N2/VwUNqNVQIzGcLsbHUYS8n1xGP0K
 hCRQ7drTjDB8tIBnDR0nkYHzFt+41cW8iFfdflIiERpIjNAa6eE1KUSSTt1Ygdf1SLiV
 kRTITmPDDoa1yG4SrE2YEmqOaFhmlk8f+akot9UrlzO0UCtE1/y9bZaNPD+1exRXaKQK
 Lx9vBxWfF8nIxRubE7CVronEUn/qBgjC0T4wnU7H0MWjJJBacsENy8oQq/zM9OcsuFtA
 dmVg==
X-Gm-Message-State: AOAM532ksoQmFY3E03ahX2oBIWLuI5tADVaBiTSqZb9lbXy9fcN9qxHX
 zM9sTM7ojdtRNDcfcw+ROJSNAw==
X-Google-Smtp-Source: ABdhPJwCVh15TvP9BlLDGiZ35GW1mqqnhB6V8L6x9izHnPZxqzHPZ+yz1thxDZK+Bclb929x3MOb2w==
X-Received: by 2002:a65:44c8:: with SMTP id g8mr10735157pgs.172.1600097831999; 
 Mon, 14 Sep 2020 08:37:11 -0700 (PDT)
Received: from localhost.localdomain ([124.123.169.115])
 by smtp.gmail.com with ESMTPSA id ml20sm9711026pjb.20.2020.09.14.08.37.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:37:11 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v2 5/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date: Mon, 14 Sep 2020 21:06:32 +0530
Message-Id: <20200914153634.18121-6-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914153634.18121-1-sunil@amarulasolutions.com>
References: <20200914153634.18121-1-sunil@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_113714_284276_2B77DFCF 
X-CRM114-Status: GOOD (  15.28  )
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
 jagan@amarulasolutions.com, sunil@amarulasolutions.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
