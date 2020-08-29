Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41B6FC433E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0DAC820707
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yZLaISbT";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KeB/x5T+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0DAC820707
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4ho89tVcKCNwW8cZW1qfYTeXzeQIakUIs/gIUQAvkXY=; b=yZLaISbTFZR0ljy7upQq/uyCM
	r2wKjJvp54MHG51HVcO8IHy2f4RqovdinIwST5n0AGGERz74lCr8cRXs4dPoJfjW0+TjbE2zjbC3v
	YihZkaA62x7gTIHTZ/JvYryTRMFAb2KbpHo4ku9vxk8otFnUFv8Cn+gOFRa9htJzZPKZ5JvBE39aH
	981IElXxRn0L9PHvbz5kqPnwtTRNtuS43Egs4zC/TykZSI/2pnEyUbsTAtY8K3qgUDAj8RD+Xym0r
	vcJG1Oq9FTmaPqL+ip2lJxYShmJvSSr9uPzTHxIopxYyVINRWLwnK1JbwtAd/ARpbvT0aexrdyYuh
	pyxJXK8mw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC3GP-0004PC-Ti; Sat, 29 Aug 2020 15:59:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC3Fr-0004AH-ET
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 15:59:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id z15so1038405plo.7
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 08:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iXLYxKXetHW9WTJtF+vGPv55kJPJHPkGYNRwTSrKTCo=;
 b=KeB/x5T+auurih0+yuTY+7OioqiCvYGlG2DWIPT/zmh50G4R4sT/QA8r6a+FioR9xI
 GOImcIilnSzUdCIqJArAy8ugfrhiAFkHrMEP4DuaUz/vogacU1+knSh2BcSYbG5xuYi4
 t9s5mxCwMCydNBgzmZv2d0K12d8onSiocDGwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iXLYxKXetHW9WTJtF+vGPv55kJPJHPkGYNRwTSrKTCo=;
 b=dLB811x9IYXqqsVlp16cri4a5bnLYPTCnjqi8crvEGsg/4Inwv2uBXKbQnmKtQ0Ma7
 +Vv92wtNR9g4rayjyNSoVKPsD7vY7qDRTxDqPTfrgVzOdeXyF7zXYzrupX2Z6SIE52HH
 nPRn1/esL/z1/XyQdXMb/zdY7C4Qzlf21g1E1eZ+TuL/ZthkHwT/mbw58bcAWuCOKCov
 HGnA6rgGnb3u6YWOxARgIoMdzUL62XmEx0NxxlmoGHgRIASqf1v5oP0+O48ie+2dLYjP
 xI8/R94jKaenqXbq2mr5BEY9fTinhLjMcQUPOrNdP3w9XIjkIawEe4wFmwLVgMF1auWq
 chyQ==
X-Gm-Message-State: AOAM533PS1REIgwBdgisbSHPD3f/FK1L5pDk6ooU9wSEAVBGdRNk9wul
 FMq/5yOt9mRtbhP88pVGQync6Q==
X-Google-Smtp-Source: ABdhPJzjSZy/cBhLA6BC9pbWCJALB2J/HfYDGnXcW1uiUlt0SvanuHHz3S2i7dLHzNshBwTOph21ng==
X-Received: by 2002:a17:90a:77c7:: with SMTP id
 e7mr3487259pjs.175.1598716737286; 
 Sat, 29 Aug 2020 08:58:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
 by smtp.gmail.com with ESMTPSA id
 j20sm3131714pfi.122.2020.08.29.08.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 08:58:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date: Sat, 29 Aug 2020 21:28:22 +0530
Message-Id: <20200829155823.247360-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_115859_587938_E554EC13 
X-CRM114-Status: GOOD (  13.19  )
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
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
new file mode 100644
index 000000000000..cb00988953e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
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
