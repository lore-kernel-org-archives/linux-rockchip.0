Return-Path: <SRS0=4pKU=JH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83FEC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 20:42:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C7DB60FD8
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 20:42:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C7DB60FD8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SmdfOBCX7zIl9B7ucaxFLtTb8L3mGYymwggYf3MihYY=; b=dpoy1KZCDp2DeXDJ7lUVIU9uV
	wymeh8zdcOA/6vTFQzbd8jg2VAZGK0rETnG1Gtaofo/j4zKzifyhuFZJp3wcilMZ+CuZcl8iZ9rN+
	Ksp0PbCcE1kBbHYYdGKH4WODEcgLWvA5ItnrAJUSINmqBJZX2SflchO7UK9bCANTraCKcJzU13fmB
	Nz7pHpCcXMIFUCZQ0p8XPYLoeS138zO1rr09KLRMCYdtKB/iqVneAfsSTYoQipYn21lNpmIEuLvL7
	3OPLHz+cu346IFz4UbAewxHP1VtgwKV7ik7YhiBMQ7RVUoi7wxe931/yyIHjIvjDxWW0GB6hs4pxb
	Wew4wyDCw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVKQb-003Pva-JU; Sat, 10 Apr 2021 20:42:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKQY-003PvH-0z
 for linux-rockchip@desiato.infradead.org; Sat, 10 Apr 2021 20:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Nc2WoEZ867pFS9UBGyvCGcCs3GLb9Qat+6rGtgO/EJs=; b=j+Uqtm0op1bBnA4ojFiZ66vkrY
 E723sR+4ui/ubSAX0/8IcJNtI+fLuSKxa7c5nIsw6mdQuWbWiD2tklSvJ8wjta/+0RvygsyAlJkqX
 B5/Ed4SjJIl8YFaMBNUiafIFxXZGkluLpXCk/8Gy+QfQ+rcXVoduZ0mQ6qpZn1QB+UTbAx17MEyPY
 cPA/PkEODR35iIGGEofQebmaShZVvoJZH+KQkPl9kBb6CZjPi8dFZjCTDVZul8df/LhDFLN+icdnB
 hsO6HMExFj2QcYvdc0yocsoK5GB78rdEplP7pDV5S0NQEiq8QVyw4btme0JNUn351wWjCepn1VA81
 TdVGEtfA==;
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKQU-005G0L-PI
 for linux-rockchip@lists.infradead.org; Sat, 10 Apr 2021 20:41:56 +0000
Received: by mail-ej1-x632.google.com with SMTP id g17so11179882ejp.8
 for <linux-rockchip@lists.infradead.org>; Sat, 10 Apr 2021 13:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nc2WoEZ867pFS9UBGyvCGcCs3GLb9Qat+6rGtgO/EJs=;
 b=zXf0XwuYw4JA8dGZTe41IfmDLX5LEHUSm1PIdQQ6i/x5umWjt/r0m3PTArTwRC9mjr
 wGd2yUPECVqpsEC96V13e8W67a6Ba7O2U5BWeKz/8V1AD2mWu/slYbXiGQi9jXQPld1p
 QIRdvTd2INxGTkVapWEfnm+rYRwciuOCxmvPWcTCURByQTdVCdlIsGbXnWyb9xv3mYzF
 ht+obgXg+/JGvAiCFZKyTIeh/h2JHk8etLWsa7EgRgZQ9TD0TpUgt2tnsckzbm5IcyFC
 egz5bd9gOS3KV/2A7frYiKV2g+aF3vaHsbY4WF9exLFERFzWUJJkXfqEJp0M6b/ct/Lr
 s9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nc2WoEZ867pFS9UBGyvCGcCs3GLb9Qat+6rGtgO/EJs=;
 b=G0A77DL3CcNJtQPKGSbI3IkmM4hd+ykPclNYtkQcQpZEw79xPxqhWf+aGBT8nUmez2
 ILruM4CbzGGbe4gL3Roiyo/SsWEqkpC9AO/bgYI/1+lBoTQF2ZF2a7TibSDEcAEZHw1l
 Wm6DVxXi1lzazcc2nrudTS6TEHbXafVBjc0z3YeXJhW7f7788esDRj/L5msPf9vLrIYM
 T6KYJFHYbbnOoMxYW0TAD+bo7udI2QAje9FHAzR/czSA9mjEc75IGTOgfIYrhe/6/I3q
 Z3RnnhPKjXRfGhHcT+Nq/bYnDdwvSAB0aOvi/qx9IpTzBXQsyhUlGaEvn2uuHYiHT0c2
 Rcug==
X-Gm-Message-State: AOAM531g1qHGKMqZO+Vyn7e8Wmt3cVpavaIGxJeAMUZBsuMMJ1+KWKyk
 G9LTP+gdnc3I6REps4hT0vTDNKMzbwhFK45JQg93HQ==
X-Google-Smtp-Source: ABdhPJyknr0S6NEQzzdgkSlFe2R7QvSEKJJKLgNPoAg+FwK/qjYc8eJoyhVs2NojJc8XsUxhhyvaAQSwNMhSptsuQ5E=
X-Received: by 2002:a17:906:c099:: with SMTP id
 f25mr21533781ejz.141.1618087311707; 
 Sat, 10 Apr 2021 13:41:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210324064541.949630-1-jay.xu@rock-chips.com>
In-Reply-To: <20210324064541.949630-1-jay.xu@rock-chips.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 10 Apr 2021 17:41:40 -0300
Message-ID: <CAAEAJfA9jXnUv_Y1NC29RABNJ=V2y6rCaYEF1SO1v5gWvow8eQ@mail.gmail.com>
Subject: Re: [PATCH RESEND 0/7] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: huangtao@rock-chips.com, kever.yang@rock-chips.com, 
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_134154_968657_66B6D3CB 
X-CRM114-Status: GOOD (  13.90  )
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

Hi Jianqun,

I tried applying this on top of "pinctrl: rockchip: add support for rk3568",
but I got some conflicts. If you could add some information about
how patches should be applied to the cover letter, that'd be really helpful :-)

Also, I've noticed several of these GPIOs patches, is this the most up to date?
You can add some information about superseeding patches
in the cover letter as well.

Thanks,
Ezequiel


On Wed, 24 Mar 2021 at 03:46, Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Separate gpio driver from pinctrl driver, and support v2 controller.
>
> Jianqun Xu (7):
>   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
>   pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
>   gpio: separate gpio driver from pinctrl-rockchip driver
>   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
>   gpio/rockchip: support next version gpio controller
>   gpio/rockchip: always enable clock for gpio controller
>   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
>
>  drivers/gpio/Kconfig               |   8 +
>  drivers/gpio/Makefile              |   1 +
>  drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.c | 909 +----------------------------
>  drivers/pinctrl/pinctrl-rockchip.h | 286 +++++++++
>  5 files changed, 1072 insertions(+), 890 deletions(-)
>  create mode 100644 drivers/gpio/gpio-rockchip.c
>  create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
>
> --
> 2.25.1
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
