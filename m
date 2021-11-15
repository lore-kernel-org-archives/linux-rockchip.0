Return-Path: <SRS0=bc75=QC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2214EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 11:23:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4DA561C15
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 11:23:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E4DA561C15
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FY3P9aq3OLyMMWNBfXHKL6Thzdpe1ETHa1eofDm2QgY=; b=3AsaPlnXXIuWqA
	OoPbr+eOQCJXkIhk2SgqjSVKsjq0jxjDhl+ieW61mN3xC1f3sHpFrbav8Lo4cYhi+LY3QJ2JLxb7H
	pmBmur8TBYroPNUJFFu71tl9iuYtFhd+2YFb+Zx+DOtHDxU5wpdievVINUrpOLvpj6cvsF+o43gjD
	+E6zH4PTvNdRt3SgJe3sSjyyRdufSpu7g18dDO+Oq3Mt0eg1Bo7PynEyARCo1H70fqAJOHvXTw2MB
	UHZS2OZS10IQMD78zihsDctJYnPlpulreJs09Hbmc7fXfDho0xMHu8oWIuwl8cCD1ucsOhvgAmC0C
	BSM5ecJaMqqeq/jDYt0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mma5E-00FMLe-Gh; Mon, 15 Nov 2021 11:23:32 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mma4z-00FMGo-Cx; Mon, 15 Nov 2021 11:23:18 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="319633122"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="319633122"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 03:23:16 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="585236645"
Received: from smile.fi.intel.com ([10.237.72.184])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 03:23:12 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mma4l-0072cQ-A0; Mon, 15 Nov 2021 13:23:03 +0200
Date: Mon, 15 Nov 2021 13:23:02 +0200
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
Subject: Re: [PATCH v1 01/19] lib/string_helpers: Introduce
 kasprintf_strarray()
Message-ID: <YZJDFhMNyRaH+HFE@smile.fi.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <CACRpkdZ2-MRY_L2J4RvKDNW1yyThg7KUFbd80ZMpRY209RNxnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZ2-MRY_L2J4RvKDNW1yyThg7KUFbd80ZMpRY209RNxnw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_032317_472484_509040FA 
X-CRM114-Status: GOOD (  13.33  )
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

On Tue, Nov 09, 2021 at 12:42:00PM +0100, Linus Walleij wrote:
> On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> 
> > We have a few users already that basically want to have array of
> > sequential strings to be allocated and filled.
> >
> > Provide a helper for them (basically adjusted version from gpio-mockup.c).
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> Fulfils Rusty Russell's API design hierarchy requirements
> and help people to make less mistakes so:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks!

Should I resend, take into mine PR, or you just apply it as is?

As I answered previously the series doesn't require additional work
from my perspective.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
