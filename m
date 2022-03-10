Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7491C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 12:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWnfoC0CAz7WOirgehohjKtVZlpOjUQi0Ee+u1FgcIA=; b=M68w2K24pf+f9v
	pe0jwlE3iI55MXDQwGVe7L+YSGu6FRLNedTDvQXop1hNWZ4NIAVR5bJuu5VwAzuFxSoyTNKxAYbIB
	7qaRBUoRZuYBVm2z/Rvv3R7lkBSRMDxZ2fiKsfU8cHJF/d6mmrGqZ1nr6dmKq0WHQYKfWD/iXljpt
	8dLCK+XQiQTmNZlhgUxZsgMY/3VDITP46sTyHWbdnJh+VAJDfpAImkIGCH7r/EfHl4xsV3WGg6btB
	VTquRH7D3QnS5ND7i6ksUY/9R80SRoZ36c8ullgrIHDVm/ePT8N+VSQSSZdq9McJTnpuas+tcfdf3
	TzNMViC9jUJWSdZtgUzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSHa9-00Ck1y-Ne; Thu, 10 Mar 2022 12:07:49 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSHa7-00Ck1R-4I
 for linux-rockchip@lists.infradead.org; Thu, 10 Mar 2022 12:07:48 +0000
Received: by mail-ej1-x635.google.com with SMTP id a8so11575470ejc.8
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Mar 2022 04:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yqnZcig/be+PF2hUda3ZyVexXIqRExOLgLqUfMRrRj0=;
 b=aU0fRZ97Bv+K9YLWjSVjFA2fu29lenHxRUDmKmjyPUQ1hbtXHtSjqALKEMwpTMQe7b
 oSybaWKGc2qjTXedXVmu22sWqM/Ra/nyrAPLIsAcKzmlifERYaG3e0c2cpgQXIEredMZ
 cqWkaYd6vJE9To6Huxl5m1c+oETkXQFQjay3HwnjmB48MeYznkUvEqCCgn8l3nounloH
 c5JIEXAcy3DOEwQ1J4PbfImoZXA2a32OnoeYenq+sdVo2ajPM0XwyfuxRTmu7gohXBTA
 WBP+oE/uANJEcxhg0dr9VikStqzpohLJwCx3PCAGlSN2+XdhbmBB+GMfAgeYLpqXcZKn
 WL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yqnZcig/be+PF2hUda3ZyVexXIqRExOLgLqUfMRrRj0=;
 b=KhnrejNrmxMTTBMQpA3tE9b6A0UAkFccEfhPPWqR0ZX/IWhxRpa/ZrRCxZbVsXvpFy
 VkO7sboxgTMySYc7AuUSKI0lKIN1QI8T80nk1YR9t8FIpSYOFkti9ESv/hp2zQG2vOux
 SLdXVe3fvaSI48HV5h7SHFBriBGjOWO7AGQJpyvVHTIFZEkk33EKalMKJeLG829gBsPO
 2iSKEkqPkl75gbfkkVIy4MC8AbEXqcsMA8eGxD8j6WKy9cPwKSDdrpxAhZdX0HzgVgby
 e2jL453lVUndP0f1Y0z5wC/z70DvNdQTxiGGLEgDS6Jj9frdL2owBDv2wSvWN7ex372Y
 A1cQ==
X-Gm-Message-State: AOAM5321nCYNftBiHZcJ2HUN4uthqOqtqBFemlC4ispmmwkaQh2heDnR
 d6l5LThjVldES3/T2YMfsNxyRt8frsuQ5W4s1Jg=
X-Google-Smtp-Source: ABdhPJwN/lLYuJmsxz7o7B/CtBPXq9VKTLpeIkKGQs3KRsA7wuIDel3WQMnMElNVbUUrsEpuaAHMMJLpTScf5B9LVSU=
X-Received: by 2002:a17:907:6e01:b0:6d0:562c:e389 with SMTP id
 sd1-20020a1709076e0100b006d0562ce389mr3950855ejc.497.1646914065777; Thu, 10
 Mar 2022 04:07:45 -0800 (PST)
MIME-Version: 1.0
References: <20220308032546.2169929-1-jay.xu@rock-chips.com>
 <20220308032546.2169929-4-jay.xu@rock-chips.com>
In-Reply-To: <20220308032546.2169929-4-jay.xu@rock-chips.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 10 Mar 2022 14:07:09 +0200
Message-ID: <CAHp75VfXQ2JH_Wawp-RHukNnazv4RQCNW0-29NB_Jcv9iV8Kwg@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: rockchip: allow rockchip-gpio driver works
 independs on pinctrl
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Tao Huang <huangtao@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_040747_539807_E7D2D205 
X-CRM114-Status: GOOD (  13.84  )
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

On Wed, Mar 9, 2022 at 1:41 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Currently, the rockchip_pin_bank is get from pinctrl, that binds the
> gpio driver to the pinctrl driver.
>
> rockchip-pinctrl
> ->probe
>   ->register pinctrl
>     ->populate gpio platform
>     ...
>     ->rockchip-gpio probe
>       ->register gpio_chip
>
> Once the pinctrl device registered, other devices may try to configure
> pins througth pinctrl_bind_pins before probe, and if it is a gpio

through

> operation, that make a failure since gpio not ready.
>
> Heiko has provide a output-defer-list to store settings between pinctrl
> and gpio driver, once gpio register, the list will set activate.
>
> With this patch, the gpio can register itself before or without pinctrl,
> even if pinctrl driver used, we can make the gpio register before
> pinctrl by another patch to rockchip pinctrl driver.
>
> rockchip-pinctrl
> ->probe
>   ->populate gpio platform
>     ->rockchip-gpio probe
>       ->register gpio_chip
>   ->register pinctrl
>
> Since the pinctrl is registered last, other devices will do defer probe.

will defer

...

> +       gc->label = kasprintf(GFP_KERNEL, "gpio%d", bank->id);

No NULL checks?

...

> +       static int static_gpio_id;

>         id = of_alias_get_id(np, "gpio");
>         if (id < 0)
> +               id = static_gpio_id++;

You haven't stress tested that, have you?

...

> +       clk_prepare_enable(gpio->clk);

Error check?

...

> +       printk("%s: probed %s\n", __func__, dev_name(dev));

Why printk()?!

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
