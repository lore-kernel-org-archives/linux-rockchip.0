Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03F68C6377D
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 07:25:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF86561279
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 07:25:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF86561279
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=feKkmMrzPNM0UtEIYiCLi/HIzwdtZuYRcOE9Bf0BXxg=; b=pQJij8MUyd2Ijx
	PN0RKh+EyEdXdowVYUOResWkzPzYBht9u398gu5/mza4qRnjapnFuQFbRUmhuXmPfITD+igDtW6Ck
	evKczB0zjhM6U0pl9Q3BZSmF5GdI6lHtWZzmhTAT5oQ+ClNIeD6paMVpj9WH0xPjDKVtxN05l4f5a
	MzYlGoK8y2z8uE+g2kWoFEmrwTzoLDjeKUUNzQ2WDSPke9XadodhkrQYyU6zuKgYsjeifK9Q+rf+Y
	ClsEnCDCo6PPVSi9++WiIS7GyJjXaHLqqvsezTDaHHrogFo7qlU3Coe5N/LabrUV8bU0CAtahQ5Kd
	X7dHs+wbbocdeHQAlenw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6T4s-000V2i-AI; Thu, 22 Jul 2021 07:25:06 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6T4c-000V0C-Qk; Thu, 22 Jul 2021 07:24:52 +0000
Received: by mail-pj1-x1030.google.com with SMTP id bt15so4941520pjb.2;
 Thu, 22 Jul 2021 00:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DbhXmwk5Pgzr5UQORj6l6ot/ogt5bLsSYD4MP0zFRBc=;
 b=HYM6RoWm5g49/PXCJj6Xhe0GgOE7DxU0Tehwo88pZh91j1akuzczp8zKDb2T1iFFQe
 eCXo2v0YdFrCPB79U8SuoEnCAucDkzipdL87DTcc1ln5uOcXJUlN2FDo2j/yjy2fIJGQ
 tXuV3X9Z1TGg/wIcbJE4ar7x7rYa/IBfbULL1hVY2qNRReGOaI1gYXUTa1Eoi9FTWCCl
 siNQUupjNVtUw5E4QbYpQ+h3t2chJp/6TUIDbbjyDZCMsJBdAJoAuZpAREb8vWPOo/Eu
 cGDCdlkQ2wwv1Lhc+PWPFu53iHJRxlsob5o7y3xgBGKpb8cbHNzkPXR/DHVVVeVVNxdV
 pvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DbhXmwk5Pgzr5UQORj6l6ot/ogt5bLsSYD4MP0zFRBc=;
 b=iM0rA9s1aJ85QTf8ZtscMxjIWK5Xy/KIHfAAn+/H3TzsKR1YHCvmZoa0WDxSyRy4PO
 ttFqJuXLX99Zna1i63TKhV8HO6KG085+p94ZVgh2u9ifdjFdlDgn+yC2jm/4Lhw/ptMA
 lfprjPrXvsEDcjjTkGBGljfXOj1Bp1rHKa9C8MjYsP46gOqllTX5aHJM6Jfo0D0nAi+a
 F9oqdJYINyF28AbRDlsQv1+A6OglTMVi3etPzWgNn6lprbUBqlj5G5RPSBqbV8Rc1SoA
 a1BPNXeCN/zKe+Ta1lzGM1sC8cWBdySotsbhygKp8ZxBrwniDBeGm+TG6DbZGO+1/Ejg
 Aomg==
X-Gm-Message-State: AOAM531Ht73zu9DWrj2NcruNh+MBrKYrRsXRMVbQKJk+H8yamVDoXMbs
 DIzowBfVb0cFG6iG91/d+C0H9kCm9a2Z4HUjbMQ=
