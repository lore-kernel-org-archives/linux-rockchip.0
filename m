Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86787C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 10:53:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46B4461164
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 10:53:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 46B4461164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MTVpRL7G6R7ZitORkwXLSYir7EXIv6Ziwf/9mdHcyY=; b=okIVnNM7XBkE8D
	IvqZbqClHVbcVnQumlQ94aUfqXYPYsmy/8ERhgXvYycHREazkFYgV/NDcbbLxgfu63m6nqaip4sdR
	8ctdGla4+uMqWLD/sxJb8nfkDtv1o1FCamrTU3Jou8dAjAbC/9pN1ehHTORXzJkr8cze/+JM9D6d1
	QEdUYVJfj3u8S3k8e57KNnHFLO/7BdELu1ckFXqMR/m6gKaH5Q69A1fCMgP+yhfiZKqO17rDgoSg3
	EsbIVJc+e8WFq01DLw21bvQ0d6+kF/m1ImXBHR1Ocw2agpg7H010vUQj64CvWHlDr/JleO/LsKQes
	WWRj/oPix5+vLdyYsLkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNvCe-006RhN-S7; Wed, 08 Sep 2021 10:53:16 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNvCO-006Rfj-Tb; Wed, 08 Sep 2021 10:53:02 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="306011523"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="306011523"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:53:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="479121291"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:52:54 -0700
Received: from andy by smile with local (Exim 4.95-RC2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mNvCF-001CXD-FE; Wed, 08 Sep 2021 13:52:51 +0300
Date: Wed, 8 Sep 2021 13:52:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, abel.vesa@nxp.com,
 festevam@gmail.com, heiko@sntech.de, kernel@pengutronix.de,
 lee.jones@linaro.org, lenb@kernel.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mturquette@baylibre.com,
 rafael.j.wysocki@intel.com, rjw@rjwysocki.net,
 s.hauer@pengutronix.de, sboyd@kernel.org, shawnguo@kernel.org,
 zhangqing@rock-chips.com
Subject: Re: [PATCH v4 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
Message-ID: <YTiWA4aQcCLgweZb@smile.fi.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <20210907154400.26656-1-macroalpha82@gmail.com>
 <YTenPMOOepGo2ZU8@smile.fi.intel.com>
 <YTeqEilet1p4vTAU@smile.fi.intel.com>
 <SN6PR06MB534203466EA3D4E22858479FA5D49@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR06MB534203466EA3D4E22858479FA5D49@SN6PR06MB5342.namprd06.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_035301_018226_D14816D7 
X-CRM114-Status: GOOD (  52.36  )
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

On Tue, Sep 07, 2021 at 09:17:47PM -0500, Chris Morgan wrote:
> On Tue, Sep 07, 2021 at 09:06:10PM +0300, Andy Shevchenko wrote:
> > On Tue, Sep 07, 2021 at 08:54:04PM +0300, Andy Shevchenko wrote:
> > > On Tue, Sep 07, 2021 at 10:44:00AM -0500, Chris Morgan wrote:

> > > > Unfortunately, I can confirm this breaks the DSI panel on the Rockchip
> > > > PX30 (and possibly other SoCs). Tested on my Odroid Go Advance. When
> > > > I revert 4e7cf74fa3b2 "clk: fractional-divider: Export approximation
> > > > algorithm to the CCF users" and 928f9e268611 "clk: fractional-divider:
> > > > Hide clk_fractional_divider_ops from wide audience" the panel begins
> > > > working again as expected on the master branch.
> > > > 
> > > > It looks like an assumption is made in the vop_crtc_mode_fixup()
> > > > function in the rockchip_drm_vop.c that gets broken with this change.
> > > > Specifically, the function says in the comments "When DRM gives us a
> > > > mode, we should add 999 Hz to it.". I believe this is no longer true
> > > > after this clk change, and when I remove the + 999 from the function
> > > > the DSI panel works again. Note that I do not know the implications
> > > > of removing this 999 aside from that it fixes the DSI panel on my
> > > > PX30 after this change, so I don't know if it's a positive change
> > > > or not.
> > > 
> > > Thank you for the report!
> > > 
> > > I'll check this. Perhaps Heiko can help with testing as well on his side.
> > 
> > On the first glance the mentioned patch may not be the culprit because it does
> > not change the functional behaviour (if I'm not mistaken). What really changes
> > it is the additional flag that removes the left-shift of the rate in the
> > calculations.
> 
> I noticed the behavior on the 5.14 kernel was to set the numerator at
> an ungodly 7649082492112076800 and the denominator at 1 (no, that's not
> a typo). I think it tried to write 65535 to the register though, but it
> would go through this a few times and eventually settle on 1:1 as the
> fractional ratio (which I assume is all good, because that would work).
> 
> Contrast this to the 5.15 behavior where it would try to set the ratio
> to 17001:17000, which would cause the DSI screen to fail to initalize.
> 
> After tracing through the code I figured out that the VOP was trying to
> add 999 to the clock and set it at 17000999. 17000000/17000999 gives us
> 0, and subtracting 1 from that gives us a -1. The fls_long function
> would then return 64, and if we subtract 16 (the value of fd->mwidth
> for my board) it would tell us to shift the 17000999 48 bits to the
> left, which matches the ungodly large number.
> 
> With the changes in 5.15 if I remove the + 999 from the VOP driver the
> clock then gets set at 17000000, since the parent is at 17000000 that
> gives us a 1:1 where everything works and everything is fine.
> 
> Long story short I think this is a bug that's existed all along, and
> this change simply exposed it in a manner where it stopped working
> despite the bug being present. Unfortunately I neither know enough
> about the hardware to be confident in this fix beyond my specific
> board, nor do I have enough hardware to test it on anything except
> a Rockchip rk3326 with a DSI panel.

This is a very good analysis!

> > To me sounds like you found a proper solution to the issue and that +999 is
> > a hack against the (blindly?) copied part of the algorithm used in fractional
> > divider. Have you read the top comment in clk-fractional-divider.c? It should
> > explain how it works after my series.
> 
> No, but I probably should read the docs more. I just stumbled on this
> series doing a bisect when the DSI panel stopped working.
> 
> > In any case I'm not going to come to any conclusions right now and also want
> > to hear from people who have better understanding of this hardware.
> 
> Yeah, I want to see what Heiko says after some more research, or anyone
> who has more familiarity with clocks/DRM than I do or who has more
> hardware to test on than I do.

After what I read above I can't add anything and what I think is the best
course of actions is to submit a patch with removal of +999 part and above
explanation. It would be nice to find the real commit ID that may be used
for a Fixes tag.

Then we  at least will have a patch ready in case it's considered correct
by people from Rockchip side.

> I intended to send a message informing you that "hey, this breaks
> upstream", but I think it turns out it's more a matter of "hey,
> this makes a broken upstream break instead of limp along".

Understand.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
