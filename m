Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95484ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 16:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7T9GEQV20wm2PVQZq2ixo7V6nzyhK6ldWLNiAh3tj0=; b=lIJ823zmx1JQKq
	9RkCErCmtA2Lr8eCRqCB0x159wlAXdOtWVchefD3MrsSNMBz1RKfVxTFvs3GyaCO2s+g05IoZaxIT
	2wh6MZzEiMkZXo3EcV26LO5qt9UWuHGwrgWOnuTjbwVWZl+b5dmwivfP3qxFuUosGgMRQPfDJsspa
	Dur2mgbXe5h9TFJGHHugs9k0bUDsSLo6oZagS61oBB5gSk1/QAGIiU7FvqV9WiO8wXGFw5pegsXTZ
	Si+5MLI9R9ahBSq7kZk1pa5DN1x2/QwEgTXd4QLXFAWbQHZaDQEPSc68dPg39/KlPBzPZOauFldLX
	mXB1B/5W11nNLmahz7Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbdu-00FWSk-AV; Tue, 06 Sep 2022 16:41:42 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbHT-00FJ96-Gx
	for linux-rockchip@lists.infradead.org; Tue, 06 Sep 2022 16:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662481111; x=1694017111;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ss+4F9J/CaZwcdY2cXJmGtJLU9XMyJzPA/NDr04u5pk=;
  b=ILAnqEmZoHkHE55z5SAOYB5Uy5pwMVcwAP+dOxLk0fi6pbxxqo2ceuHc
   QjU1iFMrzQuDXRWfY7lMhzYhQRiZDWsk+doSMprOImZqmN4b1UD3vyBvc
   Yypzu9Ksz05zm9gcl4ztC+5v9P7VQBndU3XA3qUp2bm04cbtJEJI/ZnKz
   KROk2X82sqTra2G2ADnk9BKrWciJO/jTkZ95DtOv+2od/pyZ9WS4c4Ej/
   CM/q40fZ7C+IA6lCCNuuM03uQhxACVF5eJAzmNCaFlNTvWB/o2nhxMtK9
   IU4FcEcptnP+M82vGOrkTmft7lJRMhUzxDRrDwh4Njqbf3AY14LZiIDmR
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276376043"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; 
   d="scan'208";a="276376043"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2022 09:18:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; 
   d="scan'208";a="565153728"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2022 09:18:25 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oVbHK-009BpZ-0c;
	Tue, 06 Sep 2022 19:18:22 +0300
Date: Tue, 6 Sep 2022 19:18:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, brgl@bgdev.pl,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.or, huangtao@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: support acpi
Message-ID: <YxdyzRWDi+jwW2iN@smile.fi.intel.com>
References: <20220906013025.3302530-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906013025.3302530-1-jay.xu@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_091831_611181_801ABA71 
X-CRM114-Status: GOOD (  18.53  )
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

On Tue, Sep 06, 2022 at 09:30:25AM +0800, Jianqun Xu wrote:
> This patch fix driver to support acpi by following changes:
>  * support get gpio bank number from uid of acpi
>  * try to get clocks for dt nodes but for acpi
>  * try to get clocks by a char id first, if a dt patch applied

...

> -	bank->domain = irq_domain_add_linear(bank->of_node, 32,
> +	bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
>  					&irq_generic_chip_ops, NULL);

Should it be converted to use GPIO_MAX_PINS at the same time?

...

> +static int rockchip_gpio_of_get_bank_id(struct device *dev)
> +{
> +	static int gpio;
> +	int bank_id = -1;

> +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {

Can't is_of_node() be sufficient check?

> +		bank_id = of_alias_get_id(dev->of_node, "gpio");
> +		if (bank_id < 0)
> +			bank_id = gpio++;
> +	}
> +
> +	return bank_id;
> +}

...

> +#ifdef CONFIG_ACPI

Why?

> +static int rockchip_gpio_acpi_get_bank_id(struct device *dev)
> +{
> +	struct acpi_device *adev;
> +	unsigned long bank_id = -1;
> +	const char *uid;
> +	int ret;
> +
> +	adev = ACPI_COMPANION(dev);
> +	if (!adev)
> +		return -ENXIO;
> +
> +	uid = acpi_device_uid(adev);
> +	if (!uid || !(*uid)) {
> +		dev_err(dev, "Cannot retrieve UID\n");
> +		return -ENODEV;

Why is it a fatal error? Can't be the same approach as for OF be used?

> +	}
> +
> +	ret = kstrtoul(uid, 0, &bank_id);
> +
> +	return !ret ? bank_id : -ERANGE;

Use standard pattern, i.e.

	if (ret)
		return ret;

> +}
> +#else
> +static int rockchip_gpio_acpi_get_bank_id(struct device *dev)
> +{
> +	return -ENOENT;
> +}
> +#endif /* CONFIG_ACPI */

...

> +	int bank_id = 0;

Redundant assignment.

...

> +	if (!ACPI_COMPANION(dev)) {

One of:

	is_of_node()
	!is_acpi_node()

?

...

> +	if (!ACPI_COMPANION(dev)) {

Ditto.

But looking how this disrupts the code, just leave OF and ACPI parts separate,
don't mix them.

...

> +	if (!device_property_read_bool(bank->dev, "gpio-ranges") && pctldev) {
> +		struct gpio_chip *gc = &bank->gpio_chip;
> +
> +		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
> +					     gc->base, gc->ngpio);
> +		if (ret) {
> +			dev_err(bank->dev, "Failed to add pin range\n");
> +			goto err_unlock;
> +		}
>  	}

Why? What's wrong with GPIO library doing this for all chips?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
