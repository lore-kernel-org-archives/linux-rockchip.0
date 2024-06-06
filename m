Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7D4C27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HgDwlUzdfVrbh81ED+e/eytOHRiZ6lr0E2GdMPFXjig=; b=oRhOjW2Ku6XVSC
	k6GXBhYs9kkUsKV1mAuwFJtjTChMHD7Msma4ZNeooHE1uWA+mL3D2BPCcJRlv1LrHrZk0nYKSCCDw
	9zR5x2E1wtbFeDlnj8MPGGQjQFt5MuOxxCg0tUj4cCqIP52T6WtsfWM6DrZKTYxXbDhHvaL2v9xJS
	/uNbWcQcH13uAD5eJF4EqEDyA6Sye4qJNOoHGehzEieUFmG673vSPI1S5exb97GjvnUrAfDgRTlql
	XDh0tw73zUWSWCsb3472kEYiidk7Ow5igAmHA6MQAo6fSfxjFu7cXKv+++AbQ41tjFYWTio3c0fXX
	YNnPLVKF0DDzK16kTLPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhP-0000000ARDg-0HtE;
	Thu, 06 Jun 2024 16:10:47 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFhI-0000000AR8P-0hCZ;
	Thu, 06 Jun 2024 16:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717690241; x=1749226241;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=je0DYBuKhWYW4JpL97m6nmOv4z/QoM1eIcNvWJ+BGJY=;
  b=WZ1hWxTnqTp9t75mT2CkGUL1oIM5PDRcWWEREyeoWsk0oLlnTQMr/pRL
   PhHviUr8x6b0mJqCE+glUNUIXSD4CncB52jnUIm6OIVL1iSBXNkrPcUHj
   nG7tzTP3pkCqmOovYwYQ+8ZN/Pxwx0p/AXl5ZFlC1QpWPja1Tg/VmvlG8
   q6AKvhOOe7tQh4Bm3sB8fFioFk0TCdQJD/YX2ElMzcVwqArDpsFmTJiI1
   m2ipwZCNOInFivnexKb+3tEoBVkUk+S0KhxsGo4LwhCiRGgjRmzh4z7Xz
   h2iU5ayDvrafVCCNJHKAINVAj1zaUq4mzXv3RyvnWXVB7G2OJj4t4BVrA
   A==;
X-CSE-ConnectionGUID: 2lcJ9y49RJyr8zPGxe7TEw==
X-CSE-MsgGUID: 2DIqcaJnQg6PSV8AZcop9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525071"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="14525071"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2024 09:10:36 -0700
X-CSE-ConnectionGUID: SEfdrqv7QsChJC8hWYOwtA==
X-CSE-MsgGUID: uMf6eAe2QZ6v/8IuWzVlkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="38695666"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa007.jf.intel.com with ESMTP; 06 Jun 2024 09:10:32 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 515D12A4; Thu, 06 Jun 2024 19:10:30 +0300 (EEST)
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
Subject: [PATCH v1 0/4] clk: Switch to use kmemdup_array()
Date: Thu,  6 Jun 2024 19:09:30 +0300
Message-ID: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_091040_425747_F9BD1399 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
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

Replace open coded kmemdup_array(), which does an additional
overflow check.

Andy Shevchenko (4):
  clk: mmp: Switch to use kmemdup_array()
  clk: rockchip: Switch to use kmemdup_array()
  clk: samsung: Switch to use kmemdup_array()
  clk: visconti: Switch to use kmemdup_array()

 drivers/clk/mmp/clk-mix.c      | 10 ++++------
 drivers/clk/rockchip/clk-cpu.c |  5 ++---
 drivers/clk/rockchip/clk-pll.c |  8 ++++----
 drivers/clk/samsung/clk-cpu.c  |  4 ++--
 drivers/clk/samsung/clk-pll.c  |  8 ++++----
 drivers/clk/visconti/pll.c     |  6 +++---
 6 files changed, 19 insertions(+), 22 deletions(-)

-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
