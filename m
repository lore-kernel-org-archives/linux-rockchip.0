Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DE91C433E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C21DB20707
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ke23jroq";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Lj+3HmpE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C21DB20707
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LhJc37JI/dSoLAhguz+4XoFGliEU6HBklhYupFCYXss=; b=ke23jroq5tqYVi4GRhIs6rSE0
	sTlkzdgMByuATVzVjIXWxzvkd3CyfzEXdmuiccCqA3f1qhVetyfwOuazeFtANjAzh+1X0h+crnTN0
	9rlXLmbHTye8HgbcZFgUZqKZ6Rk4c0UTKWJsR17gbty8HAzW0IcGeZyiR89sAJ/ZShILNKDYcMsRQ
	7LXEDDj0PaUxkYbHe/R1jk8NSg891iZSejxbEUWNH0TjxqSnq2OMl8vjGyxpB1PjVG5aRHbFvdlh3
	yamzuM9Qiu+/sIscPjWd1cJr07OQHNZ/JGnmv/579KEiHa9ITHsOAWfijDdhY/V+V/XXcK81j95YO
	gXnv66GjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC3GS-0004R1-Me; Sat, 29 Aug 2020 15:59:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC3Fu-0004Bs-Rq
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 15:59:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id c142so2141085pfb.7
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 08:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x7Lva39pftBA6FEqjewb6eW+oOxMNUrFl3pdrz2HNEg=;
 b=Lj+3HmpEyxK4ys5SQafUdoDlyn05BgUs9LT198QYBWv66qQJuc9nUM/hZ1RjDEcsQN
 GeBUtxjbZpZ4lCuc2rHCY3ccleQ9JP2YJMCm3Igj5oGHVemhQfjADw3g3DJkwJqLbB2k
 gLeY7OaYguCEvySyiJJyc4PGcJ+yCFRWAt0gY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x7Lva39pftBA6FEqjewb6eW+oOxMNUrFl3pdrz2HNEg=;
 b=len6+LHLr8Cpd+Xc02s9gh/Rhx6tMmgkvDY2rOG5VPeNgZmqNjcqVYkC8tHo8HENln
 DWedUHqwNfbIa7KBfRYHryKo+Euxf8em6uUom1AyQcS2c4MjyrRj74WKafNgErMZAyO3
 50LgWXNeUgPlLX2xQL7zerkwScVJWh1oJyp90NUjvR+14NWrxmMAb+PTzFSYoJ0BKV/d
 H75asYuW/Tli1ZhPvqEEc5EQYi74KhFO+BmW56ik050hqOHuxju4CA96eBGMz0QdulZs
 tJoyqiW9ORMFtdxem5ouFrPhI8jZ/a5nH0qTRw9MzQdD+yCKEW0gIxvh10G6NC8Y2um1
 RkNA==
X-Gm-Message-State: AOAM533eYVytgsy2O6oG9ow8yvn63diB3JVOSxINT3K5bqof+U2XD9wJ
 Cx2UT+RM3N6idUHfVKDMIBLRRw==
X-Google-Smtp-Source: ABdhPJyd8r4VaGADPnKOn7M4yhYbeTP6dpEXeeSTpkNjRRZLUrB2zIAkjxL/cFsY6DjyI9ZZiyhwBA==
X-Received: by 2002:a63:4621:: with SMTP id t33mr2948882pga.32.1598716741018; 
 Sat, 29 Aug 2020 08:59:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
 by smtp.gmail.com with ESMTPSA id
 j20sm3131714pfi.122.2020.08.29.08.58.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 08:59:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 7/7] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date: Sat, 29 Aug 2020 21:28:23 +0530
Message-Id: <20200829155823.247360-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_115902_989480_C94B7573 
X-CRM114-Status: GOOD (  15.90  )
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
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@libreplatforms.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jagan Teki <jagan@libreplatforms.com>

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   | 21 +++++++++++++++++++
 2 files changed, 22 insertions(+)
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
index 000000000000..dffc49348f28
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
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
