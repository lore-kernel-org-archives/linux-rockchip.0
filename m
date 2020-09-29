Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0CAC4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:36:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 014BE20789
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:36:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ntYMoNTC";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hkJvgyTv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 014BE20789
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1+2BZYRvId0B7EoL6Zfbp6fgyxHBThrI32c6CxutxWs=; b=ntYMoNTC3X4m72cmeWXa2naP7
	QtwE/TrYc8gtm6g67PWtb0mpRfDc+BS+Wpu79h7G7btjvAq8+O2fojHKQbWFw4nnJpI5v9qA+Lk4f
	ZnZqVXTx4o0W7kQ/KyB36ttatyNQMUwbna6dGdAdLSroj4dz/vYvWM6fKao7UZhVGPQ1OBTBtpl6u
	uFeJczt1cQPJQk1SQgylp4K3k2vFlsONr0A2cMLixQaSH0au500mYWCGnZhuMiesE2HHjYa9SImMp
	MU60J7lkpfCYBlzRePwW92ah7l7a2vNN13LyDxt9WjmIYSVPNfcI4OKsVBn7KOZrwehxPaaRAmebU
	UGnT1wDmQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNB77-0004oS-4j; Tue, 29 Sep 2020 08:35:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNB4R-0003Tr-VO
 for linux-rockchip@lists.infradead.org; Tue, 29 Sep 2020 08:33:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id q123so3826982pfb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hIcoCSV3EdXkbZuDXxqCtycSPPds0aFZfPA4QHxDFJE=;
 b=hkJvgyTvhXdrm+4FrsoYdnxyrss+dx4swUqdhwA20BIRRTRDsq7AV2Lq2x5iifkpwQ
 T44caxDpBkBz1tZ2POIXvm5rBofFK3NjBYjoHUg8HNiFDuhx+gLqSler5AhQNvSIXKvQ
 CqYHdtbf39NDVJJ+zdNrbgCvxEIJJMo4S2ifg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIcoCSV3EdXkbZuDXxqCtycSPPds0aFZfPA4QHxDFJE=;
 b=KOzVdstlyZHtvM+66ZqJ86rF1eg59PELEBPAgerPF9cP0pO83kFpQdyygdFblULjv/
 i/iJTMk6OTB295SL9DKxvg/HQbataWY+muobAj6dAsmCfXoatwkq3J04PMtQ3d1fVuAE
 4PDh3uEx1SHLCeu4RnonufwosdaUX/Kz4S62DUDftsZkRyrz72jNshvPZD1envRQjn2u
 Zh50U9JqJWbcinEH6rmqe2sb/nDalE2eFLgPHxyxvsbTxOodieoReEZzMbZVe4tYykKg
 lDr4L/c7ZXAWM1DgLOuRZ0Ikbf7FatKzAt8wmQVZdrKUANCt0oRHivykIKO9DQWBYHJc
 OE6A==
X-Gm-Message-State: AOAM530cN70BUNH8t+z+9blzhMTyqg0cuL7HNtbSyPQtWhyYKkR5kYNM
 XCUwGR8Pye0WJgMHMDEanK4S7w==
X-Google-Smtp-Source: ABdhPJxDi59mzAOZvGeuEOE6J33+Iy0vN4m+HWhnk/da7nUC4K3ZUOxkUe4uvKrNAYuRfAgbygX5mg==
X-Received: by 2002:a62:8806:0:b029:13c:d37c:5e47 with SMTP id
 l6-20020a6288060000b029013cd37c5e47mr3188060pfd.13.1601368389671; 
 Tue, 29 Sep 2020 01:33:09 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:b511:310d:8495:d767])
 by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.33.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 01:33:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 7/7] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date: Tue, 29 Sep 2020 14:02:17 +0530
Message-Id: <20200929083217.25406-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_043312_065413_9EBA507E 
X-CRM114-Status: GOOD (  16.11  )
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
Changes for v4:
- new patch
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