X-Google-Smtp-Source: ABdhPJyyEcKv27+DRphwUCE/WWwYG6XnZHoQbnNglY/CmSuTPJUUWByMD+hhoqNyl3YfpxsO7BnV8vSVeMNShlm1AzQ=
X-Received: by 2002:a17:902:fe97:b029:12b:aebf:6484 with SMTP id
 x23-20020a170902fe97b029012baebf6484mr1236099plm.0.1626938689114; Thu, 22 Jul
 2021 00:24:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
 <20210715120752.29174-2-andriy.shevchenko@linux.intel.com>
 <7941107fda10f075395870528f0e52d42e502d92.camel@nxp.com>
 <YPGHbvaCv/x/JlgH@smile.fi.intel.com>
 <bfa0c16e88c0d445137290b2bef104e5fa74d78a.camel@nxp.com>
 <YPVrkAarqSBMY1tV@smile.fi.intel.com>
 <6b2a6408fcff0d064746d7a77db7b9502c66ad20.camel@nxp.com>
In-Reply-To: <6b2a6408fcff0d064746d7a77db7b9502c66ad20.camel@nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 22 Jul 2021 10:24:12 +0300
Message-ID: <CAHp75VeTyWe6SWpWMRYh4Ah6LYULNHBuSo7Tq2AX=vdsObnTLw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20210722_002450_948129_F659BA1D 
X-CRM114-Status: GOOD (  59.49  )
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

On Thu, Jul 22, 2021 at 9:04 AM Liu Ying <victor.liu@nxp.com> wrote:
> On Mon, 2021-07-19 at 15:09 +0300, Andy Shevchenko wrote:
> > On Mon, Jul 19, 2021 at 11:16:07AM +0800, Liu Ying wrote:
> > > On Fri, 2021-07-16 at 16:19 +0300, Andy Shevchenko wrote:
> > > > On Fri, Jul 16, 2021 at 10:43:57AM +0800, Liu Ying wrote:
> > > > > On Thu, 2021-07-15 at 15:07 +0300, Andy Shevchenko wrote:

> > > > > Second and more important, it seems that it would be good to decouple
> > > > > the prescaler knowledge from this fractional divider clk driver so as
> > > > > to make it simple(Output rate = (m / n) * parent_rate).  This way, the
> > > > > CLK_FRAC_DIVIDER_NO_PRESCALER flag is not even needed at the first
> > > > > place, which means rational_best_approximation() just _directly_
> > > > > offer best_{numerator,denominator} for all cases.
> > > >
> > > > Feel free to submit a patch, just give a good test to avoid breakage of almost
> > > > all users of this driver.
> > >
> > > Maybe someone may do that.
> >
> > Perhaps. The idea per se is good I think, but I doubt that the implementation
> > will be plausible.
> >
> > > I just shared my thought that it sounds
> > > like a good idea
> >
> > Thanks!
> >
> > > to decouple the prescaler knowledge from this
> > > fractional divider clk driver.
> >
> > Are you suggesting that each of the device that has _private_ pre-scaler has to
> > be a clock provider at the same time?
>
> Maybe it depends on specific devices.  But, if a device is designed to
> dedicatedly control clocks, being a clock provider seems to be
> intuitive.

OK.

> > OTOH you will probably need irrespresentable hierarchy to avoid saturated values.
> >
> > At least those two issues I believe makes the idea fade in complications of the
> > actual implementation. But again, send the code (you or anybody else) and we will
> > see how it looks like.
>
> Aside from making this fractional divider clk driver simple, there
> seems to be another reason for decoupling the prescaler knowledge from
> the driver.  That is, the 'left shifting' done in
> clk_fd_general_approximation()/clk_fd_round_rate() is likely to cause
> mis-match bewteen 'rate = clk_round_rate(clk, r);' and
> 'clk_set_rate(clk, r); rate = clk_get_rate(clk);' as kerneldoc
> of clk_round_rate() mentions that they are kinda equivalent
> in include/linux/clk.h. clk_fd_set_rate() doesn't really contain the
> 'left shifting'.
>
> So, it looks like decoupling is the right way to go.

OK.

...

