Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88C00C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 14:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaSjl4esnotiHSEiCjWc80SHXeHzevbTQSxUvqsrq9k=; b=yAp+hznYJHfT8t
	J5Kj/gU1igOHVXQPW+/dWT3A6IKIcIVR6ltItkF5E7Ki9T9SdGo9SaNntDxZOD1gJ0ZwpS1a5jYvD
	8/eRoFR1rScmK+7x4d6jKBQhWMI8cLuAZEFps7A060xi9Psc7BBmw55xWAewEz47SXZbYfahwK3J2
	9axD9jqdMylKfgdCk3Lz/41vID7xOnWq/em4E1Mlfgs+Eih1JN0NE7pop2fZIHY2GKjSaaC+mdEsu
	LXRSkUGU4aZm3J2/Jar8nxxAmduSoUzLQiEJcT0wfC3laR76gdJr6ln0S/g0vXctZSYjICkY0YmKy
	qedoDFTTPMczrsFzF3lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwmMP-00A4Bb-7s; Mon, 13 Dec 2021 14:31:25 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwm2b-009wJF-Q0; Mon, 13 Dec 2021 14:10:59 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="325009656"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="325009656"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 06:05:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="609028967"
Received: from smile.fi.intel.com ([10.237.72.184])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 06:05:31 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mwlwO-005dxK-9w; Mon, 13 Dec 2021 16:04:32 +0200
Date: Mon, 13 Dec 2021 16:04:32 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Marc Zyngier <maz@kernel.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, Baruch Siach <baruch@tkos.co.il>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Tony Lindgren <tony@atomide.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 Alexandru Ardelean <aardelean@deviqon.com>,
 Thierry Reding <treding@nvidia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 patches@opensource.cirrus.com,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-power <linux-power@fi.rohmeurope.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>, linux-unisoc@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
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
Message-ID: <YbdS8E6lHGzWniba@smile.fi.intel.com>
References: <20211202210839.79140-1-andriy.shevchenko@linux.intel.com>
 <CAMRc=Meve=W3yvPmakFap-s6cOY1GUq7c1VjJE2dEH4f0+shag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMRc=Meve=W3yvPmakFap-s6cOY1GUq7c1VjJE2dEH4f0+shag@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_061057_918395_95F1A4EA 
X-CRM114-Status: GOOD (  15.07  )
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

On Mon, Dec 13, 2021 at 02:50:57PM +0100, Bartosz Golaszewski wrote:
> On Thu, Dec 2, 2021 at 10:17 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > GPIO library does copy the of_node from the parent device of
> > the GPIO chip, there is no need to repeat this in the individual
> > drivers. Remove these assignment all at once.
> >
> > For the details one may look into the of_gpio_dev_init() implementation.

> If there are no objections, I am willing to apply this to give it some
> time in next and get the work on dropping the OF APIs from gpiolib
> going.

There was a v2 sent out.

  Message-Id: <20211206131852.74746-1-andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
