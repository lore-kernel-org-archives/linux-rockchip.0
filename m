Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA5E3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 07:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqB64ak1XO3iw2Ngo9PoctI8BPejdLOx1N5DnPTH9+o=; b=j9b15zZlXOjrhC
	IwvMgP7V1TM2cwo7wr6WTpLlWKwXw/XCcZn15b9p09kGf56am2hEy+7+rPcYvL1XgUXk9KTP2HIt2
	CAWPW96pnuEJeopzKTBquaHO0mBlU2p4g4Q2WoNaNtPBx9dxDmCHLcdVyUTBaHmCaQ6MLrC62Es2o
	vdDc9prx8yC4ABkyhq9rt5yOVlN1+Cxm522xSMyW7gxDXKpm/ZUSFIJjIhyEu7OnTO4WcyMfmAPBJ
	crHVQL3bKAQ3hpG9cs+QUHwP2MXJps/dq+A8QVUIQMpsfq5NydeXMkoEm7FepZSO4D70ZkkMddcl4
	9+4tyGy07liQE8LyL8YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPgHZ-005dKe-57; Thu, 03 Mar 2022 07:53:53 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPgHV-005dJY-Ml
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 07:53:51 +0000
Received: by mail-lf1-x12a.google.com with SMTP id i11so6999764lfu.3
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 23:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SSFcHIZRKG8q+pVp4JuQk89OuVsOKCLaKsxq/8EH1wA=;
 b=Pmtg0yQ3A46d4sZ2+1rKpOInipMWjQlfPtDgvBGkH8k9R8Z9XwB6z2TngB8HG1I9QD
 H/gELtT5ro925eZP9YEbpLWo1D1zE/zaivFTVx+8zsTqCgM+v4CNAHEFIneNMNp9STxi
 aidW7SCgu6z66NkJbz/+BHW+N1xHTsYHQEN99JwB6I/ca042mJwrDLsYqFAesp4Sa2C6
 St/HCM37aweiaTbXs10qh436JCwa4dUhMmGqkyPv161jjWGj/VRPHKPCWsqNMR2DPei8
 72RzO0+eZYm9fFdmcG4f1t6EzzB5wLyFKFC6ZPfVwXL3aUueyFmdQBBidOo2PtLdcRhf
 Mt+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SSFcHIZRKG8q+pVp4JuQk89OuVsOKCLaKsxq/8EH1wA=;
 b=gIKbabCWQ4w2L+uyNIxaqH/0oJUHn1Lmb5oPkAsDKntcwNgfpn9AzW49y0qUJ6Q6Bw
 yVCx/FS8lsiSRqhmrYSyq0KWrM49luOgCbWf4mNLdSuI62yTlI7Ue/8vjXUbIEkWTE5U
 TRCJCgub0eWGXXd/ftqmYQkpmu0CIHPawV37Kjru7JvRFI42PrK8ZjucmtbdLzUSvpTR
 es9SGau/iUc/vX4IBY0DyQAoNU6fVnExzxWyPpOGv9XpDhAHQeFcBu2Ki6rzmKrsA0kh
 Gry4LdT6/oBDNbsYzDS18QartPVwTglRcCgryFax3FLzmExALdMkEpdyzzuzWVCgddGY
 jqkA==
X-Gm-Message-State: AOAM530z11fxX+xQdC3DPp5mtUBSv7TRPTNgkyWvfIoDksFhXPwq2bjk
 2/GqlnCOFg9wvGmGmlJbHEcjwvq83u7Nv6lBkQWADw==
X-Google-Smtp-Source: ABdhPJxkZj22etsDGZKCWOW+mI6FIW6VN8RNgI79VpmA0rC46M82JLVIIOiyfPgaXs+7NgTpw7zSzE1I9/il54zLqMo=
X-Received: by 2002:a19:2d11:0:b0:445:65c7:5f1e with SMTP id
 k17-20020a192d11000000b0044565c75f1emr20676352lfj.184.1646294026898; Wed, 02
 Mar 2022 23:53:46 -0800 (PST)
