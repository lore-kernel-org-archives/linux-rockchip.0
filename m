Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C99AAC05027
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 11:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kGczyXCxwo+tO/ByFjpaMgWjKzx25zEc2eYPGYw2NQ=; b=sQPCO6coEwbuAl
	Z7lb0vVnqcd2408dtkdkSHyQaXL49h5VK7i5eKa4Er5ojfSagb3D5YSYdXB/rZxpj7Un+TJBBMNoI
	L1v+W/M/k3Y1764jMVol1UXW03r6NG7etD8EDZ1uc7URXmkwDKdG1LG8xSW/RNOaXpZFH6RM7hjQE
	FiKkjlHsYbkI6iEeuYVtspLcOKI8rfEMdTPViidcZXZKRkgKqzx8ePtrrJ3RwD5kdB/7Lxz7i+VyV
	mXQ+/OdgoZ0kS0389U08ndNDZ4QEdddgCRhhvOmbqciEV3VPEfLVK1tw0r5McrXOXwTuHEQFtpr/3
	cK135hVqkrqrVTr4O93g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRtXT-001Pmj-2n; Tue, 14 Feb 2023 11:31:59 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRtXN-001PjO-EA
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 11:31:55 +0000
Received: by mail-pj1-x1033.google.com with SMTP id z14-20020a17090abd8e00b00233bb9d6bdcso9967501pjr.4
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 03:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1x+TBVegwlG1MqzfOj42RXTmtXiBCLBlcdiR6v7aEOg=;
        b=kRu+GSUWY+Dc9YBDALXCy4+tz3+lk+jZ4TuDGQ64nzD1TROklRBqj9ZZkPbZAmfIKm
         +y79iDA9/rwz3746Z0I3+Q5HauHswamc0SuETlzMjuIXGiwQl/SkNlUZESOD1y56iF8g
         SidImgCNwLR4idsKfZn5S4oeeHit5BNbrIDXDDRAefE8TrLAwPZn+moM4VwC7hT1WMO7
         UUDmfrKAfIK4MFUp5Q01vKNeggOUB+fgtPzy2QJQAM6/Npujy23+nVHfS4iGjc+5Yr+a
         hjpHsVeQClba6g/e3jYViO7OJTd178Dc4Vc3cKofv0xgDbdwrVo1ybVKQ6Le7IrX3ka0
         5Qlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1x+TBVegwlG1MqzfOj42RXTmtXiBCLBlcdiR6v7aEOg=;
        b=CccLK7FrBi6KPIapkmPIkHlrZE7RJ+OT1P8q42lEBsF6zlAwuFmw0APtfm0M8pG0bf
         9L0kt/eudydy1Res6sMsfgQ/eCL0eLYrS54/DeOTksxRVXB09OIojFHQEk30wkg77+Po
         glocpsIMshzIierTqTSAQXg2Av3wuoPx7f94WC0UV7lmusJ7dQWhnKP+lat3ymuqXJes
         FNFuO8PJ5hz5A9o/3k86sltMd2PYGDnyAxryO5tog/x9we6FZlmbziz7BwonDqldCtJj
         en6GeaDNA1boZ5zP1z30GCwlcYQL1Pvnr7Sn3aqfqjQt1Wq0XOfa9e/ECdKJm702SOr2
         bMjA==
X-Gm-Message-State: AO0yUKX0wQhLrbaByLEPeW+vBfr+9tU59V3FfOjesWvS47k/tRVtLaiH
	WhDe+f7Y8f3NZF4woZIUMPRY5l0amuBeCqhjg2uwBA==
X-Google-Smtp-Source: AK7set8sCjRn3vdQEKNM8dBkpw73bJdyZQCSE30CNGY4XaNBI4qdMeDr7w1LFwa7SGi38mHAF+gCh4oEGbs1zpuc0tw=
X-Received: by 2002:a17:90a:c90f:b0:233:ba2c:16a6 with SMTP id
 v15-20020a17090ac90f00b00233ba2c16a6mr2942524pjt.109.1676374309413; Tue, 14
 Feb 2023 03:31:49 -0800 (PST)
MIME-Version: 1.0
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com> <1675298118-64243-4-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1675298118-64243-4-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Feb 2023 12:31:13 +0100
Message-ID: <CAPDyKFrCe-niD_bSc1wGFuOBKfDuC=TEUyK8dA5VVLTStzVxVg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] mmc: sdhci-of-dwcmshc: Add host software queue support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_033153_558159_E605C4CC 
X-CRM114-Status: GOOD (  25.02  )
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

