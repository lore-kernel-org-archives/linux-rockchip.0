Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6349C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 10:49:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7868461105
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 10:49:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7868461105
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9XZ+KqbPgVGXcF5fGGdofFJtIYgqCRQ5dGvOZ4kK/I=; b=sjTUZQ9qR0p9Km
	M6cFKUG8FA05p8vd12BXCZuHaiIpNhYcMpbGQjgE4AD5UbcYAqjTyKkf5AmESY6sXEkijEwKreUyC
	u/d49ombighuSBB67qZZR1QjTCPReiKxIEkv1HGNjTzfiJNtJiclGGgrgvk92i2oIUS1rRrZ8wrEX
	KEV+XVdPw6eqHreb5iH8w26voXWbIbLoR9fO2zdP2mZt8cHriIJv8Qn2StW5mozvNeq30hA8ew9Ph
	8mZjcUhtynIv/2ec6yKlH4eVM5Fta/BjORpp1hF5/J1PTiiJbDntuUiMS9TWa65YFDQYmAYqB5zQK
	69d8lrJ+uLbcY/XuwwZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk2DS-00GA6Q-JR; Mon, 08 Nov 2021 10:49:30 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk2D9-00G9zJ-0A; Mon, 08 Nov 2021 10:49:13 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B7DF720002;
 Mon,  8 Nov 2021 10:49:03 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Jianqun Xu <jay.xu@rock-chips.com>, Linus Walleij
 <linus.walleij@linaro.org>, Sai Krishna Potthuri
 <lakshmi.sai.krishna.potthuri@xilinx.com>, Andrew Morton
 <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Patrice Chotard <patrice.chotard@foss.st.com>, Michal
 Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 09/19] pinctrl: armada-37xx: Use temporary variable
 for struct device
In-Reply-To: <20211105124242.27288-9-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-9-andriy.shevchenko@linux.intel.com>
Date: Mon, 08 Nov 2021 11:49:03 +0100
Message-ID: <8735o6udls.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_024911_360965_851A44F4 
X-CRM114-Status: GOOD (  20.74  )
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

Hello Andy,

> Use temporary variable for struct device to make code neater.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>


Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks,

Gregory


