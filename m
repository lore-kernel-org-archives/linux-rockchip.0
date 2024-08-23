Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF747C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 05:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APkzTQ1YavNnNNoa7yE1o4CokMOwSajkfMK+ZZmBfjc=; b=L1T9A/MXjPCJs+
	0elHGiEzW6YSXK5XOG7K3oDjj95k0io+6sX+hFl93gHmidhmerLccdIJROijBSznr5+wthkFlv/QJ
	Ac3SZX1H48fwNTv1PEPaZ+IfeTsM9zEawPJF2qy2j5StNKy6PwLGhhj1hGgajQXVzDkTQ4FfCpA3T
	oMQa+6u6L1YekGnVlA1Xy8KVH6xWZN5NYIOfUSB4Sc5vBvsbEBhN2qRE0GPlhsTkNDQCuYtXZAbtQ
	h70aSBtx3rE3wclGLPaa9ocqyz56VIQKfPx+7vhHj461mCQlGHdCccHTHXFTvaQoucEByydX07SlW
	2CvhAr3jsKxLmaTqFxEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMr3-0000000FJlg-2p4p;
	Fri, 23 Aug 2024 05:28:57 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMqC-0000000FJSV-2dai;
	Fri, 23 Aug 2024 05:28:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724390885; x=1755926885;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=c7qApBl51bfhxd404S2wpkfQ0Lt7MvDfsrBPa5+skCQ=;
  b=hs0pbLXwxxOOKtAIPOBM8yuklI3br/p4ZuzRqotaccDjJHxhrTdGQRCv
   YCFqBLMFAy7XdCKvW0ej3dCpoS1BdlagcsmU3pb5EA0/Yt6IgPhNz/mW/
   2ylD0wwxTEIPi1eMDD2uLB7pY4ra1My7IkmGwhjfI4+t33hH2c7zMFLG3
   M+V9yQ5hCAzC7Qj/FHyQ2A1XO5TNzA8gaOAOi8hwBugrUlpjkzpMG5STw
   OG3XQh1yBYrLmgZvnVgzS1oH3YT8/rMXU0NhwLHx4VLHMsnInauwjOCpR
   6FWx2QnD1c8Pqb16UkISUScsO8Tn23fsUN6i8klJgx/7Vlwx6PqMcQ7Fa
   A==;
X-CSE-ConnectionGUID: U+OO6sj0QSeN8+lvZIbGEw==
X-CSE-MsgGUID: HX7iRHN8R8yoB8iJIq1IKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="25739632"
X-IronPort-AV: E=Sophos;i="6.10,169,1719903600"; 
   d="scan'208";a="25739632"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Aug 2024 22:28:01 -0700
X-CSE-ConnectionGUID: KJgO4XoAT5ScEyNVvc8JAw==
X-CSE-MsgGUID: c0DJFLUOS2uGIIedthIRhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,169,1719903600"; 
   d="scan'208";a="92416312"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa002.jf.intel.com with ESMTP; 22 Aug 2024 22:27:55 -0700
Received: by black.fi.intel.com (Postfix, from userid 1001)
	id EAECD2AA; Fri, 23 Aug 2024 08:27:53 +0300 (EEST)
Date: Fri, 23 Aug 2024 08:27:53 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: support ACPI
Message-ID: <20240823052753.GK1532424@black.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-11-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-11-ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_222804_717006_6336DF7F 
X-CRM114-Status: GOOD (  37.26  )
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

Hi,

On Fri, Aug 23, 2024 at 11:43:13AM +0800, Ye Zhang wrote:
> Adds support for Advanced Configuration and Power Interface (ACPI) within
> the Rockchip GPIO driver.
> 
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 160 +++++++++++++++++++++++------------
>  1 file changed, 105 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 4f8d50626fcc..9e4a8cd94c66 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -6,6 +6,7 @@
>   * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/bitops.h>
>  #include <linux/clk.h>
>  #include <linux/device.h>
> @@ -17,10 +18,12 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> +#include <linux/of_device.h>

Why this is needed for ACPI support?

>  #include <linux/of_irq.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/pinctrl/pinconf-generic.h>
>  #include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/regmap.h>
>  
>  #include "../pinctrl/core.h"
> @@ -210,6 +213,7 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
>  		freq = clk_get_rate(bank->db_clk);
>  		if (!freq)
>  			return -EINVAL;
> +

Unrelated whitespace change.

