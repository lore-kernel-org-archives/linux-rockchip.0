Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 012FCC27C5F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffiaaacTh9y3Jed9ItPil/uYKdBPYv1UnrVxW4uEgio=; b=OI4E27W5XqvDNp
	oL0Cqm+kTdWA7SnBvfIj1IXX7jOhZ7IHPlLE6nSqzr4bZ8icJ6qH5NX4uVt89hpZLRqMgQUTfBLam
	Qhv+3o2ne3M2ZbviPpYgtrWvswfByNyf2UFTJSo/xF4oChSzDbxPzIVr3dSac8l2P9x+o3Z9lPImS
	+wvZhozE4BXEid/Trvct6zMODfZiGQiT3ZSW1snEY9wyW+Jz8L3nu3RdMrqOiRonCv9bF2qOxpkAm
	keikUMlMdKbfNjss+lP0kr7BBahGVVjuAaqQP44diuhRauMqP/xp8guFpQeHSlS5IRmhy2WxaXolk
	XUvgsvqFJQpRlopiw0BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhK-0000000ARAR-1BqW;
	Thu, 06 Jun 2024 16:10:42 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhG-0000000AR8P-0IOH;
	Thu, 06 Jun 2024 16:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717690239; x=1749226239;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=981GD+z8786+C1hp7EEXk+A3A1FHkVkYoLEaJHuT4kc=;
  b=BW+DiMATlaMpkalJLBizAh/FGvXnX5R4rQlW5M0Vi2bsOFO8uvahE0tx
   snJH16CGPMSVukcY+s/BT5PhQl32MRBNOddk/ppPUm3ExZ4OQDYrJl71d
   3M/z5sANR5A6LxQpotSBo4fj+1uN+kDWwT+hlsGkWycQSKHZkIiuXqK2O
   Pm/9vAgITFylHMlculUWMNLVmEnlWMt/keSdoZcHwm0l4iLl48mxSU/u9
   0XVHxcI8v7sYTlYx4ozuob7sRaQG2zy5aOTt/EOX+uVn0Adlf1bWevhkU
   4md8a/nyE3bxD1D+hwhJxH+VzczmiGcycDm7/FbSLDSmI6hXdUXDgx3+Q
   A==;
X-CSE-ConnectionGUID: OKBfSsCfRq2HmdkT9aW1Jg==
X-CSE-MsgGUID: hH5sJbxZQ2W+F/Mt4w0uSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525062"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="14525062"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2024 09:10:36 -0700
X-CSE-ConnectionGUID: 0YfWCvGIRxmFQhBgzuOM0Q==
X-CSE-MsgGUID: fP3DNq1eQYaIJNdR5+FS1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="38695663"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa007.jf.intel.com with ESMTP; 06 Jun 2024 09:10:32 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 617131C9; Thu, 06 Jun 2024 19:10:30 +0300 (EEST)
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
Subject: [PATCH v1 1/4] clk: mmp: Switch to use kmemdup_array()
Date: Thu,  6 Jun 2024 19:09:31 +0300
Message-ID: <20240606161028.2986587-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_091038_174479_59112D3C 
X-CRM114-Status: GOOD (  11.29  )
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
 drivers/clk/mmp/clk-mix.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/mmp/clk-mix.c b/drivers/clk/mmp/clk-mix.c
index 454d131f475e..07ac9e6937e5 100644
--- a/drivers/clk/mmp/clk-mix.c
+++ b/drivers/clk/mmp/clk-mix.c
@@ -447,7 +447,6 @@ struct clk *mmp_clk_register_mix(struct device *dev,
 	struct mmp_clk_mix *mix;
 	struct clk *clk;
 	struct clk_init_data init;
-	size_t table_bytes;
 
 	mix = kzalloc(sizeof(*mix), GFP_KERNEL);
 	if (!mix)
@@ -461,8 +460,8 @@ struct clk *mmp_clk_register_mix(struct device *dev,
 
 	memcpy(&mix->reg_info, &config->reg_info, sizeof(config->reg_info));
 	if (config->table) {
-		table_bytes = sizeof(*config->table) * config->table_size;
-		mix->table = kmemdup(config->table, table_bytes, GFP_KERNEL);
+		mix->table = kmemdup_array(config->table, config->table_size,
+					   sizeof(*mix->table), GFP_KERNEL);
 		if (!mix->table)
 			goto free_mix;
 
@@ -470,9 +469,8 @@ struct clk *mmp_clk_register_mix(struct device *dev,
 	}
 
 	if (config->mux_table) {
-		table_bytes = sizeof(u32) * num_parents;
-		mix->mux_table = kmemdup(config->mux_table, table_bytes,
-					 GFP_KERNEL);
+		mix->mux_table = kmemdup_array(config->mux_table, num_parents,
+					       sizeof(*mix->mux_table), GFP_KERNEL);
 		if (!mix->mux_table) {
 			kfree(mix->table);
 			goto free_mix;
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
