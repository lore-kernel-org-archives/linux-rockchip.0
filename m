Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A85C49361
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 664FD613ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 664FD613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRMrO77w8GOXSRinvWM7sGF3/RPQiIoRtlr3Ki1WYUY=; b=ESxliFB3YN9xpF
	vFWo3DCea4/xEepgDCySq+lED32BkIIdX8D5bG6x2Qrpk8xHxgS7UAj+vOqTPzuN1is8j7l3F6Mm0
	SToQ7abXt34ttjy+vlijw3DGaFE+x0yCM8TCbvsM40FMJFxTiYSTi/tQs6KNsuTU343TMqrEwc7Fj
	KQOWNo/VRrRNY9Y4tKBVZTNEdnr6CNQrk7lWY2vrVJcoTKmZkFSREYj3BQWgk+ugdK6kQAaDGDpZA
	f+tNKBZyhmiDB5mzY1w9p5I9bxaN6Ax2Oq9WcWxCcqUeI9blURD4yZQBCCZ3E72n/NQB+GyoIcMLl
	pO5iMOqsGlqgqNTViqfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luIzi-00F82K-0y; Fri, 18 Jun 2021 18:13:30 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luIzV-00F7wf-5z; Fri, 18 Jun 2021 18:13:18 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 o39-20020a05600c5127b02901d23584fd9bso6457869wms.0; 
 Fri, 18 Jun 2021 11:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rv4VKDRBcNrskkvEnd89Jswu3eRnd7ncejFN962fJIc=;
 b=MliDCA4h82Qv6GO6z0JtwJO5+8tXwdfODNzdyQKaMkLkFWiFf8n4HuqoMCeTeEW+YE
 B0UMnx53hRwiXJbZGkfdTK1zdrpS4b1m+rCz1hTKBPi2UW7itn2L8elTxo3sg5Du8k6C
 BQ8K/X6GuIwXrpaXqljV5OBiURiZpdgYo8f2ExCjzGAdKTvcsI5EWiNkecEmB7wBug71
 kmiMWKt4JzgM1FIODJd2Or8o0mhttgwr/vHyBc7s7eUnbwZjvYc+1s9p73wlzatQKK59
 5jQ82e/GTIVpSI0YolaPFIKxpIcofiQMUo3EqRrWCBpC3bdUv+GLti9jhHb0jNgZR+my
 O0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rv4VKDRBcNrskkvEnd89Jswu3eRnd7ncejFN962fJIc=;
 b=oJT2xgDxX6Ec/PRW+ap39nKXpAOfsfhfVv/v8qH+HP0h5AbJQBeMlcxBcKXvjgiolf
 9pC3TAOBDcL51MfEqHggbVLvTHoOhMZZCUo23WxOg+AaF8vNKJJxjtHFoJDcPoEtPcMV
 nR7w/5KWBqtXe5gfCOXBvigvjZwtfrKbZUCjf/rlaNHzGp+q7BlU51n6sUss9W1kyV7z
 eb9xBp/Qx9eHu1Z8jerIft3lDHfnr9zKFpaujKU5I00imf6iO2VqNeLNoF6qTbMcd8p9
 Tnu+joDB4CIqP2uSH+iN1P8Dk3Q/2aXST9Q7XYzGMCi6oSBDMGGLPEmGwyMmWkbZ32Vd
 PKHg==
X-Gm-Message-State: AOAM530YEIHYvTnoW+3TcYcZX1FKw0zQoxOuu/9L70/crZD2NH3CWAj7
 m8uFVMC173iR7+XJRwPMuw==
X-Google-Smtp-Source: ABdhPJw61tE1SgD3KZkdhjmX83akHP4VSX6zBLhC8lhARwMxkLIsxlU5wpu1/jpGew1IKacMRmYctA==
X-Received: by 2002:a05:600c:21d0:: with SMTP id
 x16mr2771318wmj.78.1624039995461; 
 Fri, 18 Jun 2021 11:13:15 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id l10sm9306782wrv.82.2021.06.18.11.13.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 11:13:15 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/5] arm64: dts: rockchip: Add RK3399 ROCK Pi 4A+ board
Date: Fri, 18 Jun 2021 20:12:53 +0200
Message-Id: <20210618181256.27992-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210618181256.27992-1-knaerzche@gmail.com>
References: <20210618181256.27992-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_111317_271535_79E7AECF 
X-CRM114-Status: GOOD (  15.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

ROCK Pi 4A+ board is the successor of ROCK Pi 4A board.

Differences to the original version are
- has RK3399 OP1 SoC revision
- has eMMC (16 or 32 GB) soldered on board (no changes required,
  since it is enabled in rk3399-rock-pi-4.dtsi)
- dev boards have SPI flash soldered, but as per manufacturer response,
  this won't be the case for mass production boards

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts   | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index c3e00c0e2db7..dbd7d37950f1 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -43,6 +43,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
new file mode 100644
index 000000000000..281a04b2f5e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel@mentor.com>
+ */
+
+/dts-v1/;
+#include "rk3399-rock-pi-4.dtsi"
+#include "rk3399-op1-opp.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi 4A+";
+	compatible = "radxa,rockpi4a-plus", "radxa,rockpi4", "rockchip,rk3399";
+};
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
