Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE8EC636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 23:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1PvdV7FvS7jaAo/CBD0tCOiig7Swr8H26kvdkU7w/M=; b=dAtvgE1a/4K67Z
	MgM5rQJNCDuDfeiRqL95PU4z7n2ijn9gFlUP+hj4aJzwVep4YUwvrckSg4h4bGfB5JJCcByAPJwai
	hvcR788MGSoSc+ICDug8Ji93Y2EdEN4bhSafjydAfgPMxE93llde2bovkI23j7JwPA3lkm7bXEgp5
	NXh3LHReIwCwWXa3fNQeVEGE4E3uzldDNq9C10HPOGc++X0BDP5j7eMuyMZ99YGAFeO18urNVcnva
	zA5rrk9PtteYKd22/ZhCoivK+RD9SRr5r4OFJxDai/KwWbUSVaoQQuwuXdVZZVMzdCjCGVCTjzds0
	JVugFOjbHB871JgF5epQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRiWC-00Gnjb-Je; Mon, 13 Feb 2023 23:45:56 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRiW9-00Gnhn-1V
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 23:45:54 +0000
Received: by mail-pg1-x531.google.com with SMTP id a23so9151051pga.13
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 15:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1676331950;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DhUoEEyFzWRZQqBIAao8WKNUgwOq97HT93SpLc2M0Y4=;
        b=BS83QTz9+eelcCmnU/UL9XuoulqPIh9I+y3sp24n+jVWIN1WYI+sy6HeyTsfmVg8lk
         DLWBPfAxWazPBsNonmeGoPQjS/+OAr34OUT7P3/019o7++iFiBv7gZkf/zCFIJ656p5f
         UZkMkvBzWRfpF+VPGMg3GYfrjtY9HaHHP1O8/XALW9Ov9KvZJU4N8nx44bubNjXu1CPH
         EuWOKkqB0OQQhI7KAsRMVlMipIPVjXyq8a6N4IaT02/d1yGnIWz9UxGabomg4l46snLH
         1fISd+JWcc9UjKhLFeCfuNCTRD4cYosS4PEMbmE3cKpeXUtVlh7B2ipk+3HoxgR42CTt
         9WsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676331950;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DhUoEEyFzWRZQqBIAao8WKNUgwOq97HT93SpLc2M0Y4=;
        b=2duA+pdkbpj0IE+Sb12L++ngN73G6TY+INqOsQr7iV99NYFg3d63WmZ/jfN87VXzM6
         fLTO2khQgYoGNE4oppjSERzqpNk2OM5svr++sW5mD65wixg/5PiJnh0dBVgE1GQCVzKh
         QPDAQK8AWsT1icSpxQEisfXO5hRsg/wV3N0DJjyv9RV7XemAjMEh9Jgow9QqeEH6+qm9
         W0Be0C3PV/bVQmOZT2J81ftVEYLUPIRAncQh5lUhTLKDo+NR+TqPjNSVKsBHB4lwLKQ3
         xGfjPD9/nvewtBWrFIhEgqaT6R7jdxme2F0tUT6qn+G/IaSHD2cxSG1qVXAHfdBg6M1x
         TDXQ==
X-Gm-Message-State: AO0yUKWioDz47kc0Oojjf1X7iIg8YonoiIblaKCiD8/0k/C5deq3ChuG
	1/0KkHSddBlur5Z/iOCPn4cu1XdP72tue5rV+zAUKw==
X-Google-Smtp-Source: AK7set8QpcE6j144AFa/2xJ6S58zok2NijdxAbhkDm+umkvi7hT963bEnxcZMXN2gye4wyPyKgnZVGl4IcFKOVl3ahU=
X-Received: by 2002:a62:1784:0:b0:5a8:bdd1:6c53 with SMTP id
 126-20020a621784000000b005a8bdd16c53mr57862pfx.9.1676331949639; Mon, 13 Feb
 2023 15:45:49 -0800 (PST)
