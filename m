Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2599BC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 17:29:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94D1964EDB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 17:29:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94D1964EDB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mr9xc7LWO+QkwnKNEYARX6eW5i7DCPSfYz8kxWXpvnc=; b=QXOwh+4yYPCXmfxqXbQxgDvT+
	e5KFFPZOhQYcYRFcJxxpahIkLigGEp0TPZCKFioPyuNqvVsAm8jgGbj8awzF8FjrHLdvxk4t95NpF
	cAUpNGH5CpXAE06yxQd0iqgvW/pP2Dtggmub4PgSjpyc1m+fWdjPD+ufV4ZZNadoAAMz+5AXd6PpA
	VPFGwwJFCFJ+GBhJ/SCinq4bne9bngfMQAP5HILhB01HM9bfmq+nTxt3fEPlLv4Xc8iIi51Bd4LKt
	yDmc6G30/MizdPjpWksxjQTWZnRk9FlVeyC8Dtp6L2KItcIaygAPruF/sjJv9g5rE4XD4Co/TMxFO
	x9Cz6NiHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHVJI-005o19-8B; Wed, 03 Mar 2021 17:29:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSv5-005FS4-Pw
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 14:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3zrRjA7YBWfjokl2Xgay7jI8fNwkayDcVMdDOQenPBE=; b=O8L1uWDiTTr/3iAMcOcwTX3YlX
 5PXmlaZ2tvzJ/ZnPlkQBPjviieFjXVv689+dc2Jmlgf45efsYxN7EtKE+uIOo5jMfKr2L73jrxObo
 P3X79gALkPTQcRbGRFKg4tPKMAMHof/Tin3gv0ipV3WdjJI5BMLA2srbIndFAIGn4jHaM2z66JfKc
 DvPx93nBLdW/Tkmhq8nFRPtGdu0crWcJoVlia+yAY+P49hA8oOvtBhN4vXR46iYhYB6jBv7R7WMzv
 Nt9UUBKUIacJUnl65RoHCIdlYcUiBVuTaGaXcPhk9E9wT/SeWGolH5KacN/uMw4lY0bl7iR2cjlYJ
 FuvKkBvA==;
Received: from mail-ua1-x936.google.com ([2607:f8b0:4864:20::936])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH4Zh-00H8Xb-K4
 for linux-rockchip@lists.infradead.org; Tue, 02 Mar 2021 12:56:33 +0000
Received: by mail-ua1-x936.google.com with SMTP id a9so6730343uat.3
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Mar 2021 04:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3zrRjA7YBWfjokl2Xgay7jI8fNwkayDcVMdDOQenPBE=;
 b=eB0H/6iRKCdIF+Oa3bn+ZIr4IQ+0wFbU1qS3HfP8pz0hVjFqxgyqUHE6GXT+S0dQYQ
 KUC7VJFhqJGzsuMn3pz7EF4xYVXHnwv0zXIeYjyNGVLvzcm2PYGHQO2253NFdI2+/jMg
 cwypZX8eAqKyas19vj9iRHtHue/nFY+WYPnJJx9dVYRWmhYWtHGUANcYOqCmUrYFi08j
 f3uUh+3JRQvg6Ye1+9uyWO0+chtxFdvgDGaItIe7rju/hS+MO+8jb8kFsJw653BU4VIO
 pnT359+ocyREYCvtJhdXNSfeY7dSedDZJkZIOHd1RsWjr+ald6dj6FNBxg4iOQv6aPGj
 9ptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3zrRjA7YBWfjokl2Xgay7jI8fNwkayDcVMdDOQenPBE=;
 b=OO80ilJ69lurnBkRbXg1lyKW1jXR0dVQ7acm7sxaC3zxfHN7hSz+/zOQ4B40q6AQ7Q
 GTvFk5yZfSVWHTUYtRqlBy0DiZvZIY1ta42V9cGdK+3FRvnT9xiPacaUqJ1jDw/gR93Q
 ExW++l2NSlkH4wivgELr1GlHdGnKvaElKHqKUhRtmHSAbkzFD0GeS3WiwWZfXXYz/f+K
 r9U4z05VZuVLIUMdmZY7KZerecxk4IcVt2Pc+9rrQdz1E8NpqsBfdKNF41R3AT+hdgiR
 NdubupW/pLME6bgLhzbrlAop/MnoCCVRlF6awv8roNrMUxu9F0Pmb89Zm6fJefXuAEvD
 X8sQ==