MIME-Version: 1.0
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
In-Reply-To: <20220303015151.1711860-1-pgwipeout@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Mar 2022 08:53:09 +0100
Message-ID: <CAPDyKFrk+HCbSZtB7uv6u9tjTgzFDjpB9oP9FYJUqNxcCzQ9iw@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
To: Peter Geis <pgwipeout@gmail.com>
Cc: robin.murphy@arm.com, Jaehoon Chung <jh80.chung@samsung.com>, 
 Heiko Stuebner <heiko@sntech.de>, Addy Ke <addy.ke@rock-chips.com>, 
 Doug Anderson <dianders@chromium.org>, linux-mmc@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_235349_801070_DAA2B658 
X-CRM114-Status: GOOD (  31.09  )
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

On Thu, 3 Mar 2022 at 02:52, Peter Geis <pgwipeout@gmail.com> wrote:
>
> The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
> supports. This leads to a situation during card initialization where the
> ciu clock is set lower than the clock driver can support. The
> dw-mmc-rockchip driver spews errors when this happens.
> For normal operation this only happens a few times during boot, but when
> cd-broken is enabled (in cases such as the SoQuartz module) this fires
> multiple times each poll cycle.
>
> Fix this by testing the minimum frequency the clock driver can support
> that is within the mmc specification, then divide that by the internal
> clock divider. Set the f_min frequency to this value, or if it fails,
> set f_min to the downstream driver's default.
>
> Fixes: f629ba2c04c9 ("mmc: dw_mmc: add support for RK3288")
>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 31 ++++++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 95d0ec0f5f3a..c198590cd74a 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -15,7 +15,9 @@
>  #include "dw_mmc.h"
>  #include "dw_mmc-pltfm.h"
>
> -#define RK3288_CLKGEN_DIV       2
> +#define RK3288_CLKGEN_DIV      2
> +#define RK3288_MIN_INIT_FREQ   375000
> +#define MMC_MAX_INIT_FREQ      400000
>
>  struct dw_mci_rockchip_priv_data {
>         struct clk              *drv_clk;
> @@ -27,6 +29,7 @@ struct dw_mci_rockchip_priv_data {
>  static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>  {
>         struct dw_mci_rockchip_priv_data *priv = host->priv;
> +       struct mmc_host *mmc = mmc_from_priv(host);
>         int ret;
>         unsigned int cclkin;
>         u32 bus_hz;
> @@ -34,6 +37,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>         if (ios->clock == 0)
>                 return;
>
> +       /* the clock will fail if below the f_min rate */
> +       if (ios->clock < mmc->f_min)
> +               ios->clock = mmc->f_min;
> +

You shouldn't need this. The mmc core should manage this already.

>         /*
>          * cclkin: source clock of mmc controller
>          * bus_hz: card interface clock generated by CLKGEN
> @@ -51,7 +58,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>
>         ret = clk_set_rate(host->ciu_clk, cclkin);
>         if (ret)
> -               dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> +               dev_warn(host->dev, "failed to set rate %uHz err: %d\n", cclkin, ret);
>
>         bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
>         if (bus_hz != host->bus_hz) {
> @@ -290,13 +297,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
>
>  static int dw_mci_rockchip_init(struct dw_mci *host)
>  {
> +       struct mmc_host *mmc = mmc_from_priv(host);
> +       int ret;
> +
>         /* It is slot 8 on Rockchip SoCs */
>         host->sdio_id0 = 8;
>
> -       if (of_device_is_compatible(host->dev->of_node,
> -                                   "rockchip,rk3288-dw-mshc"))
> +       if (of_device_is_compatible(host->dev->of_node, "rockchip,rk3288-dw-mshc")) {
>                 host->bus_hz /= RK3288_CLKGEN_DIV;
>
> +               /* clock driver will fail if the clock is less than the lowest source clock
> +                * divided by the internal clock divider. Test for the lowest available
> +                * clock and set the f_min freq to clock / clock divider. If we fail, set
> +                * it to the downstream hardcoded value.
> +                */
> +               ret = clk_round_rate(host->ciu_clk, MMC_MAX_INIT_FREQ * RK3288_CLKGEN_DIV);
> +               if (ret < 0) {
> +                       dev_warn(host->dev, "mmc safe rate failed: %d\n", ret);
> +                       mmc->f_min = RK3288_MIN_INIT_FREQ;
> +               } else {
> +                       mmc->f_min = ret / RK3288_CLKGEN_DIV;
> +               }
> +       }
> +
>         return 0;
>  }
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
