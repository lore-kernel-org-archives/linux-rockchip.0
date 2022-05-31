Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F47C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 May 2022 13:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=novlnh+Qf4BVG33S9hC8EHD/QH/pRDZYgHga4ZMfvUI=; b=wnNVgn9oZJHUko
	INRoasACBC8t0YwxRW5icUY48c9RD/X4KLIjhh6jAqa0VKp7EGKk+sRFkzrpIGoB0BCxqvKKqPTKs
	Stv3H3Hbj69x9RoC5/kzXOsQjK/UNskJ/urMN8QBjOwIQriVAtzUsvXbT0Bbj+V4Eo0dIWr0C2h+1
	MhRccrR+he2VWpRoDyMqyrd/26F+sgYSyeJOzPkb1hr+SGNQxt9kxfTKT+nu+EvpoLxJ7vSYbdzlf
	Ml9KZoSJJFNTNsIdYCtrzPzdLeZGs/H85sIRaha2weJF3VbNdXrAXshbPQU2uMNw/2VilV3ND1SSm
	l4NFA60fFUzEPXmE3vYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw25d-00B7aa-F5; Tue, 31 May 2022 13:39:17 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw25R-00B7WI-Vx
	for linux-rockchip@lists.infradead.org; Tue, 31 May 2022 13:39:08 +0000
Received: by mail-lj1-x22c.google.com with SMTP id m26so3955216ljb.0
        for <linux-rockchip@lists.infradead.org>; Tue, 31 May 2022 06:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rV+IwUnjJeMeaLuOoAuodxAXJv2e1zA8eKGCdKHN510=;
        b=aK6SduPUBnymJsbjYP8iiifXthYMYLwOHK6Ld3DlMMKNkWarDDunHmUfEq5sqmy8GV
         nRX7yuMXnhH6fyDaiQlcWx++J08xJYRPCWgVH9NQJyKN68AwWt9S14BKBk+vDtcVnAUA
         ifwgXmWp5PajZLOGS4wIIe1C6saBSt6MonJ5T+AqjBzLximu8th6TDF+hVjKTOaiQCnv
         pdGXti2Y5aLfwIYoByqBs4dVZYL+AkwdQnxB2vF0akc+16h5AViT2N4idnJJn61tvF3I
         bz9AMs6+bqVfPmC/CyBlHRKzW4/vUaM2sboP8m1ymnAuOUurizkzERbk/YAOUMz4rf3b
         xvLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rV+IwUnjJeMeaLuOoAuodxAXJv2e1zA8eKGCdKHN510=;
        b=3NubmRpBB0Ha+D/mbpJ28RX3r9SZ+xHNusEPG29Sx/cJuUcynfbKbSufmW0NJy9REU
         5PILUy0Mw2r3jzj90Hrz3C7OzjqOGR4Xs3lIHaFkr2a7TtRAJ8a1JaVYrFL9ZdL2aaIl
         Seum1t0xq+jp4Fs/mVM4PyHA7ymiZlWV+h2esGfVMgzYlwtOdzQbfrF/Sfl+Wt8Waru9
         BbZ88GwK+bGARSPx6QFp309a1hDxCIcP8+yVH05Khudjqn+wfB2qSvyboXrE1DQ/TThG
         NS7XZ/NbHEE4SLmZCXbQDebTOda7chJtv28j8G/dZK5Kf0MRvdYxhTVZUPq46AU7+war
         /9xQ==
X-Gm-Message-State: AOAM530VCJFSDa4qjD27EKwjm2k3rcBIwwgc2rtDMaL8OUnhO4n7JoLF
	bRLAmk9EWJR2s7nVYsTk8kVSjmwvc1sFiI5Jrsb59A==
X-Google-Smtp-Source: ABdhPJxxSN08j36y9Nsvv/qbdQgjo0d1IK1+kmolxk6AXhFtn4SjzokuR/8mLpb+7H1Msqpw1zPPrGlDxcrRZV9GXWw=
X-Received: by 2002:a2e:954c:0:b0:253:d9bf:9f55 with SMTP id
 t12-20020a2e954c000000b00253d9bf9f55mr33323645ljh.300.1654004341321; Tue, 31
 May 2022 06:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220504213251.264819-1-sebastian.reichel@collabora.com> <20220504213251.264819-10-sebastian.reichel@collabora.com>
In-Reply-To: <20220504213251.264819-10-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 31 May 2022 15:38:24 +0200
Message-ID: <CAPDyKFoRmpX5Pwmu370=tzg6ZAEPNm3LLAooXVLs35z94JsycQ@mail.gmail.com>
Subject: Re: [PATCHv2 09/21] mmc: sdhci-of-dwcmshc: add reset call back for
 rockchip Socs
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter <adrian.hunter@intel.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_063906_068012_27F9FA2B 
X-CRM114-Status: GOOD (  23.03  )
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

On Wed, 4 May 2022 at 23:33, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
>
> The reset function build in the SDHCI will not reset the logic
> circuit related to the tuning function, which may cause data
> reading errors. Resetting the complete SDHCI controller through
> the reset controller fixes the issue.
>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> [rebase, use optional variant of reset getter]
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Queued for v5.20 on the devel branch, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 26 +++++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index bac874ab0b33..3a1b5ba36405 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -15,6 +15,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/reset.h>
>  #include <linux/sizes.h>
>
>  #include "sdhci-pltfm.h"
> @@ -63,6 +64,7 @@
>  struct rk3568_priv {
>         /* Rockchip specified optional clocks */
>         struct clk_bulk_data rockchip_clks[RK3568_MAX_CLKS];
> +       struct reset_control *reset;
>         u8 txclk_tapnum;
>  };
>
> @@ -255,6 +257,21 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>         sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
>  }
>
> +static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
> +{
> +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +       struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
> +       struct rk35xx_priv *priv = dwc_priv->priv;
> +
> +       if (mask & SDHCI_RESET_ALL && priv->reset) {
> +               reset_control_assert(priv->reset);
> +               udelay(1);
> +               reset_control_deassert(priv->reset);
> +       }
> +
> +       sdhci_reset(host, mask);
> +}
> +
>  static const struct sdhci_ops sdhci_dwcmshc_ops = {
>         .set_clock              = sdhci_set_clock,
>         .set_bus_width          = sdhci_set_bus_width,
> @@ -269,7 +286,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk3568_ops = {
>         .set_bus_width          = sdhci_set_bus_width,
>         .set_uhs_signaling      = dwcmshc_set_uhs_signaling,
>         .get_max_clock          = sdhci_pltfm_clk_get_max_clock,
> -       .reset                  = sdhci_reset,
> +       .reset                  = rk35xx_sdhci_reset,
>         .adma_write_desc        = dwcmshc_adma_write_desc,
>  };
>
> @@ -292,6 +309,13 @@ static int dwcmshc_rk3568_init(struct sdhci_host *host, struct dwcmshc_priv *dwc
>         int err;
>         struct rk3568_priv *priv = dwc_priv->priv;
>
> +       priv->reset = devm_reset_control_array_get_optional_exclusive(mmc_dev(host->mmc));
> +       if (IS_ERR(priv->reset)) {
> +               err = PTR_ERR(priv->reset);
> +               dev_err(mmc_dev(host->mmc), "failed to get reset control %d\n", err);
> +               return err;
> +       }
> +
>         priv->rockchip_clks[0].id = "axi";
>         priv->rockchip_clks[1].id = "block";
>         priv->rockchip_clks[2].id = "timer";
> --
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