> ---
>  drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 56 +++++++++------------
>  1 file changed, 23 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> index 5615cb7a1209..37f92dc54d7a 100644
> --- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> +++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> @@ -341,12 +341,12 @@ static int armada_37xx_pmx_set_by_name(struct pinctrl_dev *pctldev,
>  				       struct armada_37xx_pin_group *grp)
>  {
>  	struct armada_37xx_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
> +	struct device *dev = info->dev;
>  	unsigned int reg = SELECTION;
>  	unsigned int mask = grp->reg_mask;
>  	int func, val;
>  
> -	dev_dbg(info->dev, "enable function %s group %s\n",
> -		name, grp->name);
> +	dev_dbg(dev, "enable function %s group %s\n", name, grp->name);
>  
>  	func = match_string(grp->funcs, NB_FUNCS, name);
>  	if (func < 0)
> @@ -722,16 +722,16 @@ static unsigned int armada_37xx_irq_startup(struct irq_data *d)
>  static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  					struct armada_37xx_pinctrl *info)
>  {
> -	struct device_node *np = info->dev->of_node;
>  	struct gpio_chip *gc = &info->gpio_chip;
>  	struct irq_chip *irqchip = &info->irq_chip;
>  	struct gpio_irq_chip *girq = &gc->irq;
>  	struct device *dev = &pdev->dev;
> +	struct device_node *np;
>  	struct resource res;
>  	int ret = -ENODEV, i, nr_irq_parent;
>  
>  	/* Check if we have at least one gpio-controller child node */
> -	for_each_child_of_node(info->dev->of_node, np) {
> +	for_each_child_of_node(dev->of_node, np) {
>  		if (of_property_read_bool(np, "gpio-controller")) {
>  			ret = 0;
>  			break;
> @@ -750,12 +750,12 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  		return 0;
>  	}
>  
> -	if (of_address_to_resource(info->dev->of_node, 1, &res)) {
> +	if (of_address_to_resource(dev->of_node, 1, &res)) {
>  		dev_err(dev, "cannot find IO resource\n");
>  		return -ENOENT;
>  	}
>  
> -	info->base = devm_ioremap_resource(info->dev, &res);
> +	info->base = devm_ioremap_resource(dev, &res);
>  	if (IS_ERR(info->base))
>  		return PTR_ERR(info->base);
>  
> @@ -774,8 +774,7 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  	 * the chained irq with all of them.
>  	 */
>  	girq->num_parents = nr_irq_parent;
> -	girq->parents = devm_kcalloc(&pdev->dev, nr_irq_parent,
> -				     sizeof(*girq->parents), GFP_KERNEL);
> +	girq->parents = devm_kcalloc(dev, nr_irq_parent, sizeof(*girq->parents), GFP_KERNEL);
>  	if (!girq->parents)
>  		return -ENOMEM;
>  	for (i = 0; i < nr_irq_parent; i++) {
> @@ -794,11 +793,12 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  static int armada_37xx_gpiochip_register(struct platform_device *pdev,
>  					struct armada_37xx_pinctrl *info)
>  {
> +	struct device *dev = &pdev->dev;
>  	struct device_node *np;
>  	struct gpio_chip *gc;
>  	int ret = -ENODEV;
>  
> -	for_each_child_of_node(info->dev->of_node, np) {
> +	for_each_child_of_node(dev->of_node, np) {
>  		if (of_find_property(np, "gpio-controller", NULL)) {
>  			ret = 0;
>  			break;
> @@ -811,19 +811,16 @@ static int armada_37xx_gpiochip_register(struct platform_device *pdev,
>  
>  	gc = &info->gpio_chip;
>  	gc->ngpio = info->data->nr_pins;
> -	gc->parent = &pdev->dev;
> +	gc->parent = dev;
>  	gc->base = -1;
>  	gc->of_node = np;
>  	gc->label = info->data->name;
>  
>  	ret = armada_37xx_irqchip_register(pdev, info);
> -	if (ret)
> -		return ret;
> -	ret = devm_gpiochip_add_data(&pdev->dev, gc, info);
>  	if (ret)
>  		return ret;
>  
> -	return 0;
> +	return devm_gpiochip_add_data(dev, gc, info);
>  }
>  
>  /**
> @@ -874,13 +871,13 @@ static int armada_37xx_add_function(struct armada_37xx_pmx_func *funcs,
>  static int armada_37xx_fill_group(struct armada_37xx_pinctrl *info)
>  {
>  	int n, num = 0, funcsize = info->data->nr_pins;
> +	struct device *dev = info->dev;
>  
>  	for (n = 0; n < info->ngroups; n++) {
>  		struct armada_37xx_pin_group *grp = &info->groups[n];
>  		int i, j, f;
>  
> -		grp->pins = devm_kcalloc(info->dev,
> -					 grp->npins + grp->extra_npins,
> +		grp->pins = devm_kcalloc(dev, grp->npins + grp->extra_npins,
>  					 sizeof(*grp->pins),
>  					 GFP_KERNEL);
>  		if (!grp->pins)
> @@ -898,8 +895,7 @@ static int armada_37xx_fill_group(struct armada_37xx_pinctrl *info)
>  			ret = armada_37xx_add_function(info->funcs, &funcsize,
>  					    grp->funcs[f]);
>  			if (ret == -EOVERFLOW)
> -				dev_err(info->dev,
> -					"More functions than pins(%d)\n",
> +				dev_err(dev, "More functions than pins(%d)\n",
>  					info->data->nr_pins);
>  			if (ret < 0)
>  				continue;
> @@ -925,6 +921,7 @@ static int armada_37xx_fill_group(struct armada_37xx_pinctrl *info)
>  static int armada_37xx_fill_func(struct armada_37xx_pinctrl *info)
>  {
>  	struct armada_37xx_pmx_func *funcs = info->funcs;
> +	struct device *dev = info->dev;
>  	int n;
>  
>  	for (n = 0; n < info->nfuncs; n++) {
> @@ -932,8 +929,7 @@ static int armada_37xx_fill_func(struct armada_37xx_pinctrl *info)
>  		const char **groups;
>  		int g;
>  
> -		funcs[n].groups = devm_kcalloc(info->dev,
> -					       funcs[n].ngroups,
> +		funcs[n].groups = devm_kcalloc(dev, funcs[n].ngroups,
>  					       sizeof(*(funcs[n].groups)),
>  					       GFP_KERNEL);
>  		if (!funcs[n].groups)
> @@ -962,6 +958,7 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  	const struct armada_37xx_pin_data *pin_data = info->data;
>  	struct pinctrl_desc *ctrldesc = &info->pctl;
>  	struct pinctrl_pin_desc *pindesc, *pdesc;
> +	struct device *dev = &pdev->dev;
>  	int pin, ret;
>  
>  	info->groups = pin_data->groups;
> @@ -973,9 +970,7 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  	ctrldesc->pmxops = &armada_37xx_pmx_ops;
>  	ctrldesc->confops = &armada_37xx_pinconf_ops;
>  
> -	pindesc = devm_kcalloc(&pdev->dev,
> -			       pin_data->nr_pins, sizeof(*pindesc),
> -			       GFP_KERNEL);
> +	pindesc = devm_kcalloc(dev, pin_data->nr_pins, sizeof(*pindesc), GFP_KERNEL);
>  	if (!pindesc)
>  		return -ENOMEM;
>  
> @@ -994,14 +989,10 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  	 * we allocate functions for number of pins and hope there are
>  	 * fewer unique functions than pins available
>  	 */
> -	info->funcs = devm_kcalloc(&pdev->dev,
> -				   pin_data->nr_pins,
> -				   sizeof(struct armada_37xx_pmx_func),
> -				   GFP_KERNEL);
> +	info->funcs = devm_kcalloc(dev, pin_data->nr_pins, sizeof(*info->funcs), GFP_KERNEL);
>  	if (!info->funcs)
>  		return -ENOMEM;
>  
> -
>  	ret = armada_37xx_fill_group(info);
>  	if (ret)
>  		return ret;
> @@ -1010,9 +1001,9 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  	if (ret)
>  		return ret;
>  
> -	info->pctl_dev = devm_pinctrl_register(&pdev->dev, ctrldesc, info);
> +	info->pctl_dev = devm_pinctrl_register(dev, ctrldesc, info);
>  	if (IS_ERR(info->pctl_dev)) {
> -		dev_err(&pdev->dev, "could not register pinctrl driver\n");
> +		dev_err(dev, "could not register pinctrl driver\n");
>  		return PTR_ERR(info->pctl_dev);
>  	}
>  
> @@ -1143,8 +1134,7 @@ static int __init armada_37xx_pinctrl_probe(struct platform_device *pdev)
>  	struct regmap *regmap;
>  	int ret;
>  
> -	info = devm_kzalloc(dev, sizeof(struct armada_37xx_pinctrl),
> -			    GFP_KERNEL);
> +	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
>  	if (!info)
>  		return -ENOMEM;
>  
> @@ -1152,7 +1142,7 @@ static int __init armada_37xx_pinctrl_probe(struct platform_device *pdev)
>  
>  	regmap = syscon_node_to_regmap(np);
>  	if (IS_ERR(regmap)) {
> -		dev_err(&pdev->dev, "cannot get regmap\n");
> +		dev_err(dev, "cannot get regmap\n");
>  		return PTR_ERR(regmap);
>  	}
>  	info->regmap = regmap;
> -- 
> 2.33.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
