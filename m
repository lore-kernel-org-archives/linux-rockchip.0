Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABFC5C27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRh4g7+tDvAi6jQKOqw1Dbwi4+mjDxMSDRMov7qq66k=; b=1Q8YQYw1txSbNg
	IYhakrDstPk6mB4vBdYYLrwoG1z4Ml6lJvURjRm9JfUZ8AfYT2spPI9BExK/DD+hKT9Pe61yqHJap
	7P/JjtqTkRfwmeWkaBOSorvDOf7AYajJ2kxnSfYDL22i/iN3XBK5/MOlg2tPVuPuKvw/9XSX55cSY
	h72soAX6gla4gFxSjZ8/GJsH5tzrlGd+Jye8GkcIyj57zk5c+MJ0I5bt1fTT2O2XcoA95He7pDcs0
	GtXTXUcNO9OhCzvzUh1A9zz/UD8ibu530yV3HzZpK1JANRBc8ZjXiEc2qb6M8cYGxZw6TU8igOrUi
	1NFrY1WkndpiPvwzlTqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhT-0000000ARGl-05DL;
	Thu, 06 Jun 2024 16:10:51 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhJ-0000000AR8P-38Pp;
	Thu, 06 Jun 2024 16:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717690242; x=1749226242;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gj6vGOfIMvi9wknlVIRBepDS/CXPzi91odpfx0mTouo=;
  b=SJ2Sj9Phze6N0SA/HRjzuQT5gURLl2j+fAkdgDjbsbxnuu587oswR5/r
   aqciAhlIWA4k8uhjqRD7WyyTVRUWC0A/GIeb5fAaU8qEZGvJNoIbjQq9G
   prFQkhz2tLZ54VJZLQ2bCgD8Qtda2+paBlc4kKbcD1vpuYnwkZrUDf8Wu
   WUYQ9b+SiJTLbc1Sk9OLHtInYzTwpfWrBqOyWBdAeSvN3olBtcMD6Hhsn
   X3rCQv5dxJJ2aV6nHE+O0pPbAoQQKOpA3cYc/LoFmo9oYbbECx5pQt+5W
   c69xBVzfj84/APpm6f6SjryNxW7XoMM+uYMkJ0VWES6A4hLwBJiXckFG8
   A==;
X-CSE-ConnectionGUID: Lg2ocr2rS7uGywx7Y4Mv/g==
X-CSE-MsgGUID: iO3k/i9jSyWj6jAG9cDxfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525079"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="14525079"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2024 09:10:36 -0700
X-CSE-ConnectionGUID: 6qzv+wlwTLqiO2jXs6ZH2w==
X-CSE-MsgGUID: WntpOTQdS1WOSgQljWuITw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="38695664"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa007.jf.intel.com with ESMTP; 06 Jun 2024 09:10:32 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 68B992CF; Thu, 06 Jun 2024 19:10:30 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH v1 2/4] clk: rockchip: Switch to use kmemdup_array()
Date: Thu,  6 Jun 2024 19:09:32 +0300
Message-ID: <20240606161028.2986587-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_091041_952948_1725244C 
X-CRM114-Status: GOOD (  11.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Let the kememdup_array() take care about multiplication and possible
overflows.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/clk/rockchip/clk-cpu.c | 5 ++---
 drivers/clk/rockchip/clk-pll.c | 8 ++++----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 6ea7fba9f9e5..398a226ad34e 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -369,9 +369,8 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 
 	if (nrates > 0) {
 		cpuclk->rate_count = nrates;
-		cpuclk->rate_table = kmemdup(rates,
-					     sizeof(*rates) * nrates,
-					     GFP_KERNEL);
+		cpuclk->rate_table = kmemdup_array(rates, nrates, sizeof(*rates),
+						   GFP_KERNEL);
 		if (!cpuclk->rate_table) {
 			ret = -ENOMEM;
 			goto unregister_notifier;
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 2d42eb628926..606ce5458f54 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -1136,10 +1136,10 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 			len++;
 
 		pll->rate_count = len;
-		pll->rate_table = kmemdup(rate_table,
-					pll->rate_count *
-					sizeof(struct rockchip_pll_rate_table),
-					GFP_KERNEL);
+		pll->rate_table = kmemdup_array(rate_table,
+						pll->rate_count,
+						sizeof(*pll->rate_table),
+						GFP_KERNEL);
 		WARN(!pll->rate_table,
 			"%s: could not allocate rate table for %s\n",
 			__func__, name);
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
