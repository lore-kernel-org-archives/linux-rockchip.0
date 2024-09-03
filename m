Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B47F5CD3448
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMgmqAY65VN6SfkdVK68SzqP1QmqwgdrevDRv2II5Ns=; b=TMYd9553zQuKlG
	jtBiUukkqWHSgh61D8vRWe3641sGAt6Wy1KvYHxSu0JidMyOeaQUcPCP31QpY112/Hn0Nbzabu5dK
	OnrGk8crDnhPwDiwsZ+rtH/kxwy8j6POEOXxfEd7i5u0wIPQwuykLNKpweYVL8b3dJG6ki6MqDzQN
	8YRCMdS1AIMz8G7ZJoeVDzbhw8SORT0dhiv3jzDTyP1YAYTo4R83YuAFSFgZoVpquco+OnQ0YuYyW
	EIo7BJLeK/khUVQCzyciniA1g15HP/JKsEC87EhYMfSv+BjU9njO/V9liqwqPYXJXpfC3n08GH5ST
	CLX70ZqnPSpqV0E6kXZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW3e-000000011BO-3Jtc;
	Tue, 03 Sep 2024 16:07:06 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVtP-00000000yYB-25c6;
	Tue, 03 Sep 2024 15:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725378992; x=1756914992;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sLyMt245ao8HwCeSNglehwfeUM8MKbh7j8GGEGBOtwQ=;
  b=EQumWutISYBewx0X+9jkKJNHop+4/he74D9qRcwSisZlhxzgF2mDGVMy
   tSs4Tmmd3QykxQJ4npeSf4wHFwyKS3QWjGC0JO8Kadd8EfZYH7VaiRRW/
   MOnS0IjqeVpmU8nLFyAJ30E5WAWFIIC6zvZTlnX/vUSH0O4quTIFOA5Q3
   I9HpwNqYKslBhizXf7WOOPdjZyqaLDMxPJ4BqemHApcj/osvUsjtWpZE/
   SrNnQ3alxYN/H4BTjEMkrjBH3t6z2hwkh5wK8gJ6EjpU4WaY2FCWFDt8D
   pMeKjGjNJ9LAgouPNuT1YjviTheVZEQLszirO8Gy6y0C3gPEhjtLZIXat
   Q==;
X-CSE-ConnectionGUID: gP+2YhNQSTCcqWxUe5raFg==
X-CSE-MsgGUID: dVNIhwGNSuCAXtBNK6/X8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27780029"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="27780029"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 08:55:09 -0700
X-CSE-ConnectionGUID: 8xByilQxRY+quXw0JAbhpQ==
X-CSE-MsgGUID: 8muKQu41R8CTNwk0s9FEEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="69340599"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 08:55:05 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slVrx-00000004lBc-1N3K;
	Tue, 03 Sep 2024 18:55:01 +0300
Date: Tue, 3 Sep 2024 18:55:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 04/12] gpio: rockchip: resolve underflow issue
Message-ID: <ZtcxVdAdGNOkaOuD@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-5-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-5-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_085631_784786_9FCF6B77 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

On Tue, Sep 03, 2024 at 03:36:41PM +0800, Ye Zhang wrote:
> div_reg may be < 0 if debounce is zero, causing the unsigned int to
> overflow.

...

> -	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
> +	if ((bank->gpio_type == GPIO_TYPE_V2) && !IS_ERR(bank->db_clk))

Stray change.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
