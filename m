Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51969C4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:36:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D11BE2075A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:35:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="egAwKJcA";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LFncIg1k"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D11BE2075A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nyMzW/sM2uW2WY3s0cERo33t4XJcCu0+o0vHKLG8jZ4=; b=egAwKJcAGfFGI3465zUSrBe+f
	rab6I3tYf1ZRSP6EbGM4FSyfzt6Ioj1b/shfoJAKtiYgmQOTwnfeEqr1894D5r0Au+JXMeNv8OCjt
	U6QnMAnLe3DxRtFBvHYKBCZxGtbD8akIRXeVxzvkSLVNI9GL9EBc9qsPGrKrqCsb9lv0G8cgnHOdi
	t8DndGPOc4ZITLatfFEPs0PZfJkCYngaSF16zdKSrda0XRbEhx2XLLgePFNCyR4RHHpxeZ0pmjsKi
	Kvo44UvfC9Tz7tk6b9mUJHAEAe9bD48pBAqqeDCBMh5bPq7NjZHoI4AhICA5gBmF5irOB+pB9mIw1
	g0dOFI7JA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNB74-0004mT-D7; Tue, 29 Sep 2020 08:35:54 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNB4O-0003Ry-C4
 for linux-rockchip@lists.infradead.org; Tue, 29 Sep 2020 08:33:10 +0000
Received: by mail-pj1-x1043.google.com with SMTP id fa1so2279424pjb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 01:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dx44QJ0d0wpQDOLwOMTCd/a0pDc1XmM5I6tzJeT/8Ss=;
 b=LFncIg1k+T888IG6v8CeyKfSQF1KZzlWrmWlY/2XEdAIFbt5J2p8Bp9Jz3YKyPY68Q
 xbx2FCdOAAouJ+L2wFWHmCY0GCLKn1owfuNwlW56gRp+NpPREQKILelE0p/UeQVMZSlq
 LgPC6PgKfJ1yU3bpNKfEhtePxtl1DLU+kjiow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dx44QJ0d0wpQDOLwOMTCd/a0pDc1XmM5I6tzJeT/8Ss=;
 b=Dz+XfbLBsLWDlhpKxXbyc6rvmx+o8JWRNdAThEjufHID3MjMbQu6lAJ388rCiuE9Ez
 9GeMqxLliUrPf67AhbMwr1A6dLd8hNfio76mw5rARg/GQ2XGVDeVWOiwOuklLUl4UkBF
 2nYBEnj7g8PcN8yoY81F+TOOhbyDyDT8JNQe95bi6LP22bXmkmd85gFzG4qzEPCDaWVk
 QA/Kqmuvxp84ZZUXpG0kMzpxp+DFHIf41j1dobqOj6HMNtieGTY0YyAYNd3rPrQwmAGj
 /z/b5K+W++u6PaGIySwKZt2zPDXrl+vIxicmLXPpE/lkx7pjyUV64Itpx71otNt8PkJG
 JEIQ==
X-Gm-Message-State: AOAM5308zZIrrDd509jY5sK/v3piHni6cPxcnYl2E5B/JSe2OAeV2r3N
 vhUmg2tXXP5ne2Zva25ap7Xipg==
X-Google-Smtp-Source: ABdhPJwfN1BQWnR0DbmK3K6Z9wqqEWdFqxfQQxAnapawWIvh0kz+rFW1pdDfsXKkbD7FZb1+cN8/dw==
X-Received: by 2002:a17:90a:e609:: with SMTP id
 j9mr2727199pjy.129.1601368386111; 
 Tue, 29 Sep 2020 01:33:06 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:b511:310d:8495:d767])
 by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 01:33:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date: Tue, 29 Sep 2020 14:02:16 +0530
Message-Id: <20200929083217.25406-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_043308_612142_938E321F 
X-CRM114-Status: GOOD (  13.58  )
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
Changes for v4:
- none
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
