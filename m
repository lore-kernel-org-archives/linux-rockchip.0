Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D782FC432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 13:47:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9885F60EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 13:47:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9885F60EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv1TF6spmaiioEYPqTW5G6RR4Tnj9UxjYf+Cj9enwkw=; b=r/MC54Fzz56crE
	ArK5Jaf//gzHykRrtp8Uml/vtLkco+37GPfNIPp7Un/tQJblaLmazYO8ZyvasFRG4WbDxTA/19UGn
	fYgueDrbs2L+vrreLQSgTn0x5iNf8oDaDdIgqJnFF3LljLICrkZ17Pp/Ff+yoPn9qDim7fNcySXtm
	/Qgdwi1viS5MiHghO+WB8EdwRr/rP3b6Wvl0fg6xRIExl3k1x4SEbJ07hqTmS2C+XUFekbtQZ7gdd
	eSwzXNZt6J/so9DdKS1y7YwMjpjxY97q2dMKfJAwQs1m8g3R4sgQxT/hZDcbordLZV7bhDkmQYweL
	bTBdPyajCRUotEQn9hKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6vWh-004uSK-E5; Fri, 23 Jul 2021 13:47:43 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6vWe-004uQx-Ll
 for linux-rockchip@lists.infradead.org; Fri, 23 Jul 2021 13:47:42 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id w17so2355988ybl.11
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Jul 2021 06:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AclrNr9DriONd9uxnMokdBW1rOGOgyBR/Fi4Kz2y6rY=;
 b=SaV31Lrli/1acnfLkCpI6k9LxZX/0RCIysvoX6qtwA8lSWc1/nbOJ84tgsW/H6qKQY
 N37UjrVL4Z2a/aSoykdxaHZTsI4aEcAVBE1JkDwkphBFEPJFtwEYJA03ZEXjJAxxbISp
 SNVde+TuZexYyp5BgXi5VRs3zfmC15bGC/y2i1iQakMFrhyBrL/HR0r2nFvVH0Dex1Th
 TuImrn70HPSC0BQ7vHPDkSBgqIZEoiaAYJaBV1/5LbBXonuhoTvNUaYW9o+j7mvLzO0A
 oMUyfNOjyrtRYjWNLt7K6e2gdh6y+AMopqOLxrM55HwslDlKObktA5guQlt/iMYt6lJP
 tXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AclrNr9DriONd9uxnMokdBW1rOGOgyBR/Fi4Kz2y6rY=;
 b=p8N4zhDtfUd+MFAzJaleNehd2XXf8XyfxFFHHM40qAbCLn0rQh/29u7cKWMXkQmlb2
 QRmc465Rue/qjkoK+5vYZDuaR9wqCn19gIPOIwznZd983ukGCm1fvHB5b/qX02Y2Ny2V
 IVSCCYaB50+CWEqvHJKlzvS7BI1fFYLr0UNc1B9s0DANVQgDrziv/VbT6ubPMYKWPzM5
 62T0R/P7bb0Hp4KdSXfbzEW1r0vGBNBMlpU3qsbh8ib6GN9p9ZLFVnBOob6cpVp6y1SU
 m0ATJqoskPI7FuWKPYPRUrdHRRInqIKMXrwCeWsw68QMbsyyE3rI7d4vZ1aaYCnHZLJh
 RypA==
X-Gm-Message-State: AOAM532BWeBO6giECqxLo/WgeLHMl0rajDvNrKCRYjTefUjOdPRSYkWw
 nByKbRh1N6UAQJVDdnWOHpewhdWQoNo/EOD6PBk=
X-Google-Smtp-Source: ABdhPJzYZJSPB0k1FaivnOBEYX+lKQSvu0AiuyqhCs6NJX5j7HTyd+efsHOu4YQKP45BUt6yV8tGGtChtcjaoW2EwSs=
X-Received: by 2002:a25:ad62:: with SMTP id l34mr6580499ybe.457.1627048059209; 
 Fri, 23 Jul 2021 06:47:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210618062449.1067106-1-jay.xu@rock-chips.com>
 <CACRpkdYGyy+tE4_xddJWxWUQpPea0bc5CUTBfp2RtnJfQ-2t_w@mail.gmail.com>
 <CACRpkdadb0=KD+ZXQGNVDUBDYHUsvP94dSgPzfwhUbwjvw_6Wg@mail.gmail.com>
In-Reply-To: <CACRpkdadb0=KD+ZXQGNVDUBDYHUsvP94dSgPzfwhUbwjvw_6Wg@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 23 Jul 2021 09:47:28 -0400
Message-ID: <CAMdYzYrG0mKJmnox8EK2T=KS2t=V+-LxDCX4rpDF_vkspWingw@mail.gmail.com>
Subject: Re: [PATCH v6 0/9] gpio-rockchip driver
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Jianqun Xu <jay.xu@rock-chips.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_064740_754487_E381410C 
X-CRM114-Status: GOOD (  22.22  )
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

On Fri, Jul 23, 2021 at 6:15 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Jul 23, 2021 at 12:07 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Fri, Jun 18, 2021 at 8:24 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> >
> > > Separate gpio driver from pinctrl driver, and support gpio v2 controller.
> > >
> > > Jianqun Xu (8):
> > >   pinctrl/rockchip: always enable clock for gpio controller
> > >   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
> > >   pinctrl/rockchip: add pinctrl device to gpio bank struct
> > >   gpio/rockchip: add driver for rockchip gpio
> > >   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
> > >   gpio/rockchip: support next version gpio controller
> > >   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
> > >   pinctrl/rockchip: drop the gpio related codes
> > >
> > > Liang Chen (1):
> > >   dt-bindings: gpio: change items restriction of clock for
> > >     rockchip,gpio-bank
> >
> > I have applied the series to an immutable branch in the pinctrl tree:
> > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-rockchip-split
> > Then I pulled that into devel.
> >
> > Bartosz: if you want you can pull this into the GPIO tree as well
> > (makes it possible to continue work on drivers/gpio/gpio-rockchip.c
> > and avoids clashes in Kconfig and Makefile)
>
> Oops I saw there is still discussion about some of the patches
> and found a bug myself. Pulled this out again and deleted the
> branch.
>
> See you again in v7 :D

Good Morning,

I have a patch ready to fix loading the new gpio driver with new
device trees that are missing the named gpio banks.
This also fixes loading on the rk3568, which need this driver for gpio support.
I will rebase it to the v7 when it drops (hopefully soon).

Very Respectfully,
Peter Geis

>
> Yours,
> Linus Walleij
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
