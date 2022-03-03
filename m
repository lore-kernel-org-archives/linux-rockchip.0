Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10DA4C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 21:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsHqU30Gd9ws5omzqSWpHyFwI0Y+ljNLpJeTZKfHFec=; b=zY2dcScvMlvR79
	2bxaXiF+mGFrXxeObsG3v4iwEhGBn+uH3zs/ZoUZv8Q5kJ1diuCJTJZTCbhmVQMNN1JY/hyKYRpau
	SShykP204NXyXrpt/7N4tKPEBgbSs4KqhKVwThLVa9v/N1jnsGdPBEB/JSFXYIiPTa3AfxvVp8Cql
	dm1g9z/xdch8Z8XMTQP/L4V2ihpPekBvycahQrqfCUXSvr9/Amnf3ktFejGYoBMUN4uZLkxtY5jAn
	vwUM5BL83AoI4LAj+Z51wKnvpwJTmBGiYV0i39tjb2hnsGPYOfG4FjsTeSJlk9w42Pj0AzzeD1mUV
	3HQ0zsNmnYUFlY1HLYmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPt0O-007or5-Qt; Thu, 03 Mar 2022 21:29:00 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPt0C-007oms-5y; Thu, 03 Mar 2022 21:28:49 +0000
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-2dbd8777564so71223167b3.0; 
 Thu, 03 Mar 2022 13:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5kzCO6ZuG1IB0yxdpaRVHfSrOW7x6a/kjGmERey6dz8=;
 b=ixomibzc2d7CYBNzMn49vkEgHURtgDpn4TKa2tFJaFJ0gSDjbP8KwdFdmFKVHO7WB6
 8aM0+FRjAggQZVC7iR8iVLkSGESftaCA60+Fgkjclys/rXL+LL3mkf3cYZ9Rhnc9t8zN
 sp2953w+QTHjPV3VriPb2r5dhVQYnE+39SJ7d9fgI27WijVdZX6yYRmyC7auwU8aLvtU
 lolPBO7MeRxV+OxnrrIFL1BJNCq3H9pKJB9ijSaEye9XeWXTuSJhEHXTcPjY7+DN+LlW
 jdriBM2dgmjJAV3c9/uzaMBEqbOmuDt8eAJWxcUrbh+dsDf9JllFokAKZUSTLuuzX/Jp
 SLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5kzCO6ZuG1IB0yxdpaRVHfSrOW7x6a/kjGmERey6dz8=;
 b=pzpayBgaxzWzlzQHspKX3DjO2nyFNIRgPVQBL4LlBx3nVB4KXHG8wAfSdpWJtcE6Cd
 bY2lA1YtHGMu8na/sqL2Jgk1JXw1dWydTTm+sYzR4Zw7A/SRNITUePzaqZaZEjF87bFu
 kMdMID/wIa3ff38LfLrh+WJIDZg5U9IfqHQ4OEjtnvtep1Ig2l8laMY7jEOhv/pbLkvV
 QXlzkBQMNYLdSDsz/PFbO6cb8y1mT6F35bUmDAoUVCrUGJqJ4astl2ICQnsYoC/wHMsM
 cbD49cAfDN+cxox8fn5QPWdHITCWwucbHvEW1j04dgO2eyFnRlJf3RWMTAJN8K5LBRdG
 sIOQ==
X-Gm-Message-State: AOAM530xO9yRK/Eco8fNIhHvR323ug/sgZVHsTR2Og703OHUMEQHwNus
 NYghSZ7euJVUghhIgQgR1NM3BhYRQ9breQN5EsE=
X-Google-Smtp-Source: ABdhPJxKsaSouh8e/GcwT+Id1vzHp/eI19ubtJnWHGGauGO2ZZGOAPrzzwl8bH0fK2cMFxENk9RcUgMQFb8DVPbDAfo=
X-Received: by 2002:a05:690c:89:b0:2d7:fb7d:db7 with SMTP id
 be9-20020a05690c008900b002d7fb7d0db7mr40208107ywb.219.1646342926666; Thu, 03
 Mar 2022 13:28:46 -0800 (PST)
