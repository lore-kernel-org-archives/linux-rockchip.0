Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE04C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E6dPU4YLFyAelikN0f3H7giiVFoAOi7/ZEjBVWCxZ8=; b=ZOtUzqRexlCegm
	fKAaHMkS99EYZUq99Nzamx1w6py+qVzvUW3fdnCtIgvzfw6/BjCjYQKuWFcWaEVtifwPLD9gwGniH
	exXLyNn+PVTIirMsiSDwmA10c6aZM6HnJzXodjFD0Ly+Nh8p1SG/I0EJJF/vcPFJqkz8dGwRl+RdG
	rDskfTAvyrDYO84AfwSpX3o29tSPSCyc+CxxzdIo6wIKZJ/cTk+IOmH10plagCbAdMvYXbXVl2oeY
	SE3paWL2OnqJdU3ZY1FLWAbXbIO5WzWACOf9We6A0eRW6dfgO11r8SfGrbpgCYwsw9X7Zb0C1WHXx
	TTtFqu9dexlTHxI6/UeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVjD-0000000HBZX-3UyX;
	Fri, 23 Aug 2024 14:57:27 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shViR-0000000HBQZ-1bJq;
	Fri, 23 Aug 2024 14:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724424999; x=1755960999;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HevaHT/6Oz147NSX7L5OG2uheTBQJzmB09UKjKHTvvg=;
  b=QzyL/p7MVW26JjvEVO0q74S3DZBQ6Gai0C50TqulWKb4LRjgoX+i22CW
   gzYAsfpzERW9pidwZP8LkNDslaQfCpi3ZjW2DV1NfoyHbj9HEa1BtcQku
   7rMDBEDaqGklnwfv+PAdG7I2yLd9X+dJA+aLycP9LxOzzpOG3vei9CQe5
   tW77B0C3ZJrZ3FFyQtV/aVckHEQUeA2Kr5h85fokdTQ2atqJzDCv+uJ0z
   s3lZo/E8p2IM7i00af2Z8jR51uLAYZ4LS6FMo+AuPREGD3r1N8n8VlJt3
   WCHGi+j08B3B7gR6WZ8tCj/Nps/CszbWeELjhplxVrF/1sDHYc3nxfjHA
   w==;
X-CSE-ConnectionGUID: oyP0sGCITyaAnlOWvUkESQ==
X-CSE-MsgGUID: PMHcxnt2QluxFpNFJuUhEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26766083"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="26766083"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:56:38 -0700
X-CSE-ConnectionGUID: leuh9NUlSzmkTpTNjMCQgQ==
X-CSE-MsgGUID: rn8/pJGJSJ2ds0Am1DxEaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="61497586"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:56:35 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shViL-00000000pMC-0OSG;
	Fri, 23 Aug 2024 17:56:33 +0300
Date: Fri, 23 Aug 2024 17:56:32 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: support 'clock-names' from dt nodes
Message-ID: <ZsijIGTtHynR_jrm@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-8-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-8-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_075639_470838_7A66345A 
X-CRM114-Status: GOOD (  10.37  )
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

On Fri, Aug 23, 2024 at 11:43:10AM +0800, Ye Zhang wrote:
> Added support for retrieving clocks using 'clock-names' from dt nodes

...

> +	bank->clk = devm_clk_get(dev, "bus");
> +	if (IS_ERR(bank->clk)) {
> +		bank->clk = of_clk_get(dev->of_node, 0);
> +		if (IS_ERR(bank->clk)) {

> +			dev_err(dev, "fail to get apb clock\n");
> +			return PTR_ERR(bank->clk);

			return dev_err_probe(...);

> +		}
> +	}

...

> +	clk_prepare_enable(bank->clk);
> +	clk_prepare_enable(bank->db_clk);

Any of this may fail. You perhaps want

	bank->...clk = devm_clk_get_enabled(dev, "...");

Not sure for the fallback case (of_clk_get() should be killed as we almost done
in GPIO library for GPIO APIs).

...

> +err_unlock:
> +	mutex_unlock(&bank->deferred_lock);

Don't you want to use guard()/scoped_guard() at some point?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
