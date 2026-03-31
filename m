Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0B2FF60FB
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 11:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp6Nf9KXfMKmfRtZ2u0fVjm3U9f4BR/w6p//oyTxtBw=; b=nfO6a1H+smpp+z
	WBgT83BDCHKbjli7qYjgU/7v/DYNWcirgKrfmoBsiOceTzLRpinKMgu0tWpqA9RQrkBqpyLavnktl
	Stj/Yw8cgOhFzep3yf8U4BlTq93CF1LfaBEfjnx8ClVIAYBrac/QoGQhnjKyhvbasBbeCOmMFc1c2
	gwjhMnF/KMmdU2xFhBFT3iXxerRiBiaWFCp16jnL5VGAxK33MwPaaxhMlcpejJREiil9NiFZBDlin
	GQVLQvmZR8avHyHb5iUK8qhzVwVSntZz3umixKzjmWMpgHq5TFm/C8uOGWWCoSTONoeeZbxPCnwf+
	rIAvIoqG3D8ocA/b5GbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7X3y-0000000CqPR-0Wra;
	Tue, 31 Mar 2026 11:15:14 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7X3v-0000000CqMs-2gv5
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 11:15:12 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5a1443780c4so5501977e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 04:15:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774955709; cv=none;
        d=google.com; s=arc-20240605;
        b=W3RPCloQrbyxHsBRifniFwHUS6QDMNKg3qH+xPYo+ExEgeWMLbYIYluS2dsEomywnk
         a3eUCS/A3CzpLjs/5m4svCeOfP4aC6cYGDrygXTrQPLeF97xJQyiib0D8xJdrAvddXEO
         4JAQn6k14wSLhpv8knX8jOkPARBaZb5tO5SagEqDG3res2yfUJHnnTIUuse02sysFh7X
         Hh8Sez+i+eUUUFf85QZ+FbTgnXJIGN6mKi2P/wr3cFiRKr4PDwfvcQlNRZ3AJwikSJ60
         lrR0TTUrig4MlUIqTFKDYZtyB6jqLgE3NSWfPMzgR6FgJoGpdmDSpEOsEbHUNLDmuk2k
         6vNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4tIaIXp7FQdF0r9WNUruNeum5K2fLGgptMXAzUr3RHE=;
        fh=Y5DshpbCEhfv2CJvIPL4hAwBKGi4fBJoLvStVbnrTLA=;
        b=RKJllVvG5gnrzuJ+tkR/8HzYPe6On+OjJuccaqZAuSlRS/jT7rOrFVruF0eu36VR8f
         AY5wWzy0wp9b24ipfboN0BYXD++4efYHlj5PniW3L1BV1SdH7l1mtJTtOKMk4a9hxpRf
         BGEQUvYJ4ith/lEREpa4UfmrBYjabN8fvpN18NhUMjX/p0Ha6rCUH51g2t5LiGsMuHSE
         U8BpnXl16S/jasjadsVSlEos2J0n5SokiJIG2YZtnu+i8nZvCkDZ+xAMbdZoJS8vVRSx
         wsA3sUSizQXKQDz0fx28S3huk7nrIshLzy+M0Vpi6ALODEYNwP4KlU/V2PoRs7EI/v/O
         ZDBQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774955709; x=1775560509; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4tIaIXp7FQdF0r9WNUruNeum5K2fLGgptMXAzUr3RHE=;
        b=vkHExHooDX8dVFy0pzNm3JRwLpoHGMjCh4/yhpg79HzQGIvzGSTgf5yw0nSmp70XU9
         19eTLYWsOsxBVTCvdmrx/BtrPRcGgjg+YCv1ldCBZFqFxxuvwywztrC+abWA7m0e+d/h
         SnCc36lS92lBUAWiXoLH6LWrNQSvAQ2GAGMOSUK21g2l76Kp9chd5h1fIpZQZt4O9t4l
         E6svPaklKBvYJDsTuRow2wir5bh4dTz9b81YCfOrwgz1gNFZjYEncGPz4pMHZu0j+nSW
         EyFFp4/AdCvVAQvJdku6XQe0PHD+mxcT/i7ODlraEhSX8fvTW+nvwRbMfYgxeJ72Y6dV
         IIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774955709; x=1775560509;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tIaIXp7FQdF0r9WNUruNeum5K2fLGgptMXAzUr3RHE=;
        b=W+Mp3K/aU6PN5t3SBQbupu98MbKmx2iwqQjWEeb1AIE8koYTMFu5s8Mb6kXYDH9RFT
         sQuZl9fs/d5Md17Mt0B8mu+pXuweyLUCwVL6rHy2wgZHWiuOjjf1JzGU0ED1jgzlYJ+M
         hFsgiy4khP1agVC1Jjuox6kFfk3lGOJkjt5RJLzy6B5q2ZfHPeWxKk9AeuqRbJtQ8so0
         SdExIZz0kFDA3W378a3vVB15ARre4WYFO4u5xvP75HnS/kS/wEOqkw6beYhp3NIzMHGt
         HBuQwocAeZ6rQbWbsX9d6Xt90zSiVEovcX0GXoDF8E2aV5J+ajdZ7Cvor4hDNvkvYKIq
         6aNA==
