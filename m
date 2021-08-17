Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1159C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 12:45:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91DD460EBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 12:45:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 91DD460EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arjpDBjsVxFwCkgIqyr/1CvOTXRpxsb7bHN24bli6qk=; b=BsGpPzoBVmIBWX
	7YTyYcbGtg8P8RalWg84//rt++g60OMXgRUQzsSNTQXaPpFpvnkSYh9Y/7yKYky96K4+5NUUyUHCT
	QmJBYLqRABo4lmMxMsQHNsfki0Ql9CSxJQYTj9YOXxSttf2E3gE+mzMBcstHShjpkTb7+tLYnuakH
	ZeTFUxXLm7jv6sIuVsaNhNRp6Kq4cBBxX/JyGNrkHTqIYpiTigHfEOrnzBMZZDbDA91/SbC43H5n3
	MY4IsX95o38itemqmGAne2qKiCgB2h8onJMyoDWx+yKPkz5obBCDmDuaZ0ihbRSaNcRrjpASpFviD
	nHwggdvHS0mYa+dt/aew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFyTN-002VEP-SN; Tue, 17 Aug 2021 12:45:41 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFyTA-002VCb-ST; Tue, 17 Aug 2021 12:45:30 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215797611"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="215797611"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 05:45:25 -0700
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="449256501"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 05:45:20 -0700
Received: from andy by smile with local (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mFySv-00Ak6X-9i; Tue, 17 Aug 2021 15:45:13 +0300
Date: Tue, 17 Aug 2021 15:45:13 +0300
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
Message-ID: <YRuvWdI+M7JuKCPC@smile.fi.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <162879819529.19113.6409882476721828944@swboyd.mtv.corp.google.com>
 <YRY+uoTrBjkdh4Zj@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YRY+uoTrBjkdh4Zj@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_054528_979595_30F01C07 
X-CRM114-Status: GOOD (  12.90  )
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

On Fri, Aug 13, 2021 at 12:43:22PM +0300, Andy Shevchenko wrote:
> On Thu, Aug 12, 2021 at 12:56:35PM -0700, Stephen Boyd wrote:
> > Quoting Andy Shevchenko (2021-08-12 10:00:22)
> > > At least one user currently duplicates some functions that are provided
> > > by fractional divider module. Let's export approximation algorithm and
> > > replace the open-coded variant.
> > > 
> > > As a bonus the exported function will get better documentation in place.
> > Applied to clk-next
> 
> Thank you, Stephen!

When they are expected to be visible in Linux Next?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
