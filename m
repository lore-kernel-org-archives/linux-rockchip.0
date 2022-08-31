Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57FE3ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 15:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQwOfSXgcO/GLaJiPcDXmDeGc3c/WvRxX8YJ6n49L54=; b=yp64PvPiy1o/rE
	Xgy37md73nLAtfmjjCsh2cvceGhWZ5eVGOr7ZZyv4qx5r7iuMn/omcfcKQ2rYGrFiJBUGZbQ6/bhu
	sjPRb1V98F6lLIWc3tPfs8S0Mgm+ChQAzUCLJZEr0MWxC5mltBIbTB+PHWdQqN/QVruOsws06t3mw
	A5ErUIkmZrjBxCyzDt8/EbKIFcabJfQ2jq74Mphw9mtF4wxtEQXmhRd2AaWpPItC+/2k2YqeGa7Uz
	2vZgK/AM8T/V0guTcYbjMSRd+iPEDNaMBNqF9uDMDuJY/+L+YdKPygB0XjYXGKp6E6nNtu8REhH6y
	fgbG3ghB8nUfj3fPqhUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTPNo-006wJc-6p; Wed, 31 Aug 2022 15:12:00 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTPNd-006vpT-6V
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 15:11:51 +0000
Received: by mail-ej1-x62a.google.com with SMTP id p16so25887088ejb.9
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Aug 2022 08:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=wOCX4y8FzMJYgkjjoJS3gME0wgUGjFxqnmJfDos+UPM=;
        b=YIzdWEFmARohc78qXTnCRvFCeJ63DJ4WKLpA/Fb5O6FBYg24YAqGcppsGttq71bjHN
         OpLPyh/lgTqcuMXMUP7SQgXFCBEidwgoLtwSofpqi5CzweXv3qAZK+1Jth/1JR1VnXsi
         ddMCFt3dl+1AdHvnJ3XJRw3XhoqhrYHdDQw5uIidozgYqZYplxCuiPKbIuZnDJgzz6jO
         1DJkuGIF0moYUfXFXOEFsc0EP6QIL+DDDjwD32e3mRonyehjv0ZBMHZ5c2SXqXZHxzGZ
         HR5wJ7xYaCg1S9+kcQFFBRO6jxeqX6J/ZmPBrf/pS7K1rWRlQQiSlStEHqGUpqVdb9lZ
         Bprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=wOCX4y8FzMJYgkjjoJS3gME0wgUGjFxqnmJfDos+UPM=;
        b=cGoj3wATAxNAUVBjOzIJwl5w1wUS+ac4yB5ABBnvry9jZGH8rxe+PTLqPmK2zFSCuV
         hZWbrNLxsAfnmm5j9uKfg4He4zs7mwAKAgr4DrUI9fdBhax/vPPPVQZj5aDtUQmP+Vxs
         bDZr+8jWSe/n3/5mTbzR7xLbQhibClcytx8HhquZ8JAoGWi/cPzDG/SyLIBETb/FgjSK
         /yIaJyi6+8IDxZbWD1XyIROcCSIGbQZk7QMziF/3jslAOiFYXE2jsdQIjzwOYKYUcBN/
         o0BtdXr9QjvucpeAWDZbNakOmd9rNrzXSKRVAYgKlNVqsriFwaYlX3ah9oxfhaI6I1iC
         /PTA==
X-Gm-Message-State: ACgBeo2wySBRfidWvWkdHSonXnEeavjBJIFNyYZHq0aLUCswxHT+vHNP
	7VDxx0vc3rOmBADFFjwysMsm5Tph4ZvyzOEKPmhWrA==
X-Google-Smtp-Source: AA6agR6bv2tC4PXBKovvZ6XI4feX+mPDOiqadsDcBi7kPOxu80pi0rguDt2bMDC3QwFXaqcRDqJw0B0Q/R9+uA/6yUM=
X-Received: by 2002:a17:906:8a4e:b0:730:9fcd:d988 with SMTP id
 gx14-20020a1709068a4e00b007309fcdd988mr20624187ejc.636.1661958706753; Wed, 31
 Aug 2022 08:11:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220831134516.78108-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20220831134516.78108-1-andriy.shevchenko@linux.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 31 Aug 2022 17:11:36 +0200
Message-ID: <CAMRc=MdQiBHr3cDPWN_PRj2nGVoG-GJJyRNrHNwTaAUvz=35ew@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] gpio: rockchip: Switch to use fwnode instead of of_node
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Jianqun Xu <jay.xu@rock-chips.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_081149_476654_4B721F99 
X-CRM114-Status: GOOD (  26.39  )
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

