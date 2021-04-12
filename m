Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AE28C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 12:14:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE8B561278
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 12:14:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE8B561278
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mnd+3HMhqGGqwCS+/2UiPKTbQYiqVlfZnjiB6MdkAww=; b=Q52hq2hONNjxcVbRPxVsBnh0h
	wwazBAzokqUc5bVjXHVZF6lf4nU/RAJBGWHiyr0Q2SjFTtzubfQR42/iMsa0QFGBdyNbq5UIf1lv0
	u+wdaoh2lNisjvNo+kmbrD+MY+aH2Vv9EiYppCdTAdBSdJO1tZ+mgZNH595usAh49lsb+kZnHY7Kd
	XFzm7XlxeHGfxIBPQxXApEHH8f269wCYw/oRDS8uWS2IXNMuBEkYDTdI7EyFc2+fJB9EP0HourYrK
	Y7JAuh9ec4zzBBlkrT3f6ATrSiv4ZBLsjXjAQAH+3VGmpSMN3F6ze4opkZ9mkJuqnjY088lkbVpn7
	R5T3RmN6g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVvSA-006ej7-PR; Mon, 12 Apr 2021 12:14:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvS9-006ein-He
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 12:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tUjJiri9YyaJc6srfMwGPp1nWAKWEpVo3zCwAOYEKG4=; b=ROAGcjV3dnjS0PMStH248iJWxR
 Hl8E31b49GUxulAyDplkQ0Oydj2wqNTfrT7PzZ7Uzw0nRsMAVXDk7eQle32s3ulRCVoB2whZy0ZeO
 Cv9gqJ79Dph+sZnW2jEayvWfOTMX5KhHirntjmN8nWs5VDZQzV9TrhW9RXCWUawSD0uv3zDQa8Z29
 wsaoJvBTEJ1mMKBN4MgjWgts67riw+qc++orDeFf2fwACnRImeBQvxI7FfJYoP1+SzmmPxzLg1O5H
 Ko36wOoa2aWDXcpiW9fCb9BCMqfIG1OK7YRR3s9OiHGykZneMCUb6n7VKNlcOCh1TP7srO9f5Yr0z
 BunhXRQw==;
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvS7-006D43-0N
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 12:14:04 +0000
Received: by mail-pf1-x436.google.com with SMTP id m11so9072856pfc.11
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Apr 2021 05:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tUjJiri9YyaJc6srfMwGPp1nWAKWEpVo3zCwAOYEKG4=;
 b=c+yAMsRK0xCk48r24NmKEcLCqt2b+Gql9/RTM2H7Aolj3jNru5A3PrvR4sJoQPlTqe
 eWM76540qp+mCofxH8DXqkhJhSUGAWCo3cOYMRkSvA5ik+u4LaLHrPNe7nHwSRUhx9xX
 z6Utlj6ilaTQfa/1c4aJn36pfOggcQX5bsrwYKro5MrRGCSmTsYjyV/cXF3BRyt3wHWM
 P2pVlSuY3U5VoM33mVshdGu56L9aDabwcGO041T1ou/tFvmdzQfWizH9aaUJnMlVKLMx
 hF3gpM10Gcj5/h5UcpKXqXCTuGEPvin2DLFlfw2D8nNgLcpsHAl/6Bjn/G0z/ozJ5NND
 ZKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tUjJiri9YyaJc6srfMwGPp1nWAKWEpVo3zCwAOYEKG4=;
 b=GYL/GV0ZOLq/AxIWMAEmbaBO5ISSTYTTcWb7dWCebCdNHjTtvrSVpJJ+bTebPcMs1V
 1M9+/Ukaffz5NydbNxdjjFl+M8RasalNp8Ic2piJS5BFHiGZy0Dckd9ANl3/MS+oyCwq
 1FA/rNWvaIeku4/m0/YSGDA00aIcORqHgvlTnkyK4x/GClDummCn9/8i04sQi6+hoFjH
 3BVuZ6ypSWgcsLaan709Hy+Gf1lIH7CMrJ2ONQSngBoYivDO3lD5cjRnqtyzWh/vdigl
 uME0i9j/kfX9amV4Xx2brlgn0CHGAUFBi2wjpa7kutirxS4ZeQ321TavW0uOmKSmfpsH
 PWFw==
X-Gm-Message-State: AOAM530PTjF1ZNV0iv/tkIUZfoMr81+otidLoomreKZfZxOwHQh2gOo1
 W/K6E1g53Qrp/EUGoGpncrOZreDyAl+1q4YzxIM=
X-Google-Smtp-Source: ABdhPJzgpbIwME8lAynQqiqHAqfqPf5U2S87pcob/1mHc7tiplwVn7Cw9nu9qC7ZUdx7trHcV+n8ax8bqS/fjrcu2pM=
X-Received: by 2002:a63:c48:: with SMTP id 8mr26212373pgm.74.1618229633387;
 Mon, 12 Apr 2021 05:13:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
In-Reply-To: <20210411133030.1663936-1-pgwipeout@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 12 Apr 2021 15:13:37 +0300
Message-ID: <CAHp75Ve=1EbJ1qOjnTLKOwvv-UKLfxMHS-UUp=ET0zoJ9fV=ng@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] gpio-rockchip driver
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_051403_073968_CD2B27BC 
X-CRM114-Status: GOOD (  14.60  )
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

On Sun, Apr 11, 2021 at 4:35 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> Separate gpio driver from pinctrl driver, and support v2 controller.
>
> Tested on rk3566-quartz64 prototype board.

Can you give a bit more context?
Usually separation means that hardware is represented by two different
IP blocks that are (almost) independent to each other. Was it the case
on the original platforms? Do you have different pin controller (or
it's absent completely) on some new / old platform?

>
> Patch History:
> V2 - Rebase to latest linux-next.
>
> Tested-by: Peter Geis <pgwipeout@gmail.com>
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
>  drivers/pinctrl/pinctrl-rockchip.c | 911 +----------------------------
>  drivers/pinctrl/pinctrl-rockchip.h | 287 +++++++++
>  5 files changed, 1073 insertions(+), 892 deletions(-)
>  create mode 100644 drivers/gpio/gpio-rockchip.c
>  create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
>
> --
> 2.25.1
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
