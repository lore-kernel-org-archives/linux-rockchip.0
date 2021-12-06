Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE607C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Dec 2021 13:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIutXMsCmlD6VNZj0M3+3136s/wbInK08JV8X0BIsYU=; b=maG2uN1dAXvn2Y
	0aPBcMWzN7bTQ/1ugdDhZg7zhBDbiahziZr7cTm6n2Vvsbg/BdIlV7eabKksQOYmqMftKw/oQxNZR
	Nmgvirl5JVz7FGzhRsFsJFTWvJPSjEwopydzZBqIIcaeJsCQl8Xt5DR/n/fjzsR2hgUIcKPSC0AO9
	pMPVIQACkZLRPeaHotueRGdDaOO6f57rxYkr4UnqCI17utx2IJszl0Qq00iQTK8QNaKPUj1PbIz1r
	VJozjDb6df2cxPsREDED1Mh096zzDPu3AqtWDdtbiCaU0HWPxLgB0uijeaWrEjUCC5/MH2IxP4ZQ3
	cfpzYfkCptwi2XPWklRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muDqE-003xxK-Sr; Mon, 06 Dec 2021 13:15:38 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muDpf-003wmB-82; Mon, 06 Dec 2021 13:15:04 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="237249126"
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="237249126"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 05:13:01 -0800
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="604986568"
Received: from smile.fi.intel.com ([10.237.72.184])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 05:12:50 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1muDmW-002mwh-84; Mon, 06 Dec 2021 15:11:48 +0200
Date: Mon, 6 Dec 2021 15:11:48 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Baruch Siach <baruch@tkos.co.il>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Tony Lindgren <tony@atomide.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 Alexandru Ardelean <aardelean@deviqon.com>,
 Thierry Reding <treding@nvidia.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, patches@opensource.cirrus.com,
 bcm-kernel-feedback-list@broadcom.com,
 linux-power@fi.rohmeurope.com, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pwm@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-tegra@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Keerthy <j-keerthy@ti.com>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Kevin Hilman <khilman@kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH v1 1/3] gpio: Get rid of duplicate of_node assignment in
 the drivers
Message-ID: <Ya4MFMWSyj4YbdNG@smile.fi.intel.com>
References: <20211202210839.79140-1-andriy.shevchenko@linux.intel.com>
 <CACRpkdZbpKqG_uS2N8TW2-HL5CqnuKDpHVCabf66MyQQof0jOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZbpKqG_uS2N8TW2-HL5CqnuKDpHVCabf66MyQQof0jOw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_051503_429979_C3F56117 
X-CRM114-Status: GOOD (  26.20  )
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

On Sun, Dec 05, 2021 at 01:06:07AM +0100, Linus Walleij wrote:
> On Thu, Dec 2, 2021 at 10:17 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> 
> > GPIO library does copy the of_node from the parent device of
> > the GPIO chip, there is no need to repeat this in the individual
> > drivers. Remove these assignment all at once.
> >
> > For the details one may look into the of_gpio_dev_init() implementation.
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> This is definitely a patch in the right direction, as Bart says
> it can be a bit dangerous, the outliers are those drivers that
> assign the .dev to something completely different than the
> the dev where the of_node is copied from.

I carefully checked these all and this patch series is only for the cases
when I'm sure it's the same device, which is used as parent, and its of_node
supplied.

> The idea was definitely always to only assign it in the core
> *unless* there is a reason to have a completely different
> of_node for some reason.
> 
> > +++ b/drivers/gpio/gpio-rda.c
> > @@ -240,8 +240,6 @@ static int rda_gpio_probe(struct platform_device *pdev)
> >         rda_gpio->chip.label = dev_name(dev);
> >         rda_gpio->chip.ngpio = ngpios;
> >         rda_gpio->chip.base = -1;
> > -       rda_gpio->chip.parent = dev;
> > -       rda_gpio->chip.of_node = np;
> 
> Mention in the commit message that in this driver
> you also drop the the .parent assignment because the
> core will handle it.

Okay, I will update it. Also I'll update to the last codebase (dunno if Bart
is going to pull the IB from Lee where one of the drivers is gone: da53cc634cea
("gpio: bd70528 Drop BD70528 support").

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
