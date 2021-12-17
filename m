Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1933CC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaqQb/q+bj6wfu2MnXOtfEOZt5pnfBo5ttLtWb1Ab2c=; b=OmyGqkg+MbXxty
	Rw7aH+njCarYFwqBQnK70D32Mip5z3W+UHZcsVVo7J5Bpiw+UuJtF0CTBsYcpHhG77XvNIYov4MA8
	iJX3JaAH6K6rNB7HFPmgnljslCxdQx5DrFDemCOx9REae5CTRoVUQctYMOlTeNblPcwhxisbs5tQO
	lo9fiWxKHpmGhsHwSyRWh+IObsX94Bl3VzDATUZJnkQzj9+Enw1uVtOzG2kFg9VMw3Siphpi3VnyV
	dzNjyO3MnT2z2uDbgkRn2BhbC6/CyPLBBl1tupvx76DPAMtleSJe/wQSj9cx6+FOpn7msl7okvChH
	NqvyMZCA0uI8j8QZw83w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myHbT-00Bejn-Nn; Fri, 17 Dec 2021 18:05:11 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myGUo-00BI1w-Jv
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 16:54:17 +0000
Received: by mail-ed1-x52e.google.com with SMTP id b7so10174631edd.6
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 08:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ty3idGCi5XDl9xKvErHWNjIC6p7/NuEe9TiwxcVy8Us=;
 b=u9I1oPvsJNdQBSYXsGSVFvOEzPGh8YHNrcZyV4Kd4Ux0b007WnOatjgAjtpO7ElHj+
 hGmuiwerkfDuIqCHLAo613SY2tvmSUxTdYM0wU8p9QmiQVr9m9JA3Naueo3Yfodz6PXK
 87Kghc+eG799moXmgTvzehIou/OBfRSxy6uKhrkhotiEqkh8JRKrsnfTTnYL5U6M1B7t
 FETyeoncmUeYZBM045702egEznZCU4GjmYR8491uENA8sjto4EZdTiZlL58Y1yKTVgEN
 CaZJ582PxifNLXiMmL7WreCUCgOo3GYwkOWTOTqbS20yiN2i6DT8eADFIDVoM7GOLwCY
 9cRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ty3idGCi5XDl9xKvErHWNjIC6p7/NuEe9TiwxcVy8Us=;
 b=19pcy5WEwZ3TQMjCV5SHNPp2pBrnHGfkMZSGSG5l4HYwP/fXw0fW6O5WJKhGXd92Nn
 r2nJgtgiGHBAFU4K4uFwLVU4vbEs9YgL9wcFZ4vjNBaJ1Nq9waxQd0TcCCbtV17Smwbq
 FKyAsR69Q31pisQv9bKqcLOAcTdEuyP/MSpgw8vTEozhGY1Kp4/fHwqg37puutKcn9lO
 zkMy6dO7OkbgdPVFKuAm1QqxORnjt8TmjykXNyBY7P2C0uEMq3j7dmT0lclm7EKYQAU0
 YEGDw8o3NE0qEo9m4PpU3svS9Xx+c4kB8gtF2oakyCcIZ7wpu4hR0Iwtev2R8WS2Mtc6
 Zd1w==
X-Gm-Message-State: AOAM533rSsFjwl1XJARgU/tHBd9yDYftI0GvWCIsfTdQbbcVxzuECegx
 9frzsL7yceCaTTOXFjXC1mLPPe6IAZyznaBTfUXZbQ==
X-Google-Smtp-Source: ABdhPJx8NgewPvw8C9vg5xgAqhhQeH0jCc31PRQMmf/5wN37PHnQyAoHsmmMeZhdRGMORIs9EvU83ilcsDAuLWfaiLU=
X-Received: by 2002:a17:906:249a:: with SMTP id
 e26mr3225602ejb.492.1639760051506; 
 Fri, 17 Dec 2021 08:54:11 -0800 (PST)
MIME-Version: 1.0
References: <20211202210839.79140-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211202210839.79140-1-andriy.shevchenko@linux.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 17 Dec 2021 17:54:00 +0100
Message-ID: <CAMRc=Mct9FuYvT-0gFrpUuNBnCVdmCp_cNESkL5NSgVVP6vezQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] gpio: Get rid of duplicate of_node assignment in
 the drivers
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Marc Zyngier <maz@kernel.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, 
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, 
 Baruch Siach <baruch@tkos.co.il>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Tony Lindgren <tony@atomide.com>, Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Alexandru Ardelean <aardelean@deviqon.com>, Thierry Reding <treding@nvidia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 patches@opensource.cirrus.com, 
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>, 
 linux-power <linux-power@fi.rohmeurope.com>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>, 
 "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>, 
 linux-unisoc@lists.infradead.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
 Ray Jui <rjui@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>, 
 Scott Branden <sbranden@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>, 
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Keerthy <j-keerthy@ti.com>, 
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang7@gmail.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, 
 Lee Jones <lee.jones@linaro.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Kevin Hilman <khilman@kernel.org>, 
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_085414_704473_937A3A07 
X-CRM114-Status: GOOD (  10.33  )
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

On Thu, Dec 2, 2021 at 10:17 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> GPIO library does copy the of_node from the parent device of
> the GPIO chip, there is no need to repeat this in the individual
> drivers. Remove these assignment all at once.
>
> For the details one may look into the of_gpio_dev_init() implementation.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Queued the series for next, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
