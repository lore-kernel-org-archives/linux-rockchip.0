Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A410BCD98D2
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 07:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxcHruF7y9nfRU9t53jDGZwT5jQSm/yFvFq3dJ586Eo=; b=a/8Z0/Ni9YVWmx
	6IF/Lq8xN0iO2dlAwJvr63yyeGL/qI8I7WTR0oYkkuba0IHmHiOusyomkE1vrLwwMZezwlhyNLrQS
	qfQoHwyq32+HdfSzr4F0hnV7plsuMNlRQPfU/6flMUh6Kzu6YClIHIQ1AuggPahJRa2VCT0KZK2jE
	wQewaMTM4UmNBS3H37lXDqgwv4+KZoVBq5KbTM4hxZPSueiedPJXoSDmO6QvDq5y0rIfKtTMAGFRK
	pV9S6WJAonMIKqVKijnFocqcdrAlx251nT7O7nt7X1s9xP+356WH5kGy7eU7fyNod1IXNNgS+LsRD
	LOlKXKB7FTZJQfNoDvIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZNu0-0000000FLUG-40wM;
	Tue, 16 Jun 2026 07:08:06 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZNty-0000000FLTq-1vVK
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 07:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781593682; x=1813129682;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6VM7jc9R1gEM32HSIpFUN3c90rfM663B27FZqdR+IAU=;
  b=Y09qziiCuZ4cbeKdqEp5KpqSTZoBsCFrNrGFmCbE+mP+tohHO1c59/73
   Vsf63Dc1TmyS5F6fhmp5oB3ZjidL9x/Z98MX8o7vuuY17+l8EuyeEoavz
   aPy7duk5eRmtfgtg1Yo10oKu03A79rQ00nQ6sjj/Vl4fib6OCrRvgQzx9
   SyrC1l6q+qyH2jpfoJdXRiGqeMa/r0YJwqP/P+/eYvCmwrP6Skc797jW6
   nfNUQF+vWx9YXYNCAg+mYJacjPw0nNiTGKkc1q0k6MupxDqXk3f/Cdl+q
   +GktzUbyaxcUQk/5su2fPvPOOwWO5M+55VUuVx8YP5AgvCwSSJwYIoGWk
   w==;
X-CSE-ConnectionGUID: QhedTYx/QU2q86GTEdj0kg==
X-CSE-MsgGUID: sHw7Mn9/RIGjkrY/UWiWDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93022156"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; 
   d="scan'208";a="93022156"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 00:08:01 -0700
X-CSE-ConnectionGUID: g2utfKS+TjO2va+u+sy5tw==
X-CSE-MsgGUID: bfYpWz+wRsS2RhiGl5SDuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; 
   d="scan'208";a="285803987"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 00:07:57 -0700
Date: Tue, 16 Jun 2026 10:07:55 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V12 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <ajD2S8nBhRn1-C_G@ashevche-desk.local>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
 <20260611202607.85376-8-macroalpha82@gmail.com>
 <ai_gIR2d9fzHLZ-G@ashevche-desk.local>
 <PH0PR19MB997338010EC6FA92E0AA63875FA5E62@PH0PR19MB997338.namprd19.prod.outlook.com>
 <ajAVI0KXkx3FM1ZX@ashevche-desk.local>
 <PH0PR19MB9973380BF26E3EF16BD2D35ED0A5E62@PH0PR19MB997338.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR19MB9973380BF26E3EF16BD2D35ED0A5E62@PH0PR19MB997338.namprd19.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_000802_570311_52FADB06 
X-CRM114-Status: GOOD (  17.50  )
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

On Mon, Jun 15, 2026 at 11:40:31AM -0500, Chris Morgan wrote:
> On Mon, Jun 15, 2026 at 06:07:15PM +0300, Andy Shevchenko wrote:
> > On Mon, Jun 15, 2026 at 09:51:40AM -0500, Chris Morgan wrote:
> > > On Mon, Jun 15, 2026 at 02:21:05PM +0300, Andy Shevchenko wrote:
> > > > On Thu, Jun 11, 2026 at 03:26:04PM -0500, Chris Morgan wrote:

...

> > > > > +	for (i = 5; i < ARRAY_SIZE(inv_icm42607_accel_odr); ++i) {
> > > > 
> > > > Why pre-increment? Same for all other cases.
> > > 
> > > The register starts at 5 and all values below 5 are invalid. Starting
> > > this increment at 5 ensures we don't expose invalid values to
> > > userspace.
> > 
> > It doesn't explain pre-increment. Post-increment should work as is.
> 
> The array this references starts at 5, because those correspond to the
> values written to the odr register. That said, I do see a bug because
> the odr register is from highest to smallest and this array is
> backwards in the accel and gyro code. I'll fix that.

Good we even managed to find a bug, but what I initially pointed out is simply
as ++i versus i++. When I see ++i, it rises a flag: "this code is special", but
looking closer, I see nothing special about it.

> > > > > +		if (i == odr)
> > > > > +			break;
> > > > > +	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
