Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5222CD343F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 20:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6EfBgoSXK60zTksaKfyZmk5A4VAKytBYvVz7qPdxs8=; b=PRrCRPDFim2y52
	3imk/7z4R+QYi2nTmOXZETHxB6vUZGayxdUnhNQQYhXk+u4i76xo6Z9jeCGPMVdMvxkn6qB3v512N
	QN1Q8XMHXPdG6+JVAfA9hpBPSsnNetP57EJMiXfWcFzxM6FB+YkL4NuUxMA4JkiL+PcOFE7QoLIyX
	3ieiv0KGeSwB6XdnupgI4ppjQAiLrTjphqWFrlhlbqr0fJMP4fx+2jt9QptlVfBpqvx4KGTpQh/P2
	yLOKA9wxbwtEdxcD1WfdwWSjGDBtlXotv3UhNmgOp+byeN9QGQlwUUCQvhuUGP1QObRmAKb9UX6hz
	zjuB+p5RX2EIhba8y7+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMtNY-00000000IHR-12pN;
	Tue, 12 May 2026 20:06:56 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMtNV-00000000IGh-32TS
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 20:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778616413; x=1810152413;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=A3BxN281PT5rUnAJb5+V9/2gOQ2KSzOgieKPmyoh/pY=;
  b=Riuvf3H8//q7G0sb8zvRcPAjUXDb9jwbZFP8Hqud9qO+vk1jX+eC675C
   8D9Z9sflqCX2ZOSortBrqburjmpDYSaJvVquVVKOTNF1Q1y+e7S8ecXYz
   zBJweCmGVwVhW1P7DWl5EEvrlcvljumvsfGkVlfnUzqN0eARG1bEvbnNm
   yQkBBKnAyJZBEyjqAP31I6JtWmzwJ7j5MdanTgfX3R2CjFyE3oz3IyfMr
   zuz5uTUTvOpLwZredrq7q4/YLXvEm4Mv2kWzfWQgGe+wkhAreN12uqB0x
   NLrtIJCBxages3zl/vmmngM4q/0xkvPOYAPPNJejqCuD4PwiBd7HTgMjj
   A==;
X-CSE-ConnectionGUID: 2+45sMJSRPKRPtg7v3vFvA==
X-CSE-MsgGUID: zPH8ZsrzTPmth/SHuK+HyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90235344"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; 
   d="scan'208";a="90235344"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 13:06:51 -0700
X-CSE-ConnectionGUID: fB5s0Bl1Q/yFcyCchVcgug==
X-CSE-MsgGUID: Gu9jvxAHRcGaLxis4W+0Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; 
   d="scan'208";a="231478266"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.244])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 13:06:48 -0700
Date: Tue, 12 May 2026 23:06:46 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 04/11] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <agOIVqDOr1LsdSi8@ashevche-desk.local>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
 <20260509191907.24734-5-macroalpha82@gmail.com>
 <20260511184715.241be1f1@jic23-huawei>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260511184715.241be1f1@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_130653_773638_68CE3087 
X-CRM114-Status: GOOD (  10.65  )
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

On Mon, May 11, 2026 at 06:47:15PM +0100, Jonathan Cameron wrote:
> On Sat,  9 May 2026 14:18:58 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:

...

> > +static const struct regmap_range_cfg inv_icm42607_regmap_ranges[] = {
> > +	{
> > +		.name = "user bank",

> > +		.range_min = 0x0000,

range_min == 0 is a bug for sure. Yet it may work with current regmap
implementation, it has to be fixed. See, for example, this pending patch:
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/ci.git/commit/?h=regmap-warn-range-overlap&id=062bb97410835055036490c96cf77898f90d34ea

> > +		.range_max = 0x00FF,
> > +		.window_start = 0,
> > +		.window_len = 0x0100,

This makes no sense. If you have a page enabled the range max has to be PAGES *
window_len value. This suggests that we have a single page, means no paging is
used. Very confusing.

...

> > +const struct regmap_config inv_icm42607_regmap_config = {
> > +	.reg_bits = 8,
> > +	.val_bits = 8,
> > +	.max_register = 0x00FF,
> > +	.ranges = inv_icm42607_regmap_ranges,
> > +	.num_ranges = ARRAY_SIZE(inv_icm42607_regmap_ranges),

> > +	.cache_type = REGCACHE_NONE,

Why no cache?

> > +};

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
