Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3785C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 May 2022 12:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VjJM0A5Nm3JnB5bxXpkZ4FjgULnUUn3uSmMySKBwd0=; b=lYYQNrq5mzf+nk
	Y/9+SzgpuzYp2SEQLqUPofM+8UzYIHnB/D6ZGQd8bm0hsj3gOezPgj6exTgiNB99jfNpaDnH2zw0/
	oKpheKGvaANnukpRuWQhl1wpSRqldVmAEZXOOYPCfWn09QJzXTCUtD0JrleG+4fz77oxKQS+EKQJh
	218/f20e+CN6CtYIXTITu9qhOI1ek+QcSxb9IrCSRFm+VFsBHepJD8sf7IFgVUke8HtU5vZiIB/yG
	r8mPvwabcMWMyXuDx4b1F1NjQX5DMSok4WoA+3ifY3kICeCXX5KBVJrjniqAs4sfDPYjPRyKdgrfW
	ol9Ai3NYCqsVdWaYfbPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmxEH-003EFk-VL; Fri, 06 May 2022 12:38:42 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmxE6-003EAw-NJ
 for linux-rockchip@lists.infradead.org; Fri, 06 May 2022 12:38:32 +0000
Received: by mail-lf1-x12c.google.com with SMTP id x17so12343204lfa.10
 for <linux-rockchip@lists.infradead.org>; Fri, 06 May 2022 05:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+oJnfCTdPWSag7AGc8jPKi4ghzl83dJN2OES5/aYaT4=;
 b=K0LgiS5p/Fz0/dtEboraGPOSwQFdkSth+xonysTtThr4NDxYGzK/K3nu0zsyiFDZT4
 wH+vkseShFMadY6qbBA9VCYSxJStYbmQ12RP1M1PK2Dr7oMpncHl+awCQ0xKY/4Seud3
 Qxuw8La5C2Sn7s2ktVCoBLaHLGPw4DaeJBm8Zuj5grwPxwJKD4sVKvP3WaHErXlx+zHB
 4Qv36qrKnEV1Hn0BAZ424T8LhFExbDFMkBmMfW+3IdQCEwjRtOpPt9epMgHm6ruwSFs1
 5uzjKg1q05qwpNrTVJwkvRJGgqgbAs+/Us6yj6QhLGbYGCAZM5gYHSST06ZtkmTtrqrU
 hvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+oJnfCTdPWSag7AGc8jPKi4ghzl83dJN2OES5/aYaT4=;
 b=BTA8zguJejAgUag5Aj5uSAH9HVgqk90qnAoP7+4Hm2C4JI5E4Fr2nH8+7Bwsz3RwyQ
 fP7YiAp4h2+qGUdI973aY4Dn6rpWd7IbQrZahcLoC6tqaGQNaZkxxn/pY2i18Ckymuyc
 jUFBij/DvOgW4VDWHl9jiF9tQ7IjXA3+hO9UoIbbTypVQzHpImpzykH9XYUDxyuS/2n6
 I6mQN5ID5tdmovy3KFdPIqINxqkRa0Ixzu5jATVwl1JRyNsUk6iLZ49cL7o6FHQ8o1PU
 q/G4RwOdAyufSXj3Z5u8PwHE74UNuu6Vm/tQLQQCrCAtk6Klza+3iDc3+RdQcGkZH9D6
 uUjQ==
X-Gm-Message-State: AOAM533SleHG4eMNBSfTTGeA+OCkhtw9Sw2U+8CfgTiRriPGLHgediPm
 K4rJoZ7LvAWLmLrZ43N6JMTC4nQPUnzACNZH61Kv/Q==
X-Google-Smtp-Source: ABdhPJz/OG8nf/9MLik6vYRgPr2lDfjBYFJEYvIXAjy7Uu3UKsDMG/VrjItMgN2nY1YHO2G+QCSuzBVNZ4F4342VvEw=
X-Received: by 2002:a05:6512:5cb:b0:472:f7e:a5f5 with SMTP id
 o11-20020a05651205cb00b004720f7ea5f5mr2255189lfo.358.1651840708488; Fri, 06
 May 2022 05:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-10-sebastian.reichel@collabora.com>
 <CAPDyKFqLn4LfPRbhoWw_9BF26Lgmzq_1j=RB31NDGn9YvMnB5w@mail.gmail.com>
 <20220506091837.bbwupigb4f3hwgp4@mercury.elektranox.org>
