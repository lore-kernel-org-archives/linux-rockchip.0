Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C74DC6377D
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 09:35:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF9506121E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 09:35:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF9506121E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txaWdp8v0cWzA19reYnXb969hNReZgHUjl11eplljjg=; b=pUxDUwivoZCPER
	WoDgYiBpJkAfMFbStSxW5DEEwWgM87gnao2DjndQxLEi2hsJMEYZugsxtG3InFy8wsD8WUKUsyfkz
	UzfVLCxATGxwJNBlv24e5zZ6OacwEv/xVnGTaCIuBds78ycbI24hpaGRczzbXgBvLAQAzjd70VVUq
	34LnhHYcPzdGrJoQ74/U+sWU45SVAIsdS1KkmpMYrb01qZXySGv4qK6f069IXHcFAJu27kaDZK1Ua
	pZbzKAU08FNHCc/7v+q2Klqge1yrvNxkKNw6Ajo5rdaTINhgO/J1/13dMy61rZ/+pWZwcxhW3xs2b
	H+2yNHHHmZH8iYjbaL/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6V6s-000vzM-Uo; Thu, 22 Jul 2021 09:35:18 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6V6Q-000vrI-Py; Thu, 22 Jul 2021 09:34:52 +0000
Received: by mail-pl1-x62a.google.com with SMTP id e14so3787755plh.8;
 Thu, 22 Jul 2021 02:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vmOmuaK7LWo43TRzwjBM1rShoFVgmRr+DkytbYWjobM=;
 b=ajOxZtQ71qB4NgzbVp+CaqQT7nOhGqilPP/1YpGTptF0Wta3yCrfzemAqFt6L5XrlX
 0hDRtSORTMMwFfLf8kguUfOVWELdX+XHdJxbaR9GexW/xxM/YXVE3ptXqYgiM0dmw/8r
 2PuD4tU1gt+YGQMxPfesyx1r0Wuo5U8qSePMge8m2Ca7CiymFsiiRXGScdh9xUmvpxWM
 TbcdVaVs25qEJ/w85bHQwtyXs88wgIxPLUB/KT7qIi3NFRiX7pozdPyuVsYhpgT9ANC/
 9UXf6MUszhnCdgSadlDEh/jqM3a0ytzqNwlkOlMpAqWrbklTbyW4SXny4yjc9FyEflng
 kCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vmOmuaK7LWo43TRzwjBM1rShoFVgmRr+DkytbYWjobM=;
 b=GfW3zHGFtNLvEXQ9yZu9r8cyaBYbZLBes2W72zkr8KGkJT/GulP1P0KgU9+gl3D02s
 TmlCB0eBFav95MgINFp1gfCs5HY3wppIUpNQlQX5iXz/VvjX35oCAEUyoxSZutS0b4Z2
 UNUQsJrlTqGvYIRKozHLycDmE7PhPtXZ4EPVEa3l6negdSwiuHD5G2MQfu4FNt8Mb7Gp
 ZW+W/qvylxlMb/PZtWnmvH8JzlXLwElGABbbHe5lc6rD8LS1spq2OWU/rqsFb7SU9oGk
 kZMTlNbpoyLX//SmmvenlWWOsbsfYVBrWmCAZE4co+bPMHzbtSy83/fOKzj/xDtlDOcm
 YF+g==
X-Gm-Message-State: AOAM532uKg2TMdVhDDRyzWbQBKyw77KF7aJpteVlLlt061/CRHuPDfXO
 48YUr+eL6wEaY5/NygyqQ9vHAfVNxx9CpzyJlc0=
X-Google-Smtp-Source: ABdhPJzieBPLPtbomp2eYEOuqvzd/dnwMiQHJV30oU+LY04cUblzlgUBsQbgA37ho8E69oD0YKE0dy00pEhCIsAL49o=
X-Received: by 2002:a63:d014:: with SMTP id z20mr40356488pgf.203.1626946489997; 
 Thu, 22 Jul 2021 02:34:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
 <20210715120752.29174-2-andriy.shevchenko@linux.intel.com>
 <7941107fda10f075395870528f0e52d42e502d92.camel@nxp.com>
 <YPGHbvaCv/x/JlgH@smile.fi.intel.com>
 <bfa0c16e88c0d445137290b2bef104e5fa74d78a.camel@nxp.com>
 <YPVrkAarqSBMY1tV@smile.fi.intel.com>
 <6b2a6408fcff0d064746d7a77db7b9502c66ad20.camel@nxp.com>
 <CAHp75VeTyWe6SWpWMRYh4Ah6LYULNHBuSo7Tq2AX=vdsObnTLw@mail.gmail.com>
 <3cd7393a34ca991184722e57b6c64737973b31c4.camel@nxp.com>
In-Reply-To: <3cd7393a34ca991184722e57b6c64737973b31c4.camel@nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 22 Jul 2021 12:34:10 +0300
Message-ID: <CAHp75VduRAcZLOxvk+QByn=Uw6JcEwfsby2QPib1OZTNETeObQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] clk: fractional-divider: Introduce NO_PRESCALER
 flag
