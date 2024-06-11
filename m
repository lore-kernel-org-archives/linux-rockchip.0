Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2655EC25B76
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 13:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbYCyPZblTCLXKFRkZz35d3bQ0a8tJfAR0thHFxPIdA=; b=hSjpI6KbTMr16Z
	PhRtdUdyX4kJJ/IhAZmOKbDXt76O5m5ZNI9dVERU5edDhR9/ezlk/ge/XHRa+BQ4Tev1zja0DHfWB
	pP5X4iuX3Ui+bBLJOSBnop4kwEcutQbY/SHZMqKhdxzbD3UX+bX099fscuns+MqWK6v+6Xy7e2Jw1
	RzjmSCqDHLk9SWM0Uxbdk3ke4UJJs6rPv8D2BX6cAWSY+eabJDxbShcmF6/1W6FqjZN76xKPJSUXh
	GR4EtcP1CPuXlGy+VZFSRLj7bElkbJuGv1JO6eTMX0KBaWCxYPA43PkjgW5B04Dpw8YJbunJ6VErD
	iGRLx5ilo/xsRuvEsbeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1QA-00000008xFh-2tVZ;
	Tue, 11 Jun 2024 13:20:19 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1Q6-00000008xDM-0yL1;
	Tue, 11 Jun 2024 13:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718112015; x=1749648015;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=scYseydD4W86mLHD0NXDGiB61t/F+N3UuYzCRNJji34=;
  b=L+GQGo+SoEvcMFFT0zQx1dShB0amZgoerSNPz/pinkKQn33qwVEmQFIm
   atL/im3hDCuOjyOFzmBtn7QuZuzwwJ9pjFHG3hbdQm3AzKKQmTPmU3ZCy
   9H8jxkW+vq9vIx0gxN+5ocYhyaATbLLefGjgi6UnpRsQvhsjAt74GzUra
   ATaZEyEDUmhWhPVi/o/RnkAczKlQoxRw5cn4PRb+G6mdmHnmh/bvM7yUe
   /m65xpDiFnvS5kvMw9SQ1u7poghxBMasfKOzKfYCroScT2L8bJcX69i9X
   Gj0IwpdPGWFdpRjiEnPl+m/d+FVljT7p2wxvQIhm5nE6U/DzkzT2acfqo
   Q==;
X-CSE-ConnectionGUID: /LGB0sdvSTeX2tlF2Yeotw==
X-CSE-MsgGUID: I3+pBla+Rty4oh7BdhoXqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14661979"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; 
   d="scan'208";a="14661979"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2024 06:20:13 -0700
X-CSE-ConnectionGUID: yvfEdXfwTOGfTOhvmakTUQ==
X-CSE-MsgGUID: 1s2C84kRRhKD11GcAk+tbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; 
   d="scan'208";a="40022762"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2024 06:20:09 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1sH1Py-0000000FXuW-0YY5;
	Tue, 11 Jun 2024 16:20:06 +0300
Date: Tue, 11 Jun 2024 16:20:05 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: Re: [PATCH v1 2/4] clk: rockchip: Switch to use kmemdup_array()
Message-ID: <ZmhPBccSC0Uc2fjQ@smile.fi.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
 <20240606161028.2986587-3-andriy.shevchenko@linux.intel.com>
 <8182279.JRmrKFJ9eK@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8182279.JRmrKFJ9eK@diego>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_062014_491724_24192F0C 
X-CRM114-Status: GOOD (  10.10  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 07, 2024 at 10:13:04AM +0200, Heiko St=FCbner wrote:
> Am Donnerstag, 6. Juni 2024, 18:09:32 CEST schrieb Andy Shevchenko:

...

> > -		cpuclk->rate_table =3D kmemdup(rates,
> > -					     sizeof(*rates) * nrates,
> > -					     GFP_KERNEL);
> > +		cpuclk->rate_table =3D kmemdup_array(rates, nrates, sizeof(*rates),
> > +						   GFP_KERNEL);
> =

> are you sure the param order is correct?
> =

> According to [0], it's (src, element_size, count, gfp), while above
> (and below) element_size and count seems switched in the
> kmemdup_array calls.

I'm glad you asked. The parameter order is going to be fixed [1].

> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/mm/util.c#n149

[1]: 0ee14725471c ("mm/util: Swap kmemdup_array() arguments")

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
