Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D76FDECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 21:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jy7jyT3JtMox1eHHHMl3foz92Zoy+3VsyMHlAW0fFc=; b=U5CENFIlKDJdD9
	eS+YVLEUBjXJDAxVHIY/q9wmBV0EmtfvGaZ5nJ25WOG4JBihTTywqWRQVFv2yHHzPW/BPCle1mUhV
	wl7csg7M1DOn0MO3cJTQvoe3FqRmRn1T1Js7pacQtRpnjK0yECKvTuL/MaOM9twmvSe0Cdqx/rIyh
	HzUrwNPAH15jTvKVZZebLQo8inNdvhhiadZ1ieYZ6VmEPExZWENX2MZ1JXtTnNhm5kfYKXeJABmeT
	1G+Ep4o61uvP3i8TuFBvR4L1qVtPR6s1AMWllYRaWUQ1qxBo1b9ZLyL+ue6Jwb21XJOHZnVulq7yW
	3QP+9GSasga1ybt/Q/eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDvW-00B1wE-E3; Fri, 02 Sep 2022 21:10:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDvR-00B1qr-Q0
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 21:10:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUDvE-0006Uo-0g; Fri, 02 Sep 2022 23:09:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v1 1/3] gpio: rockchip: make gpio work without cru module
Date: Fri, 02 Sep 2022 23:09:51 +0200
Message-ID: <4679451.ZaRXLXkqSa@diego>
In-Reply-To: <CAMdYzYrJWnkYneEuJ+dA0EU1QiTkBOkGz1+zn=H5rA-qfS88+Q@mail.gmail.com>
References: <20220901012944.2634398-1-jay.xu@rock-chips.com> <20220901012944.2634398-3-jay.xu@rock-chips.com> <CAMdYzYrJWnkYneEuJ+dA0EU1QiTkBOkGz1+zn=H5rA-qfS88+Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_141005_913435_8BFAFD17 
X-CRM114-Status: GOOD (  28.77  )
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

Am Freitag, 2. September 2022, 20:38:27 CEST schrieb Peter Geis:
> On Wed, Aug 31, 2022 at 9:30 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> >
> > In some case the system may has no builtin cru module, the gpio driver
> > will fail to get periph clock and debounce clock.
> >
> > On rockchip SoCs, the pclk and dbg clk are default to be enabled and
> > ungated, the gpio possible to work without cru module.
> >
> > This patch makes gpio work fine without cru module.
> 
> What happens if the cru probes later and these clocks become available
> but aren't claimed so clk_disable_unused shuts them down?

Also the clock controller for the soc is such a basic component, who
in their right mind would build a kernel without it and expect anything
to work.

My guess is that is simply hacking around that Android thingy with their
common kernel but vendors being allowed to move all the "special" code
to modules. We had this untested cru-module in mainline for a while
before people found out that the module part seemingly never was
tested ;-) .

The gpio driver is of course dependent on its clock supply, so hacking
around that seems really like a very bad idea.


Heiko



> 
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> > ---
> >  drivers/gpio/gpio-rockchip.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> > index a4c4e4584f5b..1da0324445cc 100644
> > --- a/drivers/gpio/gpio-rockchip.c
> > +++ b/drivers/gpio/gpio-rockchip.c
> > @@ -195,6 +195,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
> >         unsigned int cur_div_reg;
> >         u64 div;
> >
> > +       if (!bank->db_clk)
> > +               return -ENOENT;
> > +
> >         if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
> >                 div_debounce_support = true;
> >                 freq = clk_get_rate(bank->db_clk);
> > @@ -654,8 +657,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >                 return -EINVAL;
> >
> >         bank->clk = of_clk_get(bank->of_node, 0);
> > -       if (IS_ERR(bank->clk))
> > -               return PTR_ERR(bank->clk);
> > +       if (IS_ERR(bank->clk)) {
> > +               bank->clk = NULL;
> > +               dev_warn(bank->dev, "works without clk pm\n");
> > +       }
> >
> >         clk_prepare_enable(bank->clk);
> >         id = readl(bank->reg_base + gpio_regs_v2.version_id);
> > @@ -666,9 +671,8 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >                 bank->gpio_type = GPIO_TYPE_V2;
> >                 bank->db_clk = of_clk_get(bank->of_node, 1);
> >                 if (IS_ERR(bank->db_clk)) {
> > -                       dev_err(bank->dev, "cannot find debounce clk\n");
> > -                       clk_disable_unprepare(bank->clk);
> > -                       return -EINVAL;
> > +                       bank->db_clk = NULL;
> > +                       dev_warn(bank->dev, "works without debounce clk pm\n");
> >                 }
> >         } else {
> >                 bank->gpio_regs = &gpio_regs_v1;
> > --
> > 2.25.1
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
