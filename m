Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B055EC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15j6YtuTONK65sPgsaJwBj50m28xhvgFj1Cy/aJ+NuU=; b=sxKqkORSttDSIi
	Dtm+DL5sg5zzcz+H4FHZYoy1tURfZ+Y3Uir5h8zrnka+LteDh/JTi3vdkaYMhu+EjIIJOOLmg0MzV
	STUBnLdDrDlYWSzvOWVm+VmT+KNicjoI6STLn/XfNe+Xog4t8+pajg+Vpy6YiyFBdN8ns8XNVy5G7
	tk0RdWg/rQJFP5FQPW5I7eT80Wa6q76ajE1D9DyrOccu5KTvOzcMnwNscVEfx1wL+iOZkgMA2NHuA
	XE7TUlgkIrVsHsbd595d0TgDr7iYF/KtK0Muetd1kdosp+7/4UcISFG+lJce7oKytNRopcQ8K78/E
	iif695eqSq8Rj159QJYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVtq-0000000HEQw-3dyC;
	Fri, 23 Aug 2024 15:08:26 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVt3-0000000HEG6-2H1W;
	Fri, 23 Aug 2024 15:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724425657; x=1755961657;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KrxfLjfJjlShOD1C+qxu/A9SxRnr7g1mJqORfWxA6to=;
  b=IktRNcddCFOKe97ZnJohs4lc6yGSEOwSSl5960CPab5Z6XkbmE3R5JBF
   YSIF8v2q7QtlOyhVAjvlHUlQgm6WPkOaTkK5e/lblnWouE19eS6YTSnEG
   S/a9a4jUwA0eXoKpR54H8sdmAQFb+jCV/WNU1Vv6gf0Ml3Gm8u2wg+2V5
   BQUB+FcZJGcJsXlxgStIDPfKhN2AqLQIFl8JImuGhirT9TdbEFZP6b74j
   g74T1hJtukMT+U1j457GOfCpUKt9hB0UjA3N6dShEJkLox9EB81cWJSb1
   HM6+//avzvDpVZneg96tT1rc7BMKDCsnnvfOd9H+8jz3ahqz1vZ8oZpk7
   g==;
X-CSE-ConnectionGUID: gTGGP7NrSwy9rZA0RskDSg==
X-CSE-MsgGUID: SVcWpX44QH21PpQ68Md+ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="25791026"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="25791026"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 08:07:37 -0700
X-CSE-ConnectionGUID: MuScuZy7R22SZNk+9lg/Lw==
X-CSE-MsgGUID: D5EKYwsdRl+laFMjUpiTsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="62122231"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 08:07:33 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVsw-00000000pXi-1rLR;
	Fri, 23 Aug 2024 18:07:30 +0300
Date: Fri, 23 Aug 2024 18:07:30 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org,
	brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: Update the GPIO driver
Message-ID: <ZsilskITKomY1gpG@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <1195a341c0206b08318ca90af0b9cb00@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1195a341c0206b08318ca90af0b9cb00@manjaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_080737_609898_6B0590E3 
X-CRM114-Status: GOOD (  13.02  )
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

On Fri, Aug 23, 2024 at 09:06:50AM +0200, Dragan Simic wrote:
> Hello Ye,
> 
> On 2024-08-23 05:43, Ye Zhang wrote:
> > GPIO driver support acpi and new version, set input direction in
> > irq_request_resources, fix division error and debounce config error.
> > 
> > Changes since v1:
> > - Split commits with multiple changes into separate commits.
> > - Adjust backportable fix to the forefront.
> > - Modify messages of some commits.
> 
> It seems that you sent a bunch of separate patches, instead of sending
> a patch series.  I believe that wasn't intended or requested, so could
> you, please, resend the v2 patches as a series?

No resend, please!

Rather, address the comments you have got so far and send properly a v3.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
