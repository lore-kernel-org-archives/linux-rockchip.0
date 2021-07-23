Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A64C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 10:08:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35A7060E73
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 10:08:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 35A7060E73
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGZdkkIuPmU9WZwN0HERQWBDmrnD9lE+8dItDC3d6dc=; b=43wCu2YTCAKkwP
	nsjiDXbYahe0FumG148tYFs1UphHR8p6XForWFwQ2mVBwhdW3367dt6+ph813jgli6ZYROtVbmn2N
	2mwgUn/PNLRXCk67ojLulOETUt00ihpte4zTzSrMKTuNHPu8RYE6c61VlYqhVYLlu1mQDMbNts9wn
	Y7o5EJZjOw9z/ZHv2XOjXzrWP3kP6sUs3HAnVtnv1O6XNczy0tCUoG83oPC21lRUFVqdZbOspbViQ
	/vv/LyumYmzmONY7lgnhf8AnLM50NhsokGXaDQv/g5P70jTQIyhFGPTT58qitPCBrEz86XCiMkE2c
	Y8mzyx9CghzZSGSloZIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6s6B-004I47-0o; Fri, 23 Jul 2021 10:08:07 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6s65-004I1s-Jj
 for linux-rockchip@lists.infradead.org; Fri, 23 Jul 2021 10:08:03 +0000
Received: by mail-lf1-x136.google.com with SMTP id g13so1137156lfj.12
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Jul 2021 03:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q4BU+5tZU5TQrCBXLyqih1hQuK9H2h5ckUqvAJtP9CA=;
 b=ivr+2Uit26tqgc4oSFnrYZbDZ+9/0aaAi8x4QOnA6h2Slje1dHYQTDdjwpZxt71dqZ
 aEqcHflA/2r0jRJOS5O5pHQwyPslqXCfDWPewO6Ze1pUiiiIhLSvGH0A7XZV3Ea/gMT2
 5kkaWM5Jevk6L9xjyoEKKxujLLZysU9Fb5SssxCSLyjg116d2Ubx0+qK4vrZ8mQK3URr
 koCG975hR2Pv3/QTIy3qFvHZivrZZh9pZ/HBZbPGKMhMLOPKosLwg7ZmrEgwAWt2rABZ
 VupYFLtPHkm1wsvZ2TwVno5jp+ePXM6eOasX9VxZ3MekgX8utUAVzL5gV6bOGNGvb7Sw
 fe2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q4BU+5tZU5TQrCBXLyqih1hQuK9H2h5ckUqvAJtP9CA=;
 b=Xa8D52dnOjpZ/F7ljA9Ed7VEaLxez66bWXdge6aSvEvl9QP2TQTJBSgXJ/sSDyPnuA
 akOkHohaiAsMM/XUFeNT1NO/0WkPPVprXe0B+H7NeqrtBCTCRDNDqT5gU4qTikCxRchR
 /SzNRwGDgsNldKRXf8N/M9bCMakHYlUG15vE5dRxPk3qC93fvxxUX/Jbl3F6fnHsQ2qH
 yAOTxgLYbnznbqk9nFQNFdd1E2Up/Y81yfQ8L79OAbmSs1flCllZk1LrxKv1GrLPmHub
 ln2TugodI5Rm7QaH5r//jE2o8NIrNDa1O8qj0bhMiLKzUwMB0zIuAj+BJZn1ITVuHdue
 rvnQ==
X-Gm-Message-State: AOAM530+N1k3vkjy7d5N1D/BCxVKdyRMD28f4eiv78/YpNxxg2DHJDch
 EEtEXr+eIv4nd8undRScGO/Zd4S919GKaBJxbTnRB+7BTSLKRQ==
X-Google-Smtp-Source: ABdhPJxjnhIpgDdVp1H8m7VgEBTEDRh+H64JfXuc0U5TeQgKP8c2x8Ymes2lzQ2i3+MLX3pglOdA6mdXSp9A5y45Qz4=
X-Received: by 2002:ac2:5e71:: with SMTP id a17mr2458517lfr.465.1627034877891; 
 Fri, 23 Jul 2021 03:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210618062449.1067106-1-jay.xu@rock-chips.com>
In-Reply-To: <20210618062449.1067106-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Jul 2021 12:07:46 +0200
Message-ID: <CACRpkdYGyy+tE4_xddJWxWUQpPea0bc5CUTBfp2RtnJfQ-2t_w@mail.gmail.com>
Subject: Re: [PATCH v6 0/9] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_030801_713498_44022A33 
X-CRM114-Status: GOOD (  10.66  )
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

On Fri, Jun 18, 2021 at 8:24 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate gpio driver from pinctrl driver, and support gpio v2 controller.
>
> Jianqun Xu (8):
>   pinctrl/rockchip: always enable clock for gpio controller
>   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
>   pinctrl/rockchip: add pinctrl device to gpio bank struct
>   gpio/rockchip: add driver for rockchip gpio
>   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
>   gpio/rockchip: support next version gpio controller
>   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
>   pinctrl/rockchip: drop the gpio related codes
>
> Liang Chen (1):
>   dt-bindings: gpio: change items restriction of clock for
>     rockchip,gpio-bank

I have applied the series to an immutable branch in the pinctrl tree:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-rockchip-split
Then I pulled that into devel.

Bartosz: if you want you can pull this into the GPIO tree as well
(makes it possible to continue work on drivers/gpio/gpio-rockchip.c
and avoids clashes in Kconfig and Makefile)

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
