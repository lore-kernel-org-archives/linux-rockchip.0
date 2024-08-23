Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30213C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YijTqnCSsyWIRGqO65e6s70/AFp6k/3/bfiB1a1326s=; b=CLYDsmHLLo+75k
	ZAwJ78QTzQgPOG5//Phqc+p7aUkY783/fCMTmTlrIKSpVjGLW8ZcCulMAU+t40hPnRRaqK0gUdvCu
	+8f2b/Mu2d+WZf3LYVTz7o5Mk/043sT1gx4w+5Xfkn3RSXjxOGm9sROQH6G/TvPA3rLW+snjOQpzJ
	ZGqt1cydDW5VwbMqSPHktWDtVyFVg+jdx6LW/+subDklWp116Pa/6S/5xCDHOhV8ZyE7ZdowNNmbf
	csGPYtBsPLhXEr538x6+giylPNGMKTu4P1bSMBQr2L5TsOTZXExVCAfqn4ZSGpfn7xf2AHCu/TZF+
	PkoKiz9zM8jyNx7YW53Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVdx-0000000HAuK-1dZn;
	Fri, 23 Aug 2024 14:52:01 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVd9-0000000HAhh-33Qi;
	Fri, 23 Aug 2024 14:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724424672; x=1755960672;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2XbOOhKkWPqZCcSXIvvSuHpiha9ebAQ8MRQe2Eu+/jA=;
  b=d4wZ3Uayh9h0yMM2Mxyh/x7fxCNQAUUnQKpvkLN0qPv2Z3yo0UQf+cd1
   iCZCG/tM3NsI27hMymAfW3BIXbHg/DyzIVztnMANNUADx7FEVmvBBHeae
   y3QIsfDw0Z8d2gX4OfAV/G9415GnOWyvqlj876m3Pq/yYMjbvQNT+UE6C
   gMob2Cum4sw/ejqwQVmUNUkUtgD7d5jTrkj5coqOfuD+LXlpaLbbPW81j
   DQrpUmEXPAEtwzbBMR3K2oTWA1UlEcnLDrineNxF/Bojb45NMIVtdb3Ii
   BsCqIAF5m8tXogj9kB7pJlqUrc5Yx1V4cLi+N9u4he9LH7pUMovc/3LpB
   g==;
X-CSE-ConnectionGUID: zVdnTEcxQqWBM8kfZnYiPA==
X-CSE-MsgGUID: dvq/xvAxRLORfUfN4lm+Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="23021626"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="23021626"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:51:11 -0700
X-CSE-ConnectionGUID: NIMEP4FaT4ikO66N0Qq0Cg==
X-CSE-MsgGUID: /5WbCK3IRxKW1rnmuNnjLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="66634754"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:51:08 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVd3-00000000pH1-0nRR;
	Fri, 23 Aug 2024 17:51:05 +0300
Date: Fri, 23 Aug 2024 17:51:04 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: resolve underflow issue
Message-ID: <Zsih2NggJXRF6YhI@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-5-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-5-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_075111_838822_F5594A83 
X-CRM114-Status: GOOD (  10.09  )
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

On Fri, Aug 23, 2024 at 11:43:07AM +0800, Ye Zhang wrote:
> div_reg may be < 0 if debounce is zero, causing the unsigned int to
> overflow.

...

> -	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
> -		div_debounce_support = true;

Wouldn't be cleaner (from the patch perspective) to simply move else branch here?

	else
		div_debounce_support = false;

> +	div_debounce_support = (bank->gpio_type == GPIO_TYPE_V2) && !IS_ERR(bank->db_clk);
> +	if (debounce && div_debounce_support) {
>  		freq = clk_get_rate(bank->db_clk);
>  		if (!freq)
>  			return -EINVAL;
> @@ -216,8 +216,6 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
>  
>  		div = (u64)debounce * freq;
>  		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
> -	} else {
> -		div_debounce_support = false;
>  	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
