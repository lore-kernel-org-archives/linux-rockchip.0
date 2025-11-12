Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC02FCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJh/yWvr7m71sQX8FeYoKivmGkiifsuV65u1+IRnmHM=; b=XmTNlEv1Gfmf1h
	sur8LuMcj/Uny83d2sIBNWqFtjTCq4GKXd/hui8GHtpdKSGxCu62Ly3BFLExOGZp7EAzrduP0IODZ
	XrYfA2pGvK6mNCQTXaseASVaPeXCJSCf7fvqTPBa8DDicxym6qMeZavQinQX/r+JqwuYyS+4VXYOO
	yy5CtLnOGmBDQujFv/BDnyYAN006h26lOcqfqwnlKCUykgSJsc+M73xeLLivfo9PCa9jBJVLqPZHc
	KfRPX8FiuE2oWjQizRgz79plw6ZwcPZO2Ze+3ESZ6zdhy4UG5eNl1WwKLHjkro/L3ICdJp/PBmTYz
	O301N+nRt+ociYcz5JDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ9aL-00000008khY-01ZD;
	Wed, 12 Nov 2025 12:04:25 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ9aI-00000008kh4-1Eym
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 12:04:23 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-71d60157747so6207297b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Nov 2025 04:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762949061; x=1763553861; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ccW/CHx/h+CggUqFu9D4T6PtJEj38i6Wsue2zaP4sjQ=;
        b=mV/YRxUCcrLA1z4c04LRHdC+5t0MFJPjJRXV978XfrnxhrAbpteamzTFgxCFeNfFk3
         mVHl4dwHG5aVYdGZmDxlalfJHpdOWzmcDCg0NO86hYr4Q0cPzM8Lhf+gyGszUsYvnEN0
         /Hvsg49d7BV3+uJcjEWDY67o67r0lSe62gSAQ6NIc+nNO4UxiwoT59hKfN93MeH18wGM
         C+BUb015ZvJCLFz73X2M+OtXgswWta67vS11pZzJbUno7hEem3RXZU+w7riMWCjQjy8s
         ub1Qr4wfaGQ/4tJZFkjtpKii9w6a3ih4d3LKFkoc7l5eVlPQSACiMCBZuLyIIJYIb9x9
         Vi5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762949061; x=1763553861;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ccW/CHx/h+CggUqFu9D4T6PtJEj38i6Wsue2zaP4sjQ=;
        b=sAiWuY8tXMQfbw6adYBL2gm2pErYarSrN5XbL3V/w7GOQQluIM9fgrup44rTKu7Lhs
         tY5S7DkPJDMamfoi75hebA9+LuPxXmpaFLnc6DyuQ6YG1cYWrSUC2NlQ/XilfdCEfe6N
         DF7FaHXEOxYNbQWalJXfDZ8sKRvX3A5KQr008Q2n7UXzU0BmUW7OZimqBgTPVQpAROFM
         t1HkiGUt0YtXLIweOjsIar1smMgKboBFRGZLY+LMDxrteOwuAN1A8qEwjH7tCrfB9b0J
         RJ6NXRuxugeiHPHf9vlNOfw/KuOctdPgA4oRXrdobFjLIbuKTIgZSleOFvWEsCXgK+GC
         eWRQ==
X-Gm-Message-State: AOJu0YzbEXIw7TqF1KB0Syhb5YkGp8r1PaNUMAqjbrFJxjR6tUlYHJUt
	n/F101On+zmzAdDOxgOsfEjR9qUJFdGeTpP+yC4fQ2NjiietS1djugRufp2fBssAkwcZLuU1dtQ
	8IqZ7YMGBJeFvPqXjBYyLsmOl3n7Yog8LAFavuR37fA==
X-Gm-Gg: ASbGncuUmCvbQvtosjg3EHsJY6mreZPJqy7rbcqhum9+r/xJ+mxqfcxprJu/ufpytWA
	BnAnPs/hI77RG78i/qmyZKZHWV3At7bL30WEtKKJI/HypS+WfJA/OjPKgVViRlxxv1+/dqbWhuF
	ahcNl0ga8BCBAtHM3Rx2vIS/Qf5YtrtRtRdveooQGcL15pwXxe14Qoie/BPrCGO8OVpuOOX89fg
	fp3g9nrAW0cduZIbyOkduk4F8MmcKbfeBdLmA3JgJ9IGS607KqwYIrMNYj/2Q==
X-Google-Smtp-Source: AGHT+IH/UL074xgx6oYYsB9r3fimitKG1NIAXLSBgxB+N+QwyoPjQbv+8K8TbfNgKkSOSXoL5wsNl1ZmxBI592Dx5ZM=
X-Received: by 2002:a05:690c:5687:b0:786:7475:b838 with SMTP id
 00721157ae682-78813723ee7mr16909267b3.68.1762949061124; Wed, 12 Nov 2025
 04:04:21 -0800 (PST)
MIME-Version: 1.0
References: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com> <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Nov 2025 13:03:44 +0100
X-Gm-Features: AWmQ_bknUUU6UANIHKVHBX_7_8_dLzyvPpfTvekBOPONV1Re2VrbZaJ_TJl1waw
Message-ID: <CAPDyKFqAwP=SDrQ_umkYk0qA50rVt=WJ5giDt8mt+RyBSCQDpQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better performance
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Asutosh Das <quic_asutoshd@quicinc.com>, Ritesh Harjani <ritesh.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_040422_520786_AC32AC2B 
X-CRM114-Status: GOOD (  14.34  )
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

+ cqhci maintainers (Adrian, Asutosh, Ritesh)

On Wed, 12 Nov 2025 at 08:44, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> CQHCI_SSC1.CIT indicates to the CQE the polling period to use for
> periodic SEND_QUEUE_STATUS (CMD13) polling. Some eMMCs have only one
> hardware queue, and CMD13 can only query one slot at a time for data
> transmission, which cannot be processed in parallel. Modifying the
> CMD13 query interval can increase the query frequency and improve
> random write performance.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

No strong opinion on this, but I looped in the cqhci maintainers to
allow them to chime in.

Kind regards
Uffe

> ---
>
>  drivers/mmc/host/cqhci.h            | 1 +
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 5 +++++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/mmc/host/cqhci.h b/drivers/mmc/host/cqhci.h
> index ce189a1..3668856 100644
> --- a/drivers/mmc/host/cqhci.h
> +++ b/drivers/mmc/host/cqhci.h
> @@ -93,6 +93,7 @@
>  /* send status config 1 */
>  #define CQHCI_SSC1                     0x40
>  #define CQHCI_SSC1_CBC_MASK            GENMASK(19, 16)
> +#define CQHCI_SSC1_CIT_MASK            GENMASK(15, 0)
>
>  /* send status config 2 */
>  #define CQHCI_SSC2                     0x44
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index e276a4e..cad5165 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -631,6 +631,11 @@ static void rk35xx_sdhci_cqe_pre_enable(struct mmc_host *mmc)
>         struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
>         u32 reg;
>
> +       /* Set Send Status Command Idle Timer to 10.66us (256 * 1 / 24) */
> +       reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_SSC1);
> +       reg = (reg & ~CQHCI_SSC1_CIT_MASK) | 0x0100;
> +       sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_SSC1);
> +
>         reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
>         reg |= CQHCI_ENABLE;
>         sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
