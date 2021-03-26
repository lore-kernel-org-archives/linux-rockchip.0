Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534B3C433E1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 13:07:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35148619FF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 13:07:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 35148619FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GTwMdJ72PkOb7iL1Qb174Z71f2MTv3vFIvt7o0QUB+A=; b=IVVJzt93WRF8DfYXT7MT4GQNF
	zSrsziQztWrnafpJ+YC2XdCLWox3Fw5bmof/rxTD2HdKlrLQAM2LyPgnGvhWQm1jQvgYsUcW0gJUZ
	L30Avi4tyBwIH4iGPgTLhe1CjDGkcv1TDg2qH5k1/br8y+3zB322nxCkaPglv+fiU585pMvXh/3/l
	8edI/NJGcEvaR0Xhjfr48YqENspqT9vmMv/g0r0nIwYnLld6Un6W0iz5CvSjXl5+BSFgGlibQM6FT
	ctJ87uvZlU5HPGlfYuPandLmP1TNnUCX1X4Kev7EpdU8TKuNLLeFjQHqUtRgNcNsNEknb+mg0+vir
	g21ey5jrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPmBY-003ZiC-F4; Fri, 26 Mar 2021 13:07:32 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPmBU-003Zh9-JE
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 13:07:30 +0000
Received: by mail-ed1-x536.google.com with SMTP id bf3so6232576edb.6
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Mar 2021 06:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UzC5FBVz05PHuae7oBlniWjIpKp36WiskgIQCfeie3A=;
 b=V2Ytu6qBPPGkLMv7S6mlhwfXx73xncAijDlfo/GWHDkV2vSaO7UEb+pL2lXTMSyc5T
 IS8zUw/vml70QF5x1CKd0LeZY3y+6cRbfEMJ1xDLKyJ6P1Wp0E1aRqCoJxutN99HxIIj
 ApPez/DvySFJy9SEe6wXhAga56XRZj9RLazbYoPnqEHIvlzyG6zLm9eLX0EjsTPTQtS0
 1Gtv7+5x4BTV5lm9KgOtXvV1GfUeRwO+ZJlYOtIzyaUgKQrdCDD0mJHLE0cQd693TKmR
 I/76K60wh46tNX2SDm8Oitpz6W/2T+/oA/Mzq4sulFiheOe1a+VhaE5W+dWYFP/97uVa
 jsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UzC5FBVz05PHuae7oBlniWjIpKp36WiskgIQCfeie3A=;
 b=t+nyj/RubjhkiE7pD57DUx+8Wq/Lojs2tYUKFiPd8HAOkt/oKUhtprwTdFV3tjXkoM
 /G4S0x1ftVU0eQFDk/RU0ZwF/8NW0SkT4NvzL6bsvHemd373AjVg9kbsLYXGAQf0yMz0
 z3c/e4FboFc8d+Hg62hY3681tGATaVzrI1mrftsfFyoqsQ7SbtdYg20RfZEXjWe4v7Eq
 C6NKC9u4C05a80HPK9pEIQptshV0H5yDR6Uu6cLB6iulYEIpDm5lKNO1r4/AdKJPPx10
 VQzvRwWDouRmrHJ98rBV0bMnBbVqbBm210JVx7RFgAwTTURBPXDqZ1bKbqtlyfrjsPci
 ZG6g==
X-Gm-Message-State: AOAM532JYBzyKKAmA/jKuCCoijSz5TUdPbJQ3hwymaeqeMU810AoRMD4
 UTQuYmhSAKWqElLmLW1QIvwSMfN3+W7ELHyafr7PXg==
X-Google-Smtp-Source: ABdhPJwkjDuvTV8Eny6IaII+A63BvbGqHoVciv6m70WrZQH4YTnZlVRI3Qv1mAGKV+kcQQCfrCPZQPEI7Hh3uEB5emg=
X-Received: by 2002:a05:6402:17d6:: with SMTP id
 s22mr14815062edy.232.1616764047557; 
 Fri, 26 Mar 2021 06:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210324064541.949630-1-jay.xu@rock-chips.com>
 <202103241450286417142@rock-chips.com>
In-Reply-To: <202103241450286417142@rock-chips.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 26 Mar 2021 14:07:16 +0100
Message-ID: <CAMpxmJWmUu962YrcCQmxukV3hM9K8hGVuOzimZ5friX58oSDWw@mail.gmail.com>
Subject: Re: [PATCH RESEND 0/7] gpio-rockchip driver
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Tao Huang <huangtao@rock-chips.com>,
 =?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>, 
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_130729_005969_031BEE96 
X-CRM114-Status: GOOD (  14.43  )
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

On Wed, Mar 24, 2021 at 7:50 AM jay.xu@rock-chips.com
<jay.xu@rock-chips.com> wrote:
>
> I'm forget to send-to include Bartosz, I'll remember in next version
>
> --------------
> jay.xu@rock-chips.com
> >Separate gpio driver from pinctrl driver, and support v2 controller.
> >
> >Jianqun Xu (7):
> >  pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
> >  pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
> >  gpio: separate gpio driver from pinctrl-rockchip driver
> >  gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
> >  gpio/rockchip: support next version gpio controller
> >  gpio/rockchip: always enable clock for gpio controller
> >  gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
> >
> > drivers/gpio/Kconfig               |   8 +
> > drivers/gpio/Makefile              |   1 +
> > drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
> > drivers/pinctrl/pinctrl-rockchip.c | 909 +----------------------------
> > drivers/pinctrl/pinctrl-rockchip.h | 286 +++++++++
> > 5 files changed, 1072 insertions(+), 890 deletions(-)
> > create mode 100644 drivers/gpio/gpio-rockchip.c
> > create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
> >
> >--
> >2.25.1
> >
> >
> >

I don't even have this in my inbox so I can't review it.

Bartosz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
