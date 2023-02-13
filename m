Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D97DC636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 23:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XskmZMva38HOn7JerLioYxA45rNR+zqvB+2thku+2k=; b=3KUhE7CldvdDLA
	bthd+WCa93yg1KSA0QhA1EpHt6FYNUlEKJEewvTLXjMogm4D+qwNNlNZCMdDlk4lqJ2UcmqumliYV
	RkEcyuq40UrCuo30I+0Me0tDCY36NTmgxNroro7xmm8z8zb4auT2kOleKW6ny3zA+VGZJWxASCcyJ
	y9VpvbBT9k/tTAopOkIAX686PkBLXdPINwy71kSG34l/NDi1eHo1otMQX11dadoZ3EoUXtyH1mDFz
	09cTJlpdVlV01M82iHPgFlinN5SRlOS5qoVDCrFSt2fzAbHs2rS52GCrFzww8kKMsxAvbV0ElfWzZ
	pQxXdd3lAdd1ubWKT0cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRiZj-00GoKc-4M; Mon, 13 Feb 2023 23:49:35 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRiZf-00GoHn-IL
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 23:49:33 +0000
Received: by mail-pj1-x1035.google.com with SMTP id r9-20020a17090a2e8900b00233ba727724so108543pjd.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 15:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1676332170;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FqcL+yTn1fiA5fKrsVjFnlJitfMsj/VXs0iAxxYQRNI=;
        b=DtxmCDQkSrXaIlL0SiQdAmWWjgmqZQNkj6Rk77fLGPIzyoOKxVwwbJcp6IXcMa1ElU
         w7nMHOGwIQKb764P7ryy4KeVYLS1Jd91n5WbiGstN5RmMtgbMLQSF5RY4UQNsyHx7utZ
         kKz8O4m3iFxnzoYbLsDPkJIXsjnkXApVbrfz5sXhGdbQm60Od6vXhuvLQIcikxRwProO
         Q71+RXlGrhUYawPwqtc19qTvXcnxC3hex7xE73tNeV8Drox/XDXWRjM8POXUhW1uqVGJ
         7xqYiezpf66wHJTKOZqYFkG4EzcoCXNoPlUpsRXoEjCCpcocmHoCEPFIcFDAyq4LAKLx
         Ww5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676332170;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FqcL+yTn1fiA5fKrsVjFnlJitfMsj/VXs0iAxxYQRNI=;
        b=Ev0I17I9j12xFS5HSS+y6Ywf/TyjTuI2hWy6IjLxFxPR8Y73rLblF37CWxR4/S05Ev
         k8CtjG19viCLL8yq6ZlyBuUBlbBHxXgrvtu2pEdjG4GXBw6c7eY+jAJQ7TYK9znDruzr
         OkGIVy2fG+/Bc55A+0G2NZuC5SvDag6y+mrEuCb6ddHnwOeL+0K5INQ9ONW0w0osLY2s
         4Nbw/86ahYHVxm4WDjV+IpM9YrYqP8cHsDxnacT0Y41/fFqxn7PXyov+ZSmeII//eiuk
         Xw9eTJfPS0/vmlvUssa2wYTTaQW4X3RIqj+Vo3DZK7fEa10i0+9HFpT59Pr6LmWDhrdg
         xUyQ==
X-Gm-Message-State: AO0yUKWh9r+a+Y8AfItROh7BAn5xh/w5HhjlQSgnE7k52rLetwoKw+D8
	Irenka/QFjzEMpCp0P6JrSOGZrq+UVONvSzlFiRnPA==
X-Google-Smtp-Source: AK7set9AYeMFuAyjnDhgkva+nGVAezeEZfzh9tolf7qS/h/itOdqxUWwAat9xmZrkTEUirPHVw49HULoqNcrDYg0vRI=
X-Received: by 2002:a17:902:d506:b0:198:99b5:cabf with SMTP id
 b6-20020a170902d50600b0019899b5cabfmr170240plg.25.1676332170051; Mon, 13 Feb
 2023 15:49:30 -0800 (PST)
MIME-Version: 1.0
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com> <1675298118-64243-2-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1675298118-64243-2-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Feb 2023 00:48:53 +0100
Message-ID: <CAPDyKFrduc0FdXg_nVZ5W9-=k7-CcqAm-xW-S=gPJhoXaEMcUQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] mmc: sdhci-of-dwcmshc: Update DLL and pre-change
 delay for rockchip platform
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_154931_628039_5050EB43 
X-CRM114-Status: GOOD (  17.17  )
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
> For Rockchip platform, DLL bypass bit and start bit need to be set if
> DLL is not locked. And adjust pre-change delay to 0x3 for better signal
> test result.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v2: None
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 4933867..46b1ce7 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -48,6 +48,7 @@
>  #define DWCMSHC_EMMC_DLL_RXCLK_SRCSEL  29
>  #define DWCMSHC_EMMC_DLL_START_POINT   16
>  #define DWCMSHC_EMMC_DLL_INC           8
> +#define DWCMSHC_EMMC_DLL_BYPASS                BIT(24)
>  #define DWCMSHC_EMMC_DLL_DLYENA                BIT(27)
>  #define DLL_TXCLK_TAPNUM_DEFAULT       0x10
>  #define DLL_TXCLK_TAPNUM_90_DEGREES    0xA
> @@ -60,6 +61,7 @@
>  #define DLL_RXCLK_NO_INVERTER          1
>  #define DLL_RXCLK_INVERTER             0
>  #define DLL_CMDOUT_TAPNUM_90_DEGREES   0x8
> +#define DLL_RXCLK_ORI_GATE             BIT(31)
>  #define DLL_CMDOUT_TAPNUM_FROM_SW      BIT(24)
>  #define DLL_CMDOUT_SRC_CLK_NEG         BIT(28)
>  #define DLL_CMDOUT_EN_SRC_CLK_NEG      BIT(29)
> @@ -234,9 +236,12 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>         sdhci_writel(host, extra, reg);
>
>         if (clock <= 52000000) {
> -               /* Disable DLL and reset both of sample and drive clock */
> -               sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_CTRL);
> -               sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_RXCLK);
> +               /*
> +                * Disable DLL and reset both of sample and drive clock.
> +                * The bypass bit and start bit need to be set if DLL is not locked.
> +                */
> +               sdhci_writel(host, DWCMSHC_EMMC_DLL_BYPASS | DWCMSHC_EMMC_DLL_START, DWCMSHC_EMMC_DLL_CTRL);
> +               sdhci_writel(host, DLL_RXCLK_ORI_GATE, DWCMSHC_EMMC_DLL_RXCLK);
>                 sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
>                 sdhci_writel(host, 0, DECMSHC_EMMC_DLL_CMDOUT);
>                 /*
> @@ -279,7 +284,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>         }
>
>         extra = 0x1 << 16 | /* tune clock stop en */
> -               0x2 << 17 | /* pre-change delay */
> +               0x3 << 17 | /* pre-change delay */
>                 0x3 << 19;  /* post-change delay */
>         sdhci_writel(host, extra, dwc_priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
>
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
