Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A93C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 10:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fT6Z9uNZwGUti0MWg88QlBKY4d/gaw+GTwIdObbKEH0=; b=IeIiD/Nbmko8eO
	joIxskGn8Q0x168rT0DvkbKnsVSAoQAszW2zwZdUxUd1RI8Sx0xVN+c7MFWMDjcJOEUQg7vKcqjlq
	8XHJYAxSoFdnVG8bONX0WZe0YYYuGZ7hMx1/t50cHYssbV7lOfnDuqehUGJRdKy7vmFZ09eFD0crK
	Ug3qe/awzl7DRGxiycm62r1UEnUJRBk6lTK1K9gJl02NOH/vUJ4RQ9ngkkXj5vY7gB7wtKJMHSYj/
	bCTkWeE6+bkC4fN8O6jmqiAbbC730gWatJNBa/Cw0/i4U1tT/0ItKgXXZHO8tCaQ99qQaedmLWk/m
	ITuZlQdwCh8JIRV5WM/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPM8j-002Ior-2G; Wed, 02 Mar 2022 10:23:25 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPM8g-002InT-6V
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 10:23:23 +0000
Received: by mail-lj1-x22e.google.com with SMTP id u11so1585306lju.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 02:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9tjY3EnNamNFx1y3oddYNE+8HtUaH9EZY+luGZxUhsM=;
 b=mnACc6XQaE5xdOpPVbWeU0j4lqYfqsAhH0pnsiQ4s+1ZtVjntpL/OwJLMrmI7Sytrc
 3tRtsEdE5mIug5N/dLj9wICfoEUbgNXaTnVTJzTbN/TkNBEuoYsBjmpPXQhSJ/Zw98oK
 eakd9g9hwgta4vGWdNpsV6UQ/1ds7PYgJFpX8Ixx4BsbfdOrslso9neJdZOh8o+Zx0OP
 hqtdM8INXeh0EMeBV7tNYMtDgmHyl8xBrjCR2OJqPBJaeUv9a76kEZQ5oae3z5q9mD8M
 oPrJbl/dzH5LDyF/lhbY1pMfpYZ6RT1A7fixM7PSNAHPA76l8HsURnbmHIjlGSJGN6Tt
 K8tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9tjY3EnNamNFx1y3oddYNE+8HtUaH9EZY+luGZxUhsM=;
 b=48CF0FOYjvDMDK9lNlHxaYHSOyTz04hd2rRVwhdBa85g1y2Hq6VEkDQmf7HsAT7Kii
 5EOpZu6ALyCNIruvFzbo9SMe4lz+0B4ZMFJRf/z6R9/zjcIjyTQQYMfsVU2X5ha5yKCj
 X/265VelvZdNFNVLDp/J2KZliGeNC2ex4jmUDRoH1E6oOfB+Hw8kwii9D9fhmlob08pL
 asje4ef31WbGRDqDEDi8QwUvkE5rJ/yvOPgEKp250nnZtT7gBCRn8e9/oLhr5VMW5P96
 zp4NWbo+rDBYiuVa2NL8N+zjMQXYtWRDTf8dVrtPIIhUtN8L7dqw100712y9c3+57B2j
 2mSg==
X-Gm-Message-State: AOAM531XIRjI6OxPM5kWadITJJj3YxNBVx5KXPfq6/A/d0X8r8mrGT4j
 PNeEqbPd9S403F+hzyl9WAiXskcpyG+y1KQw386tizt8KNr3jw==
X-Google-Smtp-Source: ABdhPJx6nuXDD4MZhP/3f28Fey4JB+n8W3ScZ0gwTpP8FwMhxThtjLQlKJCOe42eXVCgQa5QoPE3HwhN4Gy4WpG9dkU=
X-Received: by 2002:a05:651c:201b:b0:246:34b5:155e with SMTP id
 s27-20020a05651c201b00b0024634b5155emr18803688ljo.273.1646216600403; Wed, 02
 Mar 2022 02:23:20 -0800 (PST)
