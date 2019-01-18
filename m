From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [v8,
 2/3] drm/rockchip: Add support for Rockchip Soc RGB output interface
Date: Fri, 18 Jan 2019 13:34:47 +0100
Message-ID: <1636679.fMryThW7k8@phil>
References: <20180830211207.10480-3-heiko@sntech.de>
 <alpine.DEB.2.21.1901180131510.1647@nanos.tec.linutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <alpine.DEB.2.21.1901180131510.1647-ecDvlHI5BZPZikZi3RtOZ1XZhhPuCNm+@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: Kate Stewart <kstewart-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Greg KH <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Thomas,

Am Freitag, 18. Januar 2019, 01:40:03 CET schrieb Thomas Gleixner:
> On Thu, 30 Aug 2018, Heiko Stuebner wrote:
> > +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> > @@ -0,0 +1,173 @@
> > +//SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> > + * Author:
> > + *      Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> 
> The licensing in this file and in the corresponding header is broken.
> 
> > --- /dev/null
> > +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.h
> > @@ -0,0 +1,20 @@
> > +//SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> > + * Author:
> > + *      Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + */
> 
> Both files use the SPDX license identifier for GPL v2 or later, but the
> license notice is clearly v2 only.
> 
> So the copyright holder needs to decide which one. And please remove the
> boiler plate text. It's redundant.

Not sure how to proceed as I haven't seen Sandy around for quite a bit,
but the first versions didn't have a SPDX header and were GPL2-only (v1-v4)
and the SPDX header was added in v5.

So as a stopgap measure, I'd guess we could assume that the copyright
intended GPL2-only?


> Please fix ASAP, add a Fixes tag and cc stable so the inconsistency is
> fixed in 4.20 as well.

ok, once we have the direction of change set.


Heiko
