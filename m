Return-Path: <SRS0=kwzO=MI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B41C07E95
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 13:22:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2742D613F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 13:22:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2742D613F5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2xag2elKEoDmL0j3aYWXXwbS+OeTZ4BcEs5B0LwCAA=; b=nzmKXkicyvNWYT
	FL0pjNyGOoJHu6zGOfx1TxELo86vXAqQm7YlQVv5sfj3KWJK2hlMwv4Cr/kW3H1n6B4qZIBk3zINU
	6cPOvHS/u35m6Eoskju+smcLSPZGB6NfdfcEqmzPMqd71d4Y3Eh/3bEiz7+j5T3YjBMw093IRR+m/
	/rZiZdLsoToxFYf3wtO7NFsOM9mECUzcX8jH1GS3VqRywxWxLcLGKTQyKjqAcry/UvMQT6e4HGBIt
	u7Oi6ZMcLrY/ZXiW/be76gbGuW6qTShLkuOjVB13sUZsSgO1Ktwe1HGWQPvbhIWv5VVG3F5yUeCer
	km1k0gXUxlgVvKtijMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4Nn6-004RhM-EK; Fri, 16 Jul 2021 13:22:08 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4Nmt-004RXt-DO; Fri, 16 Jul 2021 13:21:56 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="271843148"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="271843148"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 06:19:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="494935556"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 06:19:49 -0700
Received: from andy by smile with local (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1m4Nkk-00EEoF-L8; Fri, 16 Jul 2021 16:19:42 +0300
Date: Fri, 16 Jul 2021 16:19:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Liu Ying <victor.liu@nxp.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH v1 2/3] clk: fractional-divider: Introduce NO_PRESCALER
 flag
Message-ID: <YPGHbvaCv/x/JlgH@smile.fi.intel.com>
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
 <20210715120752.29174-2-andriy.shevchenko@linux.intel.com>
 <7941107fda10f075395870528f0e52d42e502d92.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7941107fda10f075395870528f0e52d42e502d92.camel@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_062155_540840_30772416 
X-CRM114-Status: GOOD (  24.69  )
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

On Fri, Jul 16, 2021 at 10:43:57AM +0800, Liu Ying wrote:
> On Thu, 2021-07-15 at 15:07 +0300, Andy Shevchenko wrote:
> > The newly introduced flag, when set, makes the flow to skip
> > the assumption that the caller will use an additional 2^scale
> > prescaler to get the desired clock rate.
> 
> Now, I start to be aware of the reason why the "left shifting" is
> needed but still not 100% sure that details are all right. IIUC, you
> are considering a potential HW prescaler here, while I thought the HW
> model is just a fractional divider(M/N) and the driver is fully
> agnostic to the potential HW prescaler.

It's not AFAICS. Otherwise we will get saturated values which is much worse
then shifted left frequency. Anyway, this driver appeared first for the hardware
that has it for all users, so currently the assumption stays.

...

> >  	scale = fls_long(*parent_rate / rate - 1);
> > -	if (scale > fd->nwidth)
> > +	if (scale > fd->nwidth && !(fd->flags & CLK_FRAC_DIVIDER_NO_PRESCALER))
> >  		rate <<= scale - fd->nwidth;
> 
> First of all, check the CLK_FRAC_DIVIDER_NO_PRESCALER flag for the
> entire above snippet of code?

OK.

> Second and more important, it seems that it would be good to decouple
> the prescaler knowledge from this fractional divider clk driver so as
> to make it simple(Output rate = (m / n) * parent_rate).  This way, the
> CLK_FRAC_DIVIDER_NO_PRESCALER flag is not even needed at the first
> place, which means rational_best_approximation() just _directly_
> offer best_{numerator,denominator} for all cases.

Feel free to submit a patch, just give a good test to avoid breakage of almost
all users of this driver.

> Further more, is it
> possilbe for rational_best_approximation() to make sure there is no
> risk of overflow for best_{numerator,denominator}, since
> max_{numerator,denominator} are already handed over to
> rational_best_approximation()?

How? It can not be satisfied for all possible inputs.

> Overflowed/unreasonable
> best_{numerator,denominator} don't sound like the "best" offered value.

I don't follow here. If you got saturated values it means that your input is
not convergent. In practice it means that we will supply quite a bad value to
the caller.

> If that's impossible, then audit best_{numerator,denominator} after
> calling rational_best_approximation()?

And? I do not understand what you will do if you get the values of m and n
as m = 1, n = 2^nlim - 1.

> Make sense?

Not really. I probably miss your point, sorry.

So, I will submit v2 with addressed first comment and LKP noticed compiler
error.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
