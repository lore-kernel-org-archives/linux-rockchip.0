Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 877BAC6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 08:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsRHXfc8VTxDsWKoWcUFO4Cp92rfb0rUL/Ie1LfWnns=; b=PbZAnVQ6dz7i5p
	5WA8KXVzv0eNXrXniZ5vzYk3fJ8ReupUcAZSYBNYInXTCOKlbWCJnnO3BbUt9uyUngOxVRakk00Pc
	hVhgdG5TF1TpgDf3vQ1r3jNgR+NUjXUcQ5XWxxDc0vFJgoeIq9wJROSIeF5Q8NU+HmgC8qQ5azCxu
	kXlix2LYMKLj9mV7Qoq8mH8mHIAvEi2J/4liV+AExn8WDLtslYdrm95Unz+R4skyzLsX0kM+rZyUj
	2A4BOriLxdB5PL78k5XlUEVRxfV0eAQe+tK19wmaJLaOC1UJMfQbCe33CS8stFSs4yviSoqi6fs/W
	dmPpCJOuQTfWISJOYcvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHg7-00EBkZ-Nk; Thu, 22 Sep 2022 08:35:27 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHfm-00EBam-De
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 08:35:08 +0000
Received: by mail-ed1-x536.google.com with SMTP id q21so12478490edc.9
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Sep 2022 01:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9k5XZsKEuVg+w97GW3NVqqtdvOIwwsJ0tLsuQ7fHq8E=;
        b=FJ6r/HguZTeXEn2iM6s0wY+O49nKDExlr9X65U39yFCpAszdozjll8AsP0HXCfOYfk
         3kNrRDSna3185ik/ihUdiYyEeZ/iiFE1/Zss4EfQEWuaJjbf74pQO4rJ6Ow8OH/tjdxb
         KRgwJTsDqowN2AJMYTv0a4BM3wF4t8Oo1iADeGRe54Iaq4yX1ZmIc6VcrAM90PL51vO3
         tXYU0mr/LyQnfoylMtgrdiTAJAqELB/GszHadpd6e75RlrPhA2meuSid8ckYg9i0dYTf
         WBTQp9OATvFv5ckTye7qGmBmz+usPaz8gSstzHin3+pQ5OisN/cFohZ0GSTYXOMrAbtc
         TRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9k5XZsKEuVg+w97GW3NVqqtdvOIwwsJ0tLsuQ7fHq8E=;
        b=u2JI3rphYAv83EAKLw4ocfCfZvEkEvYAKviQzUtLPo7sueR6EsjThtVAVsrzF697LQ
         9qhzgmRh2Enkpo4D3uYueLlCifNUNX68jNW1+Hg6nchKrs8gGZfcUzUIBEGXeEvI4sRK
         j5MuC4VLp/n9N6ucc3Qao1L8J0Pg8Jw07O4bHhGqvyp8NYQybF4jGrnvNWNmjvuMA+qK
         yPSSPoqYS/7VB9p85YkybCY/KRnvMLgGIbc+Oa9VdMBb2wKtXFfEvHRJ+pi7Eaxuev0g
         YRx8gIKjDm0plnH7Owsu6UpmB2Amz71Pak7Kkph3VvhPqUVzJewocXgcSm+02N9Nr2w/
         d0tA==
X-Gm-Message-State: ACrzQf2XWfXxurnPxwaYJK3BQQBZ4vTQyj/jxJiZHi1geStW0AmSKm4f
	135iXk3gAFY6xoHpy/IFy6YeHN2J5z4JENnN0dAym+lEqcw=
X-Google-Smtp-Source: AMsMyM5Om/uY7TZ7Zkqo5JBiny2QBL7GKG4E5XX0XdXuPjTvM3Go95ggGcKvQj/ljg41n1A8wVB6KfT+jfAQZ2h1IK0=
X-Received: by 2002:aa7:dd02:0:b0:44e:f7af:b996 with SMTP id
 i2-20020aa7dd02000000b0044ef7afb996mr2116386edv.422.1663835701030; Thu, 22
 Sep 2022 01:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220831134516.78108-1-andriy.shevchenko@linux.intel.com>
 <CAMRc=MdQiBHr3cDPWN_PRj2nGVoG-GJJyRNrHNwTaAUvz=35ew@mail.gmail.com>
 <2022090109473952058033@rock-chips.com> <CAMRc=McXoBqm-SBJTWdULZGep98V5-z3O9Dygkd07H=Z2k0-HA@mail.gmail.com>
 <2022090115251208267537@rock-chips.com>
In-Reply-To: <2022090115251208267537@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 22 Sep 2022 10:34:49 +0200
Message-ID: <CAMRc=MdZVG8PC3_SmRYn54zTx-x_UfUxnRzhsLEaYEzDS=VjRA@mail.gmail.com>
Subject: Re: Re: [PATCH v2 1/1] gpio: rockchip: Switch to use fwnode instead
 of of_node
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"linus.walleij" <linus.walleij@linaro.org>, linux-gpio <linux-gpio@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_013506_514186_4DA5156B 
X-CRM114-Status: GOOD (  29.75  )
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

