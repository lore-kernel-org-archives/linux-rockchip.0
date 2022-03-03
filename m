Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A139C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 09:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVVDhAcobtv7gtrSXz+3rI6PEyzD8CduDWtuL0RYl74=; b=W/gOVMxi6QtYwd
	bXfHQcC6SEitkdClBTTHD0vD2C/VjyQJFAnrRJBus/CpFNkHImf1yJp1iqTrjcf65jUOfbtEVIakz
	p9kEsQO1vvp07JZfrsRd+zIqIIHErxkehUnAD+MhVTT3R4BdbgAR2ftRKPzEVOq4jLsr505Zl1F2r
	Zz48YQb/X1ei2aXcX7Sb2lGO8wbGIIfkdV1OBd+u7klOROAhnzYmcScskIuJQFb+l25gJoIuimvP6
	CaOfbz8JD953BTFGRdpKbZtIpIDShb15vJVhuXy5J5F3T/cuKUBYjkQpook8Wz3xK1OTg/3AQKJ49
	LN7De37t/lFe25I3aT/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPi5s-005x5H-Pd; Thu, 03 Mar 2022 09:49:56 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPi5g-005x2r-AI; Thu, 03 Mar 2022 09:49:46 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id f38so9088128ybi.3;
 Thu, 03 Mar 2022 01:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fHLfYquwZiNVbsELh+EpgmoGDweD9121DgLApka/QvA=;
 b=CdVhSGZ57z8OqjTnZw+rvpuGupHXfRGgEfCpwr+lYtmnr3TATynK9+CMwj/OeC+QMm
 KhsO7i/LAfKFYFaEt1bdTwTZqllc5bneHrtv1Ju5H40ysXE3UgH8TwR6hL3ebyAkQd2d
 oVv+wqr+vNgFnATv75NEI17Wl74XEWKl0sD/wtEY/SEyUNXJNeBxKHY+PydYSgdPnDNP
 AZO6P7sRLQGI+ftGwY+wFTw16OGoR58bRArhsNw0i15V4pF9GotphROcPVC/GkWT4gnC
 ET7sZRwFjYE1+a9Bg9P0yXc1SRXWy218czvUqapXjd6MBBcxuHSfIWWQbG2foALeieC2
 d8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fHLfYquwZiNVbsELh+EpgmoGDweD9121DgLApka/QvA=;
 b=jES3eLHtkHcq1TAbP6lmIR9oHYOsWfHzNm4st7ZJ0itvKa+srqEC7Xo55kV207C7ru
 K/cDceZdVjE/ISFjE4AeMASd4wB5KvUsRvjxLitCYi/jO9S42ZNNRGCEtYS3h6k/v6RR
 JlOZtoFquY+MR37kA0cb8BK8iDay/YPqjF4Vv62kMVfYk9x7Q0Obtg0SVOKiFRthb61S
 vjEccg8k/DBlSnJ/NiTZMFpC2RcDg+K4jrjh9UTwJaLxPh3pPIWD/vfLw1NFbPfd+lL3
 uTK5HumwD4ePrcsP5ffy5JwpVzqXtPPg/xfrcz0XhcywOKXmt83NU6DzKUNzRAOCBbUf
 rZ3Q==
X-Gm-Message-State: AOAM532pgtxOELLumWR3ifQY+F3pj+eomXh12PGvEepUbIA9QAvM/LPd
 M8GsRrUNNuC9g+kHycK8gIFaGa/WpNdfeWNLwEk=
X-Google-Smtp-Source: ABdhPJza2D81tFDK8SAUMbvNiCknXBEdiKulxW8TjzuF3mLcKyLOahi/NjYHGmzw12LY7sBIdX4o6XObqVU0Oue9kNc=
X-Received: by 2002:a25:5145:0:b0:61d:ad99:6e5a with SMTP id
 f66-20020a255145000000b0061dad996e5amr32495636ybb.228.1646300982969; Thu, 03
 Mar 2022 01:49:42 -0800 (PST)
MIME-Version: 1.0
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
 <CAPDyKFrk+HCbSZtB7uv6u9tjTgzFDjpB9oP9FYJUqNxcCzQ9iw@mail.gmail.com>
