Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E17FEC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 13:30:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3FDC6128B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 13:30:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3FDC6128B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9RwpT+eAGFW853WhTF0TVbuMvectIQ3M/q3anIIDlaY=; b=o1+PmwC3KfHyJDGBMMiCduH0R
	5P/OxkMcFiun7SfPut9DkZKl+sxUl8DVJKYXnQdpxjLWkVtoswZUk9vYPY5TfBIWKYEIQQ9OoOwlh
	LW/5ncBNDRrTlK6FQx65FQGzP9g2DzJfK9rKN/w8WkKfNQJPrxRFE3SCqXnr/anEKgOf35Mh3dV0g
	2NKPRtuLk+uCBRUXicptF+n8Axu0PU4QqJCUXd5r+tAg7wIM02Q3zj/AJ2QttoQiACT68Nj/dx7f1
	fu+s6y7PMJdfq4xZqTCNC7+qYxLQJC9SoRv3SM+KTOCxSw+QcZJnEPkmuwMVx2uCHLDNpfTuvxjSS
	0esFCL6vw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVweM-006r8l-M4; Mon, 12 Apr 2021 13:30:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVweJ-006r8K-QF
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 13:30:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=Rwu3vzV4Wk12J9eGLtMoF8U3xialDTdDuYWydTo+l9k=; b=UQ92Km8gdpU0D1qwm8PrV8cUJJ
 dLcpjrDp7czUZAOImb+ZRXJLv2a3Gn/xmqQZX462aoPWAdqpsT8YHnRBRz3VgCstDazofhMjeeyf3
 sHnKB5kam3gk9sdbKveREjc/cgrqnbPIxchld3d2zXgpLqr02TA8mm/P0pgCOP0IQUhm7rZqgeocH
 Vf/sojuseUyeIkPlU16hECUKIjYEYeshh+INai7xAKtrFuYmTrG37V1FvgHdiKwHPzUtT1pLXm2Dq
 RQekyUzhnOiA8cIzHcjDf22ooah96LY5xKMeZKSNu5Kk6Lmq/S4a7IV2MZrMVOdgtHvsY01FkLtAk
 2oDbd+eg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVweH-006GgD-AR
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 13:30:42 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVwe5-0002K0-Lw; Mon, 12 Apr 2021 15:30:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-rockchip@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/7] gpio-rockchip driver
Date: Mon, 12 Apr 2021 15:30:28 +0200
Message-ID: <2004066.IobQ9Gjlxr@diego>
In-Reply-To: <CAHp75Ve=1EbJ1qOjnTLKOwvv-UKLfxMHS-UUp=ET0zoJ9fV=ng@mail.gmail.com>
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
 <CAHp75Ve=1EbJ1qOjnTLKOwvv-UKLfxMHS-UUp=ET0zoJ9fV=ng@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_063041_390976_49F9B038 
X-CRM114-Status: GOOD (  19.96  )
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

Am Montag, 12. April 2021, 14:13:37 CEST schrieb Andy Shevchenko:
> On Sun, Apr 11, 2021 at 4:35 PM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > Separate gpio driver from pinctrl driver, and support v2 controller.
> >
> > Tested on rk3566-quartz64 prototype board.
> 
> Can you give a bit more context?
> Usually separation means that hardware is represented by two different
> IP blocks that are (almost) independent to each other. Was it the case
> on the original platforms? Do you have different pin controller (or
> it's absent completely) on some new / old platform?

They are separate on all Rockchip SoCs.

I.e. the pinconfig (muxing, pulls, etc) is done via some registers inside
the "General Register Files" [area for misc registers]
and control for the gpio functionality is done in separate blocks
for each bank.

Lumping that stuff together into one driver, was a design-mistake
from younger-me back in 2013 ;-)


Heiko

> >
> > Patch History:
> > V2 - Rebase to latest linux-next.
> >
> > Tested-by: Peter Geis <pgwipeout@gmail.com>
> >
> > Jianqun Xu (7):
> >   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
> >   pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
> >   gpio: separate gpio driver from pinctrl-rockchip driver
> >   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
> >   gpio/rockchip: support next version gpio controller
> >   gpio/rockchip: always enable clock for gpio controller
> >   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
> >
> >  drivers/gpio/Kconfig               |   8 +
> >  drivers/gpio/Makefile              |   1 +
> >  drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
> >  drivers/pinctrl/pinctrl-rockchip.c | 911 +----------------------------
> >  drivers/pinctrl/pinctrl-rockchip.h | 287 +++++++++
> >  5 files changed, 1073 insertions(+), 892 deletions(-)
> >  create mode 100644 drivers/gpio/gpio-rockchip.c
> >  create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
> >
> > --
> > 2.25.1
> >
> 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
