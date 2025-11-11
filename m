Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36212CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 17:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuNwEteU8EUh9qYKQH832rSxXRp++FmNFfJuAg77Jxk=; b=3nzii/NHgM3lr6
	3ZDfOzNwDqRYPbHjjfnH8RAFIq2TH6q6B7P8Sj724vas5hfw1FJ5s0qq3oin/Cx0sTe+4asAaV+Ds
	g/sveeWG/Nx8WR819FlCv51A5P7t75hF1YcHon7YJX1s7A4Dms8jpRpvYf4dsvQz8lbCGj94oL3+b
	RO0fD50C+IevEa6n8it4KJySkPZyKT+CABsyb2W1hm4PfkxGODR17PyxXVX/j8WHwVDwgH9kKtsfH
	PMivpQAMzBLT+AF1Q0tomYbv5tqwY0dM0Gz1Y6Wy4suYnopXYfSN6mGkN0SsoU4MN8AryUTYB4IHs
	FuTGzQHWAIGbZZlh4HLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsIW-00000007Xgp-0bXt;
	Tue, 11 Nov 2025 17:36:52 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsIU-00000007Xfw-1ejX
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 17:36:51 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-7866bca6765so36552507b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Nov 2025 09:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762882609; x=1763487409; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WFQ20n8MUe7z+UIRt0kQX0npYkqJ5XKUTrl9Nsf4IBc=;
        b=aeZFwf24u9JonOSSmq7fzEAxNUzoqHDcnUPET3AbJQ7JgVXUbeKfqPYZpRMHBAiEX8
         Wlp7f4ui2yZZBX6dm1FbuVaxTo4vuvQVijyCVEmA0Yy2V67lUX3IE9nnUgVTr80OTjJq
         4QYhvtkZ/+k7n5MHCBvadcHGZ35NINInWUHYrIPRHC/hh1c3rmJQbgR+b+F7Qh5CV+mK
         Z8eAlBfzwf6e+l2gfNwb+hHnb3AGa6aYkhVepT/j0eVCinQ/Anpd+68TQNp1LTT0WI3v
         yj+M4Vxhe3O9oygODBcjxN281a3976owbRnS7QNDdEnLBztm48tkJjJlr3WMPmD4iIuV
         gJGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762882609; x=1763487409;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFQ20n8MUe7z+UIRt0kQX0npYkqJ5XKUTrl9Nsf4IBc=;
        b=XxWdNiPhBEnK81d/XP+4bFuC3vI8asOfck6cADJWqrTJZm4JI4WB5+D8rSKngEBvQH
         XRUMuK7oIJvm6CywGjEhlO2DEQuiX3JnTl1H5fOIs81oJkA6Ma5VmEqHTyxCvYc5XXPc
         TGAXsGi25Syv4TyM6mG8NHhnJu0iTLw+twJVj4E/g+JKS3Z1O75FUYe+8aiL16L3xM10
         aExd+hD5U3XjqWRsiWn81lLOfVa773kuTfvdawq9YRB2ASZtFOKeO7tDsfiqHo0ZQndH
         X4hHdW/C7gbzv7NBHFyc98j7aGdnh8n5VCm/YZVfl8pj3H8bP+dAEeLbqy1qWnbsxSM/
         vYZA==
X-Forwarded-Encrypted: i=1; AJvYcCUOCt1VkNse4q/2rapfwAkOyO6SfqXuuZR4VoKSZ856563CAcZgw6Y+63YiKQLPf2Y2wGhPY7cFhF2vXZFCYw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBJqxITk7bIeFDxnulY/MWmm9GYOapyVbESI6aXmFqzxteBxZx
	zPAxiRnTGGciPulO8asOiJq0kh/lwHOm+PBfcOHJo+CpNgBWi6YtHObl0tFFSwnW9egJ7RJl5Qo
	ed5qk9j0Pu1BGYr8AT7gxzPVB9RhM35f/j0Km0Ck4eg==
X-Gm-Gg: ASbGncvvDxPeIHAp+Z+GsqpoP/1lO2qYlyJLP7+qBUczEIeVkPS/26hblsoStGVlSkh
	k4xnOBE2bByUfcqxRCostQ24hgj7BZ+YmWtRm7fvWbck/DMlrxxzPALBfO4KHMbOmvtTXdIggcZ
	XFwoFMT9pQzCAXJwbD6yfHnPPeRQg1ZJKV0lJ0abeDGCR1kHfh9AM6aJRrOcr3SKhoUz1RJUV6i
	j1I9V3qe02iwnk68X/3fHQL3Y7da+/qcbMqlwha5DX8FwUIbWtPLmDnPNQGhVVs1cQEMHW/
