Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8FFDC52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 08:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nGsn7pdDwPLxflWweqHwK0TK0NYU5qsFsjXNyWPBOw=; b=PITkLFT9ADyclD
	GHEi22u4zr1bH9Ywn6fy4zk5CkIhh4Xy72WQsiyQbOjkaPsut+m4KKzGMc14OnURRa8/ZBRkHs615
	MkF2U6h2f/HjiUPk5s40cav40ghdmxNY6prrlMZJnVBzMNLnWyBAZAj9ZJeNOubRFSuRGKPFAHz5v
	4iPhSqcYrCKRPxZHifty/PAU/GMQWpQF9+gsjiouM6FdYGmJSIw5PyGrY0c2XezCy4y++QtDAKFtE
	IS63JJlu7ZE9OH1nEUMQP4GKwW+cKWsOvsbAwl2x7eohGO8WOeuhudcQ8f6ZhvKNT8PEo+vgpwxvA
	DYmN+BHaRTgpapwz7foA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdn3V-00000002wCC-363n;
	Tue, 13 Aug 2024 08:39:01 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdn2S-00000002vyi-36KQ;
	Tue, 13 Aug 2024 08:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723538277; x=1755074277;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0zit28vkJLoveJCnlYRWpnW1iA4PdjPohhk+xYzQHsw=;
  b=Lk8PgQEVXO6vqk9NQYUT/1Hz8pttX1l53ekjwmEvIdMPeJ6Qr3fnriT8
   wMADcB2EBnCORN8zhk9b9wOujcFU/SHTvJqVwGYs28HGSFaCq4YWL4ztW
   wjv2dCo9aCFSQzj60kIdGmEeqxX+MxLoAt66vYPvYqixGe2DLxIl1Kc+J
   GpqWM9Vg7t/VOYepKYNh2g1dr29V4GIFub9TqMyzFmmXkHDTR8lVoCrMm
   xK1VubqNw/4a28C3pOIHhCJNHWmjPDTKBMYa1Pd/BChYlfFg0pT/FIRiG
   IGLaiw6L/buqE72zkhLxh+KjtIV8QMhgfHvCy/B/tFgZ+EKdyuEZbf7os
   Q==;
X-CSE-ConnectionGUID: JKxVnTufSy6KIwNN6ss66g==
X-CSE-MsgGUID: WcXCjtYrRUacWgxozMg46Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21544186"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; 
   d="scan'208";a="21544186"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2024 01:37:55 -0700
X-CSE-ConnectionGUID: NFUyk0GPR9WJTDrF79fqSg==
X-CSE-MsgGUID: qta44cKjSb2kZSSuYxwWPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; 
   d="scan'208";a="62986362"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2024 01:37:52 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1sdn2L-0000000Ef5r-0xTf;
	Tue, 13 Aug 2024 11:37:49 +0300
Date: Tue, 13 Aug 2024 11:37:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: Re: [PATCH v1 0/4] clk: Switch to use kmemdup_array()
Message-ID: <ZrsbXMVy1Dsi4UZe@smile.fi.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_013756_847744_5B26380F 
X-CRM114-Status: UNSURE (   8.30  )
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

On Thu, Jun 06, 2024 at 07:09:30PM +0300, Andy Shevchenko wrote:
> Replace open coded kmemdup_array(), which does an additional
> overflow check.

...

>   clk: mmp: Switch to use kmemdup_array()

>   clk: visconti: Switch to use kmemdup_array()

Any news for these two?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
