Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D961FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 May 2022 08:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtxiGLOBYVCidM8OBNEQOWlFX7xIkRZ/0vuVOoo5aoQ=; b=v9DGSf51mMDeaa
	JKmpH1FgkUw0vUcAIpPFDOIfEU50XhwdMfXGakcHB5ggsEfDHav45Htb4FOdQwKYD0JpH+X9jc3wo
	l7gZlNdlUygzfDx6Tw4D8SCGjk4LA0GBBDHD3CoEBF/tfa9QbmgeBbNRWyNTmblWoQC9EoEEeATDB
	v/WGFG5psho+uzngu25gn7x1Tck82CGyDV3o1ERVWrgAIUDeIou1U5JlFJmxOUMC4YPG5VKm6JBop
	u3aOSwYt/iBBNyrj+pXZrHO5AEyjIM60kj+hTM6Sc2tMBXo5mc3T4cngxXKchaJXVzGqUCYgCAdFT
	LTagdHhs6kpysS+KunJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmtiI-002D7d-MO; Fri, 06 May 2022 08:53:26 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmtiF-002D6Q-IT
 for linux-rockchip@lists.infradead.org; Fri, 06 May 2022 08:53:25 +0000
Received: by mail-lf1-x136.google.com with SMTP id j4so11462172lfh.8
 for <linux-rockchip@lists.infradead.org>; Fri, 06 May 2022 01:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eaAW8uOFlvAinrao426R7OuE0ao2r8O8NVXKwXYnVX8=;
 b=wiZCB9DfTEPaFeiCnFgmB2CMBEwD1hiSVCRgnYecxvdZrzapfyCMHuRA+Akq1WGcti
 8nRPJu1TSpgG4pluut8jdfE8esvQySd6wQbmbcay8cEYT1bzLm7LA8zy8F75Jbxfp4pZ
 f/beuZ6yv2MyOyv2VmZNofKX16Xmem55e9R1qS2x1Yr73BBWuWncF7t52BXwz0QDoC2n
 X2artWPbeGuIYD3wcrm0yYFcyZaKpaUPpTP/Pdd4oMl4N2DXSmu7Zq1XJ/vWh3Z/R9fw
 xtRv0+bnymfvkVIqIwxqi6RYfy0D/4GsluTdhzOd/CPP5jl56ear2+Ul8mrxsY7pZyXm
 8ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eaAW8uOFlvAinrao426R7OuE0ao2r8O8NVXKwXYnVX8=;
 b=6P4oUhddpHHiFstr0U78o2TIwI2pJiCfiqHKx3oDUCS/yOo6eIJ9f9ijj1AYtUjAxS
 BGTkyVQZW1TPScU7VcXKZnwYQKgig1v/sxd2rtXjQylICpDfFj3q1E1YDIzhg55ek4kE
 aMkA9SBFYPxzliHLwb16g3NmXddGb0Yn2z/eh9vzAtfrO+LiEMnHDnPeSpoFRpWueRbr
 xbUvxxRZACSzpYJi8Gow1A9YmOaGfYWJfPsqlVf79k5sfmoapNZVMrq1ZJRe2vcedJBk
 ES8UzapoxH7WDV5/uBUZ2SYO7uCNQd4ATzpK3tKoDqIzab7jdK2dqy+rn8nTzkNEFqbY
 Rnjw==
X-Gm-Message-State: AOAM531r5OJ03Xk27k5g/ZM5T5HkRxggiPFtlfMyc5Afu06clpbJtSpD
 JAwJagP/xZ0qtrdgDY08JvZqh1O+GQ9s5HpEGs1Z1g==
X-Google-Smtp-Source: ABdhPJw0PTzOmg/+CrYgh09I3H2knLnkp9taoJl4RWlutgW8GPm+L9ti1Bep2tow/W7F5VNwFE8BOvnjE2bvwfCFMhQ=
X-Received: by 2002:ac2:4e98:0:b0:448:3039:d170 with SMTP id
 o24-20020ac24e98000000b004483039d170mr1889783lfr.233.1651827198179; Fri, 06
 May 2022 01:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-10-sebastian.reichel@collabora.com>
In-Reply-To: <20220504213251.264819-10-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 May 2022 10:52:42 +0200
Message-ID: <CAPDyKFqLn4LfPRbhoWw_9BF26Lgmzq_1j=RB31NDGn9YvMnB5w@mail.gmail.com>
Subject: Re: [PATCHv2 09/21] mmc: sdhci-of-dwcmshc: add reset call back for
 rockchip Socs
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter <adrian.hunter@intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_015323_639312_A3384909 
X-CRM114-Status: GOOD (  23.35  )
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

I think this needs a corresponding update of the DT docs. Otherwise
this looks good to me.

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
