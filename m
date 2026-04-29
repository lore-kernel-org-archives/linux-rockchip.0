Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75AABCCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 19:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADwuNoCA4Cqu75x9aykTacOvCS9/ANk1sktz6tVNF4A=; b=z4XFSsEYJZz9FN
	q6vFzZtWWtSLuhFlwlxMRyfw+IHzFEJR8dsYG+zIdlFVVf+D0uGG1KqeuWlWhIlQTWjtoZx26xu8A
	n/559oM8QpOufpMo8F0GgfGn5fJ52Zg1XjTpUsv3jc/1//b0mJWpK48xPn42MoAaJ/T0YWqy4MjXI
	9/d2tcqLCKDhv4rNxlj9zEb7CHk+J+xi6NfPCjA1BmjxmqtICNq4Av1PciTeKjGIUuefOMyKvySBo
	X1eMbZgoLNGZG79jPmgGfOrb2NGplm+nuMgIqmv2AV1mcerbrQQ0wniMI1TdwA43ScWH3oqfhgury
	oQcBeDYKxmmwIP6PPRZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIAsH-000000049sv-3Gbn;
	Wed, 29 Apr 2026 19:47:09 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIAsE-000000049sL-32NX
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 19:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777492027; x=1809028027;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6zMJPlCzBFsIzmH9C7DCUzlFezjuerKEUd/NjhQDdwg=;
  b=AAFpEmuZRBW9xyzwPIkm78MzGQiIhfwmTyGzkUne761zK5aLCdCYvukl
   YhdZZHicMdUM4xMgVxnD0TJOzMSKrlVsi74HOWWx+nz+RShbwT5Xdb0Yq
   SdnbsqGsLs7TzqncysrMqIQsNVgrcG14yOvQAxskViXuqiJ9iGlkpIU1A
   ozokLtfMZ7xT63a9H8d2G/+adTwAvr6mfH7KIaGIwTKMl73IUGFn4xW1g
   yAIJs9VlDzLZUM9fBO0XwECKvpftjUM3ti1rGO7phwMWhBkb55bZeVgk2
   Fxm8rvwQ7l/81vzLcL58dIIdRB7lVav12h43BcWhdrADAJpnaTHTiWHrh
   w==;
X-CSE-ConnectionGUID: isjnoI74QgiOMAbfaxXsmA==
X-CSE-MsgGUID: Owu59K+rRXi2wZmNFvXGEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="88742526"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="88742526"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 12:47:05 -0700
X-CSE-ConnectionGUID: lM+CHRiGTVqpdkJdp+sBHQ==
X-CSE-MsgGUID: vweuhPFcRfqvaT4k8qwKTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="227858748"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.141])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 12:47:01 -0700
Date: Wed, 29 Apr 2026 22:46:59 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH V3 6/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <afJgM5DhK6Repa1d@ashevche-desk.local>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-7-macroalpha82@gmail.com>
 <f1ae57fe-1ad5-46ee-9f0c-245f4deec7ce@baylibre.com>
 <PH0PR19MB997338EE6A13BD08879C4B9B2BA5372@PH0PR19MB997338.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR19MB997338EE6A13BD08879C4B9B2BA5372@PH0PR19MB997338.namprd19.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_124706_833151_6FC90A3B 
X-CRM114-Status: GOOD (  17.19  )
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

On Tue, Apr 28, 2026 at 09:01:12AM -0500, Chris Morgan wrote:
> On Fri, Apr 10, 2026 at 05:59:05PM -0500, David Lechner wrote:
> > On 3/30/26 2:58 PM, Chris Morgan wrote:

...

> > > +/* IIO format int + nano */
> > 
> > Usually we make these 2-D arrays for readability and then cast to int * if needed.
> > 
> > > +static const int inv_icm42607_accel_scale[] = {
> > > +	/* +/- 16G => 0.004788403 m/s-2 */
> > > +	[2 * INV_ICM42607_ACCEL_FS_16G] = 0,
> > > +	[2 * INV_ICM42607_ACCEL_FS_16G + 1] = 4788403,
> > > +	/* +/- 8G => 0.002394202 m/s-2 */
> > > +	[2 * INV_ICM42607_ACCEL_FS_8G] = 0,
> > > +	[2 * INV_ICM42607_ACCEL_FS_8G + 1] = 2394202,
> > > +	/* +/- 4G => 0.001197101 m/s-2 */
> > > +	[2 * INV_ICM42607_ACCEL_FS_4G] = 0,
> > > +	[2 * INV_ICM42607_ACCEL_FS_4G + 1] = 1197101,
> > > +	/* +/- 2G => 0.000598550 m/s-2 */
> > > +	[2 * INV_ICM42607_ACCEL_FS_2G] = 0,
> > > +	[2 * INV_ICM42607_ACCEL_FS_2G + 1] = 598550,
> > > +};
> 
> I've gone through and implemented all of the changes everyone suggested, though
> this is one of the few on which I had a question. Obviously this driver was
> cobbled together from 2 different sources and checked to the best of my ability
> and tested/validated against the data sheet, but there are a few bits I'm not
> fully clear on such as this.

> What's the correct way to represent this data? Since it looks like one of the
> values is always 0, should I just assume it's always 0 and only represent the
> values that change in this scale?

Isn't the comment is clear about that? The first one is integer, the second one
is fraction. So, no, your assumption is wrong strictly speaking.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