On Thu, Sep 1, 2022 at 9:25 AM jay.xu@rock-chips.com
<jay.xu@rock-chips.com> wrote:
>
> Hi Bart
>
> --------------
> jay.xu@rock-chips.com
> >On Thu, Sep 1, 2022 at 3:47 AM jay.xu@rock-chips.com
> ><jay.xu@rock-chips.com> wrote:
> >>
> >> Hi
> >>
> >> --------------
> >> jay.xu@rock-chips.com
> >> >On Wed, Aug 31, 2022 at 3:45 PM Andy Shevchenko
> >> ><andriy.shevchenko@linux.intel.com> wrote:
> >> >>
> >> >> GPIO library now accepts fwnode as a firmware node, so
> >> >> switch the driver to use it.
> >> >>
> >> >> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >> >> ---
> >> >> v2: fixed compilation errors (LKP), replace some OF calls (Bart)
> >> >>  drivers/gpio/gpio-rockchip.c       | 38 +++++++++++-------------------
> >> >>  drivers/pinctrl/pinctrl-rockchip.h |  2 --
> >> >>  2 files changed, 14 insertions(+), 26 deletions(-)
> >> >>
> >> >> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> >> >> index bb50335239ac..e8fa99fd4c80 100644
> >> >> --- a/drivers/gpio/gpio-rockchip.c
> >> >> +++ b/drivers/gpio/gpio-rockchip.c
> >> >> @@ -14,12 +14,11 @@
> >> >>  #include <linux/init.h>
> >> >>  #include <linux/interrupt.h>
> >> >>  #include <linux/io.h>
> >> >> +#include <linux/mod_devicetable.h>
> >> >>  #include <linux/module.h>
> >> >>  #include <linux/of.h>
> >> >> -#include <linux/of_address.h>
> >> >> -#include <linux/of_device.h>
> >> >> -#include <linux/of_irq.h>
> >> >>  #include <linux/pinctrl/pinconf-generic.h>
> >> >> +#include <linux/property.h>
> >> >>  #include <linux/regmap.h>
> >> >>
> >> >>  #include "../pinctrl/core.h"
> >> >> @@ -518,7 +517,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
> >> >>         struct irq_chip_generic *gc;
> >> >>         int ret;
> >> >>
> >> >> -       bank->domain = irq_domain_add_linear(bank->of_node, 32,
> >> >> +       bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
> >> >>                                         &irq_generic_chip_ops, NULL);
> >> >>         if (!bank->domain) {
> >> >>                 dev_warn(bank->dev, "could not init irq domain for bank %s\n",
> >> >> @@ -606,14 +605,10 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
> >> >>          * files which don't set the "gpio-ranges" property or systems that
> >> >>          * utilize ACPI the driver has to call gpiochip_add_pin_range().
> >> >>          */
> >> >> -       if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
> >> >> -               struct device_node *pctlnp = of_get_parent(bank->of_node);
> >> >> +       if (!device_property_read_bool(bank->dev, "gpio-ranges")) {
> >> >>                 struct pinctrl_dev *pctldev = NULL;
> >> >>
> >> >> -               if (!pctlnp)
> >> >> -                       return -ENODATA;
> >> >> -
> >> >> -               pctldev = of_pinctrl_get(pctlnp);
> >> >> +               pctldev = pinctrl_get(bank->dev->parent);
> >> >>                 if (!pctldev)
> >> >>                         return -ENODEV;
> >> >>
> >> >> @@ -641,23 +636,20 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
> >> >>
> >> >>  static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >> >>  {
> >> >> +       struct platform_device *pdev = to_platform_device(bank->dev);
> >> >> +       struct device_node *np = bank->dev->of_node;
> >> >>         struct resource res;
> >> >>         int id = 0;
> >> >>
> >> >> -       if (of_address_to_resource(bank->of_node, 0, &res)) {
> >> >> -               dev_err(bank->dev, "cannot find IO resource for bank\n");
> >> >> -               return -ENOENT;
> >> >> -       }
> >> >> -
> >> >> -       bank->reg_base = devm_ioremap_resource(bank->dev, &res);
> >> >> +       bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
> >> >>         if (IS_ERR(bank->reg_base))
> >> >>                 return PTR_ERR(bank->reg_base);
> >> >>
> >> >> -       bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> >> >> +       bank->irq = platform_get_irq(pdev, 0);
> >> >>         if (!bank->irq)
> >> >>                 return -EINVAL;
> >> >>
> >> >> -       bank->clk = of_clk_get(bank->of_node, 0);
> >> >> +       bank->clk = of_clk_get(np, 0);
> >> >
> >> >Why did you stop above? Why not regular clk_get here?
> >> >
> >> >>         if (IS_ERR(bank->clk))
> >> >>                 return PTR_ERR(bank->clk);
> >> >>
> >> >> @@ -668,7 +660,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >> >>         if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
> >> >>                 bank->gpio_regs = &gpio_regs_v2;
> >> >>                 bank->gpio_type = GPIO_TYPE_V2;
> >> >> -               bank->db_clk = of_clk_get(bank->of_node, 1);
> >> >> +               bank->db_clk = of_clk_get(np, 1);
> >> >
> >> >Ah, the clocks don't have names in DT? That's unfortunate...
> >>
> >> The patch add 'clock-names' property for gpio dt node, after that, the driver can change to
> >> devm_clk_get(dev, "bus");
> >> devm_clk_get(dev, "db");
> >>
> >
> >We can't unfortunately, we need to remain compatible with existing DTs.
> >
> As said in the patch comment, the 'clock-names' is not 'required' since existing DTs
> Do the driver can try get by id first and then do a second try with legency way without id ?
>
> or other suggestion ?
>

No, it sounds good to me.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
