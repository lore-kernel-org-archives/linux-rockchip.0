Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E9DC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81D5B2073A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="njeCCGaj";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="IQpA6Xgb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 81D5B2073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yu79pJTqZYN2V0R8tF21jKuDoLkhAZX093oDhY8Pac8=; b=njeCCGajal8KpDRaLS9tdmdNq
	sFkUAi6VpmmU0HP+s5fv7znqpnikOHQCJ5EOy430pNMbnDDcCp/UG/atULqyMC4I+SnUyz5EHShWs
	h547Ypmlxwshl8hMpyB6kdqLZo6zYQQLAZxoRGIWjQO3Z/AGg6/lGvrxOxT4xheKbtYZ7cgfuewbR
	OPKdlqzxWeU0ySYgHLV0HsBC/a29i/hts0sTgVJJvtFE7WPQZLzfpdeySuiTQKTnp7v06Wlz7Dg0A
	jlr7jRSTC1SGmn8SnHOMRLy3kOVdyuAPPmCxFk22NSfAQKmRsdhA4BMZjW6rbxeflRX1wM88QG/gS
	Hz3gRKQMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfCk-0003gh-J7; Mon, 31 Aug 2020 08:30:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfCF-0003S5-I7
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:29:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id j11so2671365plk.9
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WBHJr1Okg/7cjUJusx0Y2Ejv4RKVEX9vsUPY+T721kc=;
 b=IQpA6XgbebTvewaAc85D6XPtEHWVEiGmqkYWMzOGpvHPwU6rU3HhBna8fg23ldWOM+
 nVMlkrq9HzCDm//XykDTD9LUjxHCDDS1FwAWSZb+dDOjX+cEp9jtRmDnZwax9Tv21G+v
 AVJ+LvPfg090Y48btqSpg14fWdNg+J59cC85c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WBHJr1Okg/7cjUJusx0Y2Ejv4RKVEX9vsUPY+T721kc=;
 b=aDhh60fYXcDIsmKbuxIwu4ifNfWYbF0fUU1llYKooYARGLqGGCXDXEGV2NPy/THuXs
 Uxt6Q3v7CCXygiAqAn+K6jKY6BAVnVgjGFt8wl/+nSlx7rwNFsN/r8TbSdHdHeU3xh9F
 3IqbI6MRuKWUtq3Vc4pyeobywQI3kJzxGLKALvohTkOkDdR43UZqK7qF8d5M4Nw08XQ3
 pF+Lomth7Ji+cZGJsXTYZtZtvWxclq5VTdFUPzbly/dnoyjYxMbZT3mYp61SuPRdpqU2
 NKLPVpX5TLyLTXdFUhFLGmrJHl567ONsHqHPCfK1lLD31T5/TCNVP+zvLa2ShvyTZJ8k
 k7YQ==
X-Gm-Message-State: AOAM531DsHs4vnqG1vIewmhvqPFuqW5y36CHFkC6p4FPyJwcNjnUybrB
 rE9u3LtB+nP5AWKdCE3+ub2tzw==
X-Google-Smtp-Source: ABdhPJxgjziD2tuA2kVV0dZZb4M8gPNqYekdzI1yHazKUQ5scOXSTXVO7V9ko8vChmF9EEt79LGq5g==
X-Received: by 2002:a17:90a:120f:: with SMTP id
 f15mr411985pja.120.1598862585815; 
 Mon, 31 Aug 2020 01:29:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 4/7] arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2
 Starter Kit
Date: Mon, 31 Aug 2020 13:59:14 +0530
Message-Id: <20200831082917.17117-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042947_692279_C23A24B2 
X-CRM114-Status: GOOD (  15.78  )
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

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

PX30.Core needs to mount on top of this Evaluation board for
creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-px30-core-edimm2.2.dts  | 21 +++++++++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 02cdb3c4a6c1..65116fcb7368 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
diff --git a/arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
new file mode 100644
index 000000000000..c36280ce7fc7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-edimm2.2.dtsi"
+#include "px30-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core EDIMM2.2 Starter Kit";
+	compatible = "engicam,px30-core-edimm2.2", "engicam,px30-px30-core",
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
