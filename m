Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB3CCECAAD8
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 23:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkvGB2LoKx2x4bIBJDKfQc53jjvm+as06ab3JfLjkko=; b=XCa+6Pqj/4jc4b
	em/CM//ZuGYMKAfBbLRNiMGnLjtpXScxvxvbKI+zVVhTLOcviwZ/iPwf1LHaNqNNBrl8KxGHavSv+
	8YLq8S8+1vJ+bWtRsAIGumzeceLnYeozRfEOkw9IBhs9Zl4sClKmRbKHIfYnAgEf23WvKWyiroPVg
	+XMJuerQM90yCjQoC7xT2hYtmWDUU6L/xQOjr8q4VT73FnpnUquON4N84q0feax5aBqsI8SQlGeLr
	bS30JPxHBD8lAwUUM9DdKiHcRv63+EEO830CHb1rKjOOh1MfJGCvEqpTJ0mxeA8XgqHi0gFEgYoee
	eETUrDIB72TG0apvXjWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSo9F-00DBhK-Ev; Mon, 29 Aug 2022 23:26:29 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSo9D-00DBg3-23
	for linux-rockchip@lists.infradead.org; Mon, 29 Aug 2022 23:26:28 +0000
Received: by mail-pl1-x62e.google.com with SMTP id jm11so9416938plb.13
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 16:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=fJol7oO+hvz4xaJdqn1KO5H6P7mdkaSjUFxPLG8Bqso=;
        b=GGMyH56I4s4ILsWwMifDrlWbdLVk5MwjIyicn/p7yxMfzjm2+er3oNQQAoJ/QznylC
         AUlaNb8Lgxn99r69Os/woXS0/nFA96DRfh9kuFBGw+FC+S3Q6iHE7ZjwbtnFmnymoGuq
         DlKGyxGwGIWRyECNKUlpwj9sBJ0CaXdrrloFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=fJol7oO+hvz4xaJdqn1KO5H6P7mdkaSjUFxPLG8Bqso=;
        b=JSFNnPTO/XpW0s8eFbL5UcJWw1qjDWtUP6dqCHYa9ILXrhaU49mSw9SapJQgMQH5dc
         UIXZKHy1pN6CMkvf6cK5tB/EwORAPfwgLAVukusGYuoy1ynbL5LmzIzwCXOhcCofc9Nl
         LKcnijtEIlxK5z6wOvjwNaUtuDdTSW9Sm9B6DwSDeCM8fleHNjKfiVgRCVbGYiMs1yDJ
         maDgsYScErWV4BzjMI/WEEUqRIuA5kt/sZ/ajdnTlYWD+WNuf+mdggd33ivNSeLOQDbM
         VN3hgCMvtW0OiTv3pZT6qz+2fUIeFuwnvHqHCzTsu4IxTnGAyC7JVMMIo7acg5JuV6U5
         WEgQ==
X-Gm-Message-State: ACgBeo1wi+3++bUZ9Cs/YN3UnNB5a5oWaN54IcMbklbEOFl+NCQ+L6g7
	hHUSjHA7Qedv87B+A6UObc8fhQ==
X-Google-Smtp-Source: AA6agR447AyRb//SpSacvh/4alApqRH8PoVfdzuz/J8rRqpUUbCsZOieLaVx8Ao7FM6j3SMlpllssQ==
X-Received: by 2002:a17:90a:c402:b0:1f8:c335:d4d7 with SMTP id i2-20020a17090ac40200b001f8c335d4d7mr21033415pjt.242.1661815583208;
        Mon, 29 Aug 2022 16:26:23 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:1031:748:b358:36a2])
        by smtp.gmail.com with ESMTPSA id k10-20020a170902ce0a00b0016c1a1c1405sm8096217plg.222.2022.08.29.16.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 16:26:22 -0700 (PDT)
Date: Mon, 29 Aug 2022 16:26:20 -0700
From: Brian Norris <briannorris@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Chen Jeffy <jeffy.chen@rock-chips.com>,
	Doug Anderson <dianders@chromium.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	LKML <linux-kernel@vger.kernel.org>,
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] gpio/rockchip: Toggle edge trigger mode after acking
Message-ID: <Yw1LHPKumlKRtGTR@google.com>
References: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
 <20220820095933.20234-2-jeffy.chen@rock-chips.com>
 <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
 <5cb0a457-b667-76e5-d383-6e93457d5d12@rock-chips.com>
 <CACRpkdY1jQH+-o6y84w0WtJT1erRnJzCcg0jjgRHVDUw4q97QQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdY1jQH+-o6y84w0WtJT1erRnJzCcg0jjgRHVDUw4q97QQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_162627_127420_C42DAED0 
X-CRM114-Status: GOOD (  27.01  )
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

Hi Linus,

On Fri, Aug 26, 2022 at 10:54:08AM +0200, Linus Walleij wrote:
> On Tue, Aug 23, 2022 at 4:50 AM Chen Jeffy <jeffy.chen@rock-chips.com> wrote:
> 
> > The thing is, we are currently toggling the trigger mode to make sure it
> > matches the current GPIO level (e.g. level low -> rising edge mode),
> > than ack it in gpio IRQ handler.
> 
> Yes this is an old trick, I don't know if I invented it again for Linux in
> commit cc890cd78acd7ab03442907d354b6af34e973cb3
> in 2011, surely the trick must be well known.
> 
> Back then I did it like this:
> 
> +       val = readl(U300_PIN_REG(offset, icr));
> +       /* Set mode depending on state */
> +       if (u300_gpio_get(&gpio->chip, offset)) {
> +               /* High now, let's trigger on falling edge next then */
> +               writel(val & ~U300_PIN_BIT(offset), U300_PIN_REG(offset, icr));

This looks pretty close to the right solution, but you still have a
race: a falling edge may happen right between the get() and the
writel(), and you'll miss it. You're in a little better shape than any
of the rockchip proposals so far, because at least you do the ACK before
this step (Rockchip doesn't). But you do still have a narrow race
window.

I think you need to iterate on this, and check the status again
afterward, looping until you are sure you either got it right, or are
leaving an edge still latched.

And at that point, I think you have the solution I recommended in my
other email :)

> +               dev_dbg(gpio->dev, "next IRQ on falling edge on pin %d\n",
> +                       offset);
> +       } else {
> +               /* Low now, let's trigger on rising edge next then */
> +               writel(val | U300_PIN_BIT(offset), U300_PIN_REG(offset, icr));
> +               dev_dbg(gpio->dev, "next IRQ on rising edge on pin %d\n",
> +                       offset);
> +       }
> 
> Notice that I read the current level of the raw input to decide what the next
> trigger should be. The Rockchip driver does not do this, maybe that works
> better?

Actually, it does; that's what the 'ext_port' register is doing. The
question is when exactly to do this toggling -- before or after the ACK,
and with what sort of ordering to ensure you don't end up at the wrong
polarity when exiting.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