MIME-Version: 1.0
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com> <1675298118-64243-3-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1675298118-64243-3-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Feb 2023 00:45:13 +0100
Message-ID: <CAPDyKFoN3GDRYRJep1ARf8rSftZRBUceda92OPuDQLvG3dVhhQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] mmc: sdhci-of-dwcmshc: Add runtime PM support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_154553_115446_FF6C0438 
X-CRM114-Status: GOOD (  21.85  )
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
> This patch adds runtime PM support.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v2: None
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 51 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 46b1ce7..fc917ed 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -15,6 +15,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  #include <linux/sizes.h>
>
> @@ -551,6 +552,13 @@ static int dwcmshc_probe(struct platform_device *pdev)
>         if (err)
>                 goto err_setup_host;
>
> +       pm_runtime_get_noresume(&pdev->dev);
> +       pm_runtime_set_active(&pdev->dev);
> +       pm_runtime_enable(&pdev->dev);
> +       pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> +       pm_runtime_use_autosuspend(&pdev->dev);
> +       pm_runtime_put_autosuspend(&pdev->dev);
> +
>         return 0;
>
>  err_setup_host:
> @@ -580,6 +588,11 @@ static int dwcmshc_remove(struct platform_device *pdev)
>         if (rk_priv)
>                 clk_bulk_disable_unprepare(RK35xx_MAX_CLKS,
>                                            rk_priv->rockchip_clks);
> +
> +       pm_runtime_get_sync(&pdev->dev);
> +       pm_runtime_disable(&pdev->dev);
> +       pm_runtime_put_noidle(&pdev->dev);
> +
>         sdhci_pltfm_free(pdev);
>
>         return 0;
> @@ -638,7 +651,43 @@ static int dwcmshc_resume(struct device *dev)
>  }
>  #endif
>
> -static SIMPLE_DEV_PM_OPS(dwcmshc_pmops, dwcmshc_suspend, dwcmshc_resume);
> +#ifdef CONFIG_PM
> +static int dwcmshc_runtime_suspend(struct device *dev)
> +{
> +       struct sdhci_host *host = dev_get_drvdata(dev);
> +       u16 data;
> +       int ret;
> +
> +       ret = sdhci_runtime_suspend_host(host);
> +       if (ret)
> +               return ret;
> +
> +       data = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> +       data &= ~SDHCI_CLOCK_CARD_EN;
> +       sdhci_writew(host, data, SDHCI_CLOCK_CONTROL);
> +
> +       return 0;
> +}
> +
> +static int dwcmshc_runtime_resume(struct device *dev)
> +{
> +       struct sdhci_host *host = dev_get_drvdata(dev);
> +       u16 data;
> +
> +       data = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> +       data |= SDHCI_CLOCK_CARD_EN;
> +       sdhci_writew(host, data, SDHCI_CLOCK_CONTROL);
> +
> +       return sdhci_runtime_resume_host(host, 0);
> +}
> +#endif
> +
> +static const struct dev_pm_ops dwcmshc_pmops = {
> +       SET_SYSTEM_SLEEP_PM_OPS(dwcmshc_suspend,
> +                               dwcmshc_resume)

I have looked at dwcmshc_suspend(), which calls sdhci_suspend_host().
As sdhci_suspend_host() will write to internal registers of the IP
block, it's recommended to make sure the device's runtime resumed
before doing that call. So that needs to be added along with $subject
patch.

There is also another option that may better for you, which is to use
the pm_runtime_force_suspend|resume() helpers. There should be plenty
of references to look at, but don't hesitate to ask around that, if
you need some more help to get that working.

> +       SET_RUNTIME_PM_OPS(dwcmshc_runtime_suspend,
> +                          dwcmshc_runtime_resume, NULL)
> +};
>
>  static struct platform_driver sdhci_dwcmshc_driver = {
>         .driver = {

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
