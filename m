Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38833C369DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Apr 2025 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XroCgqSsvMA4J+qXD1ajzDUiUDEJd//BW9lxXKilB9A=; b=hECOqz57i4xvfr
	V7QujSm2FgEgo/Rke48JgBpJAF9lFUprBpoyBieqUP4ik0m757JMGbLOrTeA3Aan72wk7nhZVmX+t
	8yjsfgiSJ8DqVRrmlMYTdXZK3W/rKUjo+pPhj/Y80KM+9citz3OF7lFI+7/6jpc+c+nwrGLLgQi/d
	WDSI2BqwwNb0ncGKQmofRVzHRk0ARsrNPUxWt1gmwHgPACEtyrwP5hhEojMEdX0OH3F1c7EuadYHc
	/TPKnG4dIR6oZ+Us7awsBleWZOg+HoiTHfZw0h/zKDFu0LdV7MUF0TtwquNxsnUFq4LHDn+yfhxw1
	aZsss7L3/iesZPUww8KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9hyv-00000009GUo-1OKd;
	Tue, 29 Apr 2025 10:14:29 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9hrZ-00000009F3A-3FYI
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Apr 2025 10:06:55 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-7082ce1e47cso48523207b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Apr 2025 03:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745921212; x=1746526012; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jjQQ1gbntdrSbZtDquO40Eje9JxI9rUu3v+V9iiuKlU=;
        b=a8CzHyghZ0yFpRMsQSY5Q8U6SvWRuNIDk6BVEkqIDkdQUB9zzNo7mN4bfFvuznzezg
         lclx+z5qDp/xtTkP0UsTRGokn9b0tTVxhXPeVNzObEsytut1kAgnLm4EotzhIwZK6evf
         4g43Y9aNKWlmRllRQixQ+dCfY9EyQ2byKGwdUnsJX+t2jgmrcxIqUI81geON0iYzhG53
         a5CJl2NlcJ3m1cIE/tnjdFPaQDKdLjYedSd9SValt5cFivTo8DO0Y3DH6FeIcj7r7isy
         eBFhd2uG5lirNCySi1duzxd6Yortheg+2GtXYCUCSbaASxPLhhpc6Z66H3l5CDxnD9Dd
         1/Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745921212; x=1746526012;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jjQQ1gbntdrSbZtDquO40Eje9JxI9rUu3v+V9iiuKlU=;
        b=SXN8cN2yYCETVR8Lv1fBdABocJiUGtwdlqH9nvT6ZkL+wRvhAzPuB5Lrmgx02aa+EW
         oxd9iGcw72EKqFPuw2fjb35rJH5XpHlZV2RbJRDUQWr1lmJt+pBsh2ttAMK42JAW4XBk
         qtvPKnsQe2/Yl1NpWSll47b1zC637XCLfXETQCr7fwkuQGL+QVkAu3cNM2YllTr0q7Id
         3tzbQsIzmt8qZ9Q1lcb8ufnMOGKPmaeVyz5NO5Kqlb07aIUUoeS/TmtS4ecuSfuK++h9
         GZLqt809G+UCJPEw8M/dpBz2En8EunQUSYRnTmsiU6TQfBpWNRFl8I51LGwhWAAd6q3N
         gTPg==
X-Forwarded-Encrypted: i=1; AJvYcCWfgR762FwESI6Dv9gKqspkQUtCn41urZVGaAjYGQXYO4aAoHV5xwNQJ3PA62avrmT4RnVT3D18rlk8ic2S0Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2T3svy5B/4qShnIz9IZl4LWzP/8HSjC5ncs4FKSaN/R7xpUof
	gpWEIneZmbI1PUWJzQxf/MVrCKVzHWZaoQ70HmAuQXfpiDddu7+UBYEBhCRsA84pJitGtac/ivU
	OyWglX8mwK+V6/QHglAi4ABifRFu5XUm7iDN03A==
X-Gm-Gg: ASbGncsEUp9X/5os+zzakQtcBSCSt39ehfYF9qEeB6H6zheZWhnIyvmmueOwBsWi7Do
	2cLJxDPnyUhPbj8tbcYaNe5HSsviJ2IVV+9BrvjtXnx6v4ioUlrf7I3S7JomfdnFLnbcFmq16R9
	/BFKqCTaIUZmDE0xZCAKyb53c=
X-Google-Smtp-Source: AGHT+IG6WmWyhSGVmxVC3f3XCypyrDEpbVGX6ioUnUsJtVsCpx9/EXtlcANtXZwlnV6IGsG9Jd4CkmBcfsgDrtEzaaQ=
X-Received: by 2002:a05:690c:3506:b0:703:b8f4:5b0e with SMTP id
 00721157ae682-7085f236277mr162475347b3.28.1745921212260; Tue, 29 Apr 2025
 03:06:52 -0700 (PDT)
