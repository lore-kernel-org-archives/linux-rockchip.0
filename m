Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75EB6C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tnjXBkwDlASwArUhZsP+EMIgdDOnCIH+c/GXtlAqSg=; b=B7r/aJxdpcksIo
	pEcG7BGBlB5zCsFK/85ngQhNprmsSFJrf5xJB0KI9CzxDPm38fd+NVfQYS7wjSeQAvHmt43bZyGES
	X01bBduTQPBgnB/+KgCTMguIcdpxTwSabyNubh7UWUQ31ih1Z7ilHYXGRqta5Kz0WCha/JP09fEjM
	DSaTyHCHbuYZK+otgPaTsAEcQYNiJW6QiR4+SVEp6bHUC7PVKz9Czugj7SFUqmx4Uzi9YWl4UTCMe
	FH0yikw7y8PzVFkxgBjzeQoT73kHIctvyTlDXn4KwSBrPqgbMnJx2B6hnOG7RH75rEM08xhQ2xoIY
	SclikkcjTRTZBBTHDegA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhW-0000000ARJ8-11gk;
	Thu, 06 Jun 2024 16:10:54 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhK-0000000AR9o-3QC6;
	Thu, 06 Jun 2024 16:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717690243; x=1749226243;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3+qSRLVpcdMyUzcNy5jn6Wrz5bikHflvBafSsMgGFj4=;
  b=XbX52wChUHaiCM7SA3s8XqMzu3KX57Fdn2ez3VOsLodvGgqvMw1FnCVh
   4P/e1Fn34ff3mzQdNyfKblZrAObkOfyVMKCiy+byfE64or+WSZPPNx2T7
   ahohULxD4ioiB4xgB1mShTrzgJDFJusWg4wf+QcLJQbq/1RSJ2BaajLT7
   qAOUXlWtU2mczKaMrplWU6gHSh448HTiQPTKGRud+//ZSITOuUxvDTRQa
   noO3RIH8aouFMMgFA9Io0/MlyDJN63Kggkg1bKdobfguhWkQtyUf//OiC
   1lfKzgJqIEACPdZD2EeclhHNhTqVnnOuxMz7OTpfmkzA6NGI9oVk4wkzc
   w==;
X-CSE-ConnectionGUID: Pe+36RZVTwuLF81nhgwwPQ==
X-CSE-MsgGUID: bjMA6q7NTH+2/TeRilhi+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18164349"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="18164349"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2024 09:10:35 -0700
X-CSE-ConnectionGUID: 6PYiMqvtSKGU11AqT+idoA==
X-CSE-MsgGUID: nCNrCDJvSL+zXHFUY5b1DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="37949163"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa010.jf.intel.com with ESMTP; 06 Jun 2024 09:10:32 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 73307339; Thu, 06 Jun 2024 19:10:30 +0300 (EEST)
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
Subject: [PATCH v1 3/4] clk: samsung: Switch to use kmemdup_array()
Date: Thu,  6 Jun 2024 19:09:33 +0300
Message-ID: <20240606161028.2986587-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_091042_998054_BD074CF2 
X-CRM114-Status: GOOD (  13.40  )
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
 drivers/clk/samsung/clk-cpu.c | 4 ++--
 drivers/clk/samsung/clk-pll.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index fbf4c4208e06..dfa149e648aa 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -689,8 +689,8 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 	for (num_cfgs = 0; clk_data->cfg[num_cfgs].prate != 0; )
 		num_cfgs++;
 
-	cpuclk->cfg = kmemdup(clk_data->cfg, sizeof(*clk_data->cfg) * num_cfgs,
-			      GFP_KERNEL);
+	cpuclk->cfg = kmemdup_array(clk_data->cfg, num_cfgs, sizeof(*cpuclk->cfg),
+				    GFP_KERNEL);
 	if (!cpuclk->cfg) {
 		ret = -ENOMEM;
 		goto unregister_clk_nb;
diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 4bbdf5e91650..4be879ab917e 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -1286,10 +1286,10 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 			len++;
 
 		pll->rate_count = len;
-		pll->rate_table = kmemdup(pll_clk->rate_table,
-					pll->rate_count *
-					sizeof(struct samsung_pll_rate_table),
-					GFP_KERNEL);
+		pll->rate_table = kmemdup_array(pll_clk->rate_table,
+						pll->rate_count,
+						sizeof(*pll->rate_table),
+						GFP_KERNEL);
 		WARN(!pll->rate_table,
 			"%s: could not allocate rate table for %s\n",
 			__func__, pll_clk->name);
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
