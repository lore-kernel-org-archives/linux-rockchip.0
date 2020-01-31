From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v4 5/6] media: rkvdec: Add the rkvdec driver
Date: Fri, 31 Jan 2020 08:53:47 -0300
Message-ID: <739f60a89646cc92f26e34523cbe8aaab5697351.camel@collabora.com>
References: <20200129195501.8317-1-ezequiel@collabora.com>
                <20200129195501.8317-6-ezequiel@collabora.com>
         <20200130171249.3ae0444a@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200130171249.3ae0444a-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2020-01-30 at 17:12 +0100, Boris Brezillon wrote:
> On Wed, 29 Jan 2020 16:55:00 -0300
> Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> 
> > From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > 
> > The rockchip vdec block is a stateless decoder that's able to decode
> > H264, HEVC and VP9 content. This commit adds the core infrastructure
> > and the H264 backend. Support for VP9 and HEVS will be added later on.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> > v4:
> > * Make poc tables const, as suggested by Hans
> > * Move buffer extra space calculation TRY_FMT, as done on Hantro.
> > * Get rid of vb2_request_get_buf and open-code
> >   following Cedrus. We can move it to a helper as a follow-up patch.
> 
> Well, we know what that means in practice :-).
> 

Well, not necesarily. I think we can expect a helper soon,
but it doesn't have to be part of this series :-)

And perhaps we can find another way to link a media request
to a vb2 queue, so we don't have to iterate over objects
like we are doing now?

> > new file mode 100644
> > index 000000000000..1293b3621364
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec/rkvdec-regs.h
> > @@ -0,0 +1,239 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Rockchip VPU codec driver
> > + *
> > + * Copyright (C) 2015 Rockchip Electronics Co., Ltd.
> > + *	Jung Zhao <jung.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > + *	Alpha Lin <alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
> Oops, looks like I forgot to remove the license text here. Also not
> entirely sure the copyrights are correct (might be a copy from the
> hantro driver instead of the rkvdec one).
> 

Right.

> 
> > diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> > new file mode 100644
> > index 000000000000..529ef86510d3
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec/rkvdec.h
> > @@ -0,0 +1,124 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Hantro VPU codec driver
> > + *
> > + * Copyright 2018 Google LLC.
> > + *	Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> > + *
> > + * Based on s5p-mfc driver by Samsung Electronics Co., Ltd.
> > + * Copyright (C) 2011 Samsung Electronics Co., Ltd.
> > + */
> 
> This header has been copied from the hantro driver, so it's most likely
> wrong.
> 

Oh, I totally missed this.

Thanks for reviewing!
Ezequiel
