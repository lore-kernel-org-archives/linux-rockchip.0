Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BAABC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1pc+iDhJrPfcj27ivWquDzVCmyrKPGnXtq1Aw+bVC8=; b=i5IdNAkozPJvgd
	6BVMybEW6nUIIEgwolQz7Q3/gPUJXGrOWo4bWOuHA/0buGt5yomdo6+q68mAE0xM+9wZXQKXEq5Wc
	zmZtWXW1oU/YGjHEnwQPjp+kExQRxUgTrGZMNyULVqGh3W9fUad4bCeCF5FLocpHh9XJ+ywIwJuS6
	iMnfiyhr2N8NaXVhqHwuQ3854f8GOImkaKoiNbdFtvGrTsGnKIhZBTMw8NNjzbwIEbgwhH2Twl1PJ
	9I/SZSlgmJSjaXkxi1OnRBx3zXb+z3pHqYJ1alVAz+mNtp3N37AGgLT7ugsiIZREDLK+IW5dpaQh4
	0Athi/4axcGtKmEmQvaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVZO-0000000H9uL-3qwq;
	Fri, 23 Aug 2024 14:47:18 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVYB-0000000H9dm-3qDf;
	Fri, 23 Aug 2024 14:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724424364; x=1755960364;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KP7pzsC70WkagQf4cPqKhy6qm2cgrVoiu8S8ZLGfn3w=;
  b=F4khDdjybeYt4qECZ6UGYZymivHeUxN/gRjwZ4jDR2VVPTV/iuI2qmpO
   Qs2NGJjYs0wNZAyhTK4lUUm4OJ7dvtYkR9wZDpMuuwq1QlFXoley68gtk
   Ovge/tZlFT0D0+YA7zlU1kjYCl0vkeL2cj2uCEhMVxW17iyAm+iy9ChOx
   m0Kpj4iNe80kY2YSvFtHL7SBCTU6eBkf8fC8X7PWLv5bJj6NAMwCweueA
   8JrSvlaySuxAaauUs+a92T/NuAzz3sgekPmJesXqO6F9xTqaDf1yQnloL
   yF9+BnmJQUxf8seRbQto6qdjBxegFbxiomFp0mLQ36DyfUaa0EHbjTAbS
   A==;
X-CSE-ConnectionGUID: W9RvHWWSTLWQEJG/JVz8fA==
X-CSE-MsgGUID: JT9xihD7TdiPm7eY4Q6E3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="23065720"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="23065720"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:46:01 -0700
X-CSE-ConnectionGUID: b8WRW3v4R0eSlb7fm7+bEA==
X-CSE-MsgGUID: +5wlqm5bTWG6dtp60iGNtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="66134472"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:45:57 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVY3-00000000pBz-0Q58;
	Fri, 23 Aug 2024 17:45:55 +0300
Date: Fri, 23 Aug 2024 17:45:54 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: avoid division by zero
Message-ID: <ZsigomgMVH76ACZH@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-2-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_074604_023417_C23AF822 
X-CRM114-Status: UNSURE (   8.94  )
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

On Fri, Aug 23, 2024 at 11:43:04AM +0800, Ye Zhang wrote:
> If the clk_get_rate return '0', it will happen division by zero.

At the abstraction level this is good to avoid 0 division and return an error,
but...

>  		freq = clk_get_rate(bank->db_clk);
> +		if (!freq)
> +			return -EINVAL;

...do you this the absence of debounce here is a fatal error?
(Yes, I see it's a fatal when it's bigger than maximum.)

>  		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
>  		if (debounce > max_debounce)
>  			return -EINVAL;

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