X-Gm-Message-State: AOAM532UQMmNZxs7TO/umXRnp6E0j1+y3NvkHHEYUj5ecBb0qZBmKH8k
 EZ0PJDU6KherQRvUmpCcCLfAlXAyVFp4jNkbNZvPMw6tgaY=
X-Google-Smtp-Source: ABdhPJxJWRqugaT2ktEGhfcjiMKDkDS0ihuhhne8GvhRwqY4O++ZmWQcUhqiqQ5Acd/8YKjOeH1rxim4P3Yrb7ekaM8=
X-Received: by 2002:ab0:6045:: with SMTP id o5mr10321516ual.100.1614689724060; 
 Tue, 02 Mar 2021 04:55:24 -0800 (PST)
MIME-Version: 1.0
References: <1614671217-133008-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1614671217-133008-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 2 Mar 2021 13:54:47 +0100
Message-ID: <CAPDyKFo4NkL5jqpRja6Ekmn1Hqww2fB8fehMBcan8OAPg4UVWw@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: add rockchip platform support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_125632_862760_3A20F1A2 
X-CRM114-Status: GOOD (  17.09  )
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

On Tue, 2 Mar 2021 at 08:48, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> sdhci based synopsys MMC IP is also used on some rockchip platforms,
> so add a basic support here.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 220 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 213 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 59d8d96..959084c 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c

[...]

> +static int rockchip_pltf_init(struct sdhci_host *host, struct dwcmshc_priv *priv)
> +{
> +       int err;
> +
> +       priv->rockchip_clks[0].id = "axi";
> +       priv->rockchip_clks[1].id = "block";
> +       priv->rockchip_clks[2].id = "timer";
> +       err = devm_clk_bulk_get_optional(mmc_dev(host->mmc), ROCKCHIP_MAX_CLKS,
> +                                        priv->rockchip_clks);

These clocks need to be properly described in the DT docs.

> +       if (err) {
> +               dev_err(mmc_dev(host->mmc), "failed to get clocks %d\n", err);
> +               return err;
> +       }
> +
> +       err = clk_bulk_prepare_enable(ROCKCHIP_MAX_CLKS, priv->rockchip_clks);
> +       if (err) {
> +               dev_err(mmc_dev(host->mmc), "failed to enable clocks %d\n", err);
> +               return err;
> +       }
> +
> +       if (of_property_read_u32(mmc_dev(host->mmc)->of_node, "rockchip,txclk-tapnum",
> +                                &priv->txclk_tapnum))
> +               priv->txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
> +
> +       /* Disable cmd conflict check */
> +       sdhci_writel(host, 0x0, DWCMSHC_HOST_CTRL3);
> +       /* Reset previous settings */
> +       sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
> +       sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_STRBIN);
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
> +       {
> +               .compatible = "snps,dwcmshc-sdhci",
> +               .data = &sdhci_dwcmshc_pdata,
> +       },
> +       {
> +               .compatible = "rockchip,dwcmshc-sdhci",
> +               .data = &sdhci_dwcmshc_rk_pdata,
> +       },
> +       {},
> +};

Speaking about DT docs. I have recently started to reject changes to
existing txt based DT docs.

Can you plese convert the existing DT bindings into the yaml formal -
and then add the new compatible for the new Rockchip variant on top?

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