X-Forwarded-Encrypted: i=1; AJvYcCWPVGZ2FLpaMVqUKD16aMBmMoapW/PObIL9vvNfi+IP+7yLzhMh5hXDOGUU+OkX5NSC9Lid9dBcbxv/ywOsPQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZN2L1EuIRnQPlygAMG+9W87UJujMTcCTx+bGfb8qpbgsXj9D9
	RiN3On+VSF4vwoKZbEpipwdHooyubL7dTW2gaFN+vxImTzOi5TwWQjsHT46R45lYKplaFg4Ll+I
	SPuH8ZyC++AN8hs8zfWtriNU2T+KNIyL8abXNxYRdxQ==
X-Gm-Gg: ATEYQzxJvvTpN0AgT95+O4qq8H+6yvPLgQ+bppNV6ZY16BYvm41c/pM8LZ81+UL49i0
	3JOKYhrVAURRwpUOM5WJ8ecCTuD2fQYk0eN9RcNZDptJG4kTxmpEuF3/Ob7yiC1OvojD1aKJ9X4
	odejsA85DUXGkEixXJyEY0eywVam/9sjHoIx04sBuRqeJ/oQXOQVpWQZ13LRk9TeKxpJKqnuyG/
	6lWkc3luaUy20rWbq04tPWWBqgQXv2vMlmZh2shmxgtlCwCN5u3wKRCcI8n3MXcAZKYfIROIvQy
	nKNaLsGD
X-Received: by 2002:a05:6512:2313:b0:5a1:53a8:fe20 with SMTP id
 2adb3069b0e04-5a2baae136cmr1098957e87.8.1774955707894; Tue, 31 Mar 2026
 04:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <1774657762-152522-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1774657762-152522-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 31 Mar 2026 13:14:31 +0200
X-Gm-Features: AQROBzBS7blAll21TPGO827Cd20xrsesnJXSVw3i6fyudfuXltEqUXvSzzsypys
Message-ID: <CAPDyKFosqzuv=t69tq_JBn+uy1YDNw7eT12hJs1SHD4P37OvRg@mail.gmail.com>
Subject: Re: [PATCH v3] mmc: sdhci-dwcmshc: Refactor Rockchip platform data
 for controller revisions
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_041511_765347_7509507E 
X-CRM114-Status: GOOD (  26.64  )
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

