Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7159BECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 12:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQP8C7dlyZNdv1awaY0uqZYnUfi53IVvWe40oubEHzU=; b=yFfHTyiratG87T
	3z/sDERnEMSg9dtlpZsNHD3+LGB3F+36xMKpjem83pT4jwoTOyRlW8w+hVHAW8AbKOtX9GlmcAbP+
	v+oifYmCv8cyS77KMVYSx95RO0Zgf0k83cObqipijnFQDq13YxGHjzIk4HuyR3wdUJiZchcmSgxNY
	B84N1t1YEZ6PA9hSh2k1hFNRSrhCVjz7rYKRHNr11LGY/+eChFhPuyEM2l5xOQwZeO6vWotLawAGF
	JVMWlSmuPIo+rzAemfWJm8pWkVNVwA9kIYP/cvuKPD3a57U5J/LLJbpaM9usRfKKAfc3lFmi1JysE
	FoIyNUxV9UXVUXp3p+Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTMcP-0061Zc-TJ; Wed, 31 Aug 2022 12:14:53 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTMcE-0061VF-Q8
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 12:14:44 +0000
Received: by mail-ed1-x52a.google.com with SMTP id z2so18131006edc.1
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Aug 2022 05:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=KwLxj/3R9OPaMWBlSoS2iHxJjuhjvXmm6WRiSjqoTQE=;
        b=rG5/ewteV3hnEoANWjJWJ+Yl6BVrNJPtRiAX9xQsHBxyEnEHzxHzx4/SkioiVMO9DW
         kBONLeFChKUEcb4HlOZMQK+aT6BZBbH1Hwa1id274c7KVfOujQlyhlx72+0VdDL8S3qm
         IzleDKhdXE52iEzWkIPaIHwr3PQBrGRzzDgNOk85R9+68HQnUwcRHpi4ks+u5fCdBfT0
         ENi2JK4/FghzRbAGE5VMdR1yCwYt0WGc4tMdeOsv0sMGfKlB0Y47ajvjE60UkVVnOi2s
         ivxepuK5gvoNcX7KpBt92s842OvQWMa50Kd3YS+ummwW2NGFYfCYFhRwvFATUFTBx2+v
         nMAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=KwLxj/3R9OPaMWBlSoS2iHxJjuhjvXmm6WRiSjqoTQE=;
        b=II1fOaCMnmobRpI0eaXqp4ampCHFfdI2Biv10IetOWmnxIPpoIrlitoDfZombb7W2J
         aRZQnNYLdo92KB+aDooDfnFgyoEEcZrufcaNihxcOjGLDf2fJU3aAxY7+VGkDXHrpuiz
         xzeD5KNV/Bw8E5aRnmOMw8egEiHuR+TfIMjx9S38Ec11GL48LmXb7pAZKRHJWhr98Rab
         jAD2AJfCaV8iI7h6nrL8ERQHR3AEVvbiMiB0bk9oBolmqFFER+8XSEDptmA4d6prgGbu
         ef4/kSVw9MW8y23DodtYhHhWg2DzF14FIn1t+QSNvcxIHcBXhxEdagGOrf67iycwnOJL
         gGtQ==
X-Gm-Message-State: ACgBeo2GcT9y9nO5rv1qHlbXCB16XhpP31ek4l+MdMSItQZ2I+/A9KMp
	vyN0+H7Gl2jPUO5Rqxr5TaBEiMBP0jqTbYdY6itqQA==
X-Google-Smtp-Source: AA6agR5Tp5BGCK8kEj0i5evRpsF8q4oGmEyCv3wJNLBWyy/lWX40YYFHq7tVF+QqddzGgpks0CDoi978NFDLUEuFReY=
X-Received: by 2002:aa7:d78b:0:b0:447:d501:14c8 with SMTP id
 s11-20020aa7d78b000000b00447d50114c8mr20307330edq.82.1661948079469; Wed, 31
 Aug 2022 05:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220830191939.56436-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20220830191939.56436-1-andriy.shevchenko@linux.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 31 Aug 2022 14:14:28 +0200
Message-ID: <CAMRc=Mem-Yk6=Jor5sBm2yTo_4y5Tm0wkmLy3e-W71+6UtMmig@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] gpio: rockchip: Switch to use fwnode instead of of_node
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Jianqun Xu <jay.xu@rock-chips.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_051442_861484_53042EBA 
X-CRM114-Status: GOOD (  27.58  )
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

