Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB805C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 17:54:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B764E61100
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 17:54:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B764E61100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVyTCllK9/DQaZ2CRB6crH5l7FDsRe51AfswNjE6Ol4=; b=uMqfoU8upYsqLJ
	NSk1cvvKUp4oUwqb3GsldPFcI0lgaBlOMbjnPzgXv6ideMDpaZ1UX8Vik8DXaWH1YUxm+mHJ5P5hO
	L+OPLrQk+qFqsRLXxp3CN4mIIoS4+IRUgQRCs1TRvzL5s+hm7aSTo6N7uqzMf+WRutTSrNkbEzweq
	EUY10SH11p+Oaeurs8GOl8ugCEf7kT4iB99kiEt5/DA43bYiPIRyOqd76oMUFt51ymDaJchJ3KK4S
	75AGsLclnUChvZnO4VP1WYDC4Ww50UeL/+Z1Gxtfy8PBvZriXUJOUZmflMTwNZ1FDxCKXmQvtoBWZ
	qOqZwuLEs70UgXRrpByQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNfIg-004OZr-D4; Tue, 07 Sep 2021 17:54:26 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNfIT-004OWM-FR; Tue, 07 Sep 2021 17:54:14 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="200483334"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="200483334"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 10:54:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="449103196"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 10:54:07 -0700
Received: from andy by smile with local (Exim 4.95-RC2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mNfIK-000zB0-0M; Tue, 07 Sep 2021 20:54:04 +0300
Date: Tue, 7 Sep 2021 20:54:04 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: abel.vesa@nxp.com, festevam@gmail.com, heiko@sntech.de,
 kernel@pengutronix.de, lee.jones@linaro.org, lenb@kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mturquette@baylibre.com, rafael.j.wysocki@intel.com,
 rjw@rjwysocki.net, s.hauer@pengutronix.de, sboyd@kernel.org,
 shawnguo@kernel.org, zhangqing@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v4 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
Message-ID: <YTenPMOOepGo2ZU8@smile.fi.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <20210907154400.26656-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210907154400.26656-1-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_105413_573626_DB5F68A1 
X-CRM114-Status: GOOD (  18.61  )
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

On Tue, Sep 07, 2021 at 10:44:00AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Unfortunately, I can confirm this breaks the DSI panel on the Rockchip
> PX30 (and possibly other SoCs). Tested on my Odroid Go Advance. When
> I revert 4e7cf74fa3b2 "clk: fractional-divider: Export approximation
> algorithm to the CCF users" and 928f9e268611 "clk: fractional-divider:
> Hide clk_fractional_divider_ops from wide audience" the panel begins
> working again as expected on the master branch.
> 
> It looks like an assumption is made in the vop_crtc_mode_fixup()
> function in the rockchip_drm_vop.c that gets broken with this change.
> Specifically, the function says in the comments "When DRM gives us a
> mode, we should add 999 Hz to it.". I believe this is no longer true
> after this clk change, and when I remove the + 999 from the function
> the DSI panel works again. Note that I do not know the implications
> of removing this 999 aside from that it fixes the DSI panel on my
> PX30 after this change, so I don't know if it's a positive change
> or not.
> 
> Thank you.

Thank you for the report!

I'll check this. Perhaps Heiko can help with testing as well on his side.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