On Sat, 28 Mar 2026 at 01:29, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> The driver previously used an enum (dwcmshc_rk_type) to distinguish
> platforms like the RK3568 and RK3588 based on DT compatible names.
> This approach is inflexible, scales poorly for future revisions or
> mixed-revision platforms, and conflates SoC names with controller
> revisions. One example is RK3576 which lists "rockchip,rk3588-dwcmshc"
> as a secondary compatible string just in order to claim it uses the
> same controller revision as RK3588. This is confusing and makes it
> error-prone to add new SoC support.
>
> Introduces a new struct rockchip_pltfm_data containing a dedicated
> revision field. The old enum is removed, and all code paths are
> updated to use the revision-based data.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3:
> - remove unnecesary parentheses
> - add Adrian's tag
>
> Changes in v2:
> - update commit msg
> - document the revision field
> - re-order the Rockchip plftm data
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 92 +++++++++++++++++++++++--------------
>  1 file changed, 57 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index a91b3e7..6139516 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -278,14 +278,8 @@
>  #define PHY_DELAY_CODE_EMMC            0x17
>  #define PHY_DELAY_CODE_SD              0x55
>
> -enum dwcmshc_rk_type {
> -       DWCMSHC_RK3568,
> -       DWCMSHC_RK3588,
> -};
> -
>  struct rk35xx_priv {
>         struct reset_control *reset;
> -       enum dwcmshc_rk_type devtype;
>         u8 txclk_tapnum;
>  };
>
> @@ -330,6 +324,16 @@ struct k230_pltfm_data {
>         u32 write_prot_bit;
>  };
>
> +struct rockchip_pltfm_data {
> +       struct dwcmshc_pltfm_data dwcmshc_pdata;
> +       /*
> +        * The controller hardware has two known revisions documented internally:
> +        * - Revision 0: Exclusively used by RK3566 and RK3568 SoCs.
> +        * - Revision 1: Implemented in all other Rockchip SoCs, including RK3576, RK3588, etc.
> +        */
> +       int revision;
> +};
> +
>  static void dwcmshc_enable_card_clk(struct sdhci_host *host)
>  {
>         u16 ctrl;
> @@ -749,6 +753,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>         struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
>         struct rk35xx_priv *priv = dwc_priv->priv;
> +       const struct rockchip_pltfm_data *rockchip_pdata = to_pltfm_data(dwc_priv, rockchip);
>         u8 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
>         u32 extra, reg;
>         int err;
> @@ -816,7 +821,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>          * we must set it in higher speed mode.
>          */
>         extra = DWCMSHC_EMMC_DLL_DLYENA;
> -       if (priv->devtype == DWCMSHC_RK3568)
> +       if (rockchip_pdata->revision == 0)
>                 extra |= DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
>         sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_RXCLK);
>
> @@ -842,7 +847,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>             host->mmc->ios.timing == MMC_TIMING_MMC_HS400)
>                 txclk_tapnum = priv->txclk_tapnum;
>
> -       if ((priv->devtype == DWCMSHC_RK3588) && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
> +       if (rockchip_pdata->revision == 1 && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
>                 txclk_tapnum = DLL_TXCLK_TAPNUM_90_DEGREES;
>
>                 extra = DLL_CMDOUT_SRC_CLK_NEG |
> @@ -898,11 +903,6 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
>         if (!priv)
>                 return -ENOMEM;
>
> -       if (of_device_is_compatible(dev->of_node, "rockchip,rk3588-dwcmshc"))
> -               priv->devtype = DWCMSHC_RK3588;
> -       else
> -               priv->devtype = DWCMSHC_RK3568;
> -
>         priv->reset = devm_reset_control_array_get_optional_exclusive(mmc_dev(host->mmc));
>         if (IS_ERR(priv->reset)) {
>                 err = PTR_ERR(priv->reset);
> @@ -2115,30 +2115,52 @@ static const struct cqhci_host_ops rk35xx_cqhci_ops = {
>         .set_tran_desc  = dwcmshc_set_tran_desc,
>  };
>
> -static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
> -       .pdata = {
> -               .ops = &sdhci_dwcmshc_rk35xx_ops,
> -               .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> -                         SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> -               .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> -                          SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +static const struct rockchip_pltfm_data sdhci_dwcmshc_rk3568_pdata = {
> +       .dwcmshc_pdata = {
> +               .pdata = {
> +                       .ops = &sdhci_dwcmshc_rk35xx_ops,
> +                       .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> +                                 SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> +                       .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +                                  SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +               },
> +               .cqhci_host_ops = &rk35xx_cqhci_ops,
> +               .init = dwcmshc_rk35xx_init,
> +               .postinit = dwcmshc_rk35xx_postinit,
>         },
> -       .cqhci_host_ops = &rk35xx_cqhci_ops,
> -       .init = dwcmshc_rk35xx_init,
> -       .postinit = dwcmshc_rk35xx_postinit,
> +       .revision = 0,
>  };
>
> -static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk3576_pdata = {
> -       .pdata = {
> -               .ops = &sdhci_dwcmshc_rk35xx_ops,
> -               .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> -                         SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> -               .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> -                          SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +static const struct rockchip_pltfm_data sdhci_dwcmshc_rk3576_pdata = {
> +       .dwcmshc_pdata = {
> +               .pdata = {
> +                       .ops = &sdhci_dwcmshc_rk35xx_ops,
> +                       .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> +                                 SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> +                       .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +                                  SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +               },
> +               .cqhci_host_ops = &rk35xx_cqhci_ops,
> +               .init = dwcmshc_rk35xx_init,
> +               .postinit = dwcmshc_rk3576_postinit,
> +       },
> +       .revision = 1,
> +};
> +
> +static const struct rockchip_pltfm_data sdhci_dwcmshc_rk3588_pdata = {
> +       .dwcmshc_pdata = {
> +               .pdata = {
> +                       .ops = &sdhci_dwcmshc_rk35xx_ops,
> +                       .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> +                                 SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> +                       .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +                                  SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +               },
> +               .cqhci_host_ops = &rk35xx_cqhci_ops,
> +               .init = dwcmshc_rk35xx_init,
> +               .postinit = dwcmshc_rk35xx_postinit,
>         },
> -       .cqhci_host_ops = &rk35xx_cqhci_ops,
> -       .init = dwcmshc_rk35xx_init,
> -       .postinit = dwcmshc_rk3576_postinit,
> +       .revision = 1,
>  };
>
>  static const struct dwcmshc_pltfm_data sdhci_dwcmshc_th1520_pdata = {
> @@ -2309,7 +2331,7 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
>         },
>         {
>                 .compatible = "rockchip,rk3588-dwcmshc",
> -               .data = &sdhci_dwcmshc_rk35xx_pdata,
> +               .data = &sdhci_dwcmshc_rk3588_pdata,
>         },
>         {
>                 .compatible = "rockchip,rk3576-dwcmshc",
> @@ -2317,7 +2339,7 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
>         },
>         {
>                 .compatible = "rockchip,rk3568-dwcmshc",
> -               .data = &sdhci_dwcmshc_rk35xx_pdata,
> +               .data = &sdhci_dwcmshc_rk3568_pdata,
>         },
>         {
>                 .compatible = "snps,dwcmshc-sdhci",
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
