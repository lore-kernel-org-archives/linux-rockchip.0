Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71E46C64EC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 10:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEqfc0pbTw+oGk0hKh4ixuUMzqg2YUur7DG0Sb2Q1mE=; b=DhrF9/OxOpV6TL
	eVf3+eIHaW9t4QmqOv5nREv74iAfsIPvDU1d2mzgCy5UpgEH73Y1rCMXlVPhoK7KN7vqmBxt1S4Xq
	UoPZCHz28WAFWQ1bsrliMcI1QmlsbHF/1s57e+qUJOrBU323Q7AlItYGcpH6hwLlvPGBRMRBvxdfu
	BD5naMFf/tn5qtPm0gYYKsOOsMP0JxyMfD/VhvB/aendRgvun8vM2T9c6DTp5MQM3CgaI8TrPh9Mr
	2zBDt+gJFg+3EiCYUKEG3Vq3jlqnzttB2Zm3whY2zOljWKLhWqcoS8PNpcKMatzULwJAM8TwdUFpr
	pMjtrBxWEHrslbrwYSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRsnH-0015ld-HU; Tue, 14 Feb 2023 10:44:15 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRslG-0014Zr-Oj
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 10:42:12 +0000
Received: by mail-pj1-x102e.google.com with SMTP id v6-20020a17090ad58600b00229eec90a7fso1379695pju.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 02:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oIcLt/ncNWTfm4ID0hyfIryBF5hBxiEJQDxsOaXIt2M=;
        b=p8EZ3Qtoxudapbd+bc0BhDaxF3x7P2fWDFtEZ2jAWg5TKI5k9BVMG7xKYjhLv75K1H
         U0fafG87uCsjITiMlfHrE1EZU11xDB8HgLLd7gJs+YJXM/BmDdVX3TxJL4CPtrK4BkJt
         1CdzjqtRLaZkDEYUJsKEp98hexXpIOkxtTZb/vMAlnvRNPwoBBP2LFkjvCNcTl2mnO6A
         t+8nDe/PZZ/cveZK0brM2dSGzL6GJhfsBEiWz4p2KcK90sLPhfW1drpSGhe/fVly6NLl
         2D2pZon2fGb7jN7A26lZmklhTQ+NVoxl2bl4NJzfDXjyGuUvGMd41Q/gQYBd0PHBejNi
         Q63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oIcLt/ncNWTfm4ID0hyfIryBF5hBxiEJQDxsOaXIt2M=;
        b=f/3iboE/Wl6in/QowExuFRWiuCMOV/LJl1BWIBwdGBwZs4zsAtDpkXtAsTWbXVeywJ
         94t6xz1I7PDujGnJK4A9pM8UoEWe6dK/RS4kUKt2NWbiy0BfoOMfiYLhtOuKmRuNakCW
         KviEApUZzXv9zQTAwaj2TNVRAeuFpiAKSAvUv3IHZ/Cu1jAdnWKsn93SSDJiBjvMoc2B
         HWJXQpIsODXhUv+BTx07xucSVZnF8CeH6SzhSaZuszl0YfAy0hMzWAwE3tU/GW/l2efA
         zOpEL+GBel4Bs4ro4a6dm3vBv/buDqraSR7T6zaU2vvn8dhkUA28g46+MMLy7yOGpDKE
         zRiw==
X-Gm-Message-State: AO0yUKXuWAq38cw4GtxZyPnPvN66vJOS5PaPIFVmpQ0rv9kJn8goR2se
	0ajspcGZZTusgpqp4lcJyLcW2rSJaF/6jk90L1dbaw==
X-Google-Smtp-Source: AK7set/A7WcJ0yHJ3d+Hs+u46jZzU03CMklgPWmGQRmOrDtgV4ZS/9cmIoctzq1f6+VYos3ii/7LWUfLNCu+V8kBP+g=
X-Received: by 2002:a17:903:32cf:b0:19a:b801:13d7 with SMTP id
 i15-20020a17090332cf00b0019ab80113d7mr347588plr.2.1676371327685; Tue, 14 Feb
 2023 02:42:07 -0800 (PST)
MIME-Version: 1.0
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com>
 <1675298118-64243-3-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFoN3GDRYRJep1ARf8rSftZRBUceda92OPuDQLvG3dVhhQ@mail.gmail.com> <a336a9ef-77e9-fa1d-ad95-805a8b5a89cb@rock-chips.com>
In-Reply-To: <a336a9ef-77e9-fa1d-ad95-805a8b5a89cb@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Feb 2023 11:41:30 +0100
Message-ID: <CAPDyKFrpv+DoqMK9cLrYMBk1m6dXoDXu40xSJ_UMVK8O+=Ud6A@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] mmc: sdhci-of-dwcmshc: Add runtime PM support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_024210_876584_6F96AD66 
X-CRM114-Status: GOOD (  30.10  )
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

