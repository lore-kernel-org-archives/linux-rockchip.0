Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA0EC6FA99
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 15:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsA3o0WO3lz5SrfaxX5Kd2w86VCJQkxjJKCBGlgwJnU=; b=110Ie6ZWigvpB/
	0XZu5zDD+cxIt5aJ2aXY50q2vsGBCVqdql/HNsLwhfBwCk/oQ1wnQUE+d8A09RwfmyQONrUkva6Tn
	X7sm7ACeJjGh1bO8Q1u1v3leR3hkzZwXudkBFNihpWQXVjuinn7CSMmhUqqUEvhLtJCDZy/Hf+dUz
	m/wnW1mn+T6bRtgsvGO6M0kkt26gW0CiE5C2zvoViuKJ0KeZdRejOBXV959VDuFdOOQ/C2HV8qPcs
	tMB2mtSGE3RVo6K1BAwdiSyTrAtbxa7dLiV9v7I1cpvgnlmwo3Ie6OpxnZd32fYqiGzSNzrnQcSpz
	WPxUxhcA370hGIurAh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paeT4-00Ex0o-7W; Fri, 10 Mar 2023 15:15:38 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paeSs-00Ewvu-Sl
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 15:15:28 +0000
Received: by mail-pg1-x52c.google.com with SMTP id p6so3260337pga.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 07:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678461326;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ym7VeGrcmmycPzwS4GsVwPl3pR3x6Yw0IFrKSAgC43s=;
        b=aqwcM+8BBXVb0ObGiQTEgd/jjktC8yTATcVdjhuDILuCSzR3KIw8lXhNtaTFGE8UOV
         tD1x/n2TYsRcvqMFeVLawX3NG6vXP93wYg9ZuLLVUULSqEktTm8efjaaKpw5zyPB4s79
         Tb7drBX5X+80CO8XoWuPZWq6jhJzLYDtgn5fdCufdgIWYVo/wlL3XDyIPSFm27sJZUfn
         /yDfoCmgRpwK1JfOT+XFS8/q8BKaG02f+H2SMVyhORuMpI6GtOk07QOwGQTD4o/ORd0H
         f1s8wpmAtXY4Oem3ReNRzdA3x4OpRiSg37mjC2PgGHdWbROhNwoMYl869CWWMMDgya+K
         upIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678461326;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ym7VeGrcmmycPzwS4GsVwPl3pR3x6Yw0IFrKSAgC43s=;
        b=ovSrvRlcup9lVTdvbgBNrlOxl+wqLOxMp8xNXY2cSRDwMVlzrmWboH67o1bbuIDi02
         HlUQC4lzgGMA2B+v4vb1ldsoH8rSifdwmUoAejtopT0huv1KbwvdPcw8iBbiygEN6f26
         qkky550OpnHTXJnKlxPzr+bpZkZnbtT4mrhA+1PLQlQ25DH5/cWGR0vLbxmpFQ9Bop5g
         R/deugmrG/1vU96DKkXnJ0VatyJWQuDi1/x91fy59C5wGiHv+CYV3U0kobDlGMVyAP7v
         DkE85WnREF7Kb2K2GVIFLne51bf/YGvk474M9F/W/qo92Qr+ZC0p5DSjoN2U5LjaiOC2
         2eOg==
X-Gm-Message-State: AO0yUKUQGQdhJWvCtpYwZxn8v8ii1CaQ4K1EhYdrr5cyZQ+Dp6I/ii0m
	q6g3xP0Ky8uYwOWWj494Y09UuP+GpEYWWtx7DyUIdQ==
X-Google-Smtp-Source: AK7set+oIBKQVBleHMih2zz27+dDoWDUn/yZ0r+j2ash04CMNiUj2o6kuDKe2iXpo7GPruxqk5YnLANLsO62p6+M400=
X-Received: by 2002:a05:6a00:2254:b0:5de:ece4:2674 with SMTP id
 i20-20020a056a00225400b005deece42674mr11019194pfu.3.1678461325765; Fri, 10
 Mar 2023 07:15:25 -0800 (PST)
MIME-Version: 1.0
References: <20230310010349.509132-1-anarsoul@gmail.com>
In-Reply-To: <20230310010349.509132-1-anarsoul@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 10 Mar 2023 16:14:49 +0100
Message-ID: <CAPDyKFrMG7bWune67gLAUm+OU39HXRZbT48hBe8gBTWkWDkimQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: properly determine max clock on Rockchip
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_071526_960648_4C6C6108 
X-CRM114-Status: GOOD (  19.70  )
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

On Fri, 10 Mar 2023 at 02:04, Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> Currently .get_max_clock returns the current clock rate for cclk_emmc
> on rk35xx, thus max clock gets set to whatever bootloader set it to.
>
> In case of u-boot, it is intentionally reset to 50 MHz if it boots
> from eMMC, see mmc_deinit() in u-boot sources. As a result, HS200 and
> HS400 modes are never selected by Linux, because dwcmshc_rk35xx_postinit
> clears appropriate caps if host->mmc->f_max is < 52MHz
>
> cclk_emmc is not a fixed clock on rk35xx, so using
> sdhci_pltfm_clk_get_max_clock is not appropriate here.
>
> Implement rk35xx_get_max_clock that returns actual max clock for cclk_emmc.
>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index d1490469184b..e68cd87998c8 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -126,6 +126,13 @@ static unsigned int dwcmshc_get_max_clock(struct sdhci_host *host)
>                 return pltfm_host->clock;
>  }
>
> +static unsigned int rk35xx_get_max_clock(struct sdhci_host *host)
> +{
> +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +
> +       return clk_round_rate(pltfm_host->clk, ULONG_MAX);
> +}
> +
>  static void dwcmshc_check_auto_cmd23(struct mmc_host *mmc,
>                                      struct mmc_request *mrq)
>  {
> @@ -343,7 +350,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk35xx_ops = {
>         .set_clock              = dwcmshc_rk3568_set_clock,
>         .set_bus_width          = sdhci_set_bus_width,
>         .set_uhs_signaling      = dwcmshc_set_uhs_signaling,
> -       .get_max_clock          = sdhci_pltfm_clk_get_max_clock,
> +       .get_max_clock          = rk35xx_get_max_clock,
>         .reset                  = rk35xx_sdhci_reset,
>         .adma_write_desc        = dwcmshc_adma_write_desc,
>  };
> --
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
