Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A5A9C27C5F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doMzlwm1TiH9LqGd6zMwYoOe/RWSlcoj71cIIeYqpx4=; b=ckHxwW3dhizanK
	xKRohx/oibW7ZLhNTjwEaZYzxnzNyAwve/ahdLDckWByQcqtUlAdkg2LWnya1bBA2tPIcKxLKL5u+
	8VcOACxASKVuZmTZOKMXXvUegcO8nuE6cSBOf4T5zzFUkEGDIR1PNiWqG/V7iwIwYtnY0rff9RIn5
	5bGP9vhZiGevSNUEpj+z49vi/aDuwfYES1vGMZs57WG86m945T2sba1KSfNGnv+YdyUW2pWm829Yn
	KWmXK3fztgL/03s5LebZ/pGgW8j/H7UOAlVPgrt3pKrRzaU1rMD00C+4p9ymYjzgsAVozM4Hdi00h
	C1GKOtUm+hCs1Kcozugw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhQ-0000000AREz-33aA;
	Thu, 06 Jun 2024 16:10:48 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhI-0000000AR8s-1qXP;
	Thu, 06 Jun 2024 16:10:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717690241; x=1749226241;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xWWZ+gaYkDL6L7se9sOsqYkVgD6gieTPbfInOylbZ7E=;
  b=LaRrU1XRTDoiPBSe3+605r9GAiMSaAbV91tVFuxQ9WBDMiCh5Xo/hlNa
   C2yjtvPHebTAuChVnPgT6baI3nvA5FLhiERkmOGdzzNmcHXs33nIJCJdd
   iQRkjdSS+NcThYjkCJY4/k0wpFrIOT53P+IDTflTJmaKkyt9RKPT1uzdv
   L6wpVaQhtzIU/1/3/idXIOMY7XcIKoD7jGcZR2e8QRxhOTn2/cYO5tn/Q
   akgyWXdSAAxvwbl2OguMSndS/L1sd/PrsqlpwB86lixYJ4AdlwkpK14fn
   fAtaXwJn5RGRV5IwARO6LQFYoJZlYs6O/nAC8GqpehtuY9CmCxpABMM75
   A==;
X-CSE-ConnectionGUID: L8GaPXpgQKqYj1du2xIiiQ==
X-CSE-MsgGUID: YMgvChj3SYqmkNhIp/2TLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525087"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="14525087"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2024 09:10:36 -0700
X-CSE-ConnectionGUID: d7XDmZzjTU2ZhgGmzyFAEg==
X-CSE-MsgGUID: z077FzzDS26beD27llOV4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="38695667"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa007.jf.intel.com with ESMTP; 06 Jun 2024 09:10:32 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 7F778371; Thu, 06 Jun 2024 19:10:30 +0300 (EEST)
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
Subject: [PATCH v1 4/4] clk: visconti: Switch to use kmemdup_array()
Date: Thu,  6 Jun 2024 19:09:34 +0300
Message-ID: <20240606161028.2986587-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_091040_601195_A23868B6 
X-CRM114-Status: GOOD (  11.44  )
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
 drivers/clk/visconti/pll.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/visconti/pll.c b/drivers/clk/visconti/pll.c
index e9cd80e085dc..3f929cf8dd2f 100644
--- a/drivers/clk/visconti/pll.c
+++ b/drivers/clk/visconti/pll.c
@@ -262,9 +262,9 @@ static struct clk_hw *visconti_register_pll(struct visconti_pll_provider *ctx,
 	for (len = 0; rate_table[len].rate != 0; )
 		len++;
 	pll->rate_count = len;
-	pll->rate_table = kmemdup(rate_table,
-				  pll->rate_count * sizeof(struct visconti_pll_rate_table),
-				  GFP_KERNEL);
+	pll->rate_table = kmemdup_array(rate_table,
+					pll->rate_count, sizeof(*pll->rate_table),
+					GFP_KERNEL);
 	WARN(!pll->rate_table, "%s: could not allocate rate table for %s\n", __func__, name);
 
 	init.ops = &visconti_pll_ops;
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