In-Reply-To: <20220506091837.bbwupigb4f3hwgp4@mercury.elektranox.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 May 2022 14:37:52 +0200
Message-ID: <CAPDyKFoiDunWM28fHKDc6q_c3fwUQGxPGurF0tChMJKwvDdhtQ@mail.gmail.com>
Subject: Re: [PATCHv2 09/21] mmc: sdhci-of-dwcmshc: add reset call back for
 rockchip Socs
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Adrian Hunter <adrian.hunter@intel.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, 
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_053830_801895_BAB30BF4 
X-CRM114-Status: GOOD (  32.49  )
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

On Fri, 6 May 2022 at 11:18, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Fri, May 06, 2022 at 10:52:42AM +0200, Ulf Hansson wrote:
> > On Wed, 4 May 2022 at 23:33, Sebastian Reichel
> > <sebastian.reichel@collabora.com> wrote:
> > >
> > > From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > >
> > > The reset function build in the SDHCI will not reset the logic
> > > circuit related to the tuning function, which may cause data
> > > reading errors. Resetting the complete SDHCI controller through
> > > the reset controller fixes the issue.
> > >
> > > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > > [rebase, use optional variant of reset getter]
> > > Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >
> > I think this needs a corresponding update of the DT docs. Otherwise
> > this looks good to me.
>
> I do have 'resets' and 'reset-names' properties in the rk3588s.dtsi
> for the sdhci interface and 'make dtbs_check' did not complain about
> anything but missing 'arm,sdei-1.0' compatible for the rk3588 EVB
> (sdei binding has not yet been converted to yaml). Thus I assume the
> resets property is inferred from somewhere?

I don't think it should, but I may be wrong.

How about if you extend the example in the DT doc with a reset
property, will that cause the DT tools to complain?

Kind regards
Uffe

>
> -- Sebastian
>
> >
> > Kind regards
> > Uffe
> >
> > > ---
> > >  drivers/mmc/host/sdhci-of-dwcmshc.c | 26 +++++++++++++++++++++++++-
> > >  1 file changed, 25 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > > index bac874ab0b33..3a1b5ba36405 100644
> > > --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> > > +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > > @@ -15,6 +15,7 @@
> > >  #include <linux/module.h>
> > >  #include <linux/of.h>
> > >  #include <linux/of_device.h>
> > > +#include <linux/reset.h>
> > >  #include <linux/sizes.h>
> > >
> > >  #include "sdhci-pltfm.h"
> > > @@ -63,6 +64,7 @@
> > >  struct rk3568_priv {
> > >         /* Rockchip specified optional clocks */
> > >         struct clk_bulk_data rockchip_clks[RK3568_MAX_CLKS];
> > > +       struct reset_control *reset;
> > >         u8 txclk_tapnum;
> > >  };
> > >
> > > @@ -255,6 +257,21 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
> > >         sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
> > >  }
> > >
> > > +static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
> > > +{
> > > +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > > +       struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
> > > +       struct rk35xx_priv *priv = dwc_priv->priv;
> > > +
> > > +       if (mask & SDHCI_RESET_ALL && priv->reset) {
> > > +               reset_control_assert(priv->reset);
> > > +               udelay(1);
> > > +               reset_control_deassert(priv->reset);
> > > +       }
> > > +
> > > +       sdhci_reset(host, mask);
> > > +}
> > > +
> > >  static const struct sdhci_ops sdhci_dwcmshc_ops = {
> > >         .set_clock              = sdhci_set_clock,
> > >         .set_bus_width          = sdhci_set_bus_width,
> > > @@ -269,7 +286,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk3568_ops = {
> > >         .set_bus_width          = sdhci_set_bus_width,
> > >         .set_uhs_signaling      = dwcmshc_set_uhs_signaling,
> > >         .get_max_clock          = sdhci_pltfm_clk_get_max_clock,
> > > -       .reset                  = sdhci_reset,
> > > +       .reset                  = rk35xx_sdhci_reset,
> > >         .adma_write_desc        = dwcmshc_adma_write_desc,
> > >  };
> > >
> > > @@ -292,6 +309,13 @@ static int dwcmshc_rk3568_init(struct sdhci_host *host, struct dwcmshc_priv *dwc
> > >         int err;
> > >         struct rk3568_priv *priv = dwc_priv->priv;
> > >
> > > +       priv->reset = devm_reset_control_array_get_optional_exclusive(mmc_dev(host->mmc));
> > > +       if (IS_ERR(priv->reset)) {
> > > +               err = PTR_ERR(priv->reset);
> > > +               dev_err(mmc_dev(host->mmc), "failed to get reset control %d\n", err);
> > > +               return err;
> > > +       }
> > > +
> > >         priv->rockchip_clks[0].id = "axi";
> > >         priv->rockchip_clks[1].id = "block";
> > >         priv->rockchip_clks[2].id = "timer";
> > > --
> > > 2.35.1
> > >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
