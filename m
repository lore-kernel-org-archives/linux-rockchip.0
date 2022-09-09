Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A428CECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 10:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzxKf0LRIkI1+meyHYrYIzW87BrcIKn/UyMk+J4w5LY=; b=O/H4SF5aMkPMSO
	Y9MLFnjMlktxkPwJAE1TVjHaZ1Zxi0Yo/VlRXiISk4ccD7UT9zqtj6M6n2WblmbO1vPkQxd09qk7y
	glTzsN9zqClUAbi5giq4MlW1WDtZVGvtBeqtJGBSa8EPmjuBilVXtD7VmGTxQkXUFiHbXhTIhWpXG
	Yf+N9yPmQhNRnOmlFI+I0aWbfuEaH1fjkkeRqSBnpEXh020oZX1MHDK3PxpoAyqilvlZ3s4mtXQLl
	1lgY13OUG8ANKFXDQ+E9oDJg911vtoiCbXJmFPtcRC6ewDKCr8Wd7Mc+ER9MrNlrf3NNPWiQtzkus
	Kr/plaM2AhVXL2BV9kEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWbIH-00FNDa-P0; Fri, 09 Sep 2022 10:31:29 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWbIF-00FND0-4w
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 10:31:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662719487; x=1694255487;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QsTlIXNYY9wOwZUxZWW7SwOCiSdRiMnoXXpyCa36zLU=;
  b=Nv6qP7cep7bnpdZV16jMUKrDwFTKpQSiiKk0Poinr3RKvEQps7GNmja1
   0flX6qUJaUXgH1QFsB5wvw3peYvQc/0GlqweqoSGgud4CUktVIDIr0e6v
   4AH2SyZO1eT5lxxALU22x1LVqHO/d7rZUTekCXHAycebuEymT/VpbD9Ut
   chAjkIl6pfvaUfBKNlEADtQ/0NylghaF0gdluZqESAQVV5V7vFKliOoGL
   YK3osh+yxmL7cwtAffNKqNnogc0EJXCga7ovY1dngm+uhB9VPbq8mmbGS
   bcHHrqQSQWe8+JxX77aGxq6wNqbZIFshW8do4127yqiNf4I2J1oRAwz0d
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="284466178"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; 
   d="scan'208";a="284466178"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 03:31:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; 
   d="scan'208";a="704365297"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 03:31:15 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oWbI0-00AWIO-02;
	Fri, 09 Sep 2022 13:31:12 +0300
Date: Fri, 9 Sep 2022 13:31:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, brgl@bgdev.pl,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 6/6] gpio: rockchip: support acpi
Message-ID: <YxsV735hZmzr1xPp@smile.fi.intel.com>
References: <20220909090558.3609190-1-jay.xu@rock-chips.com>
 <20220909090558.3609190-7-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909090558.3609190-7-jay.xu@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_033127_259929_06173813 
X-CRM114-Status: GOOD (  23.40  )
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

On Fri, Sep 09, 2022 at 05:05:58PM +0800, Jianqun Xu wrote:
> The gpio driver for rockchip gpio controller is seperated from rockchip
> pinctrl driver, at the first version, it keeps things original to make
> the patch easy to be reviewed, such as the gpio driver must work with
> the pinctrl dt node to be its parent node.
> 
> This patch wants to fix driver to support acpi since gpio controller
> should work well during acpi is enabled. But during upstream, driver is
> better to fix other thing together includes:
>  - add 'clock-names' to allow driver to get clocks by devm_clk_get().
>  - get io resource and irq by platform common apis.
>  - use fwnode instead of of_node from device structure.

The dependency patch is the part of another series. Dunno what will happen
to that series. In either way we would need maintainer's (Rafael) tag.

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
> +		dev_err(dev, "fail to get apb clock\n");
> +		return PTR_ERR(bank->clk);
> +	}

> +	ret = clk_prepare_enable(bank->clk);
> +	if (ret < 0)
> +		return ret;

Now, you are mixinig devm_ with non-devm_ APIs. Perhaps you wanted
to use devm_clk_get_enabled()?

> +	bank->db_clk = devm_clk_get(dev, "db");
> +	if (IS_ERR(bank->db_clk)) {
> +		bank->db_clk = NULL;
> +	}
> +
> +	ret = clk_prepare_enable(bank->db_clk);
> +	if (ret < 0) {
> +		clk_disable_unprepare(bank->clk);
> +		return ret;
> +	}
>  
>  	return 0;
>  }

...

> +	if (is_acpi_node(fwnode)) {
> +		if (!acpi_dev_uid_to_integer(ACPI_COMPANION(dev), &uid))
> +			bank_id = (int)uid;

It probably needs to be

	if (is_acpi_node(fwnode)) {
		ret = acpi_dev_uid_to_integer(ACPI_COMPANION(dev), &uid);
		if (ret)
			return ret;
		bank_id = uid;
> +	} else {
> +		bank_id = of_alias_get_id(to_of_node(fwnode), "gpio");
> +		if (bank_id < 0)
> +			bank_id = gpio++;
> +	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
