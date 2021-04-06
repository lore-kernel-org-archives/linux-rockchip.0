Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF7F7C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 10:23:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 869476120E
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 10:23:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 869476120E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4buPh1i+cZE7ZAisaS5DWIHOGzZImAmjQpvFuiYqAcU=; b=cGIxaTpGqEESEg2Nyuqe85FrLs
	3NbHkzfSsBO+f8S9rY/lczxUL8Mhpv59auHI7Gmt6FB1ir1w6RgfCxpoT/4GIruPk3ymuWR9Ra6R4
	hlCzopis9E3XfUXBRwot54oOHclKXHsVQeUcyaOU5RqsdXVS6jLRTW0U1rrjivKYanVOj7Gv3ItPQ
	kORLoh69+r7DwO9oO6Ewq7c/6AMGSSil/n3+JhrbJ/vN30w5bjHOV7onr7ohNhKBeEWV0u3Hwv/g1
	Z8AoYlaOfeiQ/h3Jq/vGYgvjVp0vdooLWsJ6IZG6AqQJKdayUyISnc5fObf2QOLpflaSAA3Ox0eLu
	zNfgqgkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTirO-0029dL-Ph; Tue, 06 Apr 2021 10:23:02 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTirB-0029c1-8H; Tue, 06 Apr 2021 10:22:51 +0000
IronPort-SDR: Nl+qoanvrfoEAHfqwNw86WIkUwwq9wr3slWtP1eKF7YGSDgK2j2LXI40OlsNBZ1JHZrcxJE3fi
 uKqvQKwGsHRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="180164845"
X-IronPort-AV: E=Sophos;i="5.81,309,1610438400"; d="scan'208";a="180164845"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 03:22:42 -0700
IronPort-SDR: Ce8QKxGNyzHd2lPlXwfiSMXekdbtn8cBvZCtxDo1xUlIs0JyxUBkEIKqyZyXArDNTyhE52Y3TN
 FnFXKJeLrUTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,309,1610438400"; d="scan'208";a="448512067"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2021 03:22:38 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id D7376202; Tue,  6 Apr 2021 13:22:53 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "David S. Miller" <davem@davemloft.net>, Yangbo Lu <yangbo.lu@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 UNGLinuxDriver@microchip.com, Jakub Kicinski <kuba@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 1/1] time64.h: Consolidated PSEC_PER_SEC definition
Date: Tue,  6 Apr 2021 13:22:51 +0300
Message-Id: <20210406102251.60301-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_112249_670180_90DFB85C 
X-CRM114-Status: GOOD (  17.28  )
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

We have currently three users of the PSEC_PER_SEC each of them defining it
individually. Instead, move it to time64.h to be available for everyone.

There is a new user coming with the same constant in use. It will also
make its life easier.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>
---
v2: added tag (Heiko), rebased on top of newest rc

Since it touches PHY stuff, I assume that the PHY tree is the best
to suck this.

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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
