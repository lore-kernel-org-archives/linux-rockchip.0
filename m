Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3981CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 15:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUoZBmkSTewdQ+nIOeVAXSBSS98wfi1LdtT+hZGufqI=; b=NX+QmWzRXs3Lq6
	joH9r2hcyKjBV2zA2SY74ghjCKnEg0VE67eUCcKk4LCJ6eB3Z+s30PLAOcD7ra4gwr0TU/y8L5JH3
	vg0PzIS17E9Lb8xAwKbHpCWavqeETewsEdck7qX2cWpVBmKNFPdTDVu1PO7kRznZl+/XcsgLPhXG1
	pIkfYnDOfjftc/z1Lq7enbgAUFp3Ullu2Qya6DWRmgkGWSf3IbR4/2UWz7J8WXFB/EC+entkEilB1
	A0Qgne2lytuqXGqUgx5T77Q+v2aykiuFZ4cWhbw3CIjrcWmlst3oazoHc9druErqF6aWbiNn4mAU1
	w4Hz3hpj/fVv5hNNCIeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAvA0-002nrk-Ar; Mon, 11 Jul 2022 15:17:20 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAv9p-002nn1-BE; Mon, 11 Jul 2022 15:17:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D43B71596;
	Mon, 11 Jul 2022 08:17:06 -0700 (PDT)
Received: from monolith.localdoman (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFACE3F70D;
	Mon, 11 Jul 2022 08:17:04 -0700 (PDT)
Date: Mon, 11 Jul 2022 16:17:37 +0100
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
Message-ID: <Ysw+3Hg+GbDjXuTn@monolith.localdoman>
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
 <Yswkb6mvwUywOTLg@sirena.org.uk>
 <YswoOE/sP088lius@monolith.localdoman>
 <Ysw2mzhw4pyrxirc@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ysw2mzhw4pyrxirc@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_081709_448411_F42269C2 
X-CRM114-Status: GOOD (  29.23  )
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

Hi,

On Mon, Jul 11, 2022 at 03:41:31PM +0100, Mark Brown wrote:
> On Mon, Jul 11, 2022 at 02:40:08PM +0100, Alexandru Elisei wrote:
> > On Mon, Jul 11, 2022 at 02:23:59PM +0100, Mark Brown wrote:
> 
> > > Please think hard before including complete backtraces in upstream
> > > reports, they are very large and contain almost no useful information
> 
> > I'm at a loss here. Are you saying that those 4 lines represent a complete
> > backtrace and they are very large? Or are you talking about the panic log
> > that I've included in the commit message?
> 
> I'm talking about the entire log that that was the start of, I deleted
> the bulk of it due to the excessive size.

Oh, that makes sense then.

> 
> > > relative to their size so often obscure the relevant content in your
> > > message. If part of the backtrace is usefully illustrative (it often is
> > > for search engines if nothing else) then it's usually better to pull out
> > > the relevant sections.
> 
> > Would you mind pointing out what you think the relevant sections are? I
> > would also find it very useful (for future patches) if you can explain why
> > they are relevant, and why those parts you've left out aren't.  It's not
> > very easy to figure out what is relevant when you're not familiar with a
> > subsystem.
> 
> It really depends what the information you're trying to convey with the
> backtrace is, in general a couple of frames of context might be useful
> if there's something interesting about the context from which things
> were called since that's the unique bit that people might search for.
> For example things like the standard set of generic functions you'd see
> when probing a device is rarely going to convey anything meaningful, and
> similarly the standard kernel entry backtrace for something triggered
> from a system call.  The full register state is also commonly not of any
> great relevance if it's not illustrating something in the rest of the
> message. 
> 
> If you are just including an entire splat on the off chance that it
> might be relevant consider just not including it rather than including
> everything.

Thanks for the explanation!

I've included the entire splat, not just the bits that prove my conclusion,
in case my conclusion is wrong and someone reading the backtrace can notice
what I missed.

In this case, the splat was definitely useful for me, because the last two
functions from the call trace point to where the bug was.

Do you want me to respin the patch with an abbreviated splat?

Thanks,
Alex

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
