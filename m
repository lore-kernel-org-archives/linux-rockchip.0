Return-Path: <SRS0=BMHt=GP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16B6C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 15:39:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61A2C2311B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 15:39:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61A2C2311B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8ObWBrTxcyp2a+KXhFvZsLg2iYCrdivU+xW8khv8oSM=; b=IjEhjcykQQE+etQvhqYPcKr9lZ
	BmUEq5q6+hBXU+zPqDkhZebFfOHWysr88xSTptRuixTCpLFnCuzkAoHcsyfSyyT/CGuUrjw8N4YW8
	aJWaIQBhtD83VipGxRt/OSVG0pCb8Bj7Zm3mlGtlIB5VHSz20o/DqP8CA4FaA4Xld9h6P5+GxLv/8
	rTAPy5rgHErYASVFpBAA6Ob83H9Ju2XCjTiygL7uoeQQZtzxSKTIggSypXqJb6KtSuEucmmOe4uq+
	whO8/F1n6OxpPxMJKFdLbLPR1IiAO7/AqewAn3MniUJjDQ2W9Xp1XmkSMEaxFQ2n5EXcCASJXYOLx
	D6lEV7Bw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzLlY-00065D-HI; Tue, 12 Jan 2021 15:39:28 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzLlS-0005ZO-Bl; Tue, 12 Jan 2021 15:39:23 +0000
IronPort-SDR: H6zNmKASFDeYucpsNwL+dhi4Ux7qjFtDPBATmvXF4aworHF+k92jYJdFnjt06cpnWwkO7CbHFH
 rNXsd3QxPXcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157833560"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="157833560"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 07:37:17 -0800
IronPort-SDR: akgMo6XR+8tzhNtWbWQLzgknr1gHR52ficSsRH7EcFyLANSNYGjQxYq3ntLw+7oYa1+U2zqX22
 kCTqZmukDoDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="348488753"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga003.jf.intel.com with ESMTP; 12 Jan 2021 07:37:13 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 42E0E11C; Tue, 12 Jan 2021 17:37:11 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v1 1/1] time64.h: Consolidated PSEC_PER_SEC definition
Date: Tue, 12 Jan 2021 17:37:09 +0200
Message-Id: <20210112153709.1074-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210112_103922_576966_E475E634 
X-CRM114-Status: GOOD (  15.49  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-iio <linux-iio@vger.kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 UNGLinuxDriver@microchip.com, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Andy Lutomirski <luto@kernel.org>, Yangbo Lu <yangbo.lu@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Gwendal Grignou <gwendal@chromium.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

We have currently three users of the PSEC_PER_SEC each of them defining it
individually. Instead, move it to time64.h to be available for everyone.

There is a new user coming with the same constant in use. It will also
make its life easier.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/net/ethernet/mscc/ocelot_ptp.c           | 2 ++
 drivers/phy/phy-core-mipi-dphy.c                 | 2 --
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 8 ++++----
 include/soc/mscc/ocelot_ptp.h                    | 2 --
 include/vdso/time64.h                            | 1 +
 5 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot_ptp.c b/drivers/net/ethernet/mscc/ocelot_ptp.c
index a33ab315cc6b..87ad2137ba06 100644
--- a/drivers/net/ethernet/mscc/ocelot_ptp.c
+++ b/drivers/net/ethernet/mscc/ocelot_ptp.c
@@ -4,6 +4,8 @@
  * Copyright (c) 2017 Microsemi Corporation
  * Copyright 2020 NXP
  */
+#include <linux/time64.h>
+
 #include <soc/mscc/ocelot_ptp.h>
 #include <soc/mscc/ocelot_sys.h>
 #include <soc/mscc/ocelot.h>
diff --git a/drivers/phy/phy-core-mipi-dphy.c b/drivers/phy/phy-core-mipi-dphy.c
index 14e0551cd319..77fe65367ce5 100644
--- a/drivers/phy/phy-core-mipi-dphy.c
+++ b/drivers/phy/phy-core-mipi-dphy.c
@@ -12,8 +12,6 @@
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-mipi-dphy.h>
 
-#define PSEC_PER_SEC	1000000000000LL
-
 /*
  * Minimum D-PHY timings based on MIPI D-PHY specification. Derived
  * from the valid ranges specified in Section 6.9, Table 14, Page 41
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 8af8c6c5cc02..347dc79a18c1 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -11,16 +11,16 @@
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/init.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/reset.h>
+#include <linux/time64.h>
+
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-mipi-dphy.h>
-#include <linux/pm_runtime.h>
-#include <linux/mfd/syscon.h>
-
-#define PSEC_PER_SEC	1000000000000LL
 
 #define UPDATE(x, h, l)	(((x) << (l)) & GENMASK((h), (l)))
 
diff --git a/include/soc/mscc/ocelot_ptp.h b/include/soc/mscc/ocelot_ptp.h
index 6a7388fa7cc5..ded497d72bdb 100644
--- a/include/soc/mscc/ocelot_ptp.h
+++ b/include/soc/mscc/ocelot_ptp.h
@@ -37,8 +37,6 @@ enum {
 
 #define PTP_CFG_MISC_PTP_EN		BIT(2)
 
-#define PSEC_PER_SEC			1000000000000LL
-
 #define PTP_CFG_CLK_ADJ_CFG_ENA		BIT(0)
 #define PTP_CFG_CLK_ADJ_CFG_DIR		BIT(1)
 
diff --git a/include/vdso/time64.h b/include/vdso/time64.h
index 9d43c3f5e89d..b40cfa2aa33c 100644
--- a/include/vdso/time64.h
+++ b/include/vdso/time64.h
@@ -9,6 +9,7 @@
 #define NSEC_PER_MSEC	1000000L
 #define USEC_PER_SEC	1000000L
 #define NSEC_PER_SEC	1000000000L
+#define PSEC_PER_SEC	1000000000000LL
 #define FSEC_PER_SEC	1000000000000000LL
 
 #endif /* __VDSO_TIME64_H */
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
