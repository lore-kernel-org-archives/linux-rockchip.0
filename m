Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B56FC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:51:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0F0660EB2
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:51:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E0F0660EB2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wjWtpjNIIcWFDKcncj4XRRkeaTL8CY4JNv0+TCCbHAw=; b=eTgI0tg5OVs8yA
	tt9Jvlm7IatBtaMmcPxhM2lbXAQFGV4eMMNiTNChwad/SXkYLwlsumXM9HdlLtaX+Ouva06EmvU55
	S510Qk61SFHVflRN+qDoShm2hP5PEXqIQcJ+uEJcZLGJa19g1LPkyJDoblzBP1qSXhgutSQ9N/Eww
	bQT9TrqFl1snv71u8dHTc5iNsF/lV7id8bNHW0OuT8R0Q4FavviKTwTTuP6/gjf7GV52GYN3YEN7j
	nd8aCxHQ5FZ1FFmqQYVtBES9b+xTBc0XpLBQCyFNJXz8qSYqf7fk8s7X273dF+ypyeYVJrlno5s9R
	vFZyyZkkK+FNVrHVrmwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6ej5-002cRJ-AM; Thu, 22 Jul 2021 19:51:23 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6ei0-002c1M-SV; Thu, 22 Jul 2021 19:50:18 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="208617267"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="208617267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 12:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="470781627"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jul 2021 12:49:57 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id EF735E7; Thu, 22 Jul 2021 22:50:24 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v3 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
Date: Thu, 22 Jul 2021 22:50:07 +0300
Message-Id: <20210722195010.45940-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_125016_976494_5A040CA0 
X-CRM114-Status: GOOD (  17.74  )
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

At least one user currently duplicates some functions that are provided
by fractional divider module. Let's export approximation algorithm and
replace the open-coded variant.

As a bonus the exported function will get better documentation in place.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Heiko Stuebner <heiko@sntech.de>
---
v3: added tags (Heiko)
 drivers/clk/clk-fractional-divider.c | 11 +++++++----
 drivers/clk/clk-fractional-divider.h |  9 +++++++++
 drivers/clk/rockchip/clk.c           | 17 +++--------------
 3 files changed, 19 insertions(+), 18 deletions(-)
 create mode 100644 drivers/clk/clk-fractional-divider.h

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index b1e556f20911..535d299af646 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -14,6 +14,8 @@
 #include <linux/slab.h>
 #include <linux/rational.h>
 
+#include "clk-fractional-divider.h"
+
 static inline u32 clk_fd_readl(struct clk_fractional_divider *fd)
 {
 	if (fd->flags & CLK_FRAC_DIVIDER_BIG_ENDIAN)
@@ -68,9 +70,10 @@ static unsigned long clk_fd_recalc_rate(struct clk_hw *hw,
 	return ret;
 }
 
-static void clk_fd_general_approximation(struct clk_hw *hw, unsigned long rate,
-					 unsigned long *parent_rate,
-					 unsigned long *m, unsigned long *n)
+void clk_fractional_divider_general_approximation(struct clk_hw *hw,
+						  unsigned long rate,
+						  unsigned long *parent_rate,
+						  unsigned long *m, unsigned long *n)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long scale;
@@ -102,7 +105,7 @@ static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
 	if (fd->approximation)
 		fd->approximation(hw, rate, parent_rate, &m, &n);
 	else
-		clk_fd_general_approximation(hw, rate, parent_rate, &m, &n);
+		clk_fractional_divider_general_approximation(hw, rate, parent_rate, &m, &n);
 
 	ret = (u64)*parent_rate * m;
 	do_div(ret, n);
diff --git a/drivers/clk/clk-fractional-divider.h b/drivers/clk/clk-fractional-divider.h
new file mode 100644
index 000000000000..4fa359a12ef4
--- /dev/null
+++ b/drivers/clk/clk-fractional-divider.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+struct clk_hw;
+
+void clk_fractional_divider_general_approximation(struct clk_hw *hw,
+						  unsigned long rate,
+						  unsigned long *parent_rate,
+						  unsigned long *m,
+						  unsigned long *n);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 049e5e0b64f6..b7be7e11b0df 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -22,6 +22,8 @@
 #include <linux/regmap.h>
 #include <linux/reboot.h>
 #include <linux/rational.h>
+
+#include "../clk-fractional-divider.h"
 #include "clk.h"
 
 /*
@@ -178,10 +180,8 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 		unsigned long rate, unsigned long *parent_rate,
 		unsigned long *m, unsigned long *n)
 {
-	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long p_rate, p_parent_rate;
 	struct clk_hw *p_parent;
-	unsigned long scale;
 
 	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
 	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
@@ -190,18 +190,7 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 		*parent_rate = p_parent_rate;
 	}
 
-	/*
-	 * Get rate closer to *parent_rate to guarantee there is no overflow
-	 * for m and n. In the result it will be the nearest rate left shifted
-	 * by (scale - fd->nwidth) bits.
-	 */
-	scale = fls_long(*parent_rate / rate - 1);
-	if (scale > fd->nwidth)
-		rate <<= scale - fd->nwidth;
-
-	rational_best_approximation(rate, *parent_rate,
-			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
-			m, n);
+	clk_fractional_divider_general_approximation(hw, rate, parent_rate, m, n);
 }
 
 static struct clk *rockchip_clk_register_frac_branch(
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
