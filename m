Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 194BAC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:50:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D645D60EB2
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:50:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D645D60EB2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcNkGe+toPeySKpWwri0Oeh9C8Fq2jKRiJSHGjD68mw=; b=zQoL09fpCmzvIC
	pee8PECpsxfXPlfuGTXaZRpqaVv8/VD8VU77ZgzyO2yYgSUuYsC9n9i0/pCoiNR7r5tVNhzYc+Hs9
	vW4iQ8HWP7iYBBNw1y+gdMOm7zICI6/KsJ/LSiYsw4DNusqZp6WGjH1m2aVKTQkVKbyjvta+0yVMk
	YhJqVyFStaJc7a6LJ3n2jDaVBnVMhAj8bNTuHSt1+j92Qy+lMO72jvrYvFySS7COntGp/5UbbcTud
	ewJLHNxCMmvi+jqRjTbq9O2PsgQbekcVv3FCR64Tg0CwThsW0kixxemZlBlndllwUivaD9k7zvCiw
	PQAjXsPRxIsIv54EB1Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6eiO-002c9H-MM; Thu, 22 Jul 2021 19:50:40 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6ehv-002c0u-3E; Thu, 22 Jul 2021 19:50:13 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="192001293"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="192001293"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 12:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="433256852"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jul 2021 12:49:59 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 040CC12B; Thu, 22 Jul 2021 22:50:27 +0300 (EEST)
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
Subject: [PATCH v3 2/4] clk: fractional-divider: Hide
 clk_fractional_divider_ops from wide audience
Date: Thu, 22 Jul 2021 22:50:08 +0300
Message-Id: <20210722195010.45940-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210722195010.45940-1-andriy.shevchenko@linux.intel.com>
References: <20210722195010.45940-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_125011_256255_C43BFB3A 
X-CRM114-Status: GOOD (  13.22  )
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

The providers are all located in drivers/clk/ and hence no need
to export the clock operations to wider audience. Hide them by
moving to drivers/clk/clk-fractional-divider.h.

While at it, unexport since no module uses it.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
v3: new patch
 drivers/clk/clk-fractional-divider.c | 1 -
 drivers/clk/clk-fractional-divider.h | 2 ++
 drivers/clk/imx/clk-composite-7ulp.c | 1 +
 include/linux/clk-provider.h         | 1 -
 4 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 535d299af646..53943f45b1ca 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -153,7 +153,6 @@ const struct clk_ops clk_fractional_divider_ops = {
 	.round_rate = clk_fd_round_rate,
 	.set_rate = clk_fd_set_rate,
 };
-EXPORT_SYMBOL_GPL(clk_fractional_divider_ops);
 
 struct clk_hw *clk_hw_register_fractional_divider(struct device *dev,
 		const char *name, const char *parent_name, unsigned long flags,
diff --git a/drivers/clk/clk-fractional-divider.h b/drivers/clk/clk-fractional-divider.h
index 4fa359a12ef4..aaaef90b2777 100644
--- a/drivers/clk/clk-fractional-divider.h
+++ b/drivers/clk/clk-fractional-divider.h
@@ -2,6 +2,8 @@
 
 struct clk_hw;
 
+extern const struct clk_ops clk_fractional_divider_ops;
+
 void clk_fractional_divider_general_approximation(struct clk_hw *hw,
 						  unsigned long rate,
 						  unsigned long *parent_rate,
diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 7c4f31b31eb0..d85ba78abbb1 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -10,6 +10,7 @@
 #include <linux/err.h>
 #include <linux/slab.h>
 
+#include "../clk-fractional-divider.h"
 #include "clk.h"
 
 #define PCG_PCS_SHIFT	24
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index d83b829305c0..acb8e10d2898 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1023,7 +1023,6 @@ struct clk_fractional_divider {
 #define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
 #define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
 
-extern const struct clk_ops clk_fractional_divider_ops;
 struct clk *clk_register_fractional_divider(struct device *dev,
 		const char *name, const char *parent_name, unsigned long flags,
 		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
