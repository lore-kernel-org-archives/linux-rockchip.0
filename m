Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6257C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0hRBnCGc6TGxSfed0djaOj+8bNSWsDDEyUKs8TEoak=; b=KaxvgJnqz9lmQ6
	5y6MYU59V6OQHXDftwTzE0oFSNt0qhNW5EO/FM48DrC3q4XQxB9Gxg6MiWLCqZ/MMTuQ44iueVdwD
	dBJwSuQUwY4bhIX/zSy4+EIwwNPIiLCgqGNGp59CoKTOYObM3oXnjV9xsu2ghkX0Ty1qsZz+xnLTa
	0I4uC1f9WmoscfU0MFG/0o/NAFkK1hoXOkH2zV7SlS0jHfokQb7F13k+J+Z9wTASXJIcoXA66Z+DI
	hwTIUIOo4EehocYMroPxfUNEhscN4ulWcPDlUYAGVuj6ovt6DYEh/ntBk1dmZpqZH0jbOfnbpxoh/
	GTXRBz/odobJDga/zQ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obgGJ-003l2o-Bf; Fri, 23 Sep 2022 10:50:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obgGG-003l09-F7
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 10:50:25 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obgG2-00062d-Uv; Fri, 23 Sep 2022 12:50:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: "linus. walleij" <linus.walleij@linaro.org>, "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Johan Jonker <jbx6244@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2 RESEND 0/2] rockchip pinctrl for acpi
Date: Fri, 23 Sep 2022 12:50:10 +0200
Message-ID: <2678726.jE0xQCEvom@phil>
In-Reply-To: <202209231835365953827@rock-chips.com>
References: <20220917060929.657778-1-jay.xu@rock-chips.com> <2419940.Icojqenx9y@phil> <202209231835365953827@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_035024_539866_76378C69 
X-CRM114-Status: GOOD (  20.17  )
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

Hi Jay,

Am Freitag, 23. September 2022, 12:35:36 CEST schrieb jay.xu@rock-chips.com:
> Hi heiko
> 
> --------------
> jay.xu@rock-chips.com
> >Am Dienstag, 20. September 2022, 11:26:26 CEST schrieb Linus Walleij:
> >> On Sat, Sep 17, 2022 at 8:09 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> >>
> >> > These patch fixes to support acpi by:
> >> > 1. populate gpio platform before pinctrl to probe
> >> > 2. get gpiochip by finding from gpiochip list
> >> > 3. get match data by device api
> >> >
> >> > Jianqun Xu (2):
> >> >   pinctrl: rockchip: find gpiochip by name from gpio module
> >> >   pinctrl: rockchip: get match data by device_get_match_data
> >>
> >> These look OK to me but I would feel better if Heiko or Andy ACK:ed
> >> them so I give them a few more days to comment.
> >
> >Right now I'm actually quite confused as I seem to have a bunch
> >of pinctrl/gpio-acpi patchsets of varying lengths in my inbox.
> >
> >There is a "v2", a "v8", a 20-patchset without version.
> >It's all quite confusing.
> > 
> From v2 to v8, I summit fixes in one patch, and them sugguested by Andy, I try to separate them
> into small patches 20-patchset.
> 
> The heart change is 
> 
> current
> 1. pinctrl register first
> 2. gpiochip register and find pinctrl device to add pin range
> 
> this patch fix to
> 1. gpiochip register itself
> 2. pinctrl register and find all gpiochips and add pin range
> 
> Please help to review directly to 20-patchset, I will add some suggested-by and acked-by later

ok, I'll drop all the other acpi/pinctrl/gpio sets and move to the 20-patch-series.

Thanks for the clarification
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
