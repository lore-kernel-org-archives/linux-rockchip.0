Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99EB2C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VD1A+sRZrxoe5gKviG5WS/Q5+uT6h4wCaOMbq8vCsc=; b=orSg0CSJhL6WgA
	Vpn0lz3R033VoRzBxuEdUuG5KtjHi2l5ro3CihCG/J7bHuq2OeZDEhNNuwIfS9GEPrAoGapziPaNo
	JB2/LTIo3rmVYQ75FNK6F/9+OqbAmjxzmpRHWZyrc6LonZaEowkWKLzkh73owwg1iMWlcsDWqdLu3
	VFDTqLPyfEa0QtlCnvyVR1pDM5RkPcwvaI2pWdy3tZemDld+iD8+h0OwoeX7XAlHJICXQFy6PmX/u
	PQc018oLOPIkg05fplNrp+UbWlJhf3P7zejXxAwO6BMOboYf0jcWTBx9s7qsUYCljGsZPZECRT+Ug
	AVj9wieVuEqTdb/LT6LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVld-0000000HC3T-23q9;
	Fri, 23 Aug 2024 14:59:57 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVkr-0000000HBsk-1DYp;
	Fri, 23 Aug 2024 14:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724425149; x=1755961149;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dAF4EzAJlty3UqKFmsn5bGOq7/BaOfcncLQBYgpR638=;
  b=f1PtZ2U2Oi5fPZAdiknnJMDen0P/rV0euRWr1ilYv7FNVs2QMsJ9i/Vl
   lmm5/4gYrXxiA2JtxJvKpgOeIpGjBMCqpdfpx1mEVjJFbTmHvpZFizHfY
   hR6mjorw2+5aB8nOtycLNanlbJUmKnM5RlQe64cUTNkgqEV1SZmqEVOu4
   J3PEU5dIsay5jYVLy15vMgOZ5dP0sqVcZka8SsO3yooJ2srpWsCEDTJZp
   se+6KkN/ZSdEf4c2Z9bl8zwEHle+VuHqQX5f3XdUpOrkJi3eG1noqqqI+
   K7yMUxIn16Nu71Lw2duAZWeSNCHcZ6bQN0/lfOivS7WGEmt70bUHMsbzJ
   A==;
X-CSE-ConnectionGUID: 3tyTvRi/Ta+1vdOuAxbxuw==
X-CSE-MsgGUID: W8JtIljoSFeRK0rqFV/n0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="48289603"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="48289603"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:59:08 -0700
X-CSE-ConnectionGUID: brUjEvKwQ/WiUdboLXGsbQ==
X-CSE-MsgGUID: 3YXQdEUZSwyvEZeNFk68LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="62334764"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:59:05 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVkk-00000000pPA-1D25;
	Fri, 23 Aug 2024 17:59:02 +0300
Date: Fri, 23 Aug 2024 17:59:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: Set input direction when request irq
Message-ID: <ZsijtURSzEWKCqHk@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-10-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-10-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_075909_550389_6518212C 
X-CRM114-Status: UNSURE (   8.72  )
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

On Fri, Aug 23, 2024 at 11:43:12AM +0800, Ye Zhang wrote:
> Since the GPIO can only generate interrupts when its direction is set to
> input, it is set to input before requesting the interrupt resources.

...

> +	rockchip_gpio_direction_input(&bank->gpio_chip, d->hwirq);
> +
>  	return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);

In both cases you want to use irq_hw_number_t and irqd_to_hwirq() at the top of
the function(s).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
