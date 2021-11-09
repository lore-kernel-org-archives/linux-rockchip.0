Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AEEC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 12:06:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 779F560F58
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 12:06:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 779F560F58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9+jL+YGBSVgGFmNxgqBPmXSBhoXBzjv++t/IybujD8=; b=QI+u4dFhJtsU//
	RxC+9u0K+ZqYpAKF0bmA7T1Zh+sS8pmnBe791vnqBGq3RkV7NqB5Muxjs32XtYSkWpayUC63JMeY9
	chNU8n+8hKI8OCxhwkpdYwGPXQD4GSNJPwokjOhhS+gjd31Ukw0039jmFwkK6E6a2GWU3l3uU7IeY
	gpjUX4Pet36UyEc2vZ9Muc61YzpaB1HAvG+mcufATmv9w5jMkMLGs3rFsDKRLbKNx4ORBavz3caVl
	WDO8m42fStJg9rrelsZ++Gk22z260iWkKm2+CkIpkfft+rXSeIF10BMvf/fWqRZffPFGrquZkyu6x
	6s0Ofn8bDsVWi+LHws9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPt5-001uQL-3S; Tue, 09 Nov 2021 12:06:03 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPsa-001uDl-2U; Tue, 09 Nov 2021 12:05:33 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="231152137"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="231152137"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 04:05:07 -0800
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="588658106"
Received: from smile.fi.intel.com ([10.237.72.184])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 04:05:03 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mkPru-0054hE-NF; Tue, 09 Nov 2021 14:04:50 +0200
Date: Tue, 9 Nov 2021 14:04:50 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 13/19] pinctrl: st: Drop wrong kernel doc annotations
Message-ID: <YYpj4ksl0rnmKYBV@smile.fi.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-13-andriy.shevchenko@linux.intel.com>
 <CACRpkdbUKJVz=pzdw0Egw39gCUTxJRkyNjxOTOqCnJ1k_j406g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbUKJVz=pzdw0Egw39gCUTxJRkyNjxOTOqCnJ1k_j406g@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_040532_169064_0C758161 
X-CRM114-Status: GOOD (  14.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Nov 09, 2021 at 12:32:31PM +0100, Linus Walleij wrote:
> On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> 
> > Kernel doc validator is not happy:
> >
> >   .../pinctrl-st.c:59: warning: This comment starts with '/**', but isn't a kernel-doc comment.
> >   .../pinctrl-st.c:73: warning: This comment starts with '/**', but isn't a kernel-doc comment.
> >
> > Drop them as they are indeed not a kernel doc comments.
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Hm maybe I could just apply this patch, shouldn't collide with anything.
> Let me know your preference.

You may apply whatever patches you want that are precursors for the strarray()
idea. Basically you may apply somewhat 9 patches if I'm not mistaken.
Of course if you have no objections.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
