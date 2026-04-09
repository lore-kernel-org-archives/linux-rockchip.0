Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D710DF31E4F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 15:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RWQTvVz3DmlyxXaJQX5SUHd6TZvPH/O/OcD3lDa21o=; b=2pSsXGnNVmihxj
	PFSbGNUgUbd0DBM5f1ZLCoTBSPuCeGmeiUVUjKxSQ75rY2XjuE3WG4MUmt72qca8flzhtd14F0PKD
	+f0Z52ca3Mjp/+FzMjkFJ5YIuzOCNDXmmmXsE5MRC6NmOT/uX/E8WPqsaqmUr6MZmBEy7PWk4z2rT
	ls2SmG0w8Fdw6zgB4KUPJTQGNer9cgJmR0sC7eu23m7U2OSLT2AP94hvnIVSMfkNMVQpIJXWxvMvY
	/85Ou8HZ8Z7oKdsMg9lG8IzSs0hWEVj8/TN8JflaQmVHvcpFcjWk9Od7dVeh0ytHUfDxYwTb7FjIu
	QH/KkJQN1yIzSG/H+XaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wArhU-0000000AsOw-1Ytz;
	Thu, 09 Apr 2026 15:53:48 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wArhS-0000000AsON-09kk
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 15:53:47 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5a2967e5de4so1596718e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 08:53:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775750024; cv=none;
        d=google.com; s=arc-20240605;
        b=OaM4dYMuDrJzTo5KTTv6TYVyRGUZxH2qqiogWE+MS59YnmQ0TrH3ZmlOQ+h/FzvtIG
         sGP3E2iBjKiqZIKq+mL/tnbXM97pOSuuCbm+LXzN9EYChCnmyjhaRcOVWLnK+0CncQ/Y
         N2fwXc9ot/+CAmEvSIwzgmD9GM3u80nXj9DxGmna2xsWYgtgDI/Qde0fRwPbSzM5YODZ
         vJYbexT5Ac8O97T3Wmx63sfxL4Nd5DgBFChduzdvY3eJW6WN1piAtjceiV0RjJYj1H2X
         +2Ji2wAFMYsPihhpNeQQDfOOcpu48q9HbjN1atNbNgyUcETbpw5K6U+OpzDf1VCCrs96
         FkXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dv4qdWsse2g6Hs6kPBq8xuq0aEEIapLlZcENiVgDIrA=;
        fh=Ji4jx/W3TheG6qZw984dDt/wmyw2j2s8Lj8rs6H/bTE=;
        b=UEUlipo1B9Hsjocef0hyUTDbCwYiQEzH4iY24lxzoMxHVmHxGnAooXy+fpBPIr2jRQ
         nKMWLBpMlzq2AoQWUfas6QNPPwpJDdF7p8CDBKlXcK+v3ZJQfaAO6eOmDs6Y6aUV4ij0
         lNWgFRfuV/ClKsqcP6IlkTfPPyOYJxRxpBNj7Wrb1pKSkZKqFGsa8/4O1Uz1Qy0rWOBS
         LhGA5GWkzLkXumjqgUP2kzheYJ6PQ2kWgDJD6ApYVFmFAdHs3JhEgWrEQ5FTSBEVbT6A
         UB8rdwbEtVTAnmQUFDD5jWkNw2c7+8jX2XZivHqfXJRwCkP4O/5vdCWLDZNXaZwajYhz
         C6tg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775750024; x=1776354824; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Dv4qdWsse2g6Hs6kPBq8xuq0aEEIapLlZcENiVgDIrA=;
        b=bh4UeGf7LeK3QDAW314BC/np1AYiXBjAIWATPwNysxjwnoUXFxMPGr/64qz+rZFL0F
         kzblk2LH4pTdqHmkq8ZihI6A9Z+haE8YIV7PzDfNFwfrenkkQd1SJY88SDJcnuMb23CZ
         1rJHSlKGObrxb3R1eCvhrnMvnkaQOu2ndcj1egPG3yYQC6c4LErmt9tFx3j7hEZjUIJc
         wwWLpkIz+rryczvecbuV+WY7UZajs+4oxzT0UU2VS9tL9ws7uwj2XHApCX23PTBnf2ZI
         EzNfKKERAMJ/qxToemuW8nRLcMYYYnbM0NaQrR5xx+F93TcohMQnVarfdNVWDy6a755Z
         4ugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775750024; x=1776354824;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dv4qdWsse2g6Hs6kPBq8xuq0aEEIapLlZcENiVgDIrA=;
        b=Q3rcFo+IbZB6w4LFNT29mH+mZtks2/Zn8AxT+MOMnAljbYY7nQEWXCRL1KNxUHD4bt
         VXL9tWBJuNEEOGRA34blLTcK07sltwR78OqNTp4Yos7BvSLbhC1LlMbCClVMiRX9iFy7
         PcC/FKvAki2eLR3jeCX08vfCNVnF6msTHCjwkyXjrOZSq0zeFUQV7YlGMhleHDejvnTR
         V20pdkQ/2CK7KTNkIJmEHQI35IvLOMEhpJOjTXsHUYhBOqMdw0/NMHgHAaBFhp2sNlok
         l8Bms222mjX8WeQTqYI5gVGUYWavCBnxtUMkPJRvD+jnfaoDPlXWiWxhFENEprXGLmLj
         W+bQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcEa7B+LE5QK2MHtfH1YdvwbqZv8QFmiOG36ZfmcnW6csDltCUQS5Doj73tlNMP/CKEVFcjnHw+SQvmnQvOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzDUcA6HofMfedjThxwL7HKkD64FbMzzCBWZuSB8SqA9q4x8eMx
	x6wuTeUeRLADqt1XTodZHvzy7uCcot4MykEfmJP0LcY10x+lnRa5f8C1FFGQmm8Qio2NbSQXo0h
	SiYj1La4euMDOAVdmTo1NDywD3/e2rdInrMOE91eWcWfKVM6e2zbC
