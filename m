Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14949CD37A9
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOe60MBCpKSdr0CRp4y+A5H36eIBtOwcU5dF78ZumeI=; b=ZFULGckEOMgRYJ
	nccEgY11z7ydwgwJcfUivHmMq8CNxm54AGBH83h0+/LMCBerazJVpbyrxX5uD63lNEQe0+qg6Km4D
	Ad1M5DuQZQzlmPyXBHsZ521cDkIiie4fCl9F24EV/XsRSItRe8oWOG/GdzMbnC5OEJkba82tWGZmP
	v3sum9rGLPEAk0bKTywsiBQnRUmsV4z4bbobHUvdXfzuD+xpVIbys6YKVl8l0LzzELr9ixdN0MelK
	AoxeRb4NsBlAsNOhp1SG4D3wP8Fz9rJRqY3ZPt3W2a/Al1kzGJzHFbv21gg+oehdk1IgsqbCDs6ca
	wxq6+KO3V2wKCvZ68ZeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWHi-000000014eB-0N0w;
	Tue, 03 Sep 2024 16:21:38 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW0h-000000010Yf-3XRH;
	Tue, 03 Sep 2024 16:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379444; x=1756915444;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Mc0S8w2RG3QSElgGbwBKLQz1QJN0TSNiZ8BtMzE0Kmk=;
  b=juPaKx2bKNPnpePglOJnXeSjqlA9cfcaWyUhCOsOxw/Op8xMd5hD/P3z
   NCAuvD5qJQYuVbYegqiSFOOHpi1cLoDUk7Knil4qxJCWp2XiMVfrpe9GY
   xmennlw+B16AkfWQB7mNn2djNqcyGusMNtX7XXf6vxX/mxHKfvpuD9uoW
   pDgbAu5vDfr8ydv9nc1NRU1YC5xDrF2ITccYFhPSv4JdJRbm2DweR/sXc
   QmRZt4i4atHi+mVusoBlRpL1nCW5fzXZrYl2loNVg7GpjQjPiURwQqIuS
   unRT9vHc+keViEMxu2QEmNMks7yHD8Co0BNubVVPyLN5E9GV8kpbOk7Tx
   g==;
X-CSE-ConnectionGUID: 3PATRDN5QQeDuDYossjVZA==
X-CSE-MsgGUID: EPcqo/OmQhSqcqUh2D2ksw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41461126"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="41461126"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:04:03 -0700
X-CSE-ConnectionGUID: eqId1xXRQWu/QFPJA3nZiQ==
X-CSE-MsgGUID: iakGxm0qQqWKfafTWs3oxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="65179232"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:03:59 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slW0M-00000004lL1-1ez1;
	Tue, 03 Sep 2024 19:03:42 +0300
Date: Tue, 3 Sep 2024 19:03:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 08/12] gpio: rockchip: explan the format of the GPIO
 version ID
Message-ID: <ZtczXu-gnbwBp01w@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-9-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-9-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_090404_046467_B210D8C9 
X-CRM114-Status: UNSURE (   9.06  )
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

On Tue, Sep 03, 2024 at 03:36:45PM +0800, Ye Zhang wrote:
> Remove redundant comments and provide a detailed explanation of the
> GPIO version ID.

"explain" in the Subject.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
(and maybe others)

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Bart, I think this one is good to go (with spelling fix). And it makes these
values to be described which looks like a win to me.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
