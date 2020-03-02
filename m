From: Mauro Carvalho Chehab <mchehab+huawei-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v6 2/6] media: v4l2-core: Add helpers to build the H264
 P/B0/B1 reflists
Date: Mon, 2 Mar 2020 16:21:00 +0100
Message-ID: <20200302162100.72696380@coco.lan>
References: <20200220163016.21708-1-ezequiel@collabora.com>
        <20200220163016.21708-3-ezequiel@collabora.com>
        <20200302142433.0ad1b383@coco.lan>
        <20200302154426.5fb09f91@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200302154426.5fb09f91-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Em Mon, 2 Mar 2020 15:44:26 +0100
Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> escreveu:

> On Mon, 2 Mar 2020 14:24:33 +0100
> Mauro Carvalho Chehab <mchehab+huawei-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> 
> > Em Thu, 20 Feb 2020 13:30:12 -0300
> > Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> escreveu:
> >   
> > > From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > 
> > > Building those list is a standard procedure described in section
> > > '8.2.4 Decoding process for reference picture lists construction' of
> > > the H264 specification.
> > > 
> > > We already have 2 drivers needing the same logic (hantro and rkvdec) and
> > > I suspect we will soon have more.
> > > 
> > > Let's provide generic helpers to create those lists.
> > > 
> > > Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > ---
> > >  drivers/media/v4l2-core/Kconfig     |   4 +
> > >  drivers/media/v4l2-core/Makefile    |   1 +
> > >  drivers/media/v4l2-core/v4l2-h264.c | 258 ++++++++++++++++++++++++++++
> > >  include/media/v4l2-h264.h           |  85 +++++++++
> > >  4 files changed, 348 insertions(+)
> > >  create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
> > >  create mode 100644 include/media/v4l2-h264.h
> > > 
> > > diff --git a/drivers/media/v4l2-core/Kconfig b/drivers/media/v4l2-core/Kconfig
> > > index 39e3fb30ba0b..8a4ccfbca8cf 100644
> > > --- a/drivers/media/v4l2-core/Kconfig
> > > +++ b/drivers/media/v4l2-core/Kconfig
> > > @@ -45,6 +45,10 @@ config VIDEO_PCI_SKELETON
> > >  config VIDEO_TUNER
> > >  	tristate
> > >  
> > > +# Used by drivers that need v4l2-h264.ko
> > > +config V4L2_H264
> > > +	tristate
> > > +
> > >  # Used by drivers that need v4l2-mem2mem.ko
> > >  config V4L2_MEM2MEM_DEV
> > >  	tristate
> > > diff --git a/drivers/media/v4l2-core/Makefile b/drivers/media/v4l2-core/Makefile
> > > index 786bd1ec4d1b..c5c53e0941ad 100644
> > > --- a/drivers/media/v4l2-core/Makefile
> > > +++ b/drivers/media/v4l2-core/Makefile
> > > @@ -21,6 +21,7 @@ obj-$(CONFIG_VIDEO_V4L2) += v4l2-dv-timings.o
> > >  obj-$(CONFIG_VIDEO_TUNER) += tuner.o
> > >  
> > >  obj-$(CONFIG_V4L2_MEM2MEM_DEV) += v4l2-mem2mem.o
> > > +obj-$(CONFIG_V4L2_H264) += v4l2-h264.o
> > >  
> > >  obj-$(CONFIG_V4L2_FLASH_LED_CLASS) += v4l2-flash-led-class.o
> > >  
> > > diff --git a/drivers/media/v4l2-core/v4l2-h264.c b/drivers/media/v4l2-core/v4l2-h264.c
> > > new file mode 100644
> > > index 000000000000..4f68c27ec7fd
> > > --- /dev/null
> > > +++ b/drivers/media/v4l2-core/v4l2-h264.c
> > > @@ -0,0 +1,258 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * V4L2 H264 helpers.
> > > + *
> > > + * Copyright (C) 2019 Collabora, Ltd.
> > > + *
> > > + * Author: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > + */
> > > +
> > > +#include <linux/module.h>
> > > +#include <linux/sort.h>
> > > +
> > > +#include <media/v4l2-h264.h>
> > > +
> > > +/**
> > > + * v4l2_h264_init_reflist_builder() - Initialize a P/B0/B1 reference list
> > > + *				      builder
> > > + *
> > > + * @b: the builder context to initialize
> > > + * @dec_params: decode parameters control
> > > + * @slice_params: first slice parameters control
> > > + * @sps: SPS control
> > > + * @dpb: DPB to use when creating the reference list
> > > + */
> > > +void
> > > +v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
> > > +		const struct v4l2_ctrl_h264_decode_params *dec_params,
> > > +		const struct v4l2_ctrl_h264_slice_params *slice_params,
> > > +		const struct v4l2_ctrl_h264_sps *sps,
> > > +		const struct v4l2_h264_dpb_entry *dpb)    
> > 
> > The prototype here is not nice...
> >   
> > > +{
> > > +	int cur_frame_num, max_frame_num;
> > > +	unsigned int i;
> > > +
> > > +	max_frame_num = 1 << (sps->log2_max_frame_num_minus4 + 4);
> > > +	cur_frame_num = slice_params->frame_num;
> > > +
> > > +	memset(b, 0, sizeof(*b));
> > > +	if (!(slice_params->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC))
> > > +		b->cur_pic_order_count = min(dec_params->bottom_field_order_cnt,
> > > +					     dec_params->top_field_order_cnt);
> > > +	else if (slice_params->flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
> > > +		b->cur_pic_order_count = dec_params->bottom_field_order_cnt;
> > > +	else
> > > +		b->cur_pic_order_count = dec_params->top_field_order_cnt;
> > > +
> > > +	for (i = 0; i < 16; i++) {
> > > +		u32 pic_order_count;
> > > +
> > > +		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
> > > +			continue;
> > > +
> > > +		b->refs[i].pic_num = dpb[i].pic_num;    
> > 
> > ... as you're expecting a fixed number of elements at DPB array, and using
> > a magic number (16) inside the for loop.  
> 
> I used to have a '#define V4L2_H264_NUM_DPB_ENTRIES 16' but have been
> told that this is an arbitrary limitation (the spec does not explicitly
> limit the DPB size, even if all the HW we've seen seem to limit it to
> 16).

Yeah, 16 seems an arbitrary limitation to me too. Yet, the way it
is, the code still has this arbitrary limit, except that it is now
split into different places, making worse to change if we ever need
to extend it.

At least with a define, if we need to change it to, let's say, 32,
it would be just a matter of changing the #define.

> Maybe we can pass the DPB array size as an argument so it stays
> HW-specific.

That would work too, but then you'll likely need to add dynamic
allocation for the structs, with would add more complexity without
a real use-case.

> 
> >   
> > > +
> > > +		/*
> > > +		 * Handle frame_num wraparound as described in section
> > > +		 * '8.2.4.1 Decoding process for picture numbers' of the spec.
> > > +		 * TODO: This logic will have to be adjusted when we start
> > > +		 * supporting interlaced content.
> > > +		 */
> > > +		if (dpb[i].frame_num > cur_frame_num)
> > > +			b->refs[i].frame_num = (int)dpb[i].frame_num -
> > > +					       max_frame_num;
> > > +		else
> > > +			b->refs[i].frame_num = dpb[i].frame_num;
> > > +
> > > +		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD))
> > > +			pic_order_count = min(dpb[i].top_field_order_cnt,
> > > +					      dpb[i].bottom_field_order_cnt);
> > > +		else if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_BOTTOM_FIELD)
> > > +			pic_order_count = dpb[i].bottom_field_order_cnt;
> > > +		else
> > > +			pic_order_count = dpb[i].top_field_order_cnt;
> > > +
> > > +		b->refs[i].pic_order_count = pic_order_count;
> > > +		b->unordered_reflist[b->num_valid] = i;
> > > +		b->num_valid++;
> > > +	}
> > > +
> > > +	for (i = b->num_valid; i < ARRAY_SIZE(b->unordered_reflist); i++)
> > > +		b->unordered_reflist[i] = i;
> > > +}
> > > +EXPORT_SYMBOL_GPL(v4l2_h264_init_reflist_builder);
> > > +
> > > +static int v4l2_h264_p_ref_list_cmp(const void *ptra, const void *ptrb,
> > > +				    const void *data)
> > > +{
> > > +	const struct v4l2_h264_reflist_builder *builder = data;
> > > +	u8 idxa, idxb;
> > > +
> > > +	idxa = *((u8 *)ptra);
> > > +	idxb = *((u8 *)ptrb);
> > > +
> > > +	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {    
> > 
> > Where do you ensure that idxa and idxb won't be bigger than NUM_DPB_ENTRIES?  
> 
> If it does that means something went wrong in the init func. 

Well, this is a library code. We know that the init function won't
do that, but the core doesn't really know if the driver didn't change
the refs for some reason. If it does, it will go past the array index,
with can be very bad. So, I would try to either re-work this sorting
code to prevent going out of refs[] array or add some code to bail out
if this ever happen.

> I can add
> a WARN_ON() and bail out if you want, but I can't return an error here
> (that's not what the caller of the callback expects).


Thanks,
Mauro
