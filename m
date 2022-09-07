Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE280C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIp48EsS+YqgRxlesr2N6E3ezu1Y2oRu3PdRO98cRT8=; b=wImh1aqMvPQk3V
	HwUIkeU7F7+i+XvaEw+tziTYQR3v1hp7wsa4rA76hQ6ZS5X3QdcOCeeFyygg/e9y7hibjEPYvoOpy
	zXuc0OmUzhaOBQo3IOABRg2i6ELcGxy21RtTx2YdfNDQ2UwOGiDtl57YvmwiWLPH7nA5Re6nIhcZM
	/uXkqxy1Ler9LQoTlDlRON+GOBujImhyjTT4dz4dgEX4YWHVNbY+Ua9eauG+TrVN15lRmQ62w7C7s
	W6ojQxinN3GE+ETfVj/8rwtQmhY3f+M/I22YtpBgDvs0NvlXtg8097HnYqpcDGSdLslue/kQ82BrK
	YflcSv9Hxeg8/0nap8pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVwDr-006zTQ-P7; Wed, 07 Sep 2022 14:40:11 +0000
Received: from mga18.intel.com ([134.134.136.126])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVwDe-006zHw-44
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 14:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662561598; x=1694097598;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pCBoguZ2cZf9r95igyqtoCKywCPfDO+dd+pmxVMQZ4k=;
  b=CCk/ixQJmLsT2GKIIo4Z008jqNkVuxDW2AwUV3Rnhlo68ARc7sSZFSrn
   USp/XPEy8R7j4N6EKy0fEoFWdBGSqq2WV1X+gg7qObL9UL+0JncELLPpc
   3e5VQzfbPt4lhSE8R0YlakKEYQDl/lCrJFeyuUE7rZVfza1XT6zR10mcS
   FwRaXMLxUQtpTr+cYgJPAy9i2o/710OSkJu8qpnDfHz7t3RMXGh1TMrmt
   R9eprybCD0gMBOjufmhXKN6JEI5TutGZ6Q2i06OF7TKv/h1FcoYbuDFgG
   MvL7kVjx6L2wbLXeF2IWfnesihG+6ejqbMtqAaQk9FP27Q4OhbG26Cku8
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="279901648"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; 
   d="scan'208";a="279901648"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 07:39:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; 
   d="scan'208";a="591727716"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 07:39:54 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oVwDX-009gbI-0u;
	Wed, 07 Sep 2022 17:39:51 +0300
Date: Wed, 7 Sep 2022 17:39:50 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, brgl@bgdev.pl,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 RESEND] gpio: rockchip: support acpi
Message-ID: <YxitNjAcb5RsKUWT@smile.fi.intel.com>
References: <20220907092722.3333752-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907092722.3333752-1-jay.xu@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_073958_290588_04E3D43F 
X-CRM114-Status: GOOD (  18.27  )
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

On Wed, Sep 07, 2022 at 05:27:22PM +0800, Jianqun Xu wrote:
> This patch fix driver to support acpi by following changes:
>  * support get gpio bank number from uid of acpi
>  * try to get clocks for dt nodes but for acpi
>  * try to get clocks by a char id first, if a dt patch applied

...

> -	ret = irq_alloc_domain_generic_chips(bank->domain, 32, 1,
> +	ret = irq_alloc_domain_generic_chips(bank->domain, GPIO_MAX_PINS , 1,

Extra space.

>  					     "rockchip_gpio_irq",
>  					     handle_level_irq,
>  					     clr, 0, 0);

...

> +	if (!gc->label) {
> +		gc->label = kasprintf(GFP_KERNEL, "gpio%d", bank->bank_num);

In the below code will be a memory leak. Also at ->remove().

> +		if (!gc->label)
> +			return -ENOMEM;
> +	}

...

> +static int rockchip_gpio_of_get_bank_id(struct device *dev)
> +{
> +	static int gpio;
> +	int bank_id = -1;

> +	if (is_of_node(dev->of_node)) {

	struct fwnode_handle *fwnode = dev_fwnode(...);

> +		bank_id = of_alias_get_id(dev->of_node, "gpio");

to_of_node(fwnode)

> +		if (bank_id < 0)
> +			bank_id = gpio++;
> +	}
> +
> +	return bank_id;
> +}

...

> +	bank_id = rockchip_gpio_acpi_get_bank_id(dev);
> +	if (bank_id < 0) {
> +		bank_id = rockchip_gpio_of_get_bank_id(dev);
> +		if (bank_id < 0)
> +			return bank_id;
> +	}

Easier to read:

	bank_id = rockchip_gpio_acpi_get_bank_id(dev);
	if (bank_id < 0)
		bank_id = rockchip_gpio_of_get_bank_id(dev);
	if (bank_id < 0)
		return bank_id;

...

> +	if (!is_acpi_node(dev_fwnode(dev)) {
> +		struct device_node *pctlnp = of_get_parent(dev->of_node);
>  
> +		pctldev = of_pinctrl_get(pctlnp);
> +		if (!pctldev)
> +			return -EPROBE_DEFER;
>  
> +		bank = rockchip_gpio_find_bank(pctldev, bank_id);
> +		if (!bank)
> +			return -ENODEV;

> +	}
> +	if (!bank) {

Simply '} else {' ?

> +		bank = devm_kzalloc(dev, sizeof(*bank), GFP_KERNEL);
> +		if (!bank)
> +			return -ENOMEM;
> +	}

...

> +	if (is_of_node(dev_fwnode(dev)) {
> +		bank->clk = devm_clk_get(dev, "bus");
> +		if (IS_ERR(bank->clk)) {
> +			bank->clk = of_clk_get(dev->of_node, 0);
> +			if (IS_ERR(bank->clk)) {
> +				dev_err(dev, "fail to get apb clock\n");
> +				return PTR_ERR(bank->clk);
> +			}
> +		}
> +
> +		bank->db_clk = devm_clk_get(dev, "db");
> +		if (IS_ERR(bank->db_clk)) {
> +			bank->db_clk = of_clk_get(dev->of_node, 1);
> +			if (IS_ERR(bank->db_clk))
> +				bank->db_clk = NULL;
> +		}
> +	}

This can be split to a separate

	int rockchip_gpio_get_clocks(...)

...

> +	clk_prepare_enable(bank->clk);
> +	clk_prepare_enable(bank->db_clk);

Either of them may fail.

...

> +	if (!device_property_read_bool(bank->dev, "gpio-ranges") && pctldev) {

Same question as before, why the GPIO library code is not okay for this?

> +		struct gpio_chip *gc = &bank->gpio_chip;
> +
> +		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
> +					     gc->base, gc->ngpio);
> +		if (ret) {
> +			dev_err(bank->dev, "Failed to add pin range\n");
> +			goto err_unlock;
> +		}
>  	}


-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
