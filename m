Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC574CD3448
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQf/tv5ct4LMrbipfpi18CgHfuyJCgNxi391e51AplA=; b=eoZV9+fEoIuwUy
	5w5tyav5iFryBa4jiBdymW0Dm4R14yax/wfH87orpLTSNUbdzpjk44le/csUd4PW3KGGE057QgQ82
	6jbQ6SSdogy9H5QCC7z3KXChmKGgVhuOIxhrDGP2nP6irzmfDrVc1P6HxVkesRsyW7aEgFYSOBztc
	YJObOD9d7k1rDlkxXH2ct5hCLSh8o5LTA7KVsjVEnbxzfT532l8L/l46j0GJPJWy23CfGtOZKc3GX
	7GLqbmZku2qF56+qUOUohz/OdhlSpTrQ9xB/lZF6jRxudbTdoGxdgAUjy5DGo+9nm8vM8YAfdSHTP
	9jv9JowLNOM+Y5JGJiwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWI8-0000000152Z-40Nt;
	Tue, 03 Sep 2024 16:22:04 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW7a-000000012PI-1J5I;
	Tue, 03 Sep 2024 16:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379870; x=1756915870;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=23UJof+bw4z17P2EuEFVPPtXB7zf9hg2doA/jFPekec=;
  b=kJAUHpzRVWRyQRpTnMRKlK7y1728IP5prMIjHHNKHtUcohHYrdDJDedP
   KQb0le2OxaMdTexDb0Nqv4gE/1pIoVdIXwfc2p3Uo+7Ti6nm2/jLp4c5I
   /mwPt4pD7fqf+UlMzMwuqCRo7gP4jhERwGK3azUiY2q8WtI/sutSJwMAH
   1+dVPQQ3vh8UoYs2J/jy+ji13T+pzT0lMvIPLUX0cCkhHtbY9ZqQQA+JY
   MWm6xS0ukzK9Zv0tJsY8WYx17fuAoyqtYtW43K19hz/d+3/74wWyLEGxQ
   01+2HROE5h3Kb2Yd0dZ7MYMUwzM3bgRNQ5MzyZSOjbiBzawZ0UFWDZAvZ
   w==;
X-CSE-ConnectionGUID: dL80aSHrTVygXs81m+TqQA==
X-CSE-MsgGUID: Uv+gzMtHSMipbzcXFCpZgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35147606"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="35147606"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:11:09 -0700
X-CSE-ConnectionGUID: iiiYSyOkTkSWL/6RgAW03w==
X-CSE-MsgGUID: xmCnEEbvQOKNkRB36feE1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="69585899"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:11:06 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slW6l-00000004lR0-24Yh;
	Tue, 03 Sep 2024 19:10:19 +0300
Date: Tue, 3 Sep 2024 19:10:05 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 12/12] gpio: rockchip: replace mutex_lock() with
 guard()
Message-ID: <Ztc03cbpPjPZatoL@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-13-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-13-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_091110_514411_28598325 
X-CRM114-Status: UNSURE (   9.88  )
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

On Tue, Sep 03, 2024 at 03:36:49PM +0800, Ye Zhang wrote:
> Replacing mutex_lock with guard() simplifies the code and helps avoid

mutex_lock()

avoiding

> deadlocks.

...

> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c

+ cleanup.h

...

>  	}
> -	mutex_lock(&bank->deferred_lock);
> +	guard(mutex)(&bank->deferred_lock);

Make it surrounded by blank lines.

> +	ret = rockchip_get_bank_data(bank);
> +	if (ret)
> +		goto err_disabled_clk;

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
