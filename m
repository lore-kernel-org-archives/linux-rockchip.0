Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D915CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 16:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sZI+u/00B1UlL2r4pAioARRmIo7zYW1ofnFlkTghMA=; b=wEQ8MkRnkENCNN
	Os+DSskaKpklOmnYEmjPT9tMuHjeh9lW+nv/AFesdCGAqdzCCKC8uhzmgVH2IQqbMwB8XQDwOcSQT
	5UIz6JIceGprym5abvqa8v+xrX4trhpT1URa2aOUwvxbS6NDvBzMR/iesOppQPEo98BqUggKbA+rN
	oKAGlTTAzorfrW+gZRWbVW0E2XI8gu7jqIJ6CkiZ1s+c1Eb8zbXdpNVbrn11QOrujUdMeyHL2JLux
	oOrBr2/zTepGab6K5cP2VP2FnOEuZB90GDVQwP+JJyqv+eHQxuBed4eRq4F2OYQQ80NGHWP/v2mw0
	3YcIZ/4Getlc5Eaprb7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIrf7-00000007VCI-3zHh;
	Tue, 11 Nov 2025 16:56:09 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIrf3-00000007VBO-2TyB
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 16:56:08 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-7866c61a9bbso38759767b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Nov 2025 08:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762880164; x=1763484964; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/lkozkdwY8SKpZI3ECZUvG3SVnMfa32+h2Cja3WdtpQ=;
        b=NID6PUTiAcfOR/N/derDXiucsjYxVKXg/4jEpJEkvC9KYKQUknmWjqPVLiDx3zxRfK
         KJmD5/InZ/9zbqbvEJPRw6CU6b4Hb1TUHysTFtdE58pdUajMe0UwwffsEMNx2zqkKIKo
         LqCQpeFy8iXE2sREO76RLuhM1bp/36DQhjLs5N2JpNAFD1COhof+Z7keu5tFvKXvF70W
         FXMuWQm9T4enp6VOhFIfJB0YSjrLQ5MHDR82KLb4JnDAU6KKWr1IRPZJ2PtVda+D7eHy
         UQ29z3dzYiio4OSr+L5tza34UTsGQlnpgKnV1L53YVw9FJWVdUSjY6L0VJ+eZFFcRIKZ
         UdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762880164; x=1763484964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/lkozkdwY8SKpZI3ECZUvG3SVnMfa32+h2Cja3WdtpQ=;
        b=sBQwDavMXDoocaK+U+gwVrNPPoCDkFr1rdIsWZvEZUZjgItMSbEmKC5HqSG6MaEmIg
         QOfxjcNsqQvPJoTZBvFgPSLDjjMVZ6jlDkEqggPYR6L11m7GpYh4mbWHwrpUA+6wP86Q
         F8Tr4xrCC4k9CUGJnrUHbXzHAjFDYKDI9nrI0C/nRrPW/BayzQ4JFKO8TuIaORD3lQbp
         IMafNxC/kTxZ8Bq7IQVJRcA3k3BpEcyqGpLfUa4HNjEzj6yVpWAjeH4x3veov3BoLMX2
         McPAzjlKB3xW2kyFn2q9MLlQUl7YczxNX0TIpbgA/ok2inHACKVa/IcqUpjwCbEmJzRz
         XKDA==
X-Gm-Message-State: AOJu0YxHKWo75JC0H+D2Vi0Dj7qDVtrkWpHIhL+Rt2n8287XHfmYBIMk
	yWSjudL8E7+NScsBxO+d6N7XNgBOFcHFPNdL/EhmP9YwpbQ2AATMVbGs9E4tiis3u0uuLUPkQMq
	9Gfqv41la/ozjp/IOXBr6jYXHajcL7AbB1WVhh1F75XV83UFCJIYXpGg=
X-Gm-Gg: ASbGncvi54+nmAivfZfua1HnhUwY8yaTFuvAsc6TfaPgmrvoWJZ0Wh8k2umykNcK34M
	7hoBYIE19bw1AyLh5ze57YGvPEvsfWZ7kpKY1YSJil58Elb/V+6cjY6zPvvH5+p+dAhJXctgW/C
	ABXmqtahF6GRCR3BkX19DVTTjDhNuO62b+BmIDU+x0MFaZFM0eZWF3JBp4/19qw+DgVD4kz0oez
	KHxBlqYnQzxvEwtHcR6jYLILyyGuIruzxEyC0JwhSUX8mlyh1LO2DsG+KpHjthHMVwF9+iE
X-Google-Smtp-Source: AGHT+IGvRCqd/OL63Rxlm4IFMcnUphHaaf/QtJsk/lkAsXIwq8+zXIkVaSNcI+uL08VDy46A0CBrAaEYCoBDes3EquU=
X-Received: by 2002:a05:690c:9b06:b0:786:4fd5:e5de with SMTP id
 00721157ae682-787d54753b0mr125132587b3.67.1762880163893; Tue, 11 Nov 2025
 08:56:03 -0800 (PST)
MIME-Version: 1.0
References: <1762242094-55346-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1762242094-55346-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Nov 2025 17:55:26 +0100
X-Gm-Features: AWmQ_blPfWvVh-ptTSUET-1YXEua6fSi2bYi9nD74s6XK49CzD93AdBqSoGJklY
Message-ID: <CAPDyKFpLp--cn4T3ifL8zB=GqptHZtnRH+V8Z370LNsj7n3wNA@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Add memory clock auto-gating support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_085605_655213_58229D71 
X-CRM114-Status: GOOD (  18.70  )
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

On Tue, 4 Nov 2025 at 08:41, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Per design recommendations, the memory clock can be gated when there
> is no in-flight transfer, which helps save power. This feature is
> introduced alongside internal phase support, and this patch enables it.

Just to make sure, does this work if the controller is used for SDIO
and has SDIO irqs enabled?

Or perhaps that is taken care of in dw_mci_prepare_sdio_irq()?

>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Kind regards
Uffe

> ---
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 6813549..62c68cd 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -19,6 +19,8 @@
>  #define RK3288_CLKGEN_DIV              2
>  #define SDMMC_TIMING_CON0              0x130
>  #define SDMMC_TIMING_CON1              0x134
> +#define SDMMC_MISC_CON                 0x138
> +#define MEM_CLK_AUTOGATE_ENABLE                BIT(5)
>  #define ROCKCHIP_MMC_DELAY_SEL         BIT(10)
>  #define ROCKCHIP_MMC_DEGREE_MASK       0x3
>  #define ROCKCHIP_MMC_DEGREE_OFFSET     1
> @@ -470,6 +472,7 @@ static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
>
>  static int dw_mci_rockchip_init(struct dw_mci *host)
>  {
> +       struct dw_mci_rockchip_priv_data *priv = host->priv;
>         int ret, i;
>
>         /* It is slot 8 on Rockchip SoCs */
> @@ -494,6 +497,9 @@ static int dw_mci_rockchip_init(struct dw_mci *host)
>                         dev_warn(host->dev, "no valid minimum freq: %d\n", ret);
>         }
>
> +       if (priv->internal_phase)
> +               mci_writel(host, MISC_CON, MEM_CLK_AUTOGATE_ENABLE);
> +
>         return 0;
>  }
>
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
