Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51964C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:31:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 195462073A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:31:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="08MZSncc";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="MsXIKLUX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 195462073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xS3Fk/yMj6zLR2iRuXgKF4WNoyM0WZsnxwTJKmx7d4A=; b=08MZSnccKe7k716CK88lCP/g+
	pBn6jxvDFAe6SEBXWuL9D85bzuPROu6aHDQgPxwTF5tntW9TjaP7j7fCcAcAdsP1MFCxxKlOh1kP/
	1bekg7xtuBiJguLHqMzcwrPzzZrd+kCeKXahYBmlxkl9SC7b3s9rETfJ+4lzOIP1wrNbhzzfbi/px
	hnyVIMQa/YysmA6v8Ee/Sj2vD+a9IXtIMOKXcV+MeHBvQsc3bJ2ZpiY2C6h6duaAIU0PFZneCvNP2
	NbIzrKfN2iky2eeC+gEFw+q88S9vw9zDSSCEh/ezYrr72jSg/vmywal5hmzQhVm/PSxdRNhWMyp4+
	kS72AY9gQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfDT-00044l-PQ; Mon, 31 Aug 2020 08:31:03 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfCQ-0003Y9-TY
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:30:00 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n3so1934530pjq.1
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ar1ccFxAQ+NjHCrRFWWmqhgKK0vUlm1MI2pafScAxI=;
 b=MsXIKLUXg6PfmKT6W75RWl++K5nOJNqQQ5tVkcCpdPbem3K+Hh0WLI0I9T5ZT0YkKd
 ES7/zhukE/H6K5R+5f0qAPZT6GKBlzyZtVJM5tIaM9UiP5xCYYaom9vYCeI4db0tX5vy
 mrimCAWDFntUWt3WjtyRqi1bk1PP9IfSwBPuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ar1ccFxAQ+NjHCrRFWWmqhgKK0vUlm1MI2pafScAxI=;
 b=hbcmUgvynlHWkCSae5w1kzrXqmgc1fDRQoat+ctA2Xoag9X2p3NdDAq4EugwMwuLJj
 rEaPDDTliIGWtx+bX2eo6ifTwnGfgeBMz+gPCqL1sKc09eU0Y61GDZRetZVr+Fh5xTB7
 yqGrf1nj++Ykdf4Oc2x4+6YFGN640/u9z3P55iduJ/HRX1s5n1OTa55H/IgIRljv+md2
 zi8Mg8uvQ2joLSxKorrb3NA/thaVcg6LCKvj06GwdpYy6x/2UUSq3yIRFtpXGVzW21Wz
 CJDgblyYdayGEYe45C0iZg4xfEDoGwwWzF7qeHJ+igZwBDcNsSLsdjCJDWwafAEVHS3Z
 0/QQ==
X-Gm-Message-State: AOAM531CFiAHltPr8jum0k4fiQJJ9oGrvM06DF69KXLtzGduo49weSnV
 kejmKuQEu9pVICjuP+iLH/CepQ==
X-Google-Smtp-Source: ABdhPJybatYfCdCWKwpksmunsSSxteIS/Iww7nq0leuuitPggZ/Q+8l8p4NfiAr1XwIN8gaLLz2z0Q==
X-Received: by 2002:a17:902:c1d2:: with SMTP id
 c18mr262793plc.237.1598862597113; 
 Mon, 31 Aug 2020 01:29:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 7/7] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date: Mon, 31 Aug 2020 13:59:17 +0530
Message-Id: <20200831082917.17117-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042959_078882_0745E9D0 
X-CRM114-Status: GOOD (  16.75  )
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

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
Changes for v3:
- add Amarula Solutions copyright
Changes for v2:
- new patch

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 65116fcb7368..958eb57e403a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts b/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
new file mode 100644
index 000000000000..2da01281883a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-ctouch2.dtsi"
+#include "px30-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core C.TOUCH 2.0";
+	compatible = "engicam,px30-core-ctouch2", "engicam,px30-px30-core",
+		     "rockchip,px30";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
