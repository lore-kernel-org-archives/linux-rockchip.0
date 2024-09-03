Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D5C2CD379F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QCDD6pDiPImqjouNnuKgmoYjdVHD/3+qb5P4TVR6HM=; b=gpA2Z4gdAKR5CS
	ULM6cLeVSkd66bYR/G+rx7VJtwUsXklD8M9wz+yU4y41Pu2mVrSDuO7g0ezoplqrGq72EVpEvpcLd
	O2KPB8RxOdie8WQOtUm9uxakWjkjU0bf3FXoYJXSvR5qMXxamsM3TEKNetR0x29Efv6wqOhPoasoL
	u8heQ2Tb5PnGKuFrGXoSwEkwByT5kWmc/mqtNzVe4+Jya/v/ruZaGXpCyHY8+fsNpt4Y0gOXyp1Mn
	mpVjNH0XYsd/VTLhn5OgeuzUW0kIMxrbBRa/xriKpxM4WgM845BYONmrxeE0YDfeooFTHHGoK3DhI
	wxODIerSQ1Htdwl4RGIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW8M-000000012aV-1xlb;
	Tue, 03 Sep 2024 16:11:58 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVvw-00000000zFr-2RiD;
	Tue, 03 Sep 2024 15:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379149; x=1756915149;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=vOK+++yJ0RJTyLTSn/NI8o5s2jAK0dW4Rm5HGwb5yNs=;
  b=KluGklr8mEjunYgq0vjLbaUhu3iBVgGtnONP5ViC88cAKHblq1bIhrht
   1RU0if/wS/9zX4Lyy4+I7G72mcf25lYC4YWPr/0SPqVhn2G07mRIJQ+mF
   nCOrneiulC9FMpf2Dnmnv8Fe3m8J3i1Nflci71CV2ylLECJJOfwCehFFF
   2WkuElMzZ4Tt3ewh57D5Ryysus08N/4AFJmr5/g5CnjKR7PXz74TnqHLf
   QZZD/TCeZCgUNYEQ4IZPJ7Iy38Tz3nnU4NDkBB3wtRrImnyvD7lhiCFip
   7rBM1uTXcJ8P510nCGjWDyiB5K35c3+9CiB1pxWRLIEUaIEPf3SNYOnFn
   Q==;
X-CSE-ConnectionGUID: GnpZ0ttCSU+wieum1yYIWQ==
X-CSE-MsgGUID: 1fn5XusjQuG9UiJP/FYCWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="46515110"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="46515110"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 08:59:07 -0700
X-CSE-ConnectionGUID: YriTU1rPSySkmJHW3m32YA==
X-CSE-MsgGUID: tEJqILLiSGiurvUXY69HeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="69757154"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 08:59:04 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slVvp-00000004lGb-0yhf;
	Tue, 03 Sep 2024 18:59:01 +0300
Date: Tue, 3 Sep 2024 18:59:00 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 07/12] gpio: rockchip: support 'clock-names' from dt
 nodes
Message-ID: <ZtcyRD3u_C-a27MF@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-8-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-8-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_085908_948934_469FD052 
X-CRM114-Status: GOOD (  12.18  )
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

On Tue, Sep 03, 2024 at 03:36:44PM +0800, Ye Zhang wrote:
> Added support for retrieving clocks using 'clock-names' from dt nodes

...

> +	bank->clk = devm_clk_get_enabled(dev, "bus");

I would use _optional() variant.

> +	if (IS_ERR(bank->clk)) {
> +		bank->clk = of_clk_get(dev->of_node, 0);
> +		if (IS_ERR(bank->clk)) {
> +			dev_err(dev, "fail to get apb clock\n");
> +			return PTR_ERR(bank->clk);
> +		}

> +		clk_prepare_enable(bank->clk);

Why? How was it tested?

> +		bank->manual_clk_release = true;
> +	}

It seems you need to unnest the conditionals and think through the logic.

> +	bank->db_clk = devm_clk_get_enabled(dev, "db");
> +	if (IS_ERR(bank->db_clk)) {
> +		bank->db_clk = of_clk_get(dev->of_node, 1);
> +		if (IS_ERR(bank->db_clk)) {
> +			bank->db_clk = NULL;
> +		} else {
> +			clk_prepare_enable(bank->db_clk);

Ditto.

> +			bank->manual_dbclk_release = true;
> +		}
> +	}

...

>  	ret = rockchip_get_bank_data(bank);
>  	if (ret)
> -		return ret;
> +		goto err_disabled_clk;

No, just make sure it's properly wrapped by devm.

...

> +	bool				manual_clk_release;
> +	bool				manual_dbclk_release;

Why do you need them?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
