Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1816C1B08C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 12:08:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AACF0611C0
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 12:08:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AACF0611C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTGvNSrXu5EpS9uIh56/JaHTuNqrsk4pDoc53jvdGJQ=; b=QeiUYG5xq4nlJh
	Z/W/roK7UqvDGndru3UrLdAETYl/ww8MM3qBEkSaZd8QRqCvuh+Fd8DIDhhKvyAx4LYVKXZfdMspz
	OnAlDk+6krfMjXQfS7MkCOcHOmgKFCQQHQaog1fYZSY5x3/5Lkd17FdWVjeICAmxx8RAkXzpE4/2I
	hcqAra9eIYKS/iHWq39lqffAJWJDx17tVwaG7HuJV5yYX+BeE/rhy/jTmUcnmhrUbfY2XsAstxcaK
	/60P5RuEmCBQggAEiJvKNwN77rTotU5emzbfVEQBdP03CyAiTPeLQUl/d4zkGo7qr8CuT9+t+fXFQ
	ayqtlpjR2G8sH7pwEXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m40A7-000hIY-GS; Thu, 15 Jul 2021 12:08:19 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m409a-000h9c-4m; Thu, 15 Jul 2021 12:07:47 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="208715427"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="208715427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 05:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="460371672"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2021 05:07:39 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 52CD32CB; Thu, 15 Jul 2021 15:08:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>, Liu Ying <victor.liu@nxp.com>
Subject: [PATCH v1 2/3] clk: fractional-divider: Introduce NO_PRESCALER flag
Date: Thu, 15 Jul 2021 15:07:51 +0300
Message-Id: <20210715120752.29174-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_050746_233020_E7CF93E7 
X-CRM114-Status: GOOD (  15.53  )
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

The newly introduced flag, when set, makes the flow to skip
the assumption that the caller will use an additional 2^scale
prescaler to get the desired clock rate.

Reported-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/clk/clk-fractional-divider.c | 2 +-
 include/linux/clk-provider.h         | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 535d299af646..b2f9aae9f172 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -84,7 +84,7 @@ void clk_fractional_divider_general_approximation(struct clk_hw *hw,
 	 * by (scale - fd->nwidth) bits.
 	 */
 	scale = fls_long(*parent_rate / rate - 1);
-	if (scale > fd->nwidth)
+	if (scale > fd->nwidth && !(fd->flags & CLK_FRAC_DIVIDER_NO_PRESCALER))
 		rate <<= scale - fd->nwidth;
 
 	rational_best_approximation(rate, *parent_rate,
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index d83b829305c0..f74d0afe275f 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1001,6 +1001,10 @@ struct clk_hw *devm_clk_hw_register_fixed_factor(struct device *dev,
  * CLK_FRAC_DIVIDER_BIG_ENDIAN - By default little endian register accesses are
  *	used for the divider register.  Setting this flag makes the register
  *	accesses big endian.
+ * CLK_FRAC_DIVIDER_NO_PRESCALER - By default the resulting rate may be shifted
+ *	left by a few bits in case when the asked one is quite small to satisfy
+ *	the desired range of denominator. If the caller wants to get the best
+ *	rate without using an additional prescaler, this flag may be set.
  */
 struct clk_fractional_divider {
 	struct clk_hw	hw;
@@ -1022,6 +1026,7 @@ struct clk_fractional_divider {
 
 #define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
 #define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
+#define CLK_FRAC_DIVIDER_NO_PRESCALER		BIT(2)
 
 extern const struct clk_ops clk_fractional_divider_ops;
 struct clk *clk_register_fractional_divider(struct device *dev,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
