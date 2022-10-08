Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7A5C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Oct 2022 18:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nq+sLMXq9JcRS55eX86oVhb3jAsuYY7VxSRYs5/VcE8=; b=YXdhDyFKtOM9ir
	Jsj8SzKlZlJL7POMoMJf6hMbYYTL6z/FfjfqpyfVXsL8LJYuQ7yd+acApjWqcgsphDu4qcgALHGAD
	a9cAOI9zZEw6KVtj/cQKmFiKOX0yzhRsVyS01LydizN5JugcAhFoucP7V0u/fXezsDgObY6W049g5
	KGKkg0GyijWxR7UeAujjHLr6gN8jN/8BjSr2JEcxC9dtrhE5FJOuqLUymzN4uXCuu8wLoyWS6ccFQ
	u8ctkB7MHdEk5wWI2LIccdGkY984iwjhuMbUD0pqAY19szVCqB/V9+gKNjfs1bsxWocT33sGh7O6V
	+VJvKv9VMw6nHgrw02CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohESJ-00Dxkc-F5; Sat, 08 Oct 2022 18:21:47 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohESG-00DxjA-Jb
	for linux-rockchip@lists.infradead.org; Sat, 08 Oct 2022 18:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665253304; x=1696789304;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OWIiubz5fdA83E6sHScFPXfGeMg/96S0x3o/FGgfFQA=;
  b=aRKF0Ua6+L5Y+bACrz4/Chch6CXVGSHy9cf0DjwAQKDF3va8GgFU5b3n
   YEJGotaV6w+s5bzhZx3pLUCWhC2qOjp/iTTEW4HOFpHi0nIWnx9Tqn4k0
   dXGH9+UDTZ+Hs0SPvUwCZfCIffSThBfV+pE6uTdhF4T10E6xLDb1dMg99
   VYj7f+JK+ugfJfnZFr8W6KrCRfesMR7a1a4Ab5n8UTnZe4UfzQ1oasI7t
   E2G6dgpLEHxs702dd0m5po+KaLN6hIuocAiaraGeboZmD6HlkEHD9gK/h
   aWxbmEp9m5t5PSVEVS4WQUdO1sGCcVqxM3CknG7qOuMqXHxWm8GEWjDkn
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="283691400"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; 
   d="scan'208";a="283691400"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2022 11:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="658706046"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; 
   d="scan'208";a="658706046"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga001.jf.intel.com with ESMTP; 08 Oct 2022 11:21:37 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1ohES7-0048li-2p;
	Sat, 08 Oct 2022 21:21:35 +0300
Date: Sat, 8 Oct 2022 21:21:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: "linus.walleij" <linus.walleij@linaro.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	"robert.moore" <robert.moore@intel.com>, robh <robh@kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	lenb <lenb@kernel.org>, rafael <rafael@kernel.org>
Subject: Re: Re: [PATCH 11/20] gpio/rockchip: add of_node for gpiochip
Message-ID: <Y0G/r+mp59qRVqby@smile.fi.intel.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
 <20220920103108.23074-12-jay.xu@rock-chips.com>
 <CACRpkdZSCamhBD-M8CkZt6B3N9c2Jo_D3kwgOykj8+VJ_otYGQ@mail.gmail.com>
 <YzvvGValqxfIriGL@smile.fi.intel.com>
 <CACRpkdbA_h4m0cY98=0C2fCbTYEtowFRm9RF=tv=XSgjKxjcAQ@mail.gmail.com>
 <2022100814192810242455@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2022100814192810242455@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221008_112144_680299_26E675B9 
X-CRM114-Status: UNSURE (   8.95  )
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

On Sat, Oct 08, 2022 at 02:19:28PM +0800, jay.xu@rock-chips.com wrote:

...

> the gc->of_node is a fix for my patch serial, without this the gpiochip will fail to register.

Do not use of_node. We have parent and fwnode members, use them according to your needs.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
