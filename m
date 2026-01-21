Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF27C44536
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 14:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFutcxdV2po5r7Ir9Gtb8HiOhatAwZXxuu0jX5mFbks=; b=EHo85NX8cfHjDO
	32wjwUDdemrt/u6HAVUfJVBK9Ku9p+9ESWwZchzeGDA0/jJj/Ha7kXqocBaxJKQcO5QUuuKXFjsbM
	cUsGdEpvRhLaZJYARYvg/cYv+qe9VtBglfx+ueXDezTjWudmYNIYU6MfM7o4p73N0kJULcaDCWOjF
	OZCD9iZvNMtERCxiFwpQHwYPbl5ZO2MeyVf92iY9q+mpqabJx1LYNCP6HGrJnfA/PXSMqeUJS+GBc
	5cEQHhW26TfWhLpfcsVxRASE0pVUfalklvzlewBfnYUzW+Ylia10Bq5wvn2u7jD2BBVeIzr73Z7MU
	kRg7hRxwJid74PrsHvKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZbv-00000005gBy-3lao;
	Wed, 21 Jan 2026 14:55:07 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZbs-00000005gB3-43Jy
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jan 2026 14:55:06 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-59dd263bfd3so696222e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Jan 2026 06:55:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769007298; cv=none;
        d=google.com; s=arc-20240605;
        b=XERKbc9aOZSI+Bab5hoIIlB9yYfMAWRfBDJixZ20UTcpUsIL6shDjsjxFE/ehEzrY5
         LlDQNTu3RiT9H/GwOp/6xnGRdOPnorc7VvPIPOiuOBpr+Xt8plOCtvQmPSYGY3Oe/6dj
         4uYyrh1FIPtxrCp5E9bzw9QwKR1CrIkOBKNdXnd6uk4Gr74ALGo/E0dEQRVg6wC9JASq
         jj/76fJ6/7XnrshRpkZwTe2r6QIOW0nBy3KHI6f1nxaGIkvGeEKOU3mWF1tnOd5ZSPAf
         OTTtTv+ZxjBU+Q5fQPmmBJrHkKYYuedlB6Ow5zj5EZ/jsqZ4fE4KdQ3kL79+ifeH1vQh
         UU+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A6330N1LFD4XBCM84aMPcZjMDcowYLAuIIeheUGm2Io=;
        fh=oe+YeBk5ORbnQELzrM/Kol0Zy+iMZ/IfWQzu/hbu9gU=;
        b=OfZed5V9J7CQdVuTcWh72CP6QygpaefrF1qUxpBHsTOVvswtwbCo+MVdp/eN8AXC4o
         PNcCFxUBzdvKUsBcPcpbT90ABohQYQorOgbJnYw7yOLN4lIO5HSnqyH2nOdaeKeYqlvv
         b9K3i5lspgwx6E6pHWuYv043UrVjnUsoiJEGUQdiDUEn+Cakb97nbXvee6YdFbsafmDf
         FtEXhn5rJK638Mtie4iKB/gSXLs/a2xSsXJLXiajBP4x1vM/Lmj22IdXAEVhKL2VoROQ
         V0SStZQF83tojDk2CrJFPSST6sibAAgRZvkUP7GizFL+rSEGQxzowCGkUyQZDhS2EX0/
         5rPg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769007298; x=1769612098; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A6330N1LFD4XBCM84aMPcZjMDcowYLAuIIeheUGm2Io=;
        b=NryI818mApWFsKJa218kJBKL0s9RHjDBSMDyoi15N+WNt/TRkybVorfIXKHsfKrLY3
         OKXkpbDvc4CyBz3I0JAfk57qkQZALoeR4DeyPO78zXIWOAc4G+Nd+fXbG7tKnozq2ZsF
         xD7TpZ6E704qYbX+WNMkCbedByc+l17jTvcwoJlUgNAyq1lW00cuYyGf+mKDnGMcdvbM
         Ge4kkwskmzQXgyhU4DF86JQxIe5/5Bf2vHWyC17o7pjIsVFA49DaiipOdg6UVpTnrzvO
         sPR2Uw9YrVg1CFANlLOq0WSM4SU0ISuXDsyMk7Ko3SxkTrMNjNSOJPlrxQUckXDQ5CMp
         pSpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769007298; x=1769612098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6330N1LFD4XBCM84aMPcZjMDcowYLAuIIeheUGm2Io=;
        b=lQptSRAx/HuiV24AMVD4PSTc3gqLnBbqCUYvDpekCnOsc/XJLQ8MP6iN4kY/6y87NO
         oQBCFiY662X16EP2K85OC3rLiwV021ETt+9917Yyctds/BaZqldYGjRCvTESLRrQjHGU
         q6T2BSrN6WaZb0AsxxLhngTn/4gsvrV886h3Vc5FcQmsmJjuob/F0SzL9rjnBuxTSqD8
         SptbGxbgtRBhDKcfEgoWB7+LgA/lMp309BwvBRCpe+xQHx1YNs8Vm7+c3GYYHdt/B0z3
         98NjNJq5txf9fKEEr15KuyO/SAPZdEV9aE7qLXMa3joVjT4wgmbU8g7QH+gysrYFKMMc
         drSg==
