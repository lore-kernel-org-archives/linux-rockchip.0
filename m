Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B86D2F038
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7++jRfGVKJohqXKQNq+Cx+G+JIteqddshi6HhFYoFiw=; b=rR6/NUNypyrrTw
	4yMHVtvDOyytCTvKlIeIO5moTf5DmQQSZmgtWmWjvtD4hTxou8jnEAjAFZJJo4Fsn5tLnkus1v4iO
	fjqKOAS59MrmOBqxt27W7temZ0bQsJ9kUaWyE2Sxc1jmpARj7rohNmlBz120hOExcPJSF4hafj9hj
	JbocUZOIjf0j1SEeoIGBiE9ph6QfNz4A3ajHBDzlDk7ogB0gDcBuv/O0PadcjKjnCzC31mslgchQy
	F5luu/YcYaBjSH1h/c1ZRLQ8QyIrwZ7Xusa94V7HDs8Y4PKP38Ueu5lDb8w+me6gUHdKdWMlfQRlX
	1y7MEumpjc//PeMgn/uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkCo-0000000EPPs-4C6N;
	Tue, 27 Jan 2026 14:38:12 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkCm-0000000EPPN-3Wfs;
	Tue, 27 Jan 2026 14:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769524689; x=1801060689;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=soGYrhFD8HGAA5+ovmTEgz6N7E7vcHr4DVLewwvW0nc=;
  b=l/hyON5aBENsx0gWHqjbUyS7Llc0HFwa1PV3EtCe4qyC+WEYuuQE3tNL
   P8+d0z0OF9dq117574YKvULslRoN+fzGsOxZ9xPArcuvHtgOlg24wYf+D
   WCkNL0+FC+al8sOp5vSsBZrjF+jO8ledkCGMcBhHa2QQdQZXg66BHFwXI
   +iKiLKLQxhkhzr2oxlg3NSBLsXk81hUK0zR8/WpHAYTdjixLHviJEqe3+
   qe/U8UKVrBqNOgGcOQIN1jYwSRob06PyQX64YUO0KRm3TLRcdMXCzdooU
   em/HMa8fd9K5eqp1/e3uKfwcNHTyeKynp1XEPz+kHKsQlreCCwmblzek2
   g==;
X-CSE-ConnectionGUID: dIUIQmyLT8GnYFV6R3QngA==
X-CSE-MsgGUID: EcIu7+Q7Rz+godux0vwkiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58292631"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="58292631"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 06:38:06 -0800
X-CSE-ConnectionGUID: 6BEQmkULSjeFSgAkWi9eMw==
X-CSE-MsgGUID: teVvWAdzRa+SiD5ECSvqPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="207888513"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 06:38:02 -0800
Date: Tue, 27 Jan 2026 16:38:00 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 1/4] uapi: Provide DIV_ROUND_CLOSEST()
Message-ID: <aXjNyHaJDHoCPRJO@smile.fi.intel.com>
References: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
 <20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
 <baf075b2370a13cddd597a3d421b5f39290d87a4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baf075b2370a13cddd597a3d421b5f39290d87a4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_063808_889943_58017BAC 
X-CRM114-Status: GOOD (  26.81  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Haneen Mohammed <hamohammed.sa@gmail.com>, Louis Chauvet <louis.chauvet@bootlin.com>, kernel@collabora.com, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, Melissa Wen <melissa.srw@gmail.com>, linux-rockchip@lists.infradead.org, Diederik de Haas <diederik@cknow-tech.com>, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Robert Mader <robert.mader@collabora.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jan 27, 2026 at 03:58:13PM +0200, Jani Nikula wrote:
> On Tue, 27 Jan 2026, Cristian Ciocaltea <cristian.ciocaltea@collabora.com> wrote:
> > Currently DIV_ROUND_CLOSEST() is only available for the kernel via
> > include/linux/math.h.
> >
> > Expose it to userland as well by adding __KERNEL_DIV_ROUND_CLOSEST() as
> > a common definition in uapi.
> >
> > Additionally, ensure it allows building ISO C applications by switching
> > from the 'typeof' GNU extension to the ISO-friendly __typeof__.
> 
> I am not convinced that it's a good idea to make the implementation of
> kernel DIV_ROUND_CLOSEST() part of the kernel UAPI, which is what this
> change effectively does.
> 
> I'd at least like to get an ack from Andy Shevchenko first (Cc'd).

Thanks for Cc'ing me!

So, the history of the DIV_ROUND_UP() to appear in UAPI is a response to
the ethtool change that missed the fact that this was a kernel internal macro.
Giving a precedent there is no technical issues to add DIV_ROUND_CLOSEST()
to UAPI as proposed. Main question here is: Does DRM headers in question
(that are going to use it) really need this?

Interestingly that DRM also started using __KERNEL_DIV_ROUND_UP() in UAPI
at some point, which kinda makes an argument for allowing the other one.

Also fun fact: this series plead for a new macro for division while ignoring
existing (UAPI) macros for masks and bits.

0xffffU is effectively __GENMASK(15, 0). (And if you change the code, avoid
using variables inside GENMASK() macros, it may generate an awful code, the
GENMASK($HI, $LO) << foo is preferred over GENMASK(foo + $DELTA, foo) case.
GENMASK(foo - 1, 0) OTOH is fine, however be always careful against overflows
with left shifts, as BIT(foo) - 1 may not work for foo == 32, while GENMASK()
may not work for foo == 0).

So, I have no objections for either choice
Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

...

But if you go that direction, please, fix up the style.

> > +/*
> > + * Divide positive or negative dividend by positive or negative divisor
> > + * and round to closest integer. Result is undefined for negative
> > + * divisors if the dividend variable type is unsigned and for negative
> > + * dividends if the divisor variable type is unsigned.
> > + */
> > +#define __KERNEL_DIV_ROUND_CLOSEST(x, divisor)(		\
> > +{							\

Use ({ on this line together...

> > +	__typeof__(x) __x = x;				\
> > +	__typeof__(divisor) __d = divisor;		\

+ blank line here.

> > +	(((__typeof__(x))-1) > 0 ||			\
> > +	 ((__typeof__(divisor))-1) > 0 ||		\
> > +	 (((__x) > 0) == ((__d) > 0))) ?		\
> > +		(((__x) + ((__d) / 2)) / (__d)) :	\
> > +		(((__x) - ((__d) / 2)) / (__d));	\
> > +}							\
> > +)

...as here join }) to be a single line.

+ blank line.

> >  #endif /* _UAPI_LINUX_CONST_H */

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