On Tue, Aug 30, 2022 at 9:19 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> GPIO library now accepts fwnode as a firmware node, so
> switch the driver to use it.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/gpio/gpio-rockchip.c       | 32 ++++++++++++++++--------------
>  drivers/pinctrl/pinctrl-rockchip.h |  6 ++++--
>  2 files changed, 21 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index bb50335239ac..6e847f326ff4 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -20,6 +20,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/pinctrl/pinconf-generic.h>
> +#include <linux/property.h>
>  #include <linux/regmap.h>
>
>  #include "../pinctrl/core.h"
> @@ -518,7 +519,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>         struct irq_chip_generic *gc;
>         int ret;
>
> -       bank->domain = irq_domain_add_linear(bank->of_node, 32,
> +       bank->domain = irq_domain_create_linear(bank->fwnode, 32,
>                                         &irq_generic_chip_ops, NULL);
>         if (!bank->domain) {
>                 dev_warn(bank->dev, "could not init irq domain for bank %s\n",
> @@ -606,14 +607,14 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>          * files which don't set the "gpio-ranges" property or systems that
>          * utilize ACPI the driver has to call gpiochip_add_pin_range().
>          */
> -       if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
> -               struct device_node *pctlnp = of_get_parent(bank->of_node);
> +       if (!fwnode_property_read_bool(bank->fwnode, "gpio-ranges")) {
> +               struct fwnode_handle *parent = fwnode_get_parent(bank->fwnode);
>                 struct pinctrl_dev *pctldev = NULL;
>
>                 if (!pctlnp)
>                         return -ENODATA;
>
> -               pctldev = of_pinctrl_get(pctlnp);
> +               pctldev = of_pinctrl_get(to_of_node(parent));

Can you replace it with a high-level pinctrl_get()? Would get rid of
another of_ call.

>                 if (!pctldev)
>                         return -ENODEV;
>
> @@ -641,10 +642,11 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>
>  static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  {
> +       struct device_node *node = to_of_node(bank->fwnode);
>         struct resource res;
>         int id = 0;
>
> -       if (of_address_to_resource(bank->of_node, 0, &res)) {
> +       if (of_address_to_resource(node, 0, &res)) {

Same here - cannot we use the high-level interfaces for resources?
Index being 0 is telling me, it's a simple use-case. (Not sure for
that one though).

Same comments elsehwere really - if we're touching this driver, then
maybe we can switch to high-level device interfaces intead of using
the of_ flavors.

Bart

>                 dev_err(bank->dev, "cannot find IO resource for bank\n");
>                 return -ENOENT;
>         }
> @@ -653,11 +655,11 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>         if (IS_ERR(bank->reg_base))
>                 return PTR_ERR(bank->reg_base);
>
> -       bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> +       bank->irq = irq_of_parse_and_map(node, 0);
>         if (!bank->irq)
>                 return -EINVAL;
>
> -       bank->clk = of_clk_get(bank->of_node, 0);
> +       bank->clk = of_clk_get(node, 0);
>         if (IS_ERR(bank->clk))
>                 return PTR_ERR(bank->clk);
>
> @@ -668,7 +670,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>         if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
>                 bank->gpio_regs = &gpio_regs_v2;
>                 bank->gpio_type = GPIO_TYPE_V2;
> -               bank->db_clk = of_clk_get(bank->of_node, 1);
> +               bank->db_clk = of_clk_get(node, 1);
>                 if (IS_ERR(bank->db_clk)) {
>                         dev_err(bank->dev, "cannot find debounce clk\n");
>                         clk_disable_unprepare(bank->clk);
> @@ -704,22 +706,22 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
>  static int rockchip_gpio_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
> -       struct device_node *np = dev->of_node;
> -       struct device_node *pctlnp = of_get_parent(np);
> +       struct fwnode_handle *fwnode = dev_fwnode(dev);
> +       struct fwnode_handle *parent = fwnode_get_parent(fwnode);
>         struct pinctrl_dev *pctldev = NULL;
>         struct rockchip_pin_bank *bank = NULL;
>         struct rockchip_pin_deferred *cfg;
>         static int gpio;
>         int id, ret;
>
> -       if (!np || !pctlnp)
> +       if (!parent)
>                 return -ENODEV;
>
> -       pctldev = of_pinctrl_get(pctlnp);
> +       pctldev = of_pinctrl_get(to_of_node(parent));
>         if (!pctldev)
>                 return -EPROBE_DEFER;
>
> -       id = of_alias_get_id(np, "gpio");
> +       id = of_alias_get_id(to_of_node(fwnode), "gpio");
>         if (id < 0)
>                 id = gpio++;
>
> @@ -728,7 +730,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>                 return -EINVAL;
>
>         bank->dev = dev;
> -       bank->of_node = np;
> +       bank->fwnode = fwnode;
>
>         raw_spin_lock_init(&bank->slock);
>
> @@ -776,7 +778,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>         mutex_unlock(&bank->deferred_lock);
>
>         platform_set_drvdata(pdev, bank);
> -       dev_info(dev, "probed %pOF\n", np);
> +       dev_info(dev, "probed %pfw\n", fwnode);
>
>         return 0;
>  }
> diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
> index 4759f336941e..411ed6a09842 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.h
> +++ b/drivers/pinctrl/pinctrl-rockchip.h
> @@ -18,6 +18,8 @@
>  #ifndef _PINCTRL_ROCKCHIP_H
>  #define _PINCTRL_ROCKCHIP_H
>
> +struct fwnode_handle;
> +
>  #define RK_GPIO0_A0    0
>  #define RK_GPIO0_A1    1
>  #define RK_GPIO0_A2    2
> @@ -299,7 +301,7 @@ struct rockchip_drv {
>   * @drv: array describing the 4 drive strength sources of the bank
>   * @pull_type: array describing the 4 pull type sources of the bank
>   * @valid: is all necessary information present
> - * @of_node: dt node of this bank
> + * @fwnode: firmware node of this bank
>   * @drvdata: common pinctrl basedata
>   * @domain: irqdomain of the gpio bank
>   * @gpio_chip: gpiolib chip
> @@ -327,7 +329,7 @@ struct rockchip_pin_bank {
>         struct rockchip_drv             drv[4];
>         enum rockchip_pin_pull_type     pull_type[4];
>         bool                            valid;
> -       struct device_node              *of_node;
> +       struct fwnode_handle            *fwnode;
>         struct rockchip_pinctrl         *drvdata;
>         struct irq_domain               *domain;
>         struct gpio_chip                gpio_chip;
> --
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
