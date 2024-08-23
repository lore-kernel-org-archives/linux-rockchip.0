Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD150C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQQGrI0cXyg9Nm0dXtmnttrq0EMPEKITkaHcC4vN3ec=; b=kAGB2P9wJv1mhS
	Ahn6e+0NluP/8OhonA29BXN10c1bJEx9ywPi4Pjit76tXa5BzgVe6jeK24Mq6uGkCtQb2+g8gFD37
	G/Ncj26jcvEZ0Qc9CbsB6mxuAfj0TnJnk5yEoywPT8rHlO3N4KNG6O3fbYll8BbftQR51f/brNi3y
	LVwgc9CtRcHvhOTcmnxF5/EBF3FLSvPTNfwYaSGWeZSxlFPqryM12KduHfGqw6EWg3/4mD3m+NkMy
	/Q6TNMx558EnUdePBWda+FE06d4GAcSccBvdI7nUIRIMOTlf0P7ABPQzief997nHzt4x7+8UwEg+N
	fG3445elkRQw0p6DpuKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVra-0000000HDlu-0v30;
	Fri, 23 Aug 2024 15:06:06 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVqm-0000000HDct-1sfT;
	Fri, 23 Aug 2024 15:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724425516; x=1755961516;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8HxekA/tIQ3ueiwSzfQMxkCxyPVBq2maRhM23NvBn9I=;
  b=C6LxnRGGsE1FK0ays+v/yaPXmj9F83yvdgFEsxeytrE+VnLKBztBMvyD
   ZuwACVn6y3Ix5MMEOVZyXvcADpS70SpMc1SA3OG+zXAVTsNI5c2YfmywN
   KymJ1Ze+HjI8wn0TT59fMjnEqVPubGeYoIAfHu5abkKNgjEa+K9tw2Xjy
   xYNQsxcNNvfhaVSDXsnnyT3mMGtrP0Jjk9NhDuW141SgGZwUMfS/S3QlG
   /t78eaDENdTSqzrYF3tj1LQWGl/504kyffTkJT7dusb3CeS3xiYvSvV9/
   FubhXMMV9w+mStcoPVIVwaCUgmd+EQWnCixcf5mEje5x8FLj1Ob9ZW4lU
   Q==;
X-CSE-ConnectionGUID: fLaAqyq2TKSTmlAlQyxL/Q==
X-CSE-MsgGUID: s8oU2KDORfCN+AMna6jTQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26767121"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="26767121"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 08:05:15 -0700
X-CSE-ConnectionGUID: Pdy/4ySgRDmc8rGncZm8qA==
X-CSE-MsgGUID: HeWWgZQGTlGdVZ7/pKQpqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="66141593"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 08:05:12 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVqf-00000000pUQ-3d9q;
	Fri, 23 Aug 2024 18:05:09 +0300
Date: Fri, 23 Aug 2024 18:05:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: support new version gpio
Message-ID: <ZsilJZS2_Kvyhs1S@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-9-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-9-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_080516_567298_974AD3DC 
X-CRM114-Status: GOOD (  12.71  )
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

On Fri, Aug 23, 2024 at 11:43:11AM +0800, Ye Zhang wrote:
> The next version gpio controller on SoCs like rk3576 which support four
> OS operation and four interrupts

...

>  #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
>  #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
> +#define GPIO_TYPE_V2_2		(0x010219C8)  /* GPIO Version ID 0x010219C8 */

These needs a bit of decoding. As far as I can decipher these it's something like

0x01 00 00 00 ???

0x00 xx 00 00 // seems like a subversion, 2.xx

0x00 00 xx xx // seems like a release which is

3115
5500
6600

in decimal representation.

But again, can you make the comments better explaining these cryptic 4-byte
values?

With that done it might be better approach to check the version of the IP.

...

> +	switch (id) {
> +	case GPIO_TYPE_V2:
> +	case GPIO_TYPE_V2_1:
>  		bank->gpio_regs = &gpio_regs_v2;
>  		bank->gpio_type = GPIO_TYPE_V2;
> -	} else {
> +		break;
> +	case GPIO_TYPE_V2_2:
> +		bank->gpio_regs = &gpio_regs_v2;
> +		bank->gpio_type = GPIO_TYPE_V2_2;
> +		break;
> +	default:
>  		bank->gpio_regs = &gpio_regs_v1;
>  		bank->gpio_type = GPIO_TYPE_V1;
> +		pr_info("Note: Use default GPIO_TYPE_V1!\n");

Missed break;

>  	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
