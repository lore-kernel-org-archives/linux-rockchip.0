Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52906C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 18:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqG5MGi2h5Yv30sBgPU28SJhnvmzkxnZ3S5AE/jlmE0=; b=gct0sRfw2QOw1N
	kQb0T7PxcRpFvIi3R4GfI5eg54i8xzd8NQrup0vV5DnyEpqzWbtkHSKwW3iXkY0Pp1V0tjIBR8TMM
	VuDSfTPNq7gt+qSfaDfkT53BMy2HtkrLwg9c/qvKAhfM4nrpdUB3MaC0scgnJy3waQY2IAd1opv1G
	6q8Hom02GYZnHkylhTf7GvthMdQy9IlCuUYJOCEPeVDCi38Wkvc8Y2dLvbuY7BQzvbnfdN76NgCTQ
	SK6Lc08dapYzGOj4sDpy6YyXkdnUmzZ6W0HAKSMzmSVs9V7XD8Y/iu6gs6kCQ2bJmWPsWkaTH3Zzs
	1Obtx7R7RuO0j/o2990Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBYw-009caW-Vv; Fri, 02 Sep 2022 18:38:43 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBYu-009cTb-UR
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 18:38:42 +0000
Received: by mail-wm1-x334.google.com with SMTP id n17-20020a05600c501100b003a84bf9b68bso1905539wmr.3
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Sep 2022 11:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=KRBpWIIOAMoQv9wtE6dulvyX3AYtHX5SB44uGSNhJyI=;
        b=Px7jAILUCAFlfGuvs+hykUNWhfQLqfQSUuOdzD7e+bG+6NdMsVnUUGC+bpXDi4zUR6
         /ruHz+ECkBoOkZLWE0OkV6vhABX15JzKlivqXKsjk4BQgAkfc5lqPAOIIBeKUnrbbDn9
         rBlT53UdDv0gsGf369G1oPYwFAdyypi53SeD0dB50CVHA7xbQlYzDhU/IPHcbHeetKNB
         VmsL4aI2MSxg8LV+3V98dKA/dWbmU7H8hjO8Q3Pmpc21fQ+TcrCZQYTeo7XzRmYKrOzn
         ed01x8iMxcxiNJ+vkzPX813B6m7RgeKzGRQDpyk9aR8DGtmBgUN+vlnfLLjmlmYCH7Ki
         x/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=KRBpWIIOAMoQv9wtE6dulvyX3AYtHX5SB44uGSNhJyI=;
        b=IeeBGLRIXuQ663Lc22uV/2NQ4Gl0vmKs2ejwKHg0yGc1c+rvuE02938KQZfS2xWbX5
         baXMgHw9gnmYT78TO+4l51ybET0+ZER4/8p852oX08+205cLtqVP+DHkvt3XOH1za6Sj
         d21vSgu+lmpJeG4R9RT7moS7uImCO0Z1snsKQhCHpYzam6WHeqKzcVzZsSIB6CJUngoM
         4To/U3cvzMSNmywqL7vWlL1lg4qD8JIReyYNuTs4zHKrnj1ztELYoMjSFHoEQxLG61yt
         moFOIDRr2kb294rMxDZZ93xRPSonmg7CcPv92uagT+8Pyq7vaO1cA/uP9E0639DAj8QX
         lriw==
X-Gm-Message-State: ACgBeo0k+5zMlq3B+qVk1ESXFAPDG4AtR2wmCdjtqQ8meb5q2EVtOb85
	VdhNiYxIke0Uh7Y2NMOUbZ4N01/5vnFhf3UFKrY=
X-Google-Smtp-Source: AA6agR5ibS0Npyh4KJH1Y192QaepP43nEKu0nHfQZ7E5Gxxc4EZESN2CfSoGKIHcfXf5k5ctWD/qpukL26mROVqx188=
X-Received: by 2002:a05:600c:5114:b0:3a5:cb1f:6bf3 with SMTP id
 o20-20020a05600c511400b003a5cb1f6bf3mr3824753wms.65.1662143918730; Fri, 02
 Sep 2022 11:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220901012944.2634398-1-jay.xu@rock-chips.com> <20220901012944.2634398-3-jay.xu@rock-chips.com>
In-Reply-To: <20220901012944.2634398-3-jay.xu@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 2 Sep 2022 14:38:27 -0400
Message-ID: <CAMdYzYrJWnkYneEuJ+dA0EU1QiTkBOkGz1+zn=H5rA-qfS88+Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] gpio: rockchip: make gpio work without cru module
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_113841_022334_26395277 
X-CRM114-Status: GOOD (  22.56  )
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

On Wed, Aug 31, 2022 at 9:30 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> In some case the system may has no builtin cru module, the gpio driver
> will fail to get periph clock and debounce clock.
>
> On rockchip SoCs, the pclk and dbg clk are default to be enabled and
> ungated, the gpio possible to work without cru module.
>
> This patch makes gpio work fine without cru module.

What happens if the cru probes later and these clocks become available
but aren't claimed so clk_disable_unused shuts them down?

>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index a4c4e4584f5b..1da0324445cc 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -195,6 +195,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
>         unsigned int cur_div_reg;
>         u64 div;
>
> +       if (!bank->db_clk)
> +               return -ENOENT;
> +
>         if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
>                 div_debounce_support = true;
>                 freq = clk_get_rate(bank->db_clk);
> @@ -654,8 +657,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>                 return -EINVAL;
>
>         bank->clk = of_clk_get(bank->of_node, 0);
> -       if (IS_ERR(bank->clk))
> -               return PTR_ERR(bank->clk);
> +       if (IS_ERR(bank->clk)) {
> +               bank->clk = NULL;
> +               dev_warn(bank->dev, "works without clk pm\n");
> +       }
>
>         clk_prepare_enable(bank->clk);
>         id = readl(bank->reg_base + gpio_regs_v2.version_id);
> @@ -666,9 +671,8 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>                 bank->gpio_type = GPIO_TYPE_V2;
>                 bank->db_clk = of_clk_get(bank->of_node, 1);
>                 if (IS_ERR(bank->db_clk)) {
> -                       dev_err(bank->dev, "cannot find debounce clk\n");
> -                       clk_disable_unprepare(bank->clk);
> -                       return -EINVAL;
> +                       bank->db_clk = NULL;
> +                       dev_warn(bank->dev, "works without debounce clk pm\n");
>                 }
>         } else {
>                 bank->gpio_regs = &gpio_regs_v1;
> --
> 2.25.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