X-Forwarded-Encrypted: i=1; AJvYcCU4TTPcw5qMuNp882RhLhBMmzn8HFvb/RcWP0yCnk+9+5EwCsdKVD0o/01AS+Q0JpGA/zYoggVh6Ou/hbsP4Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywg4dbxkUrctISY4VxE40pwl3bBpHlQPtC638UO7hD61gaFR/7z
	kloH8yfH2v2ZIbxgKg0H+ADQhdrsHfv6Yc4MOqBWvQsqGVUQ9dWHQ3nwbLDyW2VucrtiHqYG3rW
	RvYqKXigf48+gg+aT26/7M3Hxg9VnWPtHeijACjr0wg==
X-Gm-Gg: AZuq6aIM4I5JrmdxAyDfAGMJTT/EKJeXBKhFMKWP8RXX35iG1olYKfCOTPr9zA3bWyY
	aZtNGp2FO2k/y6tBf/Sw/gRrG+/7H2fHGjZuKUbAuJEHfGevYnWu5CaksQ1kCz2u3X2Nd3fhFAM
	Fg2lQN7lychonr2PhEtrTKLOCmxjS08FZW30UrwBrnj09YF89JsuVJO7wnmPCSAdcDoqzjmZOOE
	0hxKG3VpGx562qxjMva1BNpj6bYf/vkXZKsJaXg4UGHplErFY7NBM3fMjNzsqngJ/FUjvAR
X-Received: by 2002:a05:6512:3b07:b0:59b:b3e3:c7fb with SMTP id
 2adb3069b0e04-59bb3e3c825mr5593429e87.9.1769007298426; Wed, 21 Jan 2026
 06:54:58 -0800 (PST)
MIME-Version: 1.0
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com> <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 21 Jan 2026 15:54:21 +0100
X-Gm-Features: AZwV_QhAFWP6FlwdmN7VDr70aTTu8jbqo16cWKBC4DG2eUryPHPCQFlBbqWCxU4
Message-ID: <CAPDyKFqbv0Vrb8a2bHN8gAdY7iEh_Sx8iWF7VWiQ71rjbWGBsg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] mmc: dw_mmc-rockchip: Fix runtime PM support for
 internal phase support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	FUKAUMI Naoki <naoki@radxa.com>, Marco Schirrmeister <mschirrmeister@gmail.com>, 
	John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_065505_052876_DB9EAEC9 
X-CRM114-Status: GOOD (  24.34  )
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

On Fri, 16 Jan 2026 at 01:56, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> RK3576 is the first platform to introduce internal phase support, and
> subsequent platforms are expected to adopt a similar design. In this
> architecture, runtime suspend powers off the attached power domain, which
> resets registers, including vendor-specific ones such as SDMMC_TIMING_CON0,
> SDMMC_TIMING_CON1, and SDMMC_MISC_CON. These registers must be saved and
> restored, a requirement that falls outside the scope of the dw_mmc core.
>
> Fixes: 59903441f5e4 ("mmc: dw_mmc-rockchip: Add internal phase support")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>

Following Heiko's approach, applied for next and by adding a stable-tag, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3: None
> Changes in v2: None
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 38 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 879188f..2fe0896 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -36,6 +36,8 @@ struct dw_mci_rockchip_priv_data {
>         int                     default_sample_phase;
>         int                     num_phases;
>         bool                    internal_phase;
> +       int                     sample_phase;
> +       int                     drv_phase;
>  };
>
>  /*
> @@ -573,9 +575,43 @@ static void dw_mci_rockchip_remove(struct platform_device *pdev)
>         dw_mci_pltfm_remove(pdev);
>  }
>
> +static int dw_mci_rockchip_runtime_suspend(struct device *dev)
> +{
> +       struct platform_device *pdev = to_platform_device(dev);
> +       struct dw_mci *host = platform_get_drvdata(pdev);
> +       struct dw_mci_rockchip_priv_data *priv = host->priv;
> +
> +       if (priv->internal_phase) {
> +               priv->sample_phase = rockchip_mmc_get_phase(host, true);
> +               priv->drv_phase = rockchip_mmc_get_phase(host, false);
> +       }
> +
> +       return dw_mci_runtime_suspend(dev);
> +}
> +
> +static int dw_mci_rockchip_runtime_resume(struct device *dev)
> +{
> +       struct platform_device *pdev = to_platform_device(dev);
> +       struct dw_mci *host = platform_get_drvdata(pdev);
> +       struct dw_mci_rockchip_priv_data *priv = host->priv;
> +       int ret;
> +
> +       ret = dw_mci_runtime_resume(dev);
> +       if (ret)
> +               return ret;
> +
> +       if (priv->internal_phase) {
> +               rockchip_mmc_set_phase(host, true, priv->sample_phase);
> +               rockchip_mmc_set_phase(host, false, priv->drv_phase);
> +               mci_writel(host, MISC_CON, MEM_CLK_AUTOGATE_ENABLE);
> +       }
> +
> +       return ret;
> +}
> +
>  static const struct dev_pm_ops dw_mci_rockchip_dev_pm_ops = {
>         SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
> -       RUNTIME_PM_OPS(dw_mci_runtime_suspend, dw_mci_runtime_resume, NULL)
> +       RUNTIME_PM_OPS(dw_mci_rockchip_runtime_suspend, dw_mci_rockchip_runtime_resume, NULL)
>  };
>
>  static struct platform_driver dw_mci_rockchip_pltfm_driver = {
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
