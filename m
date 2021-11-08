Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CA28C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 09:26:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5DC061288
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 09:26:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5DC061288
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXXoNdUWvLyGqvuxosrz89deRhsvJYQlUtfWbWKjJLc=; b=sox4uInVY+7O9C
	6ZMl3kwJuYrbw0WuEBhHW/CfDoEG2p4u7meld1P+T4vCIk5YfnhsBN1P9VJY4hUI0Xxgxo6kma4EX
	N6cxdzQFv+YBRFcv5WBhB8gtxFCsQPY1k1R52fAlU/kn+L5UbjBPxKxJqupBsUEumjmBedgP1F1Kr
	W8LRXWGz63TIjc4v/9FyS7o4jxOvUR9SfDkUJ1dv+XvWVKMg7/O/PghDPivj6exg+QKmSxLEh866E
	LIlDC/MMLOEJByYC1Q2Afat0LQFooA4mMKu5E8kFlyLwQpQj7fu5LWk5JNHYdX1FT38snHTpj/YWs
	5puWEvt1F2cvIRh1ZdEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk0vG-00FrHd-0j; Mon, 08 Nov 2021 09:26:38 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk0v3-00FrGJ-7D; Mon, 08 Nov 2021 09:26:26 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="219095475"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="219095475"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 01:26:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="499814430"
Received: from smile.fi.intel.com ([10.237.72.184])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 01:26:18 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1mk0ui-004cSx-N0;
 Mon, 08 Nov 2021 11:26:04 +0200
Date: Mon, 8 Nov 2021 11:26:04 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 14/19] pinctrl: st: Use temporary variable for struct
 device
Message-ID: <YYjtLGlSCDPM4UVL@smile.fi.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-14-andriy.shevchenko@linux.intel.com>
 <4b3f1ee1179dd6d4b010cb110b38d26e7d91c19f.camel@perches.com>
 <CAHp75Ve0Bv9VsWFFZxL9wYk=Z_Mm7nat-vf7g8HHTiROi7EY=Q@mail.gmail.com>
 <103d7321a2d18e44fb8c01483b1197766aff645a.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <103d7321a2d18e44fb8c01483b1197766aff645a.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_012625_329918_6B6E9385 
X-CRM114-Status: GOOD (  22.43  )
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

On Sat, Nov 06, 2021 at 01:28:17AM -0700, Joe Perches wrote:
> On Sat, 2021-11-06 at 10:07 +0200, Andy Shevchenko wrote:
> > On Saturday, November 6, 2021, Joe Perches <joe@perches.com> wrote:
> > > On Fri, 2021-11-05 at 14:42 +0200, Andy Shevchenko wrote:

...

> > > > -     new_map = devm_kcalloc(pctldev->dev,
> > > > -                             map_num, sizeof(*new_map), GFP_KERNEL);
> > > > +     new_map = devm_kcalloc(dev, map_num, sizeof(*new_map), GFP_KERNEL);
> > > 
> > > Are pctldev->dev and dev the same pointer?
> > 
> > Seems so.
> 
> OK.
> 
> > https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/core.c#L2015
> > 
> > > It seems they are not.
> > 
> > Can you elaborate, please?

> From code shape, you assign dev to info->dev rather than pctldev->dev

Yes. And they are the same. TBH these three drivers seem to be written by
copy'n'paste method where the first one, whichever it was, is simply messy
and buggy.

The extra redundant parameter (often struct platform_device) is passed to
zillions of functions when at the same time info structure already has pointer
to struct device is the easiest one to notice. And I believe so on, so on...

> I also believe this single 19 patch series would be better as
> multiple patch series.

I'm fine with either, but I would like to hear from Linus about what he wishes
as the maintainer. You know that we don't add code without users? So that's why
my motive to send it in full.

> IMO: the strarray variants introduction and use should be a separate
> patchset from the rest.

It will add unnecessary churn. Yeah, I have planned to send just that, but then
it took more and more cleanups and I have to stop at some point, the code there
is bad (historically or by other reasons, dunno).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