X-Gm-Gg: AeBDiettacvdBGndUjb/87iG6wxsNjlgcjy2Q4NIX3GSBY2ghFJx4MhuafqmulJa8Sp
	XCHXwKYDz22w55ZS6xYaIuJjzDE+29LBYR497kc6e8129wmOqVjW0L7qayPr/yCs8jg8pbMrXdv
	KCZFJ8xlSUH8bkF0BkOVJoFoOEBqS0n0mJZHndNzTlNM31Plp4lvoP/1dgoxveMuLthpQThkOoa
	Q0yWYYbYg0mZn+ceOJIYIbzmrlLJcWJyF8U+vuxpwJOhaT+Xb8UZxQ+A3oxBP3U064hKqgIa/Zd
	qbd0giPe
X-Received: by 2002:a05:6512:3b20:b0:5a1:381b:fae1 with SMTP id
 2adb3069b0e04-5a33755cd01mr8745197e87.10.1775750023584; Thu, 09 Apr 2026
 08:53:43 -0700 (PDT)
MIME-Version: 1.0
References: <1775632729-22841-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1775632729-22841-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 9 Apr 2026 17:53:07 +0200
X-Gm-Features: AQROBzDtN6BuSpifx1kELMTA0xEfm1HADbBZ4h8KffOIIm2mDqIQjdmC0mk4g-w
Message-ID: <CAPDyKFobhyGx6yCX6GEA5sCxXnsaB4_5JQN-K6wghOXU=Q502w@mail.gmail.com>
Subject: Re: [PATCH v3] mmc: sdhci-of-dwcmshc: Disable clock before DLL configuration
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Adrian Hunter <adrian.hunter@intel.com>, Stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_085346_130133_1F7066DD 
X-CRM114-Status: GOOD (  23.17  )
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

On Wed, 8 Apr 2026 at 09:19, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> According to the ASIC design recommendations, the clock must be
> disabled before operating the DLL to prevent glitches that could
> affect the internal digital logic. In extreme cases, failing to
> do so may cause the controller to malfunction completely.
>
> Adds a step to disable the clock before DLL configuration and
> re-enables it at the end.
>
> Fixes: 08f3dff799d4 ("mmc: sdhci-of-dwcmshc: add rockchip platform support")
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

It's getting too late for fixes (unless we get an rc8), so I decided
to apply this for next instead, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3:
> - Fix compile error while amending the patch file by mistake
> - Add Adrian's tag
>
> Changes in v2:
> - Add a comment about why passing zero to sdhci_enable_clk()
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 6139516..0b2158a 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -783,12 +783,15 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>         extra |= BIT(4);
>         sdhci_writel(host, extra, reg);
>
> +       /* Disable clock while config DLL */
> +       sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
> +
>         if (clock <= 52000000) {
>                 if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
>                     host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
>                         dev_err(mmc_dev(host->mmc),
>                                 "Can't reduce the clock below 52MHz in HS200/HS400 mode");
> -                       return;
> +                       goto enable_clk;
>                 }
>
>                 /*
> @@ -808,7 +811,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>                         DLL_STRBIN_DELAY_NUM_SEL |
>                         DLL_STRBIN_DELAY_NUM_DEFAULT << DLL_STRBIN_DELAY_NUM_OFFSET;
>                 sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
> -               return;
> +               goto enable_clk;
>         }
>
>         /* Reset DLL */
> @@ -835,7 +838,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>                                  500 * USEC_PER_MSEC);
>         if (err) {
>                 dev_err(mmc_dev(host->mmc), "DLL lock timeout!\n");
> -               return;
> +               goto enable_clk;
>         }
>
>         extra = 0x1 << 16 | /* tune clock stop en */
> @@ -868,6 +871,16 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>                 DLL_STRBIN_TAPNUM_DEFAULT |
>                 DLL_STRBIN_TAPNUM_FROM_SW;
>         sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
> +
> +enable_clk:
> +       /*
> +        * The sdclk frequency select bits in SDHCI_CLOCK_CONTROL are not functional
> +        * on Rockchip's SDHCI implementation. Instead, the clock frequency is fully
> +        * controlled via external clk provider by calling clk_set_rate(). Consequently,
> +        * passing 0 to sdhci_enable_clk() only re-enables the already-configured clock,
> +        * which matches the hardware's actual behavior.
> +        */
> +       sdhci_enable_clk(host, 0);
>  }
>
>  static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