On Wed, Aug 31, 2022 at 3:45 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> GPIO library now accepts fwnode as a firmware node, so
> switch the driver to use it.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v2: fixed compilation errors (LKP), replace some OF calls (Bart)
>  drivers/gpio/gpio-rockchip.c       | 38 +++++++++++-------------------
>  drivers/pinctrl/pinctrl-rockchip.h |  2 --
>  2 files changed, 14 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index bb50335239ac..e8fa99fd4c80 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -14,12 +14,11 @@
>  #include <linux/init.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> -#include <linux/of_address.h>
> -#include <linux/of_device.h>
> -#include <linux/of_irq.h>
>  #include <linux/pinctrl/pinconf-generic.h>
> +#include <linux/property.h>
>  #include <linux/regmap.h>
>
>  #include "../pinctrl/core.h"
> @@ -518,7 +517,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>         struct irq_chip_generic *gc;
>         int ret;
>
> -       bank->domain = irq_domain_add_linear(bank->of_node, 32,
> +       bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
>                                         &irq_generic_chip_ops, NULL);
>         if (!bank->domain) {
>                 dev_warn(bank->dev, "could not init irq domain for bank %s\n",
> @@ -606,14 +605,10 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>          * files which don't set the "gpio-ranges" property or systems that
>          * utilize ACPI the driver has to call gpiochip_add_pin_range().
>          */
> -       if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
> -               struct device_node *pctlnp = of_get_parent(bank->of_node);
> +       if (!device_property_read_bool(bank->dev, "gpio-ranges")) {
>                 struct pinctrl_dev *pctldev = NULL;
>
> -               if (!pctlnp)
> -                       return -ENODATA;
> -
> -               pctldev = of_pinctrl_get(pctlnp);
> +               pctldev = pinctrl_get(bank->dev->parent);
>                 if (!pctldev)
>                         return -ENODEV;
>
> @@ -641,23 +636,20 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>
>  static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  {
> +       struct platform_device *pdev = to_platform_device(bank->dev);
> +       struct device_node *np = bank->dev->of_node;
>         struct resource res;
>         int id = 0;
>
> -       if (of_address_to_resource(bank->of_node, 0, &res)) {
> -               dev_err(bank->dev, "cannot find IO resource for bank\n");
> -               return -ENOENT;
> -       }
> -
> -       bank->reg_base = devm_ioremap_resource(bank->dev, &res);
> +       bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(bank->reg_base))
>                 return PTR_ERR(bank->reg_base);
>
> -       bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> +       bank->irq = platform_get_irq(pdev, 0);
>         if (!bank->irq)
>                 return -EINVAL;
>
> -       bank->clk = of_clk_get(bank->of_node, 0);
> +       bank->clk = of_clk_get(np, 0);

Why did you stop above? Why not regular clk_get here?

>         if (IS_ERR(bank->clk))
>                 return PTR_ERR(bank->clk);
>
> @@ -668,7 +660,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>         if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
>                 bank->gpio_regs = &gpio_regs_v2;
>                 bank->gpio_type = GPIO_TYPE_V2;
> -               bank->db_clk = of_clk_get(bank->of_node, 1);
> +               bank->db_clk = of_clk_get(np, 1);

Ah, the clocks don't have names in DT? That's unfortunate...

Bart

>                 if (IS_ERR(bank->db_clk)) {
>                         dev_err(bank->dev, "cannot find debounce clk\n");
>                         clk_disable_unprepare(bank->clk);
> @@ -705,17 +697,16 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct device_node *np = dev->of_node;
> -       struct device_node *pctlnp = of_get_parent(np);
>         struct pinctrl_dev *pctldev = NULL;
>         struct rockchip_pin_bank *bank = NULL;
>         struct rockchip_pin_deferred *cfg;
>         static int gpio;
>         int id, ret;
>
> -       if (!np || !pctlnp)
> +       if (!dev->parent)
>                 return -ENODEV;
>
> -       pctldev = of_pinctrl_get(pctlnp);
> +       pctldev = pinctrl_get(dev->parent);
>         if (!pctldev)
>                 return -EPROBE_DEFER;
>
> @@ -728,7 +719,6 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>                 return -EINVAL;
>
>         bank->dev = dev;
> -       bank->of_node = np;
>
>         raw_spin_lock_init(&bank->slock);
>
> @@ -776,7 +766,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>         mutex_unlock(&bank->deferred_lock);
>
>         platform_set_drvdata(pdev, bank);
> -       dev_info(dev, "probed %pOF\n", np);
> +       dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
>
>         return 0;
>  }
> diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
> index 4759f336941e..37a0501bcc03 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.h
> +++ b/drivers/pinctrl/pinctrl-rockchip.h
> @@ -299,7 +299,6 @@ struct rockchip_drv {
>   * @drv: array describing the 4 drive strength sources of the bank
>   * @pull_type: array describing the 4 pull type sources of the bank
>   * @valid: is all necessary information present
> - * @of_node: dt node of this bank
>   * @drvdata: common pinctrl basedata
>   * @domain: irqdomain of the gpio bank
>   * @gpio_chip: gpiolib chip
> @@ -327,7 +326,6 @@ struct rockchip_pin_bank {
>         struct rockchip_drv             drv[4];
>         enum rockchip_pin_pull_type     pull_type[4];
>         bool                            valid;
> -       struct device_node              *of_node;
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
