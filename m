Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4172FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 21:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDnQOv70e67VXldKm+0DGJ3uz2VrQXjIMOuRv8BvQIE=; b=pp1UB32y2lzfT+
	EQzWYSYHAwlp2duXxgvJZfgCZDY1e4zvI/9kxqL/jKGrQ3zhmYMaCcS3Ay+YPjBjSrmQyPFShnI1F
	k9r0flsHHnFT/bPwntqVIC5mqOTFdq8TmRnTznwOWxIrwzqcn6MxM0yHDt9R8MUejo7XgK11sMCyN
	mafYUTH+oge/7Tx3eBmjhDKx9d27Aa+RALRW7oJAjYv3fxey22/omfw4g/YDpvwQfA5se+zAsX0an
	nslvsT6HyMWGShAT8chrbZOi3+UyFTicgc/r61pJ0O8yjK5m1mI/q91D420EezspBRuUwgZfbu159
	EUNgTiqQfmDNCyIzNS5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPt1x-007pGd-7w; Thu, 03 Mar 2022 21:30:37 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPt1k-007pDE-ON; Thu, 03 Mar 2022 21:30:26 +0000
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-2dbc48104beso70988247b3.5; 
 Thu, 03 Mar 2022 13:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gSf4XqVZpmT23Xr2ZX9FwNJnPLIGiC4vINDwuY1D360=;
 b=actHS3mVoDg2rVOMxvcJgIehT4d7j3IhXrEOgR0Pl2sY1NC17ai8XMF+gGROSKqqVG
 y7Sd+Jefq9x0fRy2Qnmq8l2m2p3kVVndBGHZlsX3mnBFQnJL3xSXCG4X23+esMlNPL6/
 9vsAnzuP5gePXHpPejDcTs8yBo3VitwvagZxLJd40WXIdd8NMMlxuZExOUAVk1nbnwCq
 anANG9aUah+EcyVSl1rIRKo3ajo+B4YXgoMqbG4LqjlVIMJtvLbhLZ2T57R8egIaF3z2
 OqO5UUumBzM988xwcs91SEgo3xGFSguQ0WLvoMQSipOI99h+mgn/a12CP0NoPTr8/JdV
 Eo1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gSf4XqVZpmT23Xr2ZX9FwNJnPLIGiC4vINDwuY1D360=;
 b=5tiGX3et0NG3CMRJqJ88xm83ZBj+K1xWOl+W2faHUoGiYop6r0eNWypx21D7dy6sAL
 hT6y43P2ZKD6RYkX+NsKjk3TE7vnopqqh1dDmWYswXtNuhWxFkQ0f1iLR+diDKLPUc0V
 JeeovrOecNtBYSe/qyYxn+s2T6Yo9/HipgVlDSb5zN1Uo5+KvBIe5hUpIp6qw4qoVzQV
 HoDpPE/btXxJfQxipLAkp4lH0Bi3WVK9iJ+vkO35p6MldkwCGoZE6qwB3rMzJzxEycX9
 Y2bFVvkuJuW5DVaVF5Pk8ntNhkJB38Igbtj13O9KC8MbehMnKmx9/Z3B/SbLBZ0GqKf9
 FN3A==
X-Gm-Message-State: AOAM533OnXZbW0b1BCISs70fp7WpuSf3o7s2vjZKKwYJ43EV1vdz6d0s
 rTTMQDBm5BJMlkllA2l45dnhnV80/KajVE0Jkzg=
X-Google-Smtp-Source: ABdhPJxbeN2ZVZQxcoylq4D0YplTVnFvbUdRvpY3EGQd96NETA96fQjAnlpJbzAFt+Fap0SxoBv1SOqGfHz9WzO9914=
X-Received: by 2002:a0d:e082:0:b0:2dc:505b:dd20 with SMTP id
 j124-20020a0de082000000b002dc505bdd20mr2981033ywe.502.1646343023524; Thu, 03
 Mar 2022 13:30:23 -0800 (PST)
MIME-Version: 1.0
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
 <07977a52-a492-4568-7259-7f213af0b0b0@arm.com>
In-Reply-To: <07977a52-a492-4568-7259-7f213af0b0b0@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 3 Mar 2022 16:30:12 -0500
Message-ID: <CAMdYzYp3p2pX2raHHWpmmgVnZU4zEohYWeCJ+0C_YeOg12V=NA@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
To: Robin Murphy <robin.murphy@arm.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Addy Ke <addy.ke@rock-chips.com>, 
 Doug Anderson <dianders@chromium.org>, linux-mmc@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_133024_821820_FD1F9F9E 
X-CRM114-Status: GOOD (  37.84  )
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

