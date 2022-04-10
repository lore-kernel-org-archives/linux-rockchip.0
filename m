Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 340BDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 16:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOBUAxSVhHSkmN7siSyqFnuxosukaSoq5AuasXJzrJY=; b=jZH4dVovB/23sP
	9Z5OIO9/2Dw9lwuVq0WoTmwWLMWl/eYrVjnuI0ufADR/OAhPf3/Vr7gIqRcSdEePPDg4UhHYu1P2s
	CLJTTyUL+Nh/yHm45wt0ACWKiFKHEEJGu8jTiVzr5ljazx5np9rXaVncOnZhN0S2wjoAoa6UYD7Sz
	jzev474SKEc9geVQXBdPb/VBF2WTV6xq9RkkAEhSQZUWieVT1ruZGT4cOkx3S0ia+nrJh/MjS7Srz
	kjXFsoGT8nSVpSSrvTnjdFFbr2rxD7dzVC68qB36viX+wXU9ouNwABd31Iqm2i68N6Jk57RKATqBZ
	3oHFN/nNBagRcSVuChoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndaoa-0058rF-TN; Sun, 10 Apr 2022 16:53:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndaoY-0058qS-Ag; Sun, 10 Apr 2022 16:53:27 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndaoQ-0006ci-8W; Sun, 10 Apr 2022 18:53:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <frank-w@public-files.de>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Dan Johansen <strit@manjaro.org>, Frank Wunderlich <linux@fw-web.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x usb
Date: Sun, 10 Apr 2022 18:53:17 +0200
Message-ID: <10062144.nUPlyArG6x@phil>
In-Reply-To: <CAMdYzYpK-RTf_8FVte2QLJawCKCjU6efgkRjsBj6quWGSSE6xA@mail.gmail.com>
References: <20220409075147.136187-1-linux@fw-web.de>
 <trinity-da7d86cc-5703-4657-858c-f241e5f0a6fd-1649505409042@3c-app-gmx-bap35>
 <CAMdYzYpK-RTf_8FVte2QLJawCKCjU6efgkRjsBj6quWGSSE6xA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_095326_394151_31B5A6A5 
X-CRM114-Status: GOOD (  25.80  )
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

Am Samstag, 9. April 2022, 17:26:01 CEST schrieb Peter Geis:
> On Sat, Apr 9, 2022 at 7:56 AM Frank Wunderlich <frank-w@public-files.de> wrote:
> >
> > Hi,
> >
> > so to not break the binding and other boards the right Patch should be like this
> >
> > +++ b/drivers/usb/dwc3/core.c
> > @@ -1691,17 +1691,17 @@ static int dwc3_probe(struct platform_device *pdev)
> >                  * Clocks are optional, but new DT platforms should support all
> >                  * clocks as required by the DT-binding.
> >                  */
> > -               dwc->bus_clk = devm_clk_get_optional(dev, "bus_early");
> > +               dwc->bus_clk = devm_clk_get_optional(dev, "bus_clk");
> >                 if (IS_ERR(dwc->bus_clk))
> >                         return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
> >                                              "could not get bus clock\n");
> >
> > -               dwc->ref_clk = devm_clk_get_optional(dev, "ref");
> > +               dwc->ref_clk = devm_clk_get_optional(dev, "ref_clk");
> >                 if (IS_ERR(dwc->ref_clk))
> >                         return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
> >                                              "could not get ref clock\n");
> >
> > -               dwc->susp_clk = devm_clk_get_optional(dev, "suspend");
> > +               dwc->susp_clk = devm_clk_get_optional(dev, "suspend_clk");
> >                 if (IS_ERR(dwc->susp_clk))
> >                         return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
> >                                              "could not get suspend clock\n");
> >
> > but this needs fixing dts using the new clock names
> >
> > this is a link to the series moving from bulk_clk to named clocks:
> >
> > https://patchwork.kernel.org/project/linux-usb/patch/20220127200636.1456175-3-sean.anderson@seco.com/
> >
> > regards Frank
> 
> I've submitted a fix for the backwards compatibility issue.
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220409152116.3834354-1-pgwipeout@gmail.com/
> 
> This fix is standalone and necessary no matter which route we decide
> to go with this series (and the rk3328/rk3399 support as well).
> With this patch, dwc3 is functional on the rk356x as the series was
> submitted, so if we decide to fix everything all at once, that is a
> viable option.

Thanks for doing that fix.

As the usb-dt-series is actually following the rockchip,dwc3 binding,
and "just" the driver does ignore it, I've now applied the usb series
and hope for a resolution of the general problem :-)


Heiko





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
