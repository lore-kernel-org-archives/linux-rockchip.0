Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07CDECAAA3
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 08:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uzh+XjHeKYlEukDSA5xjhwlUXZ4AEevTZdjJRqJo0HU=; b=DNNBYmA4pGS0r2
	VRx4SYGn0nXNO7152AYDG+Mrt0A/dpirqkaacpvyJbvewRXk4lewJLE+eLq3kiHygaygUswhdbVRF
	WvGA7TCjUBmoSgOkHdffZmUcff0zR9JloFqOLS6daO4nCMie+D2mzmDEdKPT75BcXR0VnwsWAIBLI
	IBz/j8UIBVaBb1T24JTI1Dj80i9x46NC4Kojljj4ZZwcOLUoSbD1neRM0OGnpUX3ZAiJJIyQbsipH
	niktgu4vkeagB4Lt6PoI7SnhswhwaHyIUKMke6BxWePEXDgKgsmYeKlPy/p/CBPTTOZlZx5BhdR/B
	IcgnuKdrKTz+4723Ye+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRV6i-00HSNt-HJ; Fri, 26 Aug 2022 08:54:28 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRV6b-00HSB3-B4
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 08:54:27 +0000
Received: by mail-ej1-x62e.google.com with SMTP id u9so1908863ejy.5
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 01:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=WalmlB4EN49W8PL0fcaiWMZot+zjYgZWStfQtsL0AgI=;
        b=qwkHN+LuWi6f574jTt2roEdWyygA2QfKiSCTrbp87K7G4JVLFh0lgVm1CRPbtGqYAx
         9nKM+5zJeJjT9k3UnxaN4OJ+5a+3CpddlFNzxa0o5GKFBmI+xbUI3AaErHI/H1nwEXwW
         CsKz/cVEuHZowhCwHv6zBhWpbipqrfwh9Y1l5qlvI1VflxZCkteZf4wHWf2DxOr+trQA
         yZyBu5WWHGbzz0pwWdAEi/ij4SNC5C4lfUiis6LB39sHk9DXV0L/zz9D6WKcGnjRvl2C
         jzl7VQ1yIFwcl0/HgwVMBz5QIUqXkWWBlNJ1K4BC3O0Kwh8g7geFPUGgb04GZum/8bZf
         7azA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=WalmlB4EN49W8PL0fcaiWMZot+zjYgZWStfQtsL0AgI=;
        b=68jgafqT+3prb6/sFu4GmQhHp8RaPdlwBNIjOR70YknocDIBfyduLs8blSGpfUaYjl
         p2wJDZEbtAn7O2JVgP5uEH4dqcnNTY5sbWldqDe/IDdNb3iPg54W1bCaGHXYOzJ7WeZN
         F8J19scoQPFqE2AyjQCMnxJh8qqEQFYEuqlYizVKHyihzQeWNvCppc2xsLzymMzgVvEH
         nv4ELjRxi7myKX4eHYqke6IUioeduCn8cYBxcXXRFVbfOEg3WVCduaAqy1GfsBxK9EMr
         4Ibt8WCLskAGp5aZFnid5nKIUGMMs5IARe5lsoWxRBFGKZx8vLrjtSdewUaIyZb7VlNJ
         0fXg==
X-Gm-Message-State: ACgBeo119NTEzriL+r28FbLzQaKJ4qQCLaD6y9yezQHTC6whg1RVegTz
	yiij9EZt3t6NolMAdGTlsrq8df1d72e+idOBBAOWhg==
X-Google-Smtp-Source: AA6agR5mY4IzTZnOBmdMG5ApfDuP/zrM1AZzzp4ayXmEtVjtONhAK+SU1czh4Zr9AJXwYjKlSbIxw+414mLWAXkPXlY=
X-Received: by 2002:a17:906:478f:b0:73d:7919:b23 with SMTP id
 cw15-20020a170906478f00b0073d79190b23mr4509164ejc.690.1661504059817; Fri, 26
 Aug 2022 01:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
 <20220820095933.20234-2-jeffy.chen@rock-chips.com> <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
 <5cb0a457-b667-76e5-d383-6e93457d5d12@rock-chips.com>
In-Reply-To: <5cb0a457-b667-76e5-d383-6e93457d5d12@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 26 Aug 2022 10:54:08 +0200
Message-ID: <CACRpkdY1jQH+-o6y84w0WtJT1erRnJzCcg0jjgRHVDUw4q97QQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio/rockchip: Toggle edge trigger mode after acking
To: Chen Jeffy <jeffy.chen@rock-chips.com>
Cc: Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	LKML <linux-kernel@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_015421_447440_D22A5BE5 
X-CRM114-Status: GOOD (  13.15  )
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

On Tue, Aug 23, 2022 at 4:50 AM Chen Jeffy <jeffy.chen@rock-chips.com> wrote:

> The thing is, we are currently toggling the trigger mode to make sure it
> matches the current GPIO level (e.g. level low -> rising edge mode),
> than ack it in gpio IRQ handler.

Yes this is an old trick, I don't know if I invented it again for Linux in
commit cc890cd78acd7ab03442907d354b6af34e973cb3
in 2011, surely the trick must be well known.

Back then I did it like this:

+       val = readl(U300_PIN_REG(offset, icr));
+       /* Set mode depending on state */
+       if (u300_gpio_get(&gpio->chip, offset)) {
+               /* High now, let's trigger on falling edge next then */
+               writel(val & ~U300_PIN_BIT(offset), U300_PIN_REG(offset, icr));
+               dev_dbg(gpio->dev, "next IRQ on falling edge on pin %d\n",
+                       offset);
+       } else {
+               /* Low now, let's trigger on rising edge next then */
+               writel(val | U300_PIN_BIT(offset), U300_PIN_REG(offset, icr));
+               dev_dbg(gpio->dev, "next IRQ on rising edge on pin %d\n",
+                       offset);
+       }

Notice that I read the current level of the raw input to decide what the next
trigger should be. The Rockchip driver does not do this, maybe that works
better?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
