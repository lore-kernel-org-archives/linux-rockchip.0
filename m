Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B22C433E2
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 748F1207DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Jotr3WaD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="MmQA+6oM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 748F1207DA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KmFB14qjCLpDh4zpVGUJ1k5RvfxOrdMuEElrgUQ+XL0=; b=Jotr3WaDgcNT84W5f1VYN2BRY
	rDY192qLBnFsUp4RSkcNe+6pEGLV1pshwMd5Br3lhzsU23ZZ7xwX4Ik+/oKINh1QkIjKPy7T7rUQp
	S2VDRUh0U7Mpaz7Ofnloa6Ilf5EBidtjfho0E/YRtVLVR4+nlRHe+s0srZsflq71kMRfHrkT80pR9
	XZTh+JXdsENCKWtb6y3T0Yy99Fl8ha+RmUbkWCnmsOomPHdLtgHHPCkc4aUXnEHXIg1OwrU2XSi40
	Wr5L0No5LHx6yJeUtTCwcy8Y255J0IHQkgu11s9Fn/r69flQlTRjwSuug+eGWwnx5NviB+cE3aGYx
	jLb8KW5eg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC3G2-0004Eq-Pj; Sat, 29 Aug 2020 15:59:10 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC3Fk-000475-65
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 15:58:53 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ls14so903486pjb.3
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 08:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rStBfOvl55pQq+rvM4nD151B6wU+azvewrI4r70NPhk=;
 b=MmQA+6oMSBG55PrNJwwvYnXOb5T+65eG8XgSF4v7ZHYfEwwntd0zsg4SkY5h9snNe4
 dPXZwFnHQh5g46eOHNthEXnBEb9/cfIcEQcgAPszhsafIZOm4nFziHqUgL0XJjIGltU4
 ku526pk2OLUs+36hwBwejevZ5ud7q3Nn4rsO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rStBfOvl55pQq+rvM4nD151B6wU+azvewrI4r70NPhk=;
 b=YUFba+4kRGWwZyz3evG9HRTTV8aqzr6zWbn8e0GzyNx7jlIsS6rac0Cm0S9JWE4B7g
 RMnGcIy0KiGch1cGQmeBUN5mjRxlYx6JDjBUGR+T5nzkePyYM7u8XNnee4kWn6ADMYPq
 PAob3/9+m+XAz1/iQ06JUrl/FcDZvoK+ztIc3nGdJ5QkmE+EZ/JBBHtIn1IqhD8PWX/E
 sYP33RXM87st4UA3X4+4e1YQabr4Q7862HzjfJAmwHa001qioLMMvATgrZc9Xj/DWckK
 XaA3hqXc+cDd7+3oxfq6TIzAk2X1QojJmNyYnA94IU0delKp3WlzgaBjLf1dMMmkHo5D
 0gIA==
X-Gm-Message-State: AOAM533uLiENELNLnnB7kLLCJ9aBxYzo5pJeKVsOOoa/MbIe6p4Q5IJk
 UAX7flPLDe/kAluPqnybleRqeA==
X-Google-Smtp-Source: ABdhPJzoCuCELOP2WoaUKlUJCsFhhYn+hNPXO+xXMd3L2bA+kETEMwyKuSgNHgRGyEJ8wK1hAk2mPA==
X-Received: by 2002:a17:902:c1cb:: with SMTP id
 c11mr3089735plc.153.1598716730011; 
 Sat, 29 Aug 2020 08:58:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
 by smtp.gmail.com with ESMTPSA id
 j20sm3131714pfi.122.2020.08.29.08.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 08:58:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 4/7] arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2
 Starter Kit
Date: Sat, 29 Aug 2020 21:28:20 +0530
Message-Id: <20200829155823.247360-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_115852_264641_5AB894A8 
X-CRM114-Status: GOOD (  15.55  )
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