On Tue, 14 Feb 2023 at 04:36, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Hi Ulf,
>
> On 2023/2/14 7:45, Ulf Hansson wrote:
> > On Thu, 2 Feb 2023 at 01:35, Shawn Lin <shawn.lin@rock-chips.com> wrote:
> >>
> >> This patch adds runtime PM support.
> >>
> >> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> >> ---
> >>
> >> Changes in v2: None
> >>
> >>   drivers/mmc/host/sdhci-of-dwcmshc.c | 51 ++++++++++++++++++++++++++++++++++++-
> >>   1 file changed, 50 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> >> index 46b1ce7..fc917ed 100644
> >> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> >> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> >> @@ -15,6 +15,7 @@
> >>   #include <linux/module.h>
> >>   #include <linux/of.h>
> >>   #include <linux/of_device.h>
> >> +#include <linux/pm_runtime.h>
> >>   #include <linux/reset.h>
> >>   #include <linux/sizes.h>
> >>
> >> @@ -551,6 +552,13 @@ static int dwcmshc_probe(struct platform_device *pdev)
> >>          if (err)
> >>                  goto err_setup_host;
> >>
> >> +       pm_runtime_get_noresume(&pdev->dev);
> >> +       pm_runtime_set_active(&pdev->dev);
> >> +       pm_runtime_enable(&pdev->dev);
> >> +       pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> >> +       pm_runtime_use_autosuspend(&pdev->dev);
> >> +       pm_runtime_put_autosuspend(&pdev->dev);
> >> +
> >>          return 0;
> >>
> >>   err_setup_host:
> >> @@ -580,6 +588,11 @@ static int dwcmshc_remove(struct platform_device *pdev)
> >>          if (rk_priv)
> >>                  clk_bulk_disable_unprepare(RK35xx_MAX_CLKS,
> >>                                             rk_priv->rockchip_clks);
> >> +
> >> +       pm_runtime_get_sync(&pdev->dev);
> >> +       pm_runtime_disable(&pdev->dev);
> >> +       pm_runtime_put_noidle(&pdev->dev);
> >> +
> >>          sdhci_pltfm_free(pdev);
> >>
> >>          return 0;
> >> @@ -638,7 +651,43 @@ static int dwcmshc_resume(struct device *dev)
> >>   }
> >>   #endif
> >>
> >> -static SIMPLE_DEV_PM_OPS(dwcmshc_pmops, dwcmshc_suspend, dwcmshc_resume);
> >> +#ifdef CONFIG_PM
> >> +static int dwcmshc_runtime_suspend(struct device *dev)
> >> +{
> >> +       struct sdhci_host *host = dev_get_drvdata(dev);
> >> +       u16 data;
> >> +       int ret;
> >> +
> >> +       ret = sdhci_runtime_suspend_host(host);
> >> +       if (ret)
> >> +               return ret;
> >> +
> >> +       data = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> >> +       data &= ~SDHCI_CLOCK_CARD_EN;
> >> +       sdhci_writew(host, data, SDHCI_CLOCK_CONTROL);
> >> +
> >> +       return 0;
> >> +}
> >> +
> >> +static int dwcmshc_runtime_resume(struct device *dev)
> >> +{
> >> +       struct sdhci_host *host = dev_get_drvdata(dev);
> >> +       u16 data;
> >> +
> >> +       data = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> >> +       data |= SDHCI_CLOCK_CARD_EN;
> >> +       sdhci_writew(host, data, SDHCI_CLOCK_CONTROL);
> >> +
> >> +       return sdhci_runtime_resume_host(host, 0);
> >> +}
> >> +#endif
> >> +
> >> +static const struct dev_pm_ops dwcmshc_pmops = {
> >> +       SET_SYSTEM_SLEEP_PM_OPS(dwcmshc_suspend,
> >> +                               dwcmshc_resume)
> >
> > I have looked at dwcmshc_suspend(), which calls sdhci_suspend_host().
> > As sdhci_suspend_host() will write to internal registers of the IP
> > block, it's recommended to make sure the device's runtime resumed
> > before doing that call. So that needs to be added along with $subject
> > patch.
> >
>
> Yep, let me add a check here.
>
> > There is also another option that may better for you, which is to use
> > the pm_runtime_force_suspend|resume() helpers. There should be plenty
> > of references to look at, but don't hesitate to ask around that, if
> > you need some more help to get that working.
>
> If I understand correctly,  pm_runtime_force_suspend|resume() helpers
> would use runtime PM ops for suspend/resume routine. In this case, the
> main issue is the handling of clock is quite different. In suspend we
> need to gate all clocks but in rpm case, it shouldn't.

I see, but let me then ask, what's the point of keeping the clocks
ungated at runtime suspend?

That sounds like wasting energy to me - but maybe there are good reasons for it?

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
