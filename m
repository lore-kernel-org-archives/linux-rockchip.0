Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8453EECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 07:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSrWtXM7cAtRH6QO50qnAtzswawp8NOmKx2AhJEhIz0=; b=Crsm+ieu7jBWtI
	1tv57aHKPdT2rCEx33tZYgjOdtO38ctCxBAZc7slq94NK6Lfdwj38rNuefv5tkYxC2aEnHtS4+Cgb
	DyMFHCa3YV6m8ggb1otXF2nYBMzWs/zg0kyVwX5kV3kUnQ05zgI/qaK9LmcMrKcF130uZrgoNT9KT
	xcg3OIE5g8GjAfad1HNZGbgxDfqBLdubkAcDuQEl7wcfvAvpUtd4Cf3Ni9Ec+nfVzRku2ZSG7V/AP
	RDgKVTd+uyOwzJDH48ipApjxm9UoUgp8Z2kLhr1O9YMQgqNJYWCRk2zkebsQdxqtLiRSQ3Tm5xND/
	v1nwEVLp/9iggPa4yxvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTeJf-00ACal-4z; Thu, 01 Sep 2022 07:08:43 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTeJb-00ACYg-C9
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 07:08:41 +0000
Received: by mail-ej1-x62c.google.com with SMTP id y3so32781091ejc.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 00:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=T1a2n0TNcrK8BG/SkAbOxT72skaz9m2THYBGPmVrqkw=;
        b=hnKeXWRs7+MUYSmsPy4UqpjsS42ETkbAratKcQZCLzvtCI9QigOVlPzGm7UlQvMheR
         DLWpprUoJK1JeArbPQsC0LzSfdnv0WGYJ+ZvFIWeY0K0/iQdH8pwCLg+VZtDwRZNzXPo
         SYs9vIf8hxuJ4NJbcl5cw/f5B4hYupasTRAeSm/NgH1pcC/dv2oBW8D87H4lw9BbZhDc
         EAfRLhTk2lq72fDYZt7eTrEa8qHVZTRTzK1v2Rpt8ABTN+Q9G2/iQzr0kJWXZ/yQPtP1
         YiuXdWhW5DGUAzOisxqVl13XHXVm0ZMTldz0QDgKsvDQvfoETIZOe0PsU1ix89NrFj5O
         L2IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=T1a2n0TNcrK8BG/SkAbOxT72skaz9m2THYBGPmVrqkw=;
        b=zAkM2Ek21eVcnMZOSpCEMJNSiPshrCldNXlx7M2Ka2HasgvAVLLbSdiTcRBot4naYP
         spn4OhReYbLCOqezLPNJ0IB0D+m660mTztAUPQ7myKxd2WsDldSiV/jkeN7eCi4srCqp
         FYo5QBg9tVTLmp0ljt4w2y/83I2spj7wbpzXyf6Qcw9BP9VUnH5bBeRPN6If0JZWk/Ij
         a315UBCA24dhY4B2RDhp+q8vHJxtpWtPYmT6szjKbp7Kt/tyATnEF3K7t/x/zuLqSPu4
         W6qN3NTSEf4MllLPQ0hH9XWOexoEPa/v5XrfuIitgyl/wv5+HYAB6ZVGB91Wr1bM1EL/
         PsKQ==
X-Gm-Message-State: ACgBeo1/IbRdFIFE67aaUqaA2nkleuABJmWyWKZlLQEhHCuyNRLMp+aH
	wRCxi4jIwwWh8dhrWIrzFMTg4PLBzZFjXE7UPQ3M+Q==
X-Google-Smtp-Source: AA6agR6pWO4tm1B3xV/+1WwC/UgTI+pM0Sz8blfO7fCz7raFul87Ipx2LIG7Rkcc6bOZUHhhJ/DfIORZELtiTal/q6M=
X-Received: by 2002:a17:906:8a4e:b0:730:9fcd:d988 with SMTP id
 gx14-20020a1709068a4e00b007309fcdd988mr22695166ejc.636.1662016117115; Thu, 01
 Sep 2022 00:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220831134516.78108-1-andriy.shevchenko@linux.intel.com>
 <CAMRc=MdQiBHr3cDPWN_PRj2nGVoG-GJJyRNrHNwTaAUvz=35ew@mail.gmail.com> <2022090109473952058033@rock-chips.com>
