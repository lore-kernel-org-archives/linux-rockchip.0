Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950BDCD37A9
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HarHCIwvDHQ0yutjVESqo5cwXE4DMZuJrUjBS5r04FQ=; b=nXb7s8isptXohC
	9I+ogfZEIv52UFvooOS8XYrUz96zjEGUByPJPAIpiDHDtqseT/0vaTIZqeuKV4PcWjPDI+aNKnmfm
	DlO5WCFsTs63PiXDKI14JpYXT6S7PeQMH1AiuEbTKgjDJej9hM6TaoBn3x9gBIrMagkghyBwnE8bn
	qomD7XH2N/6DQuZpsqpkGBHbARzc7l332wpQEYy+j1z0K8mNpCT8uT4Fy2YusfO67IvRtd1xq0nTl
	pPyMYtpwoYhRQDrEJEeqNJgIh/Q04i01D2qUYWzgRdC0vVxRUrYHw+C5SAjNHJ4Gt6C6y+72cNM3m
	LYPxSSDQ5Y3iljraV1/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWHv-000000014qu-3ykv;
	Tue, 03 Sep 2024 16:21:51 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW4q-000000011UR-4Aej;
	Tue, 03 Sep 2024 16:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379701; x=1756915701;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pxnysqxPXUdGKI5yp8EEEzjs8U+bgSELKCdSY0UOul4=;
  b=AdYg34NTLSrxFiQSM7N0QEPp2zWg3EJWpXfBFTzE5KOkTSB6mZHTkcUG
   9hqWPF7qWVA7olUgyA1cbA4VJQvLu49pTM8iG03S1lqvIjHSVH0Nyhfle
   6qGyweuehJlDihdsAUlsvQpP//FIg9/aVWzwMSxdYTrumz5vd4HbMBSZW
   puBc9pLf0PkrQFNXGXymaI/dkP86P5qsshO8EqH4zgdyY2m+7ZU00CHIW
   4qcxv/2d2JjWOh9XqkHNBMUYSZgQZ+HPCKc8tKLj46qIcYWMk1vQkW5wf
   JUtFVCKGctGB5b9S36VOwLoYhH3Uk3KWm+Hlph+PesvyJQM8mZVfNrqu0
   g==;
X-CSE-ConnectionGUID: Zfzxqt2FSlSjdlA/asiVHg==
X-CSE-MsgGUID: 0ftmcFI5RHKMx5nvHecpwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23794855"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="23794855"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:08:18 -0700
X-CSE-ConnectionGUID: VjHNdM+QR86DcAMxALbX5g==
X-CSE-MsgGUID: hiim2caBSq2TwGNTiJyVDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="64986606"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:08:14 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slW4h-00000004lPS-2SUo;
	Tue, 03 Sep 2024 19:08:11 +0300
Date: Tue, 3 Sep 2024 19:08:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 11/12] gpio: rockchip: Set input direction when
 request irq
Message-ID: <Ztc0a3uSy7HmUWYJ@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-12-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-12-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_090821_143297_ADF754CB 
X-CRM114-Status: GOOD (  10.44  )
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

On Tue, Sep 03, 2024 at 03:36:48PM +0800, Ye Zhang wrote:
> Since the GPIO can only generate interrupts when its direction is set to
> input, it is set to input before requesting the interrupt resources.

...

>  static int rockchip_irq_reqres(struct irq_data *d)
>  {

> +	irq_hw_number_t hwirq;
>  	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
>  	struct rockchip_pin_bank *bank = gc->private;
>  
> -	return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);
> +	hwirq = irqd_to_hwirq(d);
> +	rockchip_gpio_direction_input(&bank->gpio_chip, hwirq);

	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
	struct rockchip_pin_bank *bank = gc->private;
	irq_hw_number_t hwirq = irqd_to_hwirq(d);

	rockchip_gpio_direction_input(&bank->gpio_chip, hwirq);

> +	return gpiochip_reqres_irq(&bank->gpio_chip, hwirq);
>  }

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
