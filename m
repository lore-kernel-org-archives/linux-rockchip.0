Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8028C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 10:14:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4181608FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 10:14:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B4181608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKDJV81cLW+FmbbvnTD4ejSRDODShioppCchK3zjdHY=; b=lTJvlBlTVV3Uwb
	NkFQgl7+cjqTPFdfQdTtIKq5ddIutD7zqJrUBzGEYq2gpRhFAuK/FEsgFbI4X+odYC0g1ncwDS6aE
	XfW85YsvV4Q36NwluQI52rbwfbLV4mBI7TuhMXvulVXNAsW7ENe3paev+Cx26RJ3wUragjtzoI+iG
	Pd8R6s1wEW0q6oRNZJ/5zRYXWNyMTuzrfFJmqKft+GL1FYv8xFHb1TkTg3H2itTBgqHvO0fe2VusH
	kjBYGftRDtCM/nQLlIXvVjHDuMqoDolMKNvo+0+N7eNLZb2UApF6Y+zTRWPEvmaGMWw7fVUgt0cLj
	zPxvmT3bteFnlTtveEnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6sCR-004KB8-A4; Fri, 23 Jul 2021 10:14:35 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6sCO-004KAa-Fd
 for linux-rockchip@lists.infradead.org; Fri, 23 Jul 2021 10:14:34 +0000
Received: by mail-lf1-x12f.google.com with SMTP id y34so1204677lfa.8
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Jul 2021 03:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MxqY7w7f+1VSQok8W9ikea6rKSkGap4duEivpX9ylqo=;
 b=qXx6SNqvq4jZfq8ol3qK/dApha9//QuJgf1Y7SQYCTt5tLVv+E3ZbKqa7oyuwyqmZO
 xaEtQ6bIJrno49mQCAx/iCf2SXfBJOuuA5wHGoeGzTFmCxf0AdH0xaosr9ZHGoszFc/g
 Vleod1b0rTERq6/IKOcruhYdO9sds/WhCP9uxFtA1qLFxa3x2STna7QDZCKoo8/eZlOW
 paAMbAF82ANSzC+qbl/Rf+6EACCRaNh5svSfzPknaAtJ37hj+VmdudjMagYw6z5s6VWZ
 6F7Ej/+LURc4KX5rXLpzZh9XxU78dsFtgu0j6HTGCLyW3VIbvFIlGW3MZ6hfkpLDzsne
 DTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MxqY7w7f+1VSQok8W9ikea6rKSkGap4duEivpX9ylqo=;
 b=TRR2sVYm51xpGN/87OupxSHkER1DbwV33W99ieE/N7SDwsrG6pR2nzn/5abEn4XLQp
 QeeoiK7JS/k+Hy9GNFOASFUopvMzw1iaLyu2ySlNWZwJQjprw8CCTbF7rhKlq6EdE8al
 fLlAdM7aOOpTYh2lmCYY7gCTGuTVg4iypJdbSGSUZa8D2azOE1PYqZXerjaBsuGHMBF1
 0YCFocfPXtVT+saH4W0wP1SE1FaIONFpB+ljb6jVgu9mTnV3Ui838lV7W0xCm0cSYMbQ
 PC407MmxV8iUZp3YK2buBOCUAdd6nzqFtKuteL12AzzaJpWFErAwxbC+Gugr99vtZl2R
 BRsQ==
X-Gm-Message-State: AOAM530P1IXtF90PBaP9i5FsVzaaTOouR6o0h1qjtWQiA/ssy+lRC0Rm
 jRHWswnW5w3xfXa1VYSdls8VQVrLG5GB8ys5iEcggw==
X-Google-Smtp-Source: ABdhPJyxUxmZpQd0I35bRxQIZZMsx2c67ELGW46qkZb7g+BiJ7iOphkbM1uXQ/GLC7zBNgI4rDPgJVIMv8zsTvXxTeE=
X-Received: by 2002:a05:6512:2603:: with SMTP id
 bt3mr2592484lfb.529.1627035270327; 
 Fri, 23 Jul 2021 03:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210618062449.1067106-1-jay.xu@rock-chips.com>
 <CACRpkdYGyy+tE4_xddJWxWUQpPea0bc5CUTBfp2RtnJfQ-2t_w@mail.gmail.com>
In-Reply-To: <CACRpkdYGyy+tE4_xddJWxWUQpPea0bc5CUTBfp2RtnJfQ-2t_w@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Jul 2021 12:14:19 +0200
Message-ID: <CACRpkdadb0=KD+ZXQGNVDUBDYHUsvP94dSgPzfwhUbwjvw_6Wg@mail.gmail.com>
Subject: Re: [PATCH v6 0/9] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_031432_572500_83D10933 
X-CRM114-Status: GOOD (  16.34  )
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

On Fri, Jul 23, 2021 at 12:07 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Fri, Jun 18, 2021 at 8:24 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> > Separate gpio driver from pinctrl driver, and support gpio v2 controller.
> >
> > Jianqun Xu (8):
> >   pinctrl/rockchip: always enable clock for gpio controller
> >   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
> >   pinctrl/rockchip: add pinctrl device to gpio bank struct
> >   gpio/rockchip: add driver for rockchip gpio
> >   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
> >   gpio/rockchip: support next version gpio controller
> >   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
> >   pinctrl/rockchip: drop the gpio related codes
> >
> > Liang Chen (1):
> >   dt-bindings: gpio: change items restriction of clock for
> >     rockchip,gpio-bank
>
> I have applied the series to an immutable branch in the pinctrl tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-rockchip-split
> Then I pulled that into devel.
>
> Bartosz: if you want you can pull this into the GPIO tree as well
> (makes it possible to continue work on drivers/gpio/gpio-rockchip.c
> and avoids clashes in Kconfig and Makefile)

Oops I saw there is still discussion about some of the patches
and found a bug myself. Pulled this out again and deleted the
branch.

See you again in v7 :D

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
