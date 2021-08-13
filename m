Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E85AC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 09:43:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 364C560F00
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 09:43:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 364C560F00
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nMYWVWwt57HD5h+OWPQD+fxns7R2FDXw9CZDA+qolo=; b=lHa1kJ7c/qrPUf
	jt0Zr1CDhaa/k6RQSp2OIYKHNXK5jnPjeAMTP/g1EEEP496CGWIYoZhnDbsKAIX+/WBkaLfbvJ7Km
	Q7O0Q9mLtXYMqCli3Xj6ZuLlBTmdnjnB8JSJsWBZZv7HNGGmWK6p1xU+v9q8zP06d2Dm7GEw3vPHw
	ztn4uwJMsifZio/HbSL9ScnS2GRPIe399NfdPevJF19u/6xkiKjlYQ47fy5IoN2eK6uIO8p+uK6Dz
	tpPh/L2BZvSNigZLXXZBaL8F0ItMcLule5eFsc82Bqz+NjNr2rFde76wtSRgU8wElnvvG44R32lnh
	RCbjg7LFNMHNHdXLiJeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mETj9-00CMnk-Ff; Fri, 13 Aug 2021 09:43:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mETix-00CMmF-4C; Fri, 13 Aug 2021 09:43:36 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215263013"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215263013"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 02:43:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="470040425"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 02:43:29 -0700
Received: from andy by smile with local (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mETik-0091Jx-R2; Fri, 13 Aug 2021 12:43:22 +0300
Date: Fri, 13 Aug 2021 12:43:22 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
Message-ID: <YRY+uoTrBjkdh4Zj@smile.fi.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <162879819529.19113.6409882476721828944@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162879819529.19113.6409882476721828944@swboyd.mtv.corp.google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_024335_223063_A8883E1D 
X-CRM114-Status: GOOD (  10.41  )
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

On Thu, Aug 12, 2021 at 12:56:35PM -0700, Stephen Boyd wrote:
> Quoting Andy Shevchenko (2021-08-12 10:00:22)
> > At least one user currently duplicates some functions that are provided
> > by fractional divider module. Let's export approximation algorithm and
> > replace the open-coded variant.
> > 
> > As a bonus the exported function will get better documentation in place.
> Applied to clk-next

Thank you, Stephen!

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
