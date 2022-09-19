Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CBEC6FA8B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 13:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EifFN/zKXpA3yfHjKt2JMw/ZkNFPBZFIpeRG6FnOvCc=; b=c3NauU60oKJ/PJ
	jqYDvHn0ikXS+FLATtPeoAIoTg+KSGcF5T9aW7MmjSBolghYHbavyWrzLh+B49qi/Lcr+uMG7OOPV
	NPVq4NPzgIbSonbHnPsNRmJmr0NwSVbToKFWVG/X4kmHskYCrm/d2h6o7ERfxzj1h1/VvgfLv6cdf
	gVFOgIbTGBmozq3MeQTCCwVKsiOLLJQxLkWKtXUodL2VWbFcLchH5hZGR2hw47JBynsLl/1Hh8eFD
	pvl3VkSkPlx4Sxclt8aeaifSiF+EMKIA1aWpvvx4JdtYFTvpljcToFoaQoMNWMLFGvxGw+EmsoFJ8
	Z9hy8iNQiNI0Q4GoOtww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHE2-00BxVp-Fb; Mon, 19 Sep 2022 13:54:18 +0000
Received: from mga18.intel.com ([134.134.136.126])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHDz-00BxVC-2G
	for linux-rockchip@lists.infradead.org; Mon, 19 Sep 2022 13:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663595655; x=1695131655;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Nx6HBJI7uvCdWTMDx2d8dye/IOgzQFEegWesbW4VNT0=;
  b=BNVlsqZPYOf1bqlTe4jZQ+kgKwXCQlYHw1tXmI7kS6QkHFtRRFk57jYx
   IwGOQDWhPtQ45DBAWiBB5ayVJUZFb/2GhWL53Odcakce5jYASjDNSZYKL
   kl/7LLf/Ag4x8NH4tBxPC0FZamcVdKFbImCbxLlkv4aD4N57PSpJ15lrW
   /4QH5x2D7vgjdTc5wlcxKWHONA38Yu4rCP3VsPx+ZQZqdkiRddLR8Jv5G
   nwZGiVLryOZLr6ePg60eMUiRxp2YgleUZzxqHultr+IwsPYo1Lnb2sZ0L
   /0tzTgDbLVNPMdDHJFh+SeRpWKPj9+Wh6NzlTSt8stvdAr0oIWuyogo5f
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="282429747"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="282429747"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 06:54:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="760874595"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2022 06:54:10 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oaHDs-004Zuc-1K;
	Mon, 19 Sep 2022 16:54:08 +0300
Date: Mon, 19 Sep 2022 16:54:08 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: jbx6244@gmail.com, heiko@sntech.de, linus.walleij@linaro.org,
	brgl@bgdev.pl, linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] gpio: rockchip: support acpi
Message-ID: <YyR1mNSUD6zrnnQV@smile.fi.intel.com>
References: <20220916084347.458619-1-jay.xu@rock-chips.com>
 <20220916084347.458619-3-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220916084347.458619-3-jay.xu@rock-chips.com>
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>) id 1oZB6G-003Ed1-2Q;
 Fri, 16 Sep 2022 16:09:44 +0300
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_065415_206993_9A7DF918 
X-CRM114-Status: GOOD (  24.87  )
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

On Fri, Sep 16, 2022 at 04:43:47PM +0800, Jianqun Xu wrote:
> The gpio driver for rockchip gpio controller is seperated from rockchip

GPIO

Rockchip (?)

GPIO

> pinctrl driver, at the first version, it keeps things original to make
> the patch easy to be reviewed, such as the gpio driver must work with

GPIO

> the pinctrl dt node to be its parent node.
> 
> This patch wants to fix driver to support acpi since gpio controller

the driver
ACPI
GPIO

> should work well during acpi is enabled. But during upstream, driver is

ACPI

> better to fix other thing together includes:

Consider splitting to a few patches, if possible.

>  - only get clocks when is_of_node.
>  - get io resource and irq by platform common apis.
>  - use fwnode instead of of_node from device structure.
>  - drop pinctrl related codes.

...

> +struct rockchip_pin_bank {
> +	struct device			*dev;
> +	void __iomem			*reg_base;
> +	struct clk			*clk;
> +	struct clk			*db_clk;
> +	int				irq;
> +	u32				saved_masks;
> +	u32				pin_base;

> +	u8				nr_pins;
> +	char				*name;
> +	u8				bank_num;

Have you ran pahole against this data type? I believe it wastes a lot of bytes
for peanuts on 64-bit machines (due to padding). Grouping u8:s may help.

> +	struct device_node		*of_node;
> +	struct irq_domain		*domain;

> +	struct gpio_chip		gpio_chip;

I would suggest to move this to be first member of the struct as it may save
some bytes of the code (but this needs to be checked by bloat-o-meter to
support or be against the proposal) due to pointer arithmetics.

> +	raw_spinlock_t			slock;
> +	const struct rockchip_gpio_regs	*gpio_regs;
> +	u32				gpio_type;
> +	u32				toggle_edge_mode;
> +};

...

> +#ifdef CONFIG_OF_GPIO
> +	gc->of_node = of_node_get(bank->dev->of_node);
> +#endif

No, please fill the gc->fwnode.

...

> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> +	int version_id;
> +	int ret;
>  
> +	if (is_of_node(fwnode)) {
> +		bank->clk = of_clk_get(to_of_node(fwnode), 0);
> +		if (IS_ERR(bank->clk))
> +			return PTR_ERR(bank->clk);
>  
> +		ret = clk_prepare_enable(bank->clk);
> +		if (ret < 0)

Where the clock will be put?

> +			return ret;
> +	}
>  
> +	version_id = readl(bank->reg_base + gpio_regs_v2.version_id);
> +	if (version_id == GPIO_TYPE_V2 || version_id == GPIO_TYPE_V2_1) {
>  		bank->gpio_regs = &gpio_regs_v2;
>  		bank->gpio_type = GPIO_TYPE_V2;
>  	} else {
>  		bank->gpio_regs = &gpio_regs_v1;
>  		bank->gpio_type = GPIO_TYPE_V1;
>  	}
>  
> +	if (bank->gpio_type == GPIO_TYPE_V2 && is_of_node(fwnode)) {
> +		bank->db_clk = of_clk_get(to_of_node(fwnode), 1);
> +		if (IS_ERR(bank->db_clk))

Where the clock will be unprepared, disabled, and put?

> +			return PTR_ERR(bank->db_clk);
> +
> +		ret = clk_prepare_enable(bank->db_clk);
> +		if (ret < 0)

Where the clock will be put?

> +			return ret;
> +	}


...

>  	ret = rockchip_gpiolib_register(bank);
>  	if (ret) {
> +		dev_err(bank->dev, "Failed to register gpio %d\n", ret);
>  		clk_disable_unprepare(bank->clk);
> +		clk_disable_unprepare(bank->db_clk);
>  		return ret;
>  	}

See above questions.

-- 
With Best Regards,
Andy Shevchenko



-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