In-Reply-To: <2022090109473952058033@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 1 Sep 2022 09:08:26 +0200
Message-ID: <CAMRc=McXoBqm-SBJTWdULZGep98V5-z3O9Dygkd07H=Z2k0-HA@mail.gmail.com>
Subject: Re: Re: [PATCH v2 1/1] gpio: rockchip: Switch to use fwnode instead
 of of_node
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"linus.walleij" <linus.walleij@linaro.org>, linux-gpio <linux-gpio@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_000839_644765_B89F59BB 
X-CRM114-Status: GOOD (  30.73  )
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

On Thu, Sep 1, 2022 at 3:47 AM jay.xu@rock-chips.com
<jay.xu@rock-chips.com> wrote:
>
> Hi
>
> --------------
> jay.xu@rock-chips.com
> >On Wed, Aug 31, 2022 at 3:45 PM Andy Shevchenko
> ><andriy.shevchenko@linux.intel.com> wrote:
> >>
> >> GPIO library now accepts fwnode as a firmware node, so
> >> switch the driver to use it.
> >>
> >> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >> ---
> >> v2: fixed compilation errors (LKP), replace some OF calls (Bart)
> >>  drivers/gpio/gpio-rockchip.c       | 38 +++++++++++-------------------
> >>  drivers/pinctrl/pinctrl-rockchip.h |  2 --
> >>  2 files changed, 14 insertions(+), 26 deletions(-)
> >>
> >> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> >> index bb50335239ac..e8fa99fd4c80 100644
> >> --- a/drivers/gpio/gpio-rockchip.c
> >> +++ b/drivers/gpio/gpio-rockchip.c
> >> @@ -14,12 +14,11 @@
> >>  #include <linux/init.h>
> >>  #include <linux/interrupt.h>
> >>  #include <linux/io.h>
> >> +#include <linux/mod_devicetable.h>
> >>  #include <linux/module.h>
> >>  #include <linux/of.h>
> >> -#include <linux/of_address.h>
> >> -#include <linux/of_device.h>
> >> -#include <linux/of_irq.h>
> >>  #include <linux/pinctrl/pinconf-generic.h>
> >> +#include <linux/property.h>
> >>  #include <linux/regmap.h>
> >>
> >>  #include "../pinctrl/core.h"
> >> @@ -518,7 +517,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
> >>         struct irq_chip_generic *gc;
> >>         int ret;
> >>
> >> -       bank->domain = irq_domain_add_linear(bank->of_node, 32,
> >> +       bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
> >>                                         &irq_generic_chip_ops, NULL);
> >>         if (!bank->domain) {
> >>                 dev_warn(bank->dev, "could not init irq domain for bank %s\n",
> >> @@ -606,14 +605,10 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
> >>          * files which don't set the "gpio-ranges" property or systems that
> >>          * utilize ACPI the driver has to call gpiochip_add_pin_range().
> >>          */
> >> -       if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
> >> -               struct device_node *pctlnp = of_get_parent(bank->of_node);
> >> +       if (!device_property_read_bool(bank->dev, "gpio-ranges")) {
> >>                 struct pinctrl_dev *pctldev = NULL;
> >>
> >> -               if (!pctlnp)
> >> -                       return -ENODATA;
> >> -
> >> -               pctldev = of_pinctrl_get(pctlnp);
> >> +               pctldev = pinctrl_get(bank->dev->parent);
> >>                 if (!pctldev)
> >>                         return -ENODEV;
> >>
> >> @@ -641,23 +636,20 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
> >>
> >>  static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >>  {
> >> +       struct platform_device *pdev = to_platform_device(bank->dev);
> >> +       struct device_node *np = bank->dev->of_node;
> >>         struct resource res;
> >>         int id = 0;
> >>
> >> -       if (of_address_to_resource(bank->of_node, 0, &res)) {
> >> -               dev_err(bank->dev, "cannot find IO resource for bank\n");
> >> -               return -ENOENT;
> >> -       }
> >> -
> >> -       bank->reg_base = devm_ioremap_resource(bank->dev, &res);
> >> +       bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
> >>         if (IS_ERR(bank->reg_base))
> >>                 return PTR_ERR(bank->reg_base);
> >>
> >> -       bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> >> +       bank->irq = platform_get_irq(pdev, 0);
> >>         if (!bank->irq)
> >>                 return -EINVAL;
> >>
> >> -       bank->clk = of_clk_get(bank->of_node, 0);
> >> +       bank->clk = of_clk_get(np, 0);
> >
> >Why did you stop above? Why not regular clk_get here?
> >
> >>         if (IS_ERR(bank->clk))
> >>                 return PTR_ERR(bank->clk);
> >>
> >> @@ -668,7 +660,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >>         if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
> >>                 bank->gpio_regs = &gpio_regs_v2;
> >>                 bank->gpio_type = GPIO_TYPE_V2;
> >> -               bank->db_clk = of_clk_get(bank->of_node, 1);
> >> +               bank->db_clk = of_clk_get(np, 1);
> >
> >Ah, the clocks don't have names in DT? That's unfortunate...
>
> The patch add 'clock-names' property for gpio dt node, after that, the driver can change to
> devm_clk_get(dev, "bus");
> devm_clk_get(dev, "db");
>

We can't unfortunately, we need to remain compatible with existing DTs.

Bart

> https://patchwork.kernel.org/project/linux-rockchip/patch/20220901013101.2634480-2-jay.xu@rock-chips.com
>
> >
> >Bart
> >
> >>                 if (IS_ERR(bank->db_clk)) {
> >>                         dev_err(bank->dev, "cannot find debounce clk\n");
> >>                         clk_disable_unprepare(bank->clk);
> >> @@ -705,17 +697,16 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
> >>  {
> >>         struct device *dev = &pdev->dev;
> >>         struct device_node *np = dev->of_node;
> >> -       struct device_node *pctlnp = of_get_parent(np);
> >>         struct pinctrl_dev *pctldev = NULL;
> >>         struct rockchip_pin_bank *bank = NULL;
> >>         struct rockchip_pin_deferred *cfg;
> >>         static int gpio;
> >>         int id, ret;
> >>
> >> -       if (!np || !pctlnp)
> >> +       if (!dev->parent)
> >>                 return -ENODEV;
> >>
> >> -       pctldev = of_pinctrl_get(pctlnp);
> >> +       pctldev = pinctrl_get(dev->parent);
> >>         if (!pctldev)
> >>                 return -EPROBE_DEFER;
> >>
> >> @@ -728,7 +719,6 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
> >>                 return -EINVAL;
> >>
> >>         bank->dev = dev;
> >> -       bank->of_node = np;
> >>
> >>         raw_spin_lock_init(&bank->slock);
> >>
> >> @@ -776,7 +766,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
> >>         mutex_unlock(&bank->deferred_lock);
> >>
> >>         platform_set_drvdata(pdev, bank);
> >> -       dev_info(dev, "probed %pOF\n", np);
> >> +       dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
> >>
> >>         return 0;
> >>  }
> >> diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
> >> index 4759f336941e..37a0501bcc03 100644
> >> --- a/drivers/pinctrl/pinctrl-rockchip.h
> >> +++ b/drivers/pinctrl/pinctrl-rockchip.h
> >> @@ -299,7 +299,6 @@ struct rockchip_drv {
> >>   * @drv: array describing the 4 drive strength sources of the bank
> >>   * @pull_type: array describing the 4 pull type sources of the bank
> >>   * @valid: is all necessary information present
> >> - * @of_node: dt node of this bank
> >>   * @drvdata: common pinctrl basedata
> >>   * @domain: irqdomain of the gpio bank
> >>   * @gpio_chip: gpiolib chip
> >> @@ -327,7 +326,6 @@ struct rockchip_pin_bank {
> >>         struct rockchip_drv             drv[4];
> >>         enum rockchip_pin_pull_type     pull_type[4];
> >>         bool                            valid;
> >> -       struct device_node              *of_node;
> >>         struct rockchip_pinctrl         *drvdata;
> >>         struct irq_domain               *domain;
> >>         struct gpio_chip                gpio_chip;
> >> --
> >> 2.35.1
> >>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