MIME-Version: 1.0
References: <20250423-rk3576-emmc-fix-v3-1-0bf80e29967f@collabora.com>
In-Reply-To: <20250423-rk3576-emmc-fix-v3-1-0bf80e29967f@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 29 Apr 2025 12:06:16 +0200
X-Gm-Features: ATxdqUGRQt2dS-dYXQNUSdM9bjw6NNZW_Ep_w3cK8lN-p_Z_PHKTCdtR2wWOe8s
Message-ID: <CAPDyKFp5N23KCZwOTba6vGyk9eaS1-SjSqY52FfPDng-bahn6g@mail.gmail.com>
Subject: Re: [PATCH v3] mmc: sdhci-of-dwcmshc: add PD workaround on RK3576
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_030653_819929_470EB44B 
X-CRM114-Status: GOOD (  36.72  )
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

On Wed, 23 Apr 2025 at 09:54, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> RK3576's power domains have a peculiar design where the PD_NVM power
> domain, of which the sdhci controller is a part, seemingly does not have
> idempotent runtime disable/enable. The end effect is that if PD_NVM gets
> turned off by the generic power domain logic because all the devices
> depending on it are suspended, then the next time the sdhci device is
> unsuspended, it'll hang the SoC as soon as it tries accessing the CQHCI
> registers.
>
> RK3576's UFS support needed a new dev_pm_genpd_rpm_always_on function
> added to the generic power domains API to handle what appears to be a
> similar hardware design.
>
> Use this new function to ask for the same treatment in the sdhci
> controller by giving rk3576 its own platform data with its own postinit
> function. The benefit of doing this instead of marking the power domains
> always on in the power domain core is that we only do this if we know
> the platform we're running on actually uses the sdhci controller. For
> others, keeping PD_NVM always on would be a waste, as they won't run
> into this specific issue. The only other IP in PD_NVM that could be
> affected is FSPI0. If it gets a mainline driver, it will probably want
> to do the same thing.
>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes in v3:
> - Reword comment and commit message to correct that this is not a
>   silicon bug, but seemingly intentional design with regards to runtime
>   power management.
> - Link to v2: https://lore.kernel.org/r/20250412-rk3576-emmc-fix-v2-1-830e653ad4f0@collabora.com
>
> Changes in v2:
> - Rewrite patch to use dev_pm_genpd_rpm_always_on in sdhci driver
>   instead, after Ulf Hansson made me aware of its existence
> - Link to v1: https://lore.kernel.org/r/20250408-rk3576-emmc-fix-v1-1-3009828b1b31@collabora.com
> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 40 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 09b9ab15e4995f0bddf57dd309c010c849be40d9..a20d03fdd6a93ecc5229c71f825bade5ac730370 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -17,6 +17,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  #include <linux/sizes.h>
> @@ -745,6 +746,29 @@ static void dwcmshc_rk35xx_postinit(struct sdhci_host *host, struct dwcmshc_priv
>         }
>  }
>
> +static void dwcmshc_rk3576_postinit(struct sdhci_host *host, struct dwcmshc_priv *dwc_priv)
> +{
> +       struct device *dev = mmc_dev(host->mmc);
> +       int ret;
> +
> +       /*
> +        * This works around the design of the RK3576's power domains, which
> +        * makes the PD_NVM power domain, which the sdhci controller on the
> +        * RK3576 is in, never come back the same way once it's run-time
> +        * suspended once. This can happen during early kernel boot if no driver
> +        * is using either PD_NVM or its child power domain PD_SDGMAC for a
> +        * short moment, leading to it being turned off to save power. By
> +        * keeping it on, sdhci suspending won't lead to PD_NVM becoming a
> +        * candidate for getting turned off.
> +        */
> +       ret = dev_pm_genpd_rpm_always_on(dev, true);
> +       if (ret && ret != -EOPNOTSUPP)
> +               dev_warn(dev, "failed to set PD rpm always on, SoC may hang later: %pe\n",
> +                        ERR_PTR(ret));
> +
> +       dwcmshc_rk35xx_postinit(host, dwc_priv);
> +}
> +
>  static int th1520_execute_tuning(struct sdhci_host *host, u32 opcode)
>  {
>         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -1176,6 +1200,18 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
>         .postinit = dwcmshc_rk35xx_postinit,
>  };
>
> +static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk3576_pdata = {
> +       .pdata = {
> +               .ops = &sdhci_dwcmshc_rk35xx_ops,
> +               .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> +                         SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> +               .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +                          SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +       },
> +       .init = dwcmshc_rk35xx_init,
> +       .postinit = dwcmshc_rk3576_postinit,
> +};
> +
>  static const struct dwcmshc_pltfm_data sdhci_dwcmshc_th1520_pdata = {
>         .pdata = {
>                 .ops = &sdhci_dwcmshc_th1520_ops,
> @@ -1274,6 +1310,10 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
>                 .compatible = "rockchip,rk3588-dwcmshc",
>                 .data = &sdhci_dwcmshc_rk35xx_pdata,
>         },
> +       {
> +               .compatible = "rockchip,rk3576-dwcmshc",
> +               .data = &sdhci_dwcmshc_rk3576_pdata,
> +       },
>         {
>                 .compatible = "rockchip,rk3568-dwcmshc",
>                 .data = &sdhci_dwcmshc_rk35xx_pdata,
>
> ---
> base-commit: f34da179a4517854b2ffbe4bce8c3405bd9be04e
> change-id: 20250317-rk3576-emmc-fix-7dc81a627422
>
> Best regards,
> --
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
