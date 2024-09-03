Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E8DCD3448
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWPowgROZPqfaCfHA1JoHT60oULll4t0QlNy42s6dfM=; b=X8cdIgg2NBiJJu
	5FpvQYqwEfM5F4Eibs6h7pNJ2lEx5LQYt/ToZ+NVjPE5bS0x9Zeldo61da9QuLm9BAYCsZNF5L4sZ
	DH1XhbJbW09Er4GP5yBW4gdaRRm1ZgQjYEU1+aHFPX5yR1XvqQYdKWigdU/in6kAf1DCznwoOQens
	pGp61qA657RA3xZm+UtTuC7Ls34IGLOGj/zBwzMJJgrluv2aHnwch7SGnxyDPPharxyetLohrzYhA
	6RLaMfXPaCrHmdtlRh6jEqajRQDugnPG3+uCMlsLcW53sOwwEd7S3B43w4ZWrE8UeBFmCORHdjBBG
	G70XzYRuHkXjxE513ELg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWHj-000000014fN-1l1k;
	Tue, 03 Sep 2024 16:21:39 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW29-000000010pF-1yD7;
	Tue, 03 Sep 2024 16:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379534; x=1756915534;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JHv20sPeSrhPSLL+jYVyMfFLG+chzXIHdmnI9Hk2T/M=;
  b=RbxXmGtpw42VeYAbL8kL3Z5BI6vv2sNCSQA8lCPV9a7g560UzN/f2D7u
   F/nKAk1vRUJ8WsqRnKTeVpfij0BBGchxwJ6EcP5p32Vap/oMGGH6njnxe
   u6ddvELetTKU9xw03hhJ0LSkgnsBqrQY4nyvjvRZOMLlZfNjSGtS5LxRE
   AYgCDiLtPg/9Z1JtRx44hBZCoqOymtyyaScavToS9420k41WhmJGyGC/Y
   wsVd1J4ofNLv1qT+geJMFS75SPSHAWAgQfHUJ67yiXTmxxzRoa/G+0NMt
   ntBr2YFSzg0FCUB1Fqb/IO3ibYYb9bXWdDO4tl4oo3BarjT5sh8ficADM
   A==;
X-CSE-ConnectionGUID: zesBIIQESka2vW2zMvnJWw==
X-CSE-MsgGUID: h8p0H0OXRGmpo3HEv8EIjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34558992"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="34558992"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:05:33 -0700
X-CSE-ConnectionGUID: /Wyly19aRm2ltpGETJZ8Lg==
X-CSE-MsgGUID: wCSx5JsJRMSA7hJYjnnoKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="69110624"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:05:30 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slW22-00000004lMM-3zj4;
	Tue, 03 Sep 2024 19:05:26 +0300
Date: Tue, 3 Sep 2024 19:05:26 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 09/12] gpio: rockchip: change the GPIO version
 judgment logic
Message-ID: <ZtczxlCJLD3lkrkE@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-10-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-10-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_090533_578983_14A81DD8 
X-CRM114-Status: GOOD (  13.53  )
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

On Tue, Sep 03, 2024 at 03:36:46PM +0800, Ye Zhang wrote:
> Have a list of valid V1 IDs and default to -ENODEV.

s/V1//

...

>  	id = readl(bank->reg_base + gpio_regs_v2.version_id);

>  

You may remove this blank line now...

> -	/* If not gpio v2, that is default to v1. */
> -	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
> -		bank->gpio_regs = &gpio_regs_v2;
> -		bank->gpio_type = GPIO_TYPE_V2;
> -	} else {
> +	/* The GPIO version ID is incrementing. */
> +	switch (id) {

...basically to have

	/* The GPIO version ID is incrementing. */
	id = readl(bank->reg_base + gpio_regs_v2.version_id);
	switch (id) {

> +	case GPIO_TYPE_V1:
>  		bank->gpio_regs = &gpio_regs_v1;
>  		bank->gpio_type = GPIO_TYPE_V1;
> +		break;
> +	case GPIO_TYPE_V2:
> +	case GPIO_TYPE_V2_1:
> +		bank->gpio_regs = &gpio_regs_v2;
> +		bank->gpio_type = GPIO_TYPE_V2;
> +		break;
> +	default:
> +		dev_err(bank->dev, "cannot get the version ID\n");
> +		return -ENODEV;
>  	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