> > > > > Further more, is it
> > > > > possilbe for rational_best_approximation() to make sure there is no
> > > > > risk of overflow for best_{numerator,denominator}, since
> > > > > max_{numerator,denominator} are already handed over to
> > > > > rational_best_approximation()?
> > > >
> > > > How? It can not be satisfied for all possible inputs.
> > >
> > > Just have rational_best_approximation() make sure
> > > best_{numerator,denominator} are in the range of
> > > [1, max_{numerator,denominator}] for all given_{numerator,denominator}.
> > > At the same time, best_numerator/best_denominator should be as close
> > > to given_numerator/given_denominator as possible. For this particular
> > > fractional divider clk use case, clk_round_rate() can be called
> > > multiple times until users find rounded rate is ok.
> >
> > How is it supposed to work IRL? E.g. this driver is being used for UART. Serial
>
> I guess the drivers are drivers/acpi/acpi_lpss.c and drivers/mfd/intel-
> lpss.c? Both for Intel.

At least those I have knowledge of. Others, if any, seem to have taken
this into account.

> > core (or even TTY) has a specific function to approximate the baud rate and it
> > tries it 2 or 3 times. In case of *saturated* values it won't progress anyhow
> > because from best rational approximation algorithm the very first attempt would
> > be done against the best possible clock rate.
> >
> > Can you provide some code skeleton to see?
>
> Perhaps, two approaches can be taken in driver which uses the
> fractional divider clock:
> 1) Tune prescaler to generate higher rate or lower rate accordingly
> when clk_round_rate() for the fractional divider clock returns lower or
> higher rates then desired rate. This might take several rounds until
> desired rate is satisfied w/wo a tolerated bias.
> 2) Put working clock rates and/or parent clock rates in a table as sort
> of prior knowledge, which means less code for rate negotiation.

Often 2) is a bad idea which I'm against from day 1. I prefer to
calculate what can be calculated.
The 1) looks better but requires several (unnecessary IIRC) rounds.
Why not supply the additional parameter(s) to tell that we have a
prescaller with certain limitations?

...

> > > > > Overflowed/unreasonable
> > > > > best_{numerator,denominator} don't sound like the "best" offered value.
> > > >
> > > > I don't follow here. If you got saturated values it means that your input is
> > > > not convergent. In practice it means that we will supply quite a bad value to
> > > > the caller.
> > >
> > > Just like I mentioned above, if given_{numerator,denominator} are not
> > > convergent, best_numerator/best_denominator should be as close
> > > to given_numerator/given_denominator as possible and at the same time
> > > best_{numerator,denominator} are in the range of
> > > [1, max_{numerator,denominator}].  This way, caller may have chance to
> > > propose convergent inputs.
> >
> > How? Again, provide some code to understand this better.
> > (Spoiler: arithmetics won't allow you to do this. Or maybe
> >  I'm badly missing something very simple and obvious...)
> >
> > And, if it's possible to achieve, are you suggesting that part of
> > what CCF driver should do the users will have been doing by their
> > own?
>
> Well, I just think it doesn't seem to be necessary for the CCF/common
> frational drivider clk driver to have the prescaler knowledge. The
> prescaler knowledge can be in a dedicated clk provider(if appropriate)
> or somewhere else.

I might disagree on the grounds of the HW hierarchy and the best that
we may achieve in _one_ pass. For example, for a 16-bit additional
prescaler it will require up to 16 steps to get the best possible
values for the m/n. Instead we may supply to this driver the
information about subordinate prescaler and get the best m/n. The
caller will need to just divide the resulting rate by the asked rate
to get a prescaler value.

...

> > TL;DR: please send a code to discuss.
>
> It seems that you have some experience on those intel drivers, this
> clock driver and rational algorithm driver and you probably have intel
> HWs to test.  May I encourage you to look into this and decouple the
> prescaler knowledge out :-)
>
> >
> > Thanks for review and you review of v2 is warmly welcomed!
>
> I'd like to see patches to decouple the prescaler knowledge out.

Then produce them! Currently the code works for all its users and does
not need any changes (documentation is indeed a gap).

> V2, like v1, tries to consolidate the knowledge in this fractional
> divider clk driver. So, not the right direction I think.

Then why are you commenting here and not there? :-)
I think I would drop patch 2 from the set (patch 1 is Acked and patch
3 is definitely needed to describe current state of affairs) on the
grounds of the comments.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
