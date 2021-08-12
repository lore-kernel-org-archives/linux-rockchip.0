Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B13C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 17:01:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF2CB60F57
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 17:01:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EF2CB60F57
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiPt9AdgdsWccMNsx3ekOF/SKttyxlNCYlo93LESjCE=; b=ohQfQd6o2d37Ab
	SLpKNhItmsDIqb9S6dGXLJ9V3vJYEmHQ++FrLjXK+IhkKjOzloZVUUDloNzzEDmqUccHo7jiqDi9t
	LpYt602hnJxVShOXRyNw+/Pjm0fsUAY1zWCB6ED1JG7Ogt0zbUJd4QhODmKCVEmya3U2CBXrKQq2v
	5vLUcA4dxCiaJVh7f8eV+QknruAKBNrrJ0p+l/zINcq/7qjMnrSS4jpwzkM8ZYyaQzxTnms1db/cV
	k4So/2EA1K7z7i2e2X2z3YII1VojzLIwM+W2Rdzo4Ev63oeNjz6Cs9kXam/dU7mpRR4LyOr37uezT
	Ugfz0QPN8vLiTKk/fY/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEE5A-00AhPl-HQ; Thu, 12 Aug 2021 17:01:28 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEE4c-00AhDB-R4; Thu, 12 Aug 2021 17:00:56 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="300986797"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="300986797"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 10:00:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="503934251"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga001.jf.intel.com with ESMTP; 12 Aug 2021 10:00:30 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1D23E9F; Thu, 12 Aug 2021 20:00:29 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-clk@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 2/4] clk: fractional-divider: Hide
 clk_fractional_divider_ops from wide audience
Date: Thu, 12 Aug 2021 20:00:23 +0300
Message-Id: <20210812170025.67074-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_100054_935051_D10DE061 
X-CRM114-Status: GOOD (  14.30  )
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

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
v4: rebased on top of latest CLK codebase, fixed compilation error

 drivers/clk/clk-fractional-divider.h | 2 ++
 drivers/clk/imx/clk-composite-7ulp.c | 1 +
 include/linux/clk-provider.h         | 1 -
 3 files changed, 3 insertions(+), 1 deletion(-)

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
index 7be81d5fcf8c..d8609aef2394 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1023,7 +1023,6 @@ struct clk_fractional_divider {
 #define CLK_FRAC_DIVIDER_ZERO_BASED	BIT(0)
 #define CLK_FRAC_DIVIDER_BIG_ENDIAN	BIT(1)
 
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
