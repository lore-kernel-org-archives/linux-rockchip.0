Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF586C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 17:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6IF842oLX0f1RuPG2bRlvfOkHdLM3fGTlfx7SiCIyA=; b=vXlSeaxuV4vys3
	mcj4yKm7AQOTeMQU+3pTGhXTvE7SGp1UwftibgXTC9iSuRhtMVZI+IVIQZYwe0n3JvjrWL1husKqf
	lt6sGmHZuMdXUFX7gwjkxHc+eIzDTKWDP6aGz77aKhQZTS1ja0KEEQ2pCU5E6W82d9gILqQykdCHh
	M+Xu6CayJiKQr0dI1YHVQtLY+C+Cd7NsVCD0Zg+plPmLqZxADjUja8bdtMn4R4XEvOL8bq7MFn73t
	LcMmlXC/yI0nxU7nwbY6UlI8eZd7d2ae1l/xEFbmtaQE7uJ4MJZzukvuFpMWviwa5yl0r3A83k6oT
	HYB6RiprqU5UjTJY06tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQAun-00CwEC-KD; Mon, 22 Aug 2022 17:08:41 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQAub-00Cw8t-2S
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 17:08:30 +0000
Received: by mail-ej1-x631.google.com with SMTP id u15so13836174ejt.6
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 10:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=VcHeHOgMzpHFjV9q0iYLqwua0z0eWivxKKVLx5wZcKM=;
        b=WRztOXCrfpLU9YhqRcSBJs6ojbRwUnW8Jgwi+Bh+2RpMIphjvZ3+Ks7dz5wPOPyhPG
         FzwZ51FO6Uuwg50qmlVCdPfBet6nlujjKOG8f+4sY/VamdMJ9dpU5ZvhjwxhUisKAPu8
         LNlv3wCuVSY8peVYoT00k0u40xLQGE31PHgpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=VcHeHOgMzpHFjV9q0iYLqwua0z0eWivxKKVLx5wZcKM=;
        b=hETNWYK+55JmqyzejXYsZBochWiKqLR1O+fHZaw8d5vPcaSv4ZbfaxUtcrqFVnaBD3
         ppAsg7uVDFWRUF59TIMQEQ0xESr9BfqPXMb1uACpQS70PLSO/0VKDjl6uIAAyiVHiPLV
         jAMMOjpcM0wAh8IUCYZa8fmDZNZ5jufwL1Z8e64L1uYz0t7v2xLxQHFg+srRAvWcaxM4
         UH+tB+H+NpRNM+eWhxu+VROXmRXrq3D535XtdmqzccgKDSy8uRvuRaYaDbfkoja9oXGd
         40wnFbZl3FWL33rYmEmoNzFmsYMtSCFjqmoq+VLuyCXJXlGBV5F4fa+lJH/2poTpsTJG
         12LQ==
X-Gm-Message-State: ACgBeo2tbJjEc56ni7M3hEboZzegbud6AVdrUocEDcRqXP5fr0Q35l1m
	MEWloCr90RyzU184LOF9dpdzTHcpALLtPmYg
X-Google-Smtp-Source: AA6agR7ZWfN7mBykCSel+SsJcLqHeMdrpOrYzzyW2lQFwtUidsHWxB1+gIvPQ3qcTs50njQYSFBJBw==
X-Received: by 2002:a17:907:96a1:b0:73d:75f2:336 with SMTP id hd33-20020a17090796a100b0073d75f20336mr4966394ejc.43.1661188104756;
        Mon, 22 Aug 2022 10:08:24 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id 12-20020a508e0c000000b0043d1a9f6e4asm30947edw.9.2022.08.22.10.08.22
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 10:08:23 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id z14-20020a7bc7ce000000b003a5db0388a8so6006501wmk.1
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 10:08:22 -0700 (PDT)
X-Received: by 2002:a05:600c:5114:b0:3a6:1ab9:5b3d with SMTP id
 o20-20020a05600c511400b003a61ab95b3dmr12466472wms.93.1661188102603; Mon, 22
 Aug 2022 10:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220820095933.20234-1-jeffy.chen@rock-chips.com> <20220820095933.20234-2-jeffy.chen@rock-chips.com>
In-Reply-To: <20220820095933.20234-2-jeffy.chen@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Aug 2022 10:08:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
Message-ID: <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio/rockchip: Toggle edge trigger mode after acking
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_100829_336576_A9AD8580 
X-CRM114-Status: GOOD (  19.26  )
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

Hi,

On Sat, Aug 20, 2022 at 3:07 AM Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
>
> Otherwise the trigger mode might be out-of-sync when a level change
> occurred in between.
>
> Fixes: 53b1bfc76df2 ("pinctrl: rockchip: Avoid losing interrupts when supporting both edges")
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> ---
>
>  drivers/gpio/gpio-rockchip.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index a98351cd6821..736b4d90f1ca 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -338,7 +338,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
>                 irq = __ffs(pend);
>                 pend &= ~BIT(irq);
>
> -               dev_dbg(bank->dev, "handling irq %d\n", irq);
> +               generic_handle_domain_irq(bank->domain, irq);
>
>                 /*
>                  * Triggering IRQ on both rising and falling edge
> @@ -370,8 +370,6 @@ static void rockchip_irq_demux(struct irq_desc *desc)
>                                                      bank->gpio_regs->ext_port);
>                         } while ((data & BIT(irq)) != (data_old & BIT(irq)));
>                 }
> -
> -               generic_handle_domain_irq(bank->domain, irq);

I'm happy to let others say for sure, but from my point of view I'm
not convinced. It feels like with your new code you could lose edges.

The abstraction I always assume for edge triggered interrupts is that
multiple edges are coalesced into one IRQ but that if an edge comes in
after the first line of the IRQ handler starts executing then the IRQ
handler will run again. In other words:

- edge A
- edge B
- IRQ handler starts running (once for A/B)
- IRQ handler finishes running
- <idle>
- edge C
- IRQ handler starts running (for C)
- edge D
- edge E
- IRQ handler finishes running
- IRQ handler starts running (for D/E)
- IRQ handler finishes running
- <idle>

For your new code I don't think that will necessarily be the case. I
think this can happen with your new code:

- rising edge
- IRQ handler starts running for rising edge
- IRQ handler finishes running for rising edge
- falling edge (not latched since we're looking for rising edges)
- notice that level is low
- keep it configured for rising edge

...in other words an edge happened _after_ the IRQ handler ran but we
didn't call the IRQ handler again. I don't think this is right.


What problem are you trying to solve?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