On Thu, 2 Feb 2023 at 01:35, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>

Please elaborate a bit to share some more information to the commit message.

Perhaps you have some performance numbers too, that would be nice to
share in the commit message.

> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> ---
>
> Changes in v2:
> - fix Kconfig error
>
>  drivers/mmc/host/Kconfig            |  1 +
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 29 ++++++++++++++++++++++++++++-
>  2 files changed, 29 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index e96b302..e060bab 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -233,6 +233,7 @@ config MMC_SDHCI_OF_DWCMSHC
>         depends on MMC_SDHCI_PLTFM
>         depends on OF
>         depends on COMMON_CLK
> +       select MMC_HSQ
>         help
>           This selects Synopsys DesignWare Cores Mobile Storage Controller
>           support.
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index fc917ed..e90fa69 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -20,6 +20,7 @@
>  #include <linux/sizes.h>
>
>  #include "sdhci-pltfm.h"
> +#include "mmc_hsq.h"
>
>  #define SDHCI_DWCMSHC_ARG2_STUFF       GENMASK(31, 16)
>
> @@ -331,6 +332,14 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>         sdhci_reset(host, mask);
>  }
>
> +static void sdhci_dwcmshc_request_done(struct sdhci_host *host, struct mmc_request *mrq)
> +{
> +       if (mmc_hsq_finalize_request(host->mmc, mrq))
> +               return;
> +
> +       mmc_request_done(host->mmc, mrq);
> +}
> +
>  static const struct sdhci_ops sdhci_dwcmshc_ops = {
>         .set_clock              = sdhci_set_clock,
>         .set_bus_width          = sdhci_set_bus_width,
> @@ -347,6 +356,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk35xx_ops = {
>         .get_max_clock          = sdhci_pltfm_clk_get_max_clock,
>         .reset                  = rk35xx_sdhci_reset,
>         .adma_write_desc        = dwcmshc_adma_write_desc,
> +       .request_done           = sdhci_dwcmshc_request_done,
>  };
>
>  static const struct sdhci_pltfm_data sdhci_dwcmshc_pdata = {
> @@ -462,6 +472,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
>         struct dwcmshc_priv *priv;
>         struct rk35xx_priv *rk_priv = NULL;
>         const struct sdhci_pltfm_data *pltfm_data;
> +       struct mmc_hsq *hsq;
>         int err;
>         u32 extra;
>
> @@ -515,6 +526,16 @@ static int dwcmshc_probe(struct platform_device *pdev)
>         host->mmc_host_ops.request = dwcmshc_request;
>         host->mmc_host_ops.hs400_enhanced_strobe = dwcmshc_hs400_enhanced_strobe;
>
> +       hsq = devm_kzalloc(&pdev->dev, sizeof(*hsq), GFP_KERNEL);
> +       if (!hsq) {
> +               err = -ENOMEM;
> +               goto err_clk;
> +       }
> +
> +       err = mmc_hsq_init(hsq, host->mmc);
> +       if (err)
> +               goto err_clk;
> +
>         if (pltfm_data == &sdhci_dwcmshc_rk35xx_pdata) {
>                 rk_priv = devm_kzalloc(&pdev->dev, sizeof(struct rk35xx_priv), GFP_KERNEL);
>                 if (!rk_priv) {
> @@ -607,6 +628,8 @@ static int dwcmshc_suspend(struct device *dev)
>         struct rk35xx_priv *rk_priv = priv->priv;
>         int ret;
>
> +       mmc_hsq_suspend(host->mmc);
> +
>         ret = sdhci_suspend_host(host);
>         if (ret)
>                 return ret;
> @@ -647,7 +670,11 @@ static int dwcmshc_resume(struct device *dev)
>                         return ret;
>         }
>
> -       return sdhci_resume_host(host);
> +       ret = sdhci_resume_host(host);
> +       if (ret)
> +               return ret;
> +
> +       return mmc_hsq_resume(host->mmc);
>  }
>  #endif

If I understand correctly, you need to also inform sdhci and the mmc
core, whether you support atomic request management or not. For
sdhci-sprd, the following part below, is done during ->probe() - and I
assume we need something similar for the sdhci-of-dwcmshc, right?

if (!mmc_card_is_removable(host->mmc))
    host->mmc_host_ops.request_atomic = sdhci_sprd_request_atomic;
else
    host->always_defer_done = true;

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