X-Google-Smtp-Source: AGHT+IGkLjbupIggpKEGlGinb8AMEUbias2I/v844U6ezgd8B+66n8eOO1BOWZtdPF59rYp587WKM3GZCmUzRLlqfOs=
X-Received: by 2002:a05:690c:7482:b0:787:db85:571f with SMTP id
 00721157ae682-787db8560c7mr97817577b3.23.1762882609264; Tue, 11 Nov 2025
 09:36:49 -0800 (PST)
MIME-Version: 1.0
References: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
 <20251031-rockchip-emmc-cqe-support-v2-1-958171f5edad@collabora.com>
In-Reply-To: <20251031-rockchip-emmc-cqe-support-v2-1-958171f5edad@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Nov 2025 18:36:13 +0100
X-Gm-Features: AWmQ_bmtw_g6L83g-QmV7eXlxmHJ54F2yVH0-AUDdEGWeutpdAqoayrFvOW0EtU
Message-ID: <CAPDyKFrSKDE4BNLGge0qk2A3m+MfNjfRsqc0VJ-NMekBRFPNSw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mmc: sdhci-of-dwcmshc: Add command queue support
 for rockchip SOCs
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@collabora.com, Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_093650_479690_B08C4A2C 
X-CRM114-Status: GOOD (  27.30  )
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

