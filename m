Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6798C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 12:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gq3PtQEKpyXJjIRe3h4pSHn/XIIS9E6O25fKaHKTbm8=; b=UAbWovtfir2w/c
	vfBaF8a/wUHXPXxDMr7wwyef80tjlQte5Pm7tuh4pS0opkYcLQt5WUySYH41/RzIR5aqfxvUpwXxJ
	chAHZryGMagzgPr3RicxKP8viUa931aCH12NXANFAQEmcs15w7XgZuqSpmomKRDIZOXADKd+N9MzF
	XgPQIictQFZSr1TBCP7NoUEPH0rD83XexnFJPm1EHnwR0m5as60sL8UvbIs+bophySWKySqe0qTFY
	ZIATGYR5DJwaWo3zFBP4sXOyJWaMdv+BeuWBIXYkhTvb83EHhAHj6A4y5sbCtMv4hc9zuxHbIT4pb
	hXhQ7reG65NYiFayZgOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRCQ4-00HYz1-5y; Mon, 07 Mar 2022 12:24:56 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRCJP-00HWPE-Q7
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 12:18:05 +0000
Received: by mail-lj1-x230.google.com with SMTP id z26so11925353lji.8
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 04:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MNR3f5FVXa248OQajwRB1Kx5/IQv2/TXCkkX63d6suE=;
 b=bCferKM/V+lImGm/PdeHl007TQf3wY2vb3UOxJQ6KiLRc90utNuSwF1sueXYgMJkFv
 0GZeNpLSs4Giw1a9eq2Wpg0M5F1sC1bt1Z7DMM2+JqFukRJ3AJqxYIEK9oJXQe8yUF/U
 4XCvs0VHG9LQI3OdrVsLdd/OImfMMEr5LSddm0Za5UIEeVRHtwlsE6SnlkYyUDYNb4TY
 p4bVdO52erLTtnL4uwv4d/rD9PT4BgadV3vkHEw84l0FlHCs0/kkty3AZF54HKi8yr7E
 R3ZkK/O3jpYwBe2Pd+JBfc7qOOqkhgKmwp+uv7XHSRlTubHlPC/2W758RdcuUyzUeaqC
 1NdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MNR3f5FVXa248OQajwRB1Kx5/IQv2/TXCkkX63d6suE=;
 b=ukoeUMVI38Dm5Oh+t9CfB6xHXsXCwWT7FlyBpU+IqBxbKyXlC0SX3xp8uKyMUlGzCa
 83eBxKeZegVg8VmCIv2M6rwwDBX0UOjIwAYb/sjv0wO+X2COWxJl/Yl0ZLC46XLqRTui
 zP79UP6/hUR+HctB8OJXvcsMWD+81JGEDqd+sxnYmzoJWsVzd/j5oVY3EoEGZrDVjbUw
 HzKNF6gCxvl1JqEi9tpMxP7x4efI8GM1kqoPgpFpUw6AyXorWM0fftfLh3381TCTg6XC
 Fvbcg4DPHY37Hp+BpRkiBGmCZiAj2rzAcptJ33VmqsGiJpqNyiUJnwB2ioYHFa9BMfxq
 7Gcw==
X-Gm-Message-State: AOAM533chbvNXBKKYcCCEzyJH5lHUL2WTKinebHwRzWd/2127k8Ja8Nc
 zqtFc3Am830kWSXHJd1hQnMJxDOsVbaJEhB9GxIRwQ==
X-Google-Smtp-Source: ABdhPJyavN8gFI2kidlB0YcSPhnurtTVDWwRGAnerpwrCjt+YQ+W6WOKQNYHwWGOK4gwCb3zM54XoHPkkwYEAZvTgoM=
X-Received: by 2002:a05:651c:201b:b0:246:34b5:155e with SMTP id
 s27-20020a05651c201b00b0024634b5155emr7057374ljo.273.1646655481163; Mon, 07
 Mar 2022 04:18:01 -0800 (PST)
MIME-Version: 1.0
References: <20220305215835.2210388-1-pgwipeout@gmail.com>
 <20220305215835.2210388-3-pgwipeout@gmail.com>
In-Reply-To: <20220305215835.2210388-3-pgwipeout@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Mar 2022 13:17:25 +0100
Message-ID: <CAPDyKFoNjx4xvR=okfL4BSSNwcmvWcaQOyDNvqjzeq07qdbd5Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mmc: host: dw-mmc-rockchip: fix handling invalid
 clock rates
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>, Heiko Stuebner <heiko@sntech.de>,
 robin.murphy@arm.com, 
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_041803_894920_6F75EF36 
X-CRM114-Status: GOOD (  28.77  )
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

On Sat, 5 Mar 2022 at 22:58, Peter Geis <pgwipeout@gmail.com> wrote:
>
> The Rockchip rk356x ciu clock cannot be set as low as the dw-mmc
> hardware supports. This leads to a situation during card initialization
> where the clock is set lower than the clock driver can support. The
> dw-mmc-rockchip driver spews errors when this happens.
> For normal operation this only happens a few times during boot, but when
> cd-broken is enabled (in cases such as the SoQuartz module) this fires
> multiple times each poll cycle.
>
> Fix this by testing the lowest possible frequency that the clock driver
> can support which is within the mmc specification. Divide that rate by
> the internal divider and set f_min to this.
>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 27 +++++++++++++++++++++++----
>  1 file changed, 23 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 95d0ec0f5f3a..f825487aa739 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -15,7 +15,9 @@
>  #include "dw_mmc.h"
>  #include "dw_mmc-pltfm.h"
>
> -#define RK3288_CLKGEN_DIV       2
> +#define RK3288_CLKGEN_DIV      2
> +
> +static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 };
>
>  struct dw_mci_rockchip_priv_data {
>         struct clk              *drv_clk;
> @@ -51,7 +53,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>
>         ret = clk_set_rate(host->ciu_clk, cclkin);
>         if (ret)
> -               dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> +               dev_warn(host->dev, "failed to set rate %uHz err: %d\n", cclkin, ret);
>
>         bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
>         if (bus_hz != host->bus_hz) {
> @@ -290,13 +292,30 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
>
>  static int dw_mci_rockchip_init(struct dw_mci *host)
>  {
> +       int ret, i;
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
> +                * clock and set the minimum freq to clock / clock divider.
> +                */
> +
> +               for (i = 0; i < ARRAY_SIZE(freqs); i++) {
> +                       ret = clk_round_rate(host->ciu_clk, freqs[i] * RK3288_CLKGEN_DIV);
> +                       if (ret > 0) {
> +                               host->minimum_speed = ret / RK3288_CLKGEN_DIV;
> +                               break;
> +                       }
> +               }
> +               if (ret < 0)
> +                       dev_warn(host->dev, "no valid minimum freq: %d\n", ret);
> +       }
> +
>         return 0;
>  }
>
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