On Thu, Mar 3, 2022 at 6:53 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-03-03 01:51, Peter Geis wrote:
> > The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
> > supports.
>
> Isn't that specific to RK3568, per the downstream fix? Certainly my
> RK3399 has no problem if I simulate polling by plugging in an empty adapter:
>
> [499969.392530] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req
> 400000Hz, actual 400000HZ div = 0)
> [499969.467709] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req
> 300000Hz, actual 300000HZ div = 0)
> [499969.545975] mmc_host mmc1: Bus speed (slot 0) = 200000Hz (slot req
> 200000Hz, actual 200000HZ div = 0)
> [499969.629824] mmc_host mmc1: Bus speed (slot 0) = 100000Hz (slot req
> 100000Hz, actual 100000HZ div = 0)
>
> Even though every card within arm's reach of my desk does seem happy to
> identify at 400KHz, there are apparently some that only work towards the
> lower end of the range, so it's less than ideal to impose this
> limitation where it isn't necessary.

Thanks for the insight!
In the V2 I'll change this to use the lowest supported frequency.
I'm also going to explore what's different in the rk3399 clock tree
from the rk356x clock tree.

>
> Robin.
>
> > This leads to a situation during card initialization where the
> > ciu clock is set lower than the clock driver can support. The
> > dw-mmc-rockchip driver spews errors when this happens.
> > For normal operation this only happens a few times during boot, but when
> > cd-broken is enabled (in cases such as the SoQuartz module) this fires
> > multiple times each poll cycle.
> >
> > Fix this by testing the minimum frequency the clock driver can support
> > that is within the mmc specification, then divide that by the internal
> > clock divider. Set the f_min frequency to this value, or if it fails,
> > set f_min to the downstream driver's default.
> >
> > Fixes: f629ba2c04c9 ("mmc: dw_mmc: add support for RK3288")
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >   drivers/mmc/host/dw_mmc-rockchip.c | 31 ++++++++++++++++++++++++++----
> >   1 file changed, 27 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> > index 95d0ec0f5f3a..c198590cd74a 100644
> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > @@ -15,7 +15,9 @@
> >   #include "dw_mmc.h"
> >   #include "dw_mmc-pltfm.h"
> >
> > -#define RK3288_CLKGEN_DIV       2
> > +#define RK3288_CLKGEN_DIV    2
> > +#define RK3288_MIN_INIT_FREQ 375000
> > +#define MMC_MAX_INIT_FREQ    400000
> >
> >   struct dw_mci_rockchip_priv_data {
> >       struct clk              *drv_clk;
> > @@ -27,6 +29,7 @@ struct dw_mci_rockchip_priv_data {
> >   static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >   {
> >       struct dw_mci_rockchip_priv_data *priv = host->priv;
> > +     struct mmc_host *mmc = mmc_from_priv(host);
> >       int ret;
> >       unsigned int cclkin;
> >       u32 bus_hz;
> > @@ -34,6 +37,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >       if (ios->clock == 0)
> >               return;
> >
> > +     /* the clock will fail if below the f_min rate */
> > +     if (ios->clock < mmc->f_min)
> > +             ios->clock = mmc->f_min;
> > +
> >       /*
> >        * cclkin: source clock of mmc controller
> >        * bus_hz: card interface clock generated by CLKGEN
> > @@ -51,7 +58,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >
> >       ret = clk_set_rate(host->ciu_clk, cclkin);
> >       if (ret)
> > -             dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> > +             dev_warn(host->dev, "failed to set rate %uHz err: %d\n", cclkin, ret);
> >
> >       bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
> >       if (bus_hz != host->bus_hz) {
> > @@ -290,13 +297,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
> >
> >   static int dw_mci_rockchip_init(struct dw_mci *host)
> >   {
> > +     struct mmc_host *mmc = mmc_from_priv(host);
> > +     int ret;
> > +
> >       /* It is slot 8 on Rockchip SoCs */
> >       host->sdio_id0 = 8;
> >
> > -     if (of_device_is_compatible(host->dev->of_node,
> > -                                 "rockchip,rk3288-dw-mshc"))
> > +     if (of_device_is_compatible(host->dev->of_node, "rockchip,rk3288-dw-mshc")) {
> >               host->bus_hz /= RK3288_CLKGEN_DIV;
> >
> > +             /* clock driver will fail if the clock is less than the lowest source clock
> > +              * divided by the internal clock divider. Test for the lowest available
> > +              * clock and set the f_min freq to clock / clock divider. If we fail, set
> > +              * it to the downstream hardcoded value.
> > +              */
> > +             ret = clk_round_rate(host->ciu_clk, MMC_MAX_INIT_FREQ * RK3288_CLKGEN_DIV);
> > +             if (ret < 0) {
> > +                     dev_warn(host->dev, "mmc safe rate failed: %d\n", ret);
> > +                     mmc->f_min = RK3288_MIN_INIT_FREQ;
> > +             } else {
> > +                     mmc->f_min = ret / RK3288_CLKGEN_DIV;
> > +             }
> > +     }
> > +
> >       return 0;
> >   }
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
