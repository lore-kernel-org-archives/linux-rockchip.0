Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 931EECD3446
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3S01Uecph3s8OId/C8m+XcFPahttGrigoz+QIocx7As=; b=WY4jgn+mozsuwW
	6RAPK64y/l43SnmIb4hLj12+f3nvoVrU8LAYI7LsefEMbRujmFk9FYgD+bSnEu6dhfsFKPpLiuuSn
	QieH1L1lDtt0P8Dj6YauvnQJ3D+9xSj/LBNz+AFuT2n6N0A7RWJyJ4CMoweVP4wFEgTMed5YbFBHC
	fpGwznvI5b+aM82mlhcQovYxSak1P4a4j3CO3fI7stElzBoeA/2LkTOXPntr3NSwA95lj2m23mpuG
	fXEh2XTiNtmXsSBK/+2SyKcFwdV6+Z0P7rGGXWuoOa0bNIm0pxbYNaPhHgs2E4M37iZqWG09ghNm6
	kyiRPay6VQex+hj1L7kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW0y-000000010dM-1Lui;
	Tue, 03 Sep 2024 16:04:20 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVqS-00000000xxX-3uqR;
	Tue, 03 Sep 2024 15:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725378809; x=1756914809;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4zLPYlOz3SmkFEgQEXONt+k9D+7ivOmLVWbo2jhWKiA=;
  b=Uog4TIe/uasCULhx5yamS36b4d03R4baCECLN839gdIDNbHN8La4Klu8
   5reETDSZbVBm0ShP5PJT2RgASLB5vIHl2F4TIPREmgWA3/Rbq4XJr5yJE
   NycG4Os3Yg4mYtRDEu+X+ZS5wLeMgH0owvCpgjZ9ZOyUmzbsokTXD5NVP
   RDb0C/C44Vfqq4k0k+3qXSfWZeBRbdvXJ9WWmJKJLLFY78icPxxM11hDO
   3rpGfd//SiJEb16yLtJITjqd36rFhnZnfNqeX8NtZkA7qudxNT2+yrxic
   u57GOXYYWoFMwlBGNgLCnfB1yAF8VXbViRvl1TOu26XSSDRXGVduDYnC6
   Q==;
X-CSE-ConnectionGUID: 7K4zpfDBQgyr8TMd3UFhLA==
X-CSE-MsgGUID: kydC2j1mRTOMvwSS4PpqPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34597548"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="34597548"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 08:53:27 -0700
X-CSE-ConnectionGUID: Tky17SirTAi1swVxu6r4cA==
X-CSE-MsgGUID: 3Sbh+5ppRvi2X3wDrJQbsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="69104664"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 08:53:25 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slVqL-00000004l8R-2IOs;
	Tue, 03 Sep 2024 18:53:21 +0300
Date: Tue, 3 Sep 2024 18:53:07 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 01/12] gpio: rockchip: avoid division by zero
Message-ID: <Ztcw4wVHsQkYkjhr@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-2-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_085329_005962_74191FDE 
X-CRM114-Status: GOOD (  13.61  )
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

On Tue, Sep 03, 2024 at 03:36:38PM +0800, Ye Zhang wrote:
> If the clk_get_rate return '0', it will happen division by zero.

I don't understand the circumstances when it may happen.

> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")

Not sure that this actually fixes anything. See below why I think so.

...

>  	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {

Here you explicitly checked that the clock is provided by DT.

...

>  		freq = clk_get_rate(bank->db_clk);

Here you read the frequency which may be 0 in two cases:
1) in DT explicitly set to 0;
2) CCF is disabled.

So, wrong DTs have to be validated / fixed beforehand, correct?

But if the CCF is disabled, the db_clk is NULL. Moreover I don't see
how the db_clk may contain error pointer as you have it filtered out
at _get_bank_data(). So, maybe what you need is to have NULL check
in the conditional and explaining more in the commit message why it
is currently a problematic code?

> +		if (!freq)
> +			return -EINVAL;

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