In-Reply-To: <CAPDyKFrk+HCbSZtB7uv6u9tjTgzFDjpB9oP9FYJUqNxcCzQ9iw@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 3 Mar 2022 04:49:30 -0500
Message-ID: <CAMdYzYrndAwWJELRRL4kP-BCdWuF6bLVwS2PUMVx_UcJZE=nsQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220303_014944_400005_220F04F4 
X-CRM114-Status: GOOD (  34.55  )
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

On Thu, Mar 3, 2022 at 2:53 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 3 Mar 2022 at 02:52, Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
> > supports. This leads to a situation during card initialization where the
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
> >  drivers/mmc/host/dw_mmc-rockchip.c | 31 ++++++++++++++++++++++++++----
> >  1 file changed, 27 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> > index 95d0ec0f5f3a..c198590cd74a 100644
> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > @@ -15,7 +15,9 @@
> >  #include "dw_mmc.h"
> >  #include "dw_mmc-pltfm.h"
> >
> > -#define RK3288_CLKGEN_DIV       2
> > +#define RK3288_CLKGEN_DIV      2
> > +#define RK3288_MIN_INIT_FREQ   375000
> > +#define MMC_MAX_INIT_FREQ      400000
> >
> >  struct dw_mci_rockchip_priv_data {
> >         struct clk              *drv_clk;
> > @@ -27,6 +29,7 @@ struct dw_mci_rockchip_priv_data {
> >  static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >  {
> >         struct dw_mci_rockchip_priv_data *priv = host->priv;
> > +       struct mmc_host *mmc = mmc_from_priv(host);
> >         int ret;
> >         unsigned int cclkin;
> >         u32 bus_hz;
> > @@ -34,6 +37,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >         if (ios->clock == 0)
> >                 return;
> >
> > +       /* the clock will fail if below the f_min rate */
> > +       if (ios->clock < mmc->f_min)
> > +               ios->clock = mmc->f_min;
> > +
>
> You shouldn't need this. The mmc core should manage this already.

I thought so too, but while setting f_min did reduce the number of
errors, it didn't stop them completely.
Each tick I was getting three failures, it turns out mmc core tries
anyways with 300000, 200000, and 100000.
Clamping it here was necessary to stop these.

>
> >         /*
> >          * cclkin: source clock of mmc controller
> >          * bus_hz: card interface clock generated by CLKGEN
> > @@ -51,7 +58,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >
> >         ret = clk_set_rate(host->ciu_clk, cclkin);
> >         if (ret)
> > -               dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> > +               dev_warn(host->dev, "failed to set rate %uHz err: %d\n", cclkin, ret);
> >
> >         bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
> >         if (bus_hz != host->bus_hz) {
> > @@ -290,13 +297,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
> >
> >  static int dw_mci_rockchip_init(struct dw_mci *host)
> >  {
> > +       struct mmc_host *mmc = mmc_from_priv(host);
> > +       int ret;
> > +
> >         /* It is slot 8 on Rockchip SoCs */
> >         host->sdio_id0 = 8;
> >
> > -       if (of_device_is_compatible(host->dev->of_node,
> > -                                   "rockchip,rk3288-dw-mshc"))
> > +       if (of_device_is_compatible(host->dev->of_node, "rockchip,rk3288-dw-mshc")) {
> >                 host->bus_hz /= RK3288_CLKGEN_DIV;
> >
> > +               /* clock driver will fail if the clock is less than the lowest source clock
> > +                * divided by the internal clock divider. Test for the lowest available
> > +                * clock and set the f_min freq to clock / clock divider. If we fail, set
> > +                * it to the downstream hardcoded value.
> > +                */
> > +               ret = clk_round_rate(host->ciu_clk, MMC_MAX_INIT_FREQ * RK3288_CLKGEN_DIV);
> > +               if (ret < 0) {
> > +                       dev_warn(host->dev, "mmc safe rate failed: %d\n", ret);
> > +                       mmc->f_min = RK3288_MIN_INIT_FREQ;
> > +               } else {
> > +                       mmc->f_min = ret / RK3288_CLKGEN_DIV;
> > +               }
> > +       }
> > +
> >         return 0;
> >  }
> >
>
> Kind regards
> Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
