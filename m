Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87DDDCD8CAD
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 18:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3R0Y9tcK+ZSC1D5btnHIGeFO2BGqySlLxA54gkhjpX8=; b=HOR8oiDgOf0CG0
	45dSCr6sfciUShigYVv5ueBKunJKqGDKXOwn8vWf0U6ih6hmD9mGuQxsOVJXtOD2Gio0UsNnB4aEW
	qEDGzbZp3lkYcb2lU8TTDNnaA/luB8z96hP+hwkk4iWDegskqRSReZjy2KQjLOtKq90wpu77tVkNs
	6l6tq2AL4MVUYbG6c97HhW3aBBSzz6LP57emZLXpRpkVcs6d5jw2foVildqHs92chu5LYiOPEM90P
	4lf7d0XAhrtaAQ9K8R3VzDQGrMS2zZK8GgbbJ9fYLUtuRUgvsG2kJBYuCTXWBvst4RB1X9cGQiO9d
	E2trfMYBIntIPQQBJB8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX1eL-00000006EYg-2aPB;
	Tue, 09 Jun 2026 18:58:10 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX1eE-00000006EQY-2Ix4
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 18:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781031483; x=1812567483;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qBaTipJIBdrNj5yARfGrmu93QPHd7TPizSBTvXriavg=;
  b=CymRD2rLfiJZ03+g2vDPriaUmPcN1pgMBxym+WDAASCviv7lGCvs8OWB
   PMXJ7/IS8KaipcEuqdmUeKaVFoIuQk9XG8v9dV3nbe52VxyGZkwpEQm/7
   SA3dtKhxPsJWZd/ICA25av/U5K46uQXQI+WI9JcYfgyeIFLUccTfmJl7J
   TH6wYqGZWBSlzDiS/f5AT8OdO8ey2GTjSHXOic/qVtLlHMi8YSeIdSYMU
   KUVVrtlzLpOhrPobfvZHZM6C2NDAOtv5gL4yoRIOS6th2xMz5ALVqiEJt
   efU9TbJMtkfnD6h9n+thJThUwhn2QRs9YfCtE2nic8cRz0pNn+hWRMfx/
   w==;
X-CSE-ConnectionGUID: jDWgmfS1QR+up6B698D9sQ==
X-CSE-MsgGUID: FzWk89CDTTCPYb7xzKv3Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="81553307"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="81553307"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 11:58:02 -0700
X-CSE-ConnectionGUID: Rx+734n5QG2Xmo6vFLT3SQ==
X-CSE-MsgGUID: EvwIZx1rR36cJPrntihkMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="241520510"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.162])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 11:57:58 -0700
Date: Tue, 9 Jun 2026 21:57:55 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V10 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <aihiM5Ao-vuAsUyh@ashevche-desk.local>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
 <20260604201832.60656-4-macroalpha82@gmail.com>
 <aiL0g8d0Y_JeAC5c@ashevche-desk.local>
 <PH0PR19MB99733851DADB0671AE5F76B788A51C2@PH0PR19MB997338.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR19MB99733851DADB0671AE5F76B788A51C2@PH0PR19MB997338.namprd19.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_115802_644597_92B8029C 
X-CRM114-Status: GOOD (  13.40  )
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

On Mon, Jun 08, 2026 at 03:52:38PM -0500, Chris Morgan wrote:
> On Fri, Jun 05, 2026 at 07:08:35PM +0300, Andy Shevchenko wrote:
> > On Thu, Jun 04, 2026 at 03:18:25PM -0500, Chris Morgan wrote:

...

> > > +struct inv_icm42607_sensor_conf {
> > > +	int mode;
> > > +	int fs;
> > > +	int odr;
> > > +	int filter;
> > 
> > All of them are supposed to be signed? Why?

> > > +};
> 
> A later commit will use -1 for invalid values.

Okay, perhaps add a comment on top that negative values will mean invalid case?

...

> > > +#include <linux/delay.h>
> > > +#include <linux/dev_printk.h>
> > > +#include <linux/interrupt.h>
> > > +#include <linux/iio/iio.h>
> > > +#include <linux/module.h>
> > > +#include <linux/mutex.h>
> > > +#include <linux/property.h>
> > > +#include <linux/regmap.h>
> > > +#include <linux/regulator/consumer.h>
> > 
> > IWYU, please.
> 
> This may sound like a dumb question, but what's the best way to invoke
> iwyu for a kernel? None of the readmes or man pages seem to be getting
> me anywhere...

In this list we (I mean community related to IIO) discussed iwyu tool and
its best configuration. Yep, it's barely good and far from ideal, but that's
what we have currently. Otherwise `git grep ...` and cscope are your friends
to answer this. Also doing review on regular basis makes this knowledge
developed better.

...

> It will get extended, so I'll keep this for now if that's okay.

It's okay.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