To: Liu Ying <victor.liu@nxp.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Stephen Boyd <sboyd@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, 
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Michael Turquette <mturquette@baylibre.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_023450_920962_45B1BB33 
X-CRM114-Status: GOOD (  45.62  )
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

On Thu, Jul 22, 2021 at 12:11 PM Liu Ying <victor.liu@nxp.com> wrote:
> On Thu, 2021-07-22 at 10:24 +0300, Andy Shevchenko wrote:
> > On Thu, Jul 22, 2021 at 9:04 AM Liu Ying <victor.liu@nxp.com> wrote:
> > > On Mon, 2021-07-19 at 15:09 +0300, Andy Shevchenko wrote:
> > > > On Mon, Jul 19, 2021 at 11:16:07AM +0800, Liu Ying wrote:
> > > > > On Fri, 2021-07-16 at 16:19 +0300, Andy Shevchenko wrote:
> > > > > > On Fri, Jul 16, 2021 at 10:43:57AM +0800, Liu Ying wrote:
> > > > > > > On Thu, 2021-07-15 at 15:07 +0300, Andy Shevchenko wrote:

...

> > > > core (or even TTY) has a specific function to approximate the baud rate and it
> > > > tries it 2 or 3 times. In case of *saturated* values it won't progress anyhow
> > > > because from best rational approximation algorithm the very first attempt would
> > > > be done against the best possible clock rate.
> > > >
> > > > Can you provide some code skeleton to see?
> > >
> > > Perhaps, two approaches can be taken in driver which uses the
> > > fractional divider clock:
> > > 1) Tune prescaler to generate higher rate or lower rate accordingly
> > > when clk_round_rate() for the fractional divider clock returns lower or
> > > higher rates then desired rate. This might take several rounds until
> > > desired rate is satisfied w/wo a tolerated bias.
> > > 2) Put working clock rates and/or parent clock rates in a table as sort
> > > of prior knowledge, which means less code for rate negotiation.
> >
> > Often 2) is a bad idea which I'm against from day 1. I prefer to
> > calculate what can be calculated.
> > The 1) looks better but requires several (unnecessary IIRC) rounds.
> > Why not supply the additional parameter(s) to tell that we have a
> > prescaller with certain limitations?
>
> To me, it's kinda too much information to this common frational divider
> clk driver.  Making the common driver simple and easy to maintain is
> important.

But it has to have it due to the nature of the hardware design. If you
leave it w/o that you have immediately come into the situation where
the clock rate will be far too wrong because of *saturated* values.
Have you done the arithmetics on the paper by the way?

...

> > I might disagree on the grounds of the HW hierarchy and the best that
> > we may achieve in _one_ pass. For example, for a 16-bit additional
> > prescaler it will require up to 16 steps to get the best possible
>
> Would that be an unacceptable performance penalty?

Yes.

> > values for the m/n. Instead we may supply to this driver the
> > information about subordinate prescaler and get the best m/n. The
> > caller will need to just divide the resulting rate by the asked rate
> > to get a prescaler value.
>
> IMHO, a simpler fractional divider clk driver without the prescaler
> knowledge wins the tradeoff.

I'm far from being convinced.

...

> > > > TL;DR: please send a code to discuss.

^^^^ I am tired of telling you this, btw.

> > > It seems that you have some experience on those intel drivers, this
> > > clock driver and rational algorithm driver and you probably have intel
> > > HWs to test.  May I encourage you to look into this and decouple the
> > > prescaler knowledge out :-)
> > >
> > > > Thanks for review and you review of v2 is warmly welcomed!
> > >
> > > I'd like to see patches to decouple the prescaler knowledge out.
> >
> > Then produce them! Currently the code works for all its users and does
> > not need any changes (documentation is indeed a gap).
>
> IIUC, only the two Intel drivers mentioned before are affected.
> Rockchip has it's own ->approximation() callback

...which is using the same algo, look at the patch 1 of the series. It
seems you missed to actually review. Just review the series as a
whole, please!

>  and i.MX7ulp hasn't
> the prescaler(IIUC), thus kinda not affected.  So, perhaps you may help
> look into this and decouple the prescaler knowledge out, as it seems
> that you have experience on the relevant drivers and HW to test.

> Anyway, to me, it is _not_ a must to have if you really think it's hard
> to do or unnesessary :-)

...

> > > V2, like v1, tries to consolidate the knowledge in this fractional
> > > divider clk driver. So, not the right direction I think.
> >
> > Then why are you commenting here and not there? :-)
>
> Maybe v2 was sent too quickly as the decoupling comment on v1 hasn't
> been sufficiently discussed :-)

Maybe.

> I'll comment v2 briefly.

Thanks!

...

> > I think I would drop patch 2 from the set (patch 1 is Acked and patch
> > 3 is definitely needed to describe current state of affairs) on the
> > grounds of the comments.
>
> Please consider i.MX7ulp, as it hasn't the prescaler IIUC. i.MX7ulp
> needs NO_PRESCALER flag, if we keep the prescaler knowledge in this
> driver ofc.

Then  we need a flag and v2 can go as is.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
