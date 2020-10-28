Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A660C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02EBC24650
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NNFYWpkt";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AQH1N1dS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 02EBC24650
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U6KUCNQnGZxff3IJkeWL3J8OiAcgUR9vm0o2eHJ7z4s=; b=NNFYWpktL3w5Ec7ZdVz59aAjW
	bj48T+FyvJC9hxnipbgfLWjTcMK4QMJBKzviU6mtU0iCc257lr+ugTiiko0lBogXIFM/snMo/8klg
	CkBhuzScZC/YQFrXmXzbDlD3B7T9Tlv94MA2LRFwQ2vNP/ybrExMCgkZW8ezu/svpNR7eWzU5EJwR
	bWxcxoj8/PmRSXqEqVgV96qv6DXzq34WzVbSo20cK6c6F31UKRmsMYGzfXSnO3gq0HePSwSJ2d9Zt
	uxsSB1wpzU93wlb8Epdhn1JwvTtutZLcaEZUnLq8h6pCoI4i0C3Nxwl88TqrjgJc59gYECQ5TKSZu
	jVeUzAf5g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlb3-0002rV-Qw; Wed, 28 Oct 2020 13:34:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlb1-0002pC-4v
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id z1so1043130plo.12
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rTJNZjkf8+ZxhwnFAocwKArxdXyNKDsWBoxirDLlKVc=;
 b=AQH1N1dSbg4RdsXCCIa0pOaThFmv5uPOBeBGY/EyloAX++RIhbCWZUL7JqovAKd+Bp
 u7agthX2BFqJJlfUvbw+R+T/AY/Hs0+eKLFKBbnGx+eQHRIhoWX1MNriJdG0d73PCBsN
 HsY/Z7KV9J1Fdnp4/pnEajLd57JW559XuTSeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rTJNZjkf8+ZxhwnFAocwKArxdXyNKDsWBoxirDLlKVc=;
 b=DsM7vYotIAUM5ZrYDAaOvcfNYCileEn9DAcNizCIap/Y7cm+YTu0VR9MLtpJwWXdYP
 V6BgPbYllBPSy310B89jFhtIhAA1CZ23zLr98x3nzkJmkcyD3QuGicqaxucsRt2H5UCq
 a1ao+oGLo0X0d0ywcM1UIA0b/Uxkg6HdP541TZbdetw2Khwaaa0W8NdGjOh/jTt3e0YC
 L2meysENeVtr7JNa4aGtOatQVZ0neXetn8CRYY8qNRG9O1oDSH2faaErtzp/rbrNVbTU
 8tau/ezbFkwltf/AvQCOcC7QbZuxN3e6RCK3713vL0XUSGbX6mXNTAu3VZxNOBsUOSY3
 Cjrg==
X-Gm-Message-State: AOAM532Mhk3uu4+atWBq+GK75tYy4HPStsUl0XCPpdamfXwVae6xFCCA
 WcLG+exp2RuTTcNUEt3zY45LFA==
X-Google-Smtp-Source: ABdhPJyiMB7qEJVPzYktvVKWeS476Hf0wz8XNnqNZZccmPnox2l9P9Ettlx7QnyyoHznU3ASc5wwLA==
X-Received: by 2002:a17:90a:e545:: with SMTP id
 ei5mr6797149pjb.60.1603892073042; 
 Wed, 28 Oct 2020 06:34:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 6/8] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date: Wed, 28 Oct 2020 19:03:46 +0530
Message-Id: <20201028133348.241839-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093435_222709_19A3B92B 
X-CRM114-Status: GOOD (  13.41  )
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
Changes for v4:
- none

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
