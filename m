Return-Path: <SRS0=ahIP=CO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ACC0C43461
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 22:23:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91AB720797
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 22:23:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RocefAgH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91AB720797
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WVwAnubmT6hZRLAN0kKbG2uf2i/u6/Jdtw9SH8n5ik0=; b=RocefAgHwD0YyzwV6mf+lb/f4
	Gjw3eP3hlmNZReabMrmiWWCRZD1B3Hk51Tf/cjAeqb1nduz7XMScqUdSHrxee1qP4m6NsBTHlIryh
	dZ5sUqpvyB7/RQ/+GEwlFyqHleNipnOR5d1FU8WuwlNj0l/MUkxCRghTjL6aAfgyz8TsbyqjQn3Az
	OC+cRw/3GxZnylsQ3OP2xGzn2v9FVtHU1bLTi64ga7dXfPdeues4PTurJc7nn0mZlTOlU+pP4V1ln
	M/TZCoX8dYqxtSuCZ8yJ844WENSdhWln90i2HAJtLyEdvaDgslogqrueQcmBW0fUd3H5QKqQv3XUc
	G+1M+qYRg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEgaY-0007VO-43; Sat, 05 Sep 2020 22:23:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEgaU-0007Uw-VJ
 for linux-rockchip@lists.infradead.org; Sat, 05 Sep 2020 22:23:12 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEgaT-0005tc-Kq; Sun, 06 Sep 2020 00:23:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 1/6] pinctrl: rockchip: make driver be tristate module
Date: Sun, 06 Sep 2020 00:23:09 +0200
Message-ID: <2623687.OKfBHSCOjT@diego>
In-Reply-To: <2671833.MsR7uBhjTv@diego>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200831084753.7115-2-jay.xu@rock-chips.com> <2671833.MsR7uBhjTv@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200905_182311_628413_F6E8CE90 
X-CRM114-Status: GOOD (  18.19  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Sonntag, 6. September 2020, 00:01:55 CEST schrieb Heiko St=FCbner:
> Am Montag, 31. August 2020, 10:47:48 CEST schrieb Jianqun Xu:
> > Make pinctrl-rockchip driver to be tristate module, support to build as
> > a module, this is useful for GKI.
> > =

> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> =

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I take this back.


What happens when you actually unload the module now?
I checked and all the pinctrl stuff itself is using devm-functions
so should be safe, but you're missing the =


platform_driver_unregister part that should happen as well.


Heiko

> > ---
> >  drivers/pinctrl/Kconfig            | 2 +-
> >  drivers/pinctrl/pinctrl-rockchip.c | 7 +++++++
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> > index 8828613c4e0e..dd4874e2ac67 100644
> > --- a/drivers/pinctrl/Kconfig
> > +++ b/drivers/pinctrl/Kconfig
> > @@ -207,7 +207,7 @@ config PINCTRL_OXNAS
> >  	select MFD_SYSCON
> >  =

> >  config PINCTRL_ROCKCHIP
> > -	bool
> > +	tristate "Rockchip gpio and pinctrl driver"
> >  	select PINMUX
> >  	select GENERIC_PINCONF
> >  	select GENERIC_IRQ_CHIP
> > diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinct=
rl-rockchip.c
> > index c07324d1f265..24dfc814dee1 100644
> > --- a/drivers/pinctrl/pinctrl-rockchip.c
> > +++ b/drivers/pinctrl/pinctrl-rockchip.c
> > @@ -16,10 +16,12 @@
> >   */
> >  =

> >  #include <linux/init.h>
> > +#include <linux/module.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/io.h>
> >  #include <linux/bitops.h>
> >  #include <linux/gpio/driver.h>
> > +#include <linux/of_device.h>
> >  #include <linux/of_address.h>
> >  #include <linux/of_irq.h>
> >  #include <linux/pinctrl/machine.h>
> > @@ -4256,3 +4258,8 @@ static int __init rockchip_pinctrl_drv_register(v=
oid)
> >  	return platform_driver_register(&rockchip_pinctrl_driver);
> >  }
> >  postcore_initcall(rockchip_pinctrl_drv_register);
> > +
> > +MODULE_DESCRIPTION("ROCKCHIP Pin Controller Driver");
> > +MODULE_LICENSE("GPL");
> > +MODULE_ALIAS("platform:pinctrl-rockchip");
> > +MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
> > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