MIME-Version: 1.0
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
 <CAPDyKFrk+HCbSZtB7uv6u9tjTgzFDjpB9oP9FYJUqNxcCzQ9iw@mail.gmail.com>
 <CAMdYzYrndAwWJELRRL4kP-BCdWuF6bLVwS2PUMVx_UcJZE=nsQ@mail.gmail.com>
 <CAPDyKFp8tZ-Ty0Wo2jkTjr6Jun83QczQfQRQ1zvFBBCOCWjtng@mail.gmail.com>
In-Reply-To: <CAPDyKFp8tZ-Ty0Wo2jkTjr6Jun83QczQfQRQ1zvFBBCOCWjtng@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 3 Mar 2022 16:28:35 -0500
Message-ID: <CAMdYzYof0GrYV+R3R7q+sjqOe6f5eT7yhy8AYKAd0udaybbHVw@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Robin Murphy <robin.murphy@arm.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>, Addy Ke <addy.ke@rock-chips.com>, 
 Doug Anderson <dianders@chromium.org>, linux-mmc@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_132848_252076_363C99A1 
X-CRM114-Status: GOOD (  34.92  )
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

On Thu, Mar 3, 2022 at 5:21 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 3 Mar 2022 at 10:49, Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Thu, Mar 3, 2022 at 2:53 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > On Thu, 3 Mar 2022 at 02:52, Peter Geis <pgwipeout@gmail.com> wrote:
> > > >
> > > > The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
> > > > supports. This leads to a situation during card initialization where the
> > > > ciu clock is set lower than the clock driver can support. The
> > > > dw-mmc-rockchip driver spews errors when this happens.
> > > > For normal operation this only happens a few times during boot, but when
> > > > cd-broken is enabled (in cases such as the SoQuartz module) this fires
> > > > multiple times each poll cycle.
> > > >
> > > > Fix this by testing the minimum frequency the clock driver can support
> > > > that is within the mmc specification, then divide that by the internal
> > > > clock divider. Set the f_min frequency to this value, or if it fails,
> > > > set f_min to the downstream driver's default.
> > > >
> > > > Fixes: f629ba2c04c9 ("mmc: dw_mmc: add support for RK3288")
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > ---
> > > >  drivers/mmc/host/dw_mmc-rockchip.c | 31 ++++++++++++++++++++++++++----
> > > >  1 file changed, 27 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> > > > index 95d0ec0f5f3a..c198590cd74a 100644
> > > > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> > > > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > > > @@ -15,7 +15,9 @@
> > > >  #include "dw_mmc.h"
> > > >  #include "dw_mmc-pltfm.h"
> > > >
> > > > -#define RK3288_CLKGEN_DIV       2
> > > > +#define RK3288_CLKGEN_DIV      2
> > > > +#define RK3288_MIN_INIT_FREQ   375000
> > > > +#define MMC_MAX_INIT_FREQ      400000
> > > >
> > > >  struct dw_mci_rockchip_priv_data {
> > > >         struct clk              *drv_clk;
> > > > @@ -27,6 +29,7 @@ struct dw_mci_rockchip_priv_data {
> > > >  static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> > > >  {
> > > >         struct dw_mci_rockchip_priv_data *priv = host->priv;
> > > > +       struct mmc_host *mmc = mmc_from_priv(host);
> > > >         int ret;
> > > >         unsigned int cclkin;
> > > >         u32 bus_hz;
> > > > @@ -34,6 +37,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> > > >         if (ios->clock == 0)
> > > >                 return;
> > > >
> > > > +       /* the clock will fail if below the f_min rate */
> > > > +       if (ios->clock < mmc->f_min)
> > > > +               ios->clock = mmc->f_min;
> > > > +
> > >
> > > You shouldn't need this. The mmc core should manage this already.
> >
> > I thought so too, but while setting f_min did reduce the number of
> > errors, it didn't stop them completely.
> > Each tick I was getting three failures, it turns out mmc core tries
> > anyways with 300000, 200000, and 100000.
> > Clamping it here was necessary to stop these.
>
> Ohh, that was certainly a surprise to me. Unless the dw_mmc driver
> invokes this path on it's own in some odd way, that means the mmc core
> has a bug that we need to fix.
>
> Would you mind taking a stack trace or debug this so we understand in
> what case the mmc core doesn't respect f_min? It really should.

I thought it was odd too, will check into where it's happening.
Thanks!

>
> [...]
>
> Kind regards
> Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