MIME-Version: 1.0
References: <20220228223642.1136229-1-pgwipeout@gmail.com>
 <c12e74b7-0bef-ac7a-20c1-2a17ddd050dd@arm.com>
 <CAMdYzYq0A4FitRGe49fxvjbwLUCi_KGwCtfz7pmayt_dK=r32w@mail.gmail.com>
 <54b24f3d-3762-abbd-5ac4-dc5728f2fe4e@arm.com>
 <CAMdYzYp=Po08pap9w5s8PV0mKfFZSPSOhM1U1AUdrRkYV-FRZQ@mail.gmail.com>
 <CAMdYzYoF6eO3mBZD=PtOPL3atdA3kH4UzV++6wB0pirW-7h_9A@mail.gmail.com>
In-Reply-To: <CAMdYzYoF6eO3mBZD=PtOPL3atdA3kH4UzV++6wB0pirW-7h_9A@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 2 Mar 2022 11:22:44 +0100
Message-ID: <CAPDyKFqYWK9WnzHsM1vwnUBRM1YofjMd9+9-MPZvvs=1K=51bg@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
To: Peter Geis <pgwipeout@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_022322_268392_FBB4C740 
X-CRM114-Status: GOOD (  38.61  )
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

On Tue, 1 Mar 2022 at 15:49, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Tue, Mar 1, 2022 at 7:46 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Tue, Mar 1, 2022 at 7:38 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2022-03-01 11:49, Peter Geis wrote:
> > > > On Tue, Mar 1, 2022 at 6:23 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > >>
> > > >> On 2022-02-28 22:36, Peter Geis wrote:
> > > >>> The dw_mmc-rockchip driver drops a large amound of logspam constantly
> > > >>> when the cd-broken flag is enabled.
> > > >>> Set the warning to be debug ratelimited in this case.
> > > >>
> > > >> Isn't this just papering over some fundamental problem with the clock?
> > > >> If it's failing to set the expected rate for communicating with a card,
> > > >> then presumably that's an issue for correct operation in general? The
> > > >> fact that polling for a card makes a lot more of that communication
> > > >> happen seems unrelated :/
> > > >
> > > > Good Morning,
> > > >
> > > > This only happens when a card is not inserted, so communication cannot happen.
> > >
> > > Well, I suppose there's a philosophical question in there about whether
> > > shouting into the void counts as "communication", but AFAIR what the
> > > polling function does is power up the controller, send a command, and
> > > see if it gets a response.
> > >
> > > If the clock can't be set to the proper rate for low-speed discovery,
> > > some or all cards may not be detected properly. Conversely if it is
> > > already at a slow enough rate for discovery but can't be set higher once
> > > a proper communication mode has been established, data transfer
> > > performance will be terrible. Either way, it is not OK in general for
> > > clk_set_rate() to fail, hence the warning. You have a clock driver problem.
> >
> > Alright, I'll look into this.
> > It seems only extremely low clock speeds fail and I know rockchip
> > chips have a hard time with extremely low clock rates.
> > I'll trace out where the failure is happening.
>
> Okay, I hope you can provide me a direction to go from here, because
> it looks like it's doing exactly what it should do in this situation.
> mmc core is requesting a rate (200k/100k).
> clk core tries to find a parent to provide a clock that low and fails,
> because the lowest possible parent is 750k.
> clk_sdmmc(x) is listed as no-div, so it can't go any lower.
>
> It seems to me that this error is sane, because other results of
> einval you want to catch.
> But einval in this case is fine, because
> The thing that strikes me weird is currently clk_core thinks the
> lowest possible freq here is 0, when in actuality it should be 750k,
> am I correct here?
> The mmc controller has an internal divider, so if my line of thinking
> is correct here we should be more flexible here and request a rate
> that's acceptable rather than just failing if it doesn't work.
> But that's based on my limited understanding of how mmc core is
> requesting this and what it expects in return.

The important point from the eMMC/SD/SDIO spec point of view, is that
the initialization of the cards starts at a maximum of 400KHz for the
bus interface clock.

In many cases, that requires a combination of the provided source
clock for the mmc controller to be decreased with some kind of an
internal divider managed by the controller itself.

Moreover, the mmc host driver shall set mmc->f_min in its
corresponding struct mmc_host during ->probe(), to inform the core
about its lowest possible rate that can be set - and this must not be
higher than 400KHz.

Hope that clarifies how things should work.

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
