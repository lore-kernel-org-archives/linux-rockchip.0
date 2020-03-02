From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v6 5/6] media: rkvdec: Add the rkvdec driver
Date: Mon, 2 Mar 2020 15:30:39 +0100
Message-ID: <20200302153039.0c4ff54f@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
        <20200220163016.21708-6-ezequiel@collabora.com>
        <20200302145746.3e94c1d1@coco.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200302145746.3e94c1d1-qA1ZUp+OV9c@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mauro Carvalho Chehab <mchehab+huawei-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2 Mar 2020 14:57:46 +0100
Mauro Carvalho Chehab <mchehab+huawei-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:

> > +#define M_N(ctxidx, idc0_m, idc0_n, idc1_m, idc1_n,		\
> > +	    idc2_m, idc2_n, intra_m, intra_n)			\
> > +	[0][(ctxidx)] = {idc0_m, idc0_n},			\
> > +	[1][(ctxidx)] = {idc1_m, idc1_n},			\
> > +	[2][(ctxidx)] = {idc2_m, idc2_n},			\
> > +	[3][(ctxidx)] = {intra_m, intra_n}  
> 
> Hmm... I can't even imagine what a macro named "M_N" would do.
> Please use a better name for it.

Well, the meaning of those fields is explained in the spec, and the
name itself has been chosen so it's short enough to not have lines
exceeding 80 chars while still keeping the number of lines used for the
cabac_table[] definition acceptable. But, I'm open to any other
suggestion.

> 
> -
> 
> With regards to the macro itself, at least for my eyes, it looked bad,
> from long-term maintenance PoV, to have a first argument (ctxidx) whose
> value is just a monotonic linearly-incremented counter.

It's not, we have holes in the middle, hence the explicit indexing. I
also tried to have something as close as possible to the spec, so
people can easily see where it comes from.

> 
> I mean, the way it is, it sounds risky, as one might miss a number
> and one entire line of the array would be filled with zeros.

That's exactly why I used explicit indexing: I want specific portions
of the table to be 0-filled :-).

> 
> > +
> > +/*
> > + * Constant CABAC table.
> > + * Built from the tables described in section '9.3.1.1 Initialisation process
> > + * for context variables' of the H264 spec.
> > + */
> > +static const s8 rkvdec_h264_cabac_table[4][464][2] = {
> > +	/* Table 9-12 – Values of variables m and n for ctxIdx from 0 to 10 */
> > +	M_N(0, 20, -15, 20, -15, 20, -15, 20, -15),  
> 
> So, (maybe except if the ctxidx value has some real meaning),
> perhaps you could, instead, switch the array order at the tables,
> and get rid of ctxidx parameter for good, so the above code would
> be like:

I can't switch the array order since the HW expects things to be
organized this way (that table is directly copied to a memory region
that's passed to the HW).

> 
> #define INIT_MN_PAIRS(idc0_m, idc0_n, idc1_m, idc1_n,	\
> 	       idc2_m, idc2_n, intra_m, intra_n)	\
> 	{						\
> 		[0] = {idc0_m, idc0_n},			\
> 		[1] = {idc1_m, idc1_n},			\
> 		[2] = {idc2_m, idc2_n},			\
> 		[3] = {intra_m, intra_n}		\
> 	},
> 
> static const s8 rkvdec_h264_cabac_table[464][4][2] = {
> 	/* Table 9-12 – Values of variables m and n for ctxIdx from 0 to 10 */
> 	INIT_MN_PAIRS(20, -15, 20, -15, 20, -15, 20, -15),
> 	...
