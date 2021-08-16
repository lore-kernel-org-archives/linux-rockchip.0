Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 260EBC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 19:14:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C333E60F35
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 19:14:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C333E60F35
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/FIhhEhuSMB8QKYdFjYBD5W+B+oxW9wi4Houuc/X+c=; b=nmvX1ArLBb5znr
	gwtuvroccdPK+kWaPS1tqhBJDMA29IAtKwwQffsibQJvD3o5BT/ZUNuONSbkqBMwQAKUJ9aiDTfbA
	sNnAviwzXxcY9yfTY+QRRhbsa6WrZ7kaRSxVyQ6RKPa/im7csWxep96c2SMa6mgoTSvMBujvigJjE
	H97osaqc/7nb08+cE7pqQINKwRrsWOYexFj+GzdUmK41mjTb3s7eLzb/kZ2/bo8LvhbUVyHjH1tHx
	i7mHnQlOTK/amXIpYcTHzJRA/B6ojxfi/RVK8Frf+7dz1E3HXB+KtiZar5EAbVpGKP78mK9acmN+H
	WZuXd9rYTpQfM70MJsbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFi3q-0005p5-J7; Mon, 16 Aug 2021 19:14:14 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFi3n-0005nz-22
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 19:14:13 +0000
Received: by mail-yb1-xb34.google.com with SMTP id l144so9337474ybl.12
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Aug 2021 12:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ddKmBAaL4anw3kgNsyAbpqw4YAHAfR61Ukhu3CXAdpQ=;
 b=T9HdhiT0dXrGmgueqTIb6X9mPePJxHP+j6MIIHkpi0Ns3V30fcgze4d85bGN7i/Vuo
 +MPAKBqrK9UNlCJ88ifAQlz/TIT4mVkuq5CRHNfwiW3nV/JA4gUczTPuoGwMiA9HETvn
 UkJGXMZ3PRAE3NHetz2qssyTebmLD/XqOVG/1nN8DeudnElmNQO3KUiYQ4lX8pi0Zp5d
 tc3HZNUhZyuyxPt/NHWTtCVScOpAR8/0DaN7wD9X2h6uzUvAX25ad2gwed5WHBEO1erQ
 RQQTrrMv4dJy3GOmZX1IfgTFpjj/33GaoVNpso7HCf3Xamo/63CbJW0Kskj5ds2p4cNz
 9BXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ddKmBAaL4anw3kgNsyAbpqw4YAHAfR61Ukhu3CXAdpQ=;
 b=Hs0XdkLK4XXCytPgyqCF0UPw8Ip2X56Yka3tEAqjusSWoy5IpJ9F3Cj5J+lq091hG+
 ZG7Th699xNqAlNwmcRGsR/danXP9uFP4rT4q0EizGMCUPQGs88y/OvEeMNT+XIJp0ohT
 dnBQ0WYQZ0cPpwQshU2R976oKJ5Ww6jJ+vfy2WrrY8lbWhn+jrx3grQ5/Wq5c3wbKG4J
 AA6NPbgXf5c+3idLNPTgs1sgK+gX+Gl+i3gO2mxJjZLQR4dFhbK0S8OBIJNXDdXsQV7/
 L5SCybn/1u++oOCWYQceOA/15zlY4X7M8gAd9HEIfuRCYnOat66mu8/0a8SB5wTPUKZi
 ZdQA==
X-Gm-Message-State: AOAM533ySdwQB0kmNKSeYJebfEAWISnDsaCiw8j1RWame58MxxsNXlwx
 ev13A61Lvyn1LDklIJQSALbMO3OHxfMeq/14j9F5wg==
X-Google-Smtp-Source: ABdhPJysWBZVCKKJbr6bgcAHayPSYtRM07cY1fPHMS0wTcE5unx6TDl/t07LozWQCgzaBW6Dh5Iiw5yNJwUzKdtfivk=
X-Received: by 2002:a25:d0d4:: with SMTP id h203mr23601519ybg.0.1629141246719; 
 Mon, 16 Aug 2021 12:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210816011948.1118959-1-jay.xu@rock-chips.com>
In-Reply-To: <20210816011948.1118959-1-jay.xu@rock-chips.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 16 Aug 2021 21:13:56 +0200
Message-ID: <CAMpxmJWQ1pDoPZHjg1vvZYhPrY+3BZi3Zuv2P7xKYRDW0dyw8Q@mail.gmail.com>
Subject: Re: [PATCH v8 0/9] gpio-rockchip driver
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Jianqun Xu <jay.xu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_121411_228556_13A1509F 
X-CRM114-Status: GOOD (  16.29  )
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

On Mon, Aug 16, 2021 at 3:19 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Separate gpio driver from pinctrl driver, and support gpio v2 controller.
>
> Jianqun Xu (9):
>   pinctrl/rockchip: always enable clock for gpio controller
>   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
>   pinctrl/rockchip: add pinctrl device to gpio bank struct
>   dt-bindings: gpio: change items restriction of clock for
>     rockchip,gpio-bank
>   gpio/rockchip: add driver for rockchip gpio
>   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
>   gpio/rockchip: support next version gpio controller
>   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
>   pinctrl/rockchip: drop the gpio related codes
>
>  .../bindings/gpio/rockchip,gpio-bank.yaml     |   5 +-
>  drivers/gpio/Kconfig                          |   8 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-rockchip.c                  | 771 +++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.c            | 909 +-----------------
>  drivers/pinctrl/pinctrl-rockchip.h            | 287 ++++++
>  6 files changed, 1089 insertions(+), 892 deletions(-)
>  create mode 100644 drivers/gpio/gpio-rockchip.c
>  create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
>
> --
> v8:
>  - fix rockchip,gpio-bank.yaml about clocks and clock-names
>  - fix commit author of rockchip,gpio-bank.yaml patch to me
>
> v7:
>  - include <linux/gpio/driver.h> instead of <linux/gpio.h>
>  - use gpio align id instead of gpio-name
>
> v6:
>  - new gpio-driver first and then drop gpio from pinctrl
>  - reorder patches
>  - cherry-pick gpio dt-binding from chenliang
>
> v5:
>  - change to devel branch
>
> 2.25.1
>
>
>

Linus,

are you going to take the entire series through the pinctrl tree or
should we split the patches?

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
