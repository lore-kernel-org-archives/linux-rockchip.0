Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3163C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 16:56:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 468FF61261
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 16:56:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 468FF61261
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nmY4ND7zMcB3VDQGosCmLKTmsXP1Hsvlqcl7aywas4=; b=eWSlL0LkqGIO/u
	Mr52uvR0+T78NH8XlMYRs/Npgnw73sRM1QJBHrWOc4zNqY78xupvfHjVA3ti2AypvUj6GWmBULpO2
	xWXEa6TXiVjl4oFjrR4KpgGA5sIeTnwVCd6KnTd0NveR43ymfpFUKNb+wUBI1OmxEjaQ+Fa3uDs8M
	+4RB9KbshYe5yY7LW5hCEMUSeAA7nZS5wsLP0ebkm81UaISRBXoaqN2sVCL8wHvcaBNE3M2bxEzGf
	qBuAb0ZOAKSL+Fb2XQY8+6SBRxar0EzZQZAYOlFsgvlXE1IbnjAARDo+OI+RQ2uUaycGMst69DHCy
	gM1UnZsfzU6Ju2Q/7izQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnkiP-008PcL-Th; Thu, 18 Nov 2021 16:56:49 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnkiD-008PbR-LK; Thu, 18 Nov 2021 16:56:38 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="234065032"
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="234065032"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 08:56:36 -0800
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="536763721"
Received: from smile.fi.intel.com ([10.237.72.184])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 08:56:32 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mnki0-008EVc-OC; Thu, 18 Nov 2021 18:56:24 +0200
Date: Thu, 18 Nov 2021 18:56:24 +0200
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
Message-ID: <YZaFuGZ4AEN8HjUv@smile.fi.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <CACRpkdZ2-MRY_L2J4RvKDNW1yyThg7KUFbd80ZMpRY209RNxnw@mail.gmail.com>
 <YZJDFhMNyRaH+HFE@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZJDFhMNyRaH+HFE@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_085637_772332_B00EAF8C 
X-CRM114-Status: GOOD (  17.70  )
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

On Mon, Nov 15, 2021 at 01:23:02PM +0200, Andy Shevchenko wrote:
> On Tue, Nov 09, 2021 at 12:42:00PM +0100, Linus Walleij wrote:
> > On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > 
> > > We have a few users already that basically want to have array of
> > > sequential strings to be allocated and filled.
> > >
> > > Provide a helper for them (basically adjusted version from gpio-mockup.c).
> > >
> > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > 
> > Fulfils Rusty Russell's API design hierarchy requirements
> > and help people to make less mistakes so:
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Thanks!
> 
> Should I resend, take into mine PR, or you just apply it as is?
> 
> As I answered previously the series doesn't require additional work
> from my perspective.

Okay, I'm about to send a PR to you and Bart for this.
Does it sound good?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
