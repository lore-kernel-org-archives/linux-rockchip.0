Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F954C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 12:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xG9buykU33HJoSIm4oSPJCIHezyoeuBaBZU2oSl4Ng=; b=3YjpXZ38x4JsxO
	vQqUpdC0Ay/jdtu5RDEgk+/+IQViHpgYpv5QYbA3hcjNV9uJX78JleBd80auL+M6sMYdvnOSrPukQ
	QFsNGCg2WCqz8STK1Io0GkcewvH3n8aXbgDXE6skO50wTyDZqpUUA1U/Akqe6KvAwkc224VTh7o9T
	WwrZb+9WzKxe9e46kNzI61m+G2xf+8oG8JjK9nunzrmlDc7FdXWk4xrreX1U4fsVokdQejEUHOSIa
	tFMj5iF+keugy8pL1P93wOrjMd9sFVL6gdo6N03VAtFUJxBTbzNFfCKeIgyr+OXrf+pFvOh3dnC8v
	PD0e6zCHnwuKaGhBfbcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWGjW-003JBV-MZ; Thu, 08 Sep 2022 12:34:14 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWGjU-003J9h-Gl
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 12:34:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662640452; x=1694176452;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PrfI4l+5o4OiyZA22z1Fo4qmJ7C/rSZhfad3+necbdw=;
  b=h+8IHp1X1UBLl7FljJndFIzr5RYOUswAR3t+JF43Pev+4a4qpgAgCmBi
   O5XlnDWfID/4YJMYZCcOLsRy8BxhTMStNSSAi1GKSAM63u+fGSav0UuPY
   eKsOJ0TCV7IU3E1SDlyWR1wHiMdC5NOu2EAmsLZU7FpL1LNFADBk7lCnN
   4f4wEYnRcLz3BVWcPIHkifOSe/+gDp8xCgq94aUiRhB+wVjTaeT/kBWWd
   fXWd7c4q5+/QZBmYUYQm01qxMBpVOu8odnKsyKebdMhW0gzhdyYsItxCV
   3eUBZL9ek52U9qq3r6LEZIuOoeD/4SmaMlc/mQpwvXgYdJM2w2q4GnU6z
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298490004"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; 
   d="scan'208";a="298490004"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2022 05:34:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; 
   d="scan'208";a="676661067"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2022 05:34:08 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oWGjO-00A7RX-0B;
	Thu, 08 Sep 2022 15:34:06 +0300
Date: Thu, 8 Sep 2022 15:34:05 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, brgl@bgdev.pl,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4] gpio: rockchip: support acpi
Message-ID: <YxnhPd9CnjfcJfzR@smile.fi.intel.com>
References: <20220908072621.3415957-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220908072621.3415957-1-jay.xu@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_053412_628775_58BDE5A0 
X-CRM114-Status: GOOD (  23.64  )
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

On Thu, Sep 08, 2022 at 03:26:21PM +0800, Jianqun Xu wrote:
> This patch fix driver to support acpi by following changes:
>  * support get gpio bank number from uid of acpi
>  * try to get clocks for dt nodes but for acpi
>  * try to get clocks by a char id first, if a dt patch applied

...

> +	if (!gc->label) {

See below.

> +		gc->label = kasprintf(GFP_KERNEL, "gpio%d", bank->bank_num);
> +		if (!gc->label)
> +			return -ENOMEM;
> +	}

...

> -	/*
> -	 * For DeviceTree-supported systems, the gpio core checks the
> -	 * pinctrl's device node for the "gpio-ranges" property.
> -	 * If it is present, it takes care of adding the pin ranges
> -	 * for the driver. In this case the driver can skip ahead.
> -	 *
> -	 * In order to remain compatible with older, existing DeviceTree
> -	 * files which don't set the "gpio-ranges" property or systems that
> -	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
> -	 */

Why did you remove this comment? It's exactly an answer to what I was asking.

> +	if (!device_property_read_bool(bank->dev, "gpio-ranges") && pctldev) {
>  		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
>  					     gc->base, gc->ngpio);
>  		if (ret) {
>  			dev_err(bank->dev, "Failed to add pin range\n");
> -			goto fail;
> +			goto err_remove;
>  		}
>  	}

...

> +	if (!bank->name)

It's not obvious check for this. Perhaps you can synchronize above to have
the same check and add a comment why bank->name presence guarantees that
label wasn't allocated by us here.

OTOH, why not to use devm_kasprintf()?

> +		kfree(gc->label);

...

> +static int rockchip_gpio_get_clocks(struct rockchip_pin_bank *bank)
> +{
> +	struct device *dev = bank->dev;
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> +	int ret;
> +
> +	if (!is_of_node(fwnode))
> +		return 0;
> +
> +	bank->clk = devm_clk_get(dev, "bus");
> +	if (IS_ERR(bank->clk)) {
> +		bank->clk = of_clk_get(to_of_node(fwnode), 0);
> +		if (IS_ERR(bank->clk)) {
> +			dev_err(dev, "fail to get apb clock\n");
> +			return PTR_ERR(bank->clk);
> +		}
> +	}
> +
> +	ret = clk_prepare_enable(bank->clk);
> +	if (ret < 0)
> +		return ret;
> +
> +	bank->db_clk = devm_clk_get(dev, "db");
> +	if (IS_ERR(bank->db_clk)) {
> +		bank->db_clk = of_clk_get(to_of_node(fwnode), 1);
> +		if (IS_ERR(bank->db_clk))
> +			bank->db_clk = NULL;
> +	}
> +
> +	ret = clk_prepare_enable(bank->db_clk);
> +	if (ret < 0) {

> +		clk_disable_unprepare(bank->clk);

You can't mix devm_ with non-devm_ calls.

> +		return ret;
> +	}

...

> +	if (!bank->name)
> +		kfree(gc->label);

As per above.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