On Fri, 31 Oct 2025 at 16:58, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> This adds CQE support for the Rockchip RK3588 and RK3576 platform. To
> be functional, the eMMC device-tree node must have a 'supports-cqe;'
> flag property.
>
> As the RK3576 device-tree has been upstreamed with the 'supports-cqe;'
> property set by default, the kernel already tried to use CQE, which
> results in system hang during suspend. This fixes the issue.
>
> Co-developed-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 93 +++++++++++++++++++++++++++++++++++--
>  1 file changed, 90 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index eebd45389956..47509435254b 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -24,6 +24,7 @@
>
>  #include "sdhci-pltfm.h"
>  #include "cqhci.h"
> +#include "sdhci-cqhci.h"
>
>  #define SDHCI_DWCMSHC_ARG2_STUFF       GENMASK(31, 16)
>
> @@ -82,6 +83,8 @@
>  #define DWCMSHC_EMMC_DLL_TXCLK         0x808
>  #define DWCMSHC_EMMC_DLL_STRBIN                0x80c
>  #define DECMSHC_EMMC_DLL_CMDOUT                0x810
> +#define DECMSHC_EMMC_MISC_CON          0x81C
> +#define MISC_INTCLK_EN                 BIT(1)
>  #define DWCMSHC_EMMC_DLL_STATUS0       0x840
>  #define DWCMSHC_EMMC_DLL_START         BIT(0)
>  #define DWCMSHC_EMMC_DLL_LOCKED                BIT(8)
> @@ -234,6 +237,7 @@ struct dwcmshc_priv {
>
>  struct dwcmshc_pltfm_data {
>         const struct sdhci_pltfm_data pdata;
> +       const struct cqhci_host_ops *cqhci_host_ops;
>         int (*init)(struct device *dev, struct sdhci_host *host, struct dwcmshc_priv *dwc_priv);
>         void (*postinit)(struct sdhci_host *host, struct dwcmshc_priv *dwc_priv);
>  };
> @@ -561,6 +565,68 @@ static void dwcmshc_cqhci_dumpregs(struct mmc_host *mmc)
>         sdhci_dumpregs(mmc_priv(mmc));
>  }
>
> +static void rk35xx_sdhci_cqe_pre_enable(struct mmc_host *mmc)
> +{
> +       struct sdhci_host *host = mmc_priv(mmc);
> +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +       struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
> +       u32 reg;
> +
> +       reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
> +       reg |= CQHCI_ENABLE;
> +       sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
> +}
> +
> +static void rk35xx_sdhci_cqe_enable(struct mmc_host *mmc)
> +{
> +       struct sdhci_host *host = mmc_priv(mmc);
> +       u32 reg;
> +
> +       reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
> +       while (reg & SDHCI_DATA_AVAILABLE) {
> +               sdhci_readl(host, SDHCI_BUFFER);
> +               reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
> +       }
> +
> +       sdhci_writew(host, DWCMSHC_SDHCI_CQE_TRNS_MODE, SDHCI_TRANSFER_MODE);
> +
> +       sdhci_cqe_enable(mmc);
> +}
> +
> +static void rk35xx_sdhci_cqe_disable(struct mmc_host *mmc, bool recovery)
> +{
> +       struct sdhci_host *host = mmc_priv(mmc);
> +       unsigned long flags;
> +       u32 ctrl;
> +
> +       /*
> +        * During CQE command transfers, command complete bit gets latched.
> +        * So s/w should clear command complete interrupt status when CQE is
> +        * either halted or disabled. Otherwise unexpected SDCHI legacy
> +        * interrupt gets triggered when CQE is halted/disabled.
> +        */
> +       spin_lock_irqsave(&host->lock, flags);
> +       ctrl = sdhci_readl(host, SDHCI_INT_ENABLE);
> +       ctrl |= SDHCI_INT_RESPONSE;
> +       sdhci_writel(host,  ctrl, SDHCI_INT_ENABLE);
> +       sdhci_writel(host, SDHCI_INT_RESPONSE, SDHCI_INT_STATUS);
> +       spin_unlock_irqrestore(&host->lock, flags);
> +
> +       sdhci_cqe_disable(mmc, recovery);
> +}
> +
> +static void rk35xx_sdhci_cqe_post_disable(struct mmc_host *mmc)
> +{
> +       struct sdhci_host *host = mmc_priv(mmc);
> +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +       struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
> +       u32 ctrl;
> +
> +       ctrl = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
> +       ctrl &= ~CQHCI_ENABLE;
> +       sdhci_writel(host, ctrl, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
> +}
> +
>  static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock)
>  {
>         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -679,6 +745,10 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>         struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
>         struct rk35xx_priv *priv = dwc_priv->priv;
> +       u32 extra = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
> +
> +       if ((host->mmc->caps2 & MMC_CAP2_CQE) && (mask & SDHCI_RESET_ALL))
> +               cqhci_deactivate(host->mmc);
>
>         if (mask & SDHCI_RESET_ALL && priv->reset) {
>                 reset_control_assert(priv->reset);
> @@ -687,6 +757,9 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>         }
>
>         sdhci_reset(host, mask);
> +
> +       /* Enable INTERNAL CLOCK */
> +       sdhci_writel(host, MISC_INTCLK_EN | extra, DECMSHC_EMMC_MISC_CON);
>  }
>
>  static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
> @@ -1188,6 +1261,15 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_bf3_pdata = {
>  };
>  #endif
>
> +static const struct cqhci_host_ops rk35xx_cqhci_ops = {
> +       .pre_enable     = rk35xx_sdhci_cqe_pre_enable,
> +       .enable         = rk35xx_sdhci_cqe_enable,
> +       .disable        = rk35xx_sdhci_cqe_disable,
> +       .post_disable   = rk35xx_sdhci_cqe_post_disable,
> +       .dumpregs       = dwcmshc_cqhci_dumpregs,
> +       .set_tran_desc  = dwcmshc_set_tran_desc,
> +};
> +
>  static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
>         .pdata = {
>                 .ops = &sdhci_dwcmshc_rk35xx_ops,
> @@ -1196,6 +1278,7 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
>                 .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
>                            SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
>         },
> +       .cqhci_host_ops = &rk35xx_cqhci_ops,
>         .init = dwcmshc_rk35xx_init,
>         .postinit = dwcmshc_rk35xx_postinit,
>  };
> @@ -1245,7 +1328,8 @@ static const struct cqhci_host_ops dwcmshc_cqhci_ops = {
>         .set_tran_desc  = dwcmshc_set_tran_desc,
>  };
>
> -static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *pdev)
> +static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *pdev,
> +                              const struct dwcmshc_pltfm_data *pltfm_data)
>  {
>         struct cqhci_host *cq_host;
>         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -1275,7 +1359,10 @@ static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *
>         }
>
>         cq_host->mmio = host->ioaddr + priv->vendor_specific_area2;
> -       cq_host->ops = &dwcmshc_cqhci_ops;
> +       if (pltfm_data->cqhci_host_ops)
> +               cq_host->ops = pltfm_data->cqhci_host_ops;
> +       else
> +               cq_host->ops = &dwcmshc_cqhci_ops;
>
>         /* Enable using of 128-bit task descriptors */
>         dma64 = host->flags & SDHCI_USE_64_BIT_DMA;
> @@ -1443,7 +1530,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
>                 priv->vendor_specific_area2 =
>                         sdhci_readw(host, DWCMSHC_P_VENDOR_AREA2);
>
> -               dwcmshc_cqhci_init(host, pdev);
> +               dwcmshc_cqhci_init(host, pdev, pltfm_data);
>         }
>
>         if (pltfm_data->postinit)
>
> --
> 2.51.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