>  		div = (u64)(GENMASK(23, 0) + 1) * 1000000;
>  		if (bank->gpio_type == GPIO_TYPE_V2)
>  			max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
> @@ -515,7 +519,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>  	struct irq_chip_generic *gc;
>  	int ret;
>  
> -	bank->domain = irq_domain_add_linear(bank->of_node, 32,
> +	bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
>  					&irq_generic_chip_ops, NULL);

I wonder if it would be simpler to first convert the driver to use
fwnodes and then in a separate patch, add the ACPI glue?

>  	if (!bank->domain) {
>  		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
> @@ -637,25 +641,9 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>  	return ret;
>  }
>  
> -static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> +static void rockchip_gpio_get_ver(struct rockchip_pin_bank *bank)
>  {
> -	struct resource res;
> -	int id = 0;
> -
> -	if (of_address_to_resource(bank->of_node, 0, &res)) {
> -		dev_err(bank->dev, "cannot find IO resource for bank\n");
> -		return -ENOENT;
> -	}
> -
> -	bank->reg_base = devm_ioremap_resource(bank->dev, &res);
> -	if (IS_ERR(bank->reg_base))
> -		return PTR_ERR(bank->reg_base);
> -
> -	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> -	if (!bank->irq)
> -		return -EINVAL;
> -
> -	id = readl(bank->reg_base + gpio_regs_v2.version_id);
> +	int id = readl(bank->reg_base + gpio_regs_v2.version_id);
>  
>  	switch (id) {
>  	case GPIO_TYPE_V2:
> @@ -672,8 +660,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  		bank->gpio_type = GPIO_TYPE_V1;
>  		pr_info("Note: Use default GPIO_TYPE_V1!\n");
>  	}
> -
> -	return 0;
>  }
>  
>  static struct rockchip_pin_bank *
> @@ -695,61 +681,120 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
>  	return found ? bank : NULL;
>  }
>  
> +static int rockchip_gpio_of_get_bank_id(struct device *dev)
> +{
> +	static int gpio;
> +	int bank_id = -1;

Instead of this -1 probably good to use something like -ENODEV or so.

Also suggest doing the analogous to ACPI way here so that you have the
stub function when CONFIG_OF is not set. This makes it bit more
consistent IMO.

> +
> +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> +		bank_id = of_alias_get_id(dev->of_node, "gpio");
> +		if (bank_id < 0)
> +			bank_id = gpio++;
> +	}
> +
> +	return bank_id;
> +}
> +
> +#ifdef CONFIG_ACPI
> +static int rockchip_gpio_acpi_get_bank_id(struct device *dev)
> +{
> +	struct acpi_device *adev;
> +	unsigned long bank_id = -1;

Ditto here regarding -1, also this does not need to be initialized at
all here.

> +	const char *uid;
> +	int ret;
> +
> +	adev = ACPI_COMPANION(dev);
> +	if (!adev)
> +		return -ENXIO;

Or -ENODEV? And is this even possible?

> +
> +	uid = acpi_device_uid(adev);
> +	if (!uid || !(*uid)) {

There are bunch of helpers for this such as acpi_dev_hid_uid_match() and
the like. Not sure if you can use them here but wanted to mention. We
use these in Intel driver for example in intel_pinctrl_get_soc_data() in
case you want to check an example.

Also the !(*uid) looks horrible. Can it be empty string?

> +		dev_err(dev, "Cannot retrieve UID\n");
> +		return -ENODEV;
> +	}
> +
> +	ret = kstrtoul(uid, 0, &bank_id);
> +
> +	return !ret ? bank_id : -ERANGE;
> +}
> +#else
> +static int rockchip_gpio_acpi_get_bank_id(struct device *dev)
> +{
> +	return -ENOENT;
> +}
> +#endif /* CONFIG_ACPI */
> +
>  static int rockchip_gpio_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct device_node *np = dev->of_node;
> -	struct device_node *pctlnp = of_get_parent(np);
>  	struct pinctrl_dev *pctldev = NULL;
>  	struct rockchip_pin_bank *bank = NULL;
> -	struct rockchip_pin_deferred *cfg;
> -	static int gpio;
> -	int id, ret;
> +	int bank_id = 0;
> +	int ret;
>  
> -	if (!np || !pctlnp)
> -		return -ENODEV;
> +	bank_id = rockchip_gpio_acpi_get_bank_id(dev);
> +	if (bank_id < 0) {
> +		bank_id = rockchip_gpio_of_get_bank_id(dev);
> +		if (bank_id < 0)
> +			return bank_id;

So here with your of_ function you would get -1 which is -EPERM so which
is probably not what you want.

> +	}
>  
> -	pctldev = of_pinctrl_get(pctlnp);
> -	of_node_put(pctlnp);
> -	if (!pctldev)
> -		return -EPROBE_DEFER;
> +	if (!ACPI_COMPANION(dev)) {
> +		struct device_node *pctlnp = of_get_parent(dev->of_node);

Should it check instead that it has the dev->of_node and not assume that
if it does not have ACPI compantion device it is then enumerated from DT?

> -	id = of_alias_get_id(np, "gpio");
> -	if (id < 0)
> -		id = gpio++;
> +		pctldev = of_pinctrl_get(pctlnp);
> +		of_node_put(pctlnp);
> +		if (!pctldev)
> +			return -EPROBE_DEFER;
>  
> -	bank = rockchip_gpio_find_bank(pctldev, id);
> -	if (!bank)
> -		return -EINVAL;
> +		bank = rockchip_gpio_find_bank(pctldev, bank_id);
> +		if (!bank)
> +			return -ENODEV;
> +	}
>  
> +	if (!bank) {
> +		bank = devm_kzalloc(dev, sizeof(*bank), GFP_KERNEL);
> +		if (!bank)
> +			return -ENOMEM;
> +	}
> +
> +	bank->bank_num = bank_id;
>  	bank->dev = dev;
> -	bank->of_node = np;
> +	bank->of_node = dev->of_node;
> +
> +	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(bank->reg_base))
> +		return PTR_ERR(bank->reg_base);
> +
> +	bank->irq = platform_get_irq(pdev, 0);
> +	if (bank->irq < 0)
> +		return bank->irq;
>  
>  	raw_spin_lock_init(&bank->slock);
>  
> -	bank->clk = devm_clk_get(dev, "bus");
> -	if (IS_ERR(bank->clk)) {
> -		bank->clk = of_clk_get(dev->of_node, 0);
> +	if (!ACPI_COMPANION(dev)) {

Ditto here.

Also maybe it needs to have separate probe paths for ACPI and DT because
this makes it look kind of confusing.

> +		bank->clk = devm_clk_get(dev, "bus");
>  		if (IS_ERR(bank->clk)) {
> -			dev_err(dev, "fail to get apb clock\n");
> -			return PTR_ERR(bank->clk);
> +			bank->clk = of_clk_get(dev->of_node, 0);
> +			if (IS_ERR(bank->clk)) {
> +				dev_err(dev, "fail to get apb clock\n");
> +				return PTR_ERR(bank->clk);
> +			}
>  		}
> -	}
>  
> -	ret = rockchip_get_bank_data(bank);
> -	if (ret)
> -		return ret;
> -
> -	bank->db_clk = devm_clk_get(dev, "db");
> -	if (IS_ERR(bank->db_clk)) {
> -		bank->db_clk = of_clk_get(dev->of_node, 1);
> -		if (IS_ERR(bank->db_clk))
> -			bank->db_clk = NULL;
> +		bank->db_clk = devm_clk_get(dev, "db");
> +		if (IS_ERR(bank->db_clk)) {
> +			bank->db_clk = of_clk_get(dev->of_node, 1);
> +			if (IS_ERR(bank->db_clk))
> +				bank->db_clk = NULL;
> +		}
>  	}
>  
>  	clk_prepare_enable(bank->clk);
>  	clk_prepare_enable(bank->db_clk);
>  
> +	rockchip_gpio_get_ver(bank);
> +
>  	/*
>  	 * Prevent clashes with a deferred output setting
>  	 * being added right at this moment.
> @@ -763,8 +808,13 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>  	}
>  
>  	while (!list_empty(&bank->deferred_pins)) {
> +		struct rockchip_pin_deferred *cfg;
> +
>  		cfg = list_first_entry(&bank->deferred_pins,
>  				       struct rockchip_pin_deferred, head);
> +		if (!cfg)
> +			break;
> +

These changes look unrelated?

>  		list_del(&cfg->head);
>  
>  		switch (cfg->param) {
> @@ -789,7 +839,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>  	mutex_unlock(&bank->deferred_lock);
>  
>  	platform_set_drvdata(pdev, bank);
> -	dev_info(dev, "probed %pOF\n", np);
> +	dev_info(dev, "probed %pfw\n", dev_fwnode(dev));

Is this really useful inro for user to see?

>  
>  	return 0;
>  err_unlock:
> -- 
> 2.34.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
