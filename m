From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v3 6/7] media: rkvdec: Add the rkvdec driver
Date: Fri, 13 Dec 2019 16:05:08 +0100
Message-ID: <20191213160508.0b9c9019@collabora.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-7-boris.brezillon@collabora.com>
 <036d3ecb-2307-4e8c-eaad-3c70c8cbda22@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <036d3ecb-2307-4e8c-eaad-3c70c8cbda22-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 13 Dec 2019 15:21:05 +0100
Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org> wrote:

> 
> > +/*
> > + * dpb poc related registers table
> > + */  
> 
> Shouldn't the next two arrays be const?

Absolutely. I'll fix that in v4.

> 
> > +static u32 poc_reg_tbl_top_field[16] = {
> > +	RKVDEC_REG_H264_POC_REFER0(0),
> > +	RKVDEC_REG_H264_POC_REFER0(2),
> > +	RKVDEC_REG_H264_POC_REFER0(4),
> > +	RKVDEC_REG_H264_POC_REFER0(6),
> > +	RKVDEC_REG_H264_POC_REFER0(8),
> > +	RKVDEC_REG_H264_POC_REFER0(10),
> > +	RKVDEC_REG_H264_POC_REFER0(12),
> > +	RKVDEC_REG_H264_POC_REFER0(14),
> > +	RKVDEC_REG_H264_POC_REFER1(1),
> > +	RKVDEC_REG_H264_POC_REFER1(3),
> > +	RKVDEC_REG_H264_POC_REFER1(5),
> > +	RKVDEC_REG_H264_POC_REFER1(7),
> > +	RKVDEC_REG_H264_POC_REFER1(9),
> > +	RKVDEC_REG_H264_POC_REFER1(11),
> > +	RKVDEC_REG_H264_POC_REFER1(13),
> > +	RKVDEC_REG_H264_POC_REFER2(0)
> > +};
> > +
> > +static u32 poc_reg_tbl_bottom_field[16] = {
> > +	RKVDEC_REG_H264_POC_REFER0(1),
> > +	RKVDEC_REG_H264_POC_REFER0(3),
> > +	RKVDEC_REG_H264_POC_REFER0(5),
> > +	RKVDEC_REG_H264_POC_REFER0(7),
> > +	RKVDEC_REG_H264_POC_REFER0(9),
> > +	RKVDEC_REG_H264_POC_REFER0(11),
> > +	RKVDEC_REG_H264_POC_REFER0(13),
> > +	RKVDEC_REG_H264_POC_REFER1(0),
> > +	RKVDEC_REG_H264_POC_REFER1(2),
> > +	RKVDEC_REG_H264_POC_REFER1(4),
> > +	RKVDEC_REG_H264_POC_REFER1(6),
> > +	RKVDEC_REG_H264_POC_REFER1(8),
> > +	RKVDEC_REG_H264_POC_REFER1(10),
> > +	RKVDEC_REG_H264_POC_REFER1(12),
> > +	RKVDEC_REG_H264_POC_REFER1(14),
> > +	RKVDEC_REG_H264_POC_REFER2(1)
> > +};  

[...]

> > +static int rkvdec_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> > +			      unsigned int *num_planes, unsigned int sizes[],
> > +			      struct device *alloc_devs[])
> > +{
> > +	struct rkvdec_ctx *ctx = vb2_get_drv_priv(vq);
> > +	struct v4l2_pix_format_mplane *pixfmt;
> > +	struct v4l2_format *f;
> > +	unsigned int i;
> > +
> > +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> > +		f = &ctx->coded_fmt;
> > +	else
> > +		f = &ctx->decoded_fmt;
> > +
> > +	if (*num_planes) {
> > +		if (*num_planes != f->fmt.pix_mp.num_planes)
> > +			return -EINVAL;
> > +
> > +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> > +			if (sizes[i] < f->fmt.pix_mp.plane_fmt[i].sizeimage)
> > +				return -EINVAL;
> > +		}  
> 
> Shouldn't there be a 'return 0' here? In the CREATE_BUFS case all you do is check
> if the given size is large enough, and if so then you are done.

I end up returning 0 anyway, it's just that size[0] is updated to
account for the extra MV size, is that a problem?

> 
> > +	} else {
> > +		*num_planes = f->fmt.pix_mp.num_planes;
> > +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++)
> > +			sizes[i] = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> > +	}
> > +
> > +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> > +		return 0;
> > +
> > +	pixfmt = &ctx->decoded_fmt.fmt.pix_mp;
> > +	sizes[0] += 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> > +		    DIV_ROUND_UP(pixfmt->height, 16);

This makes me realize we decided to take the MV extra size into account
in our ->sizeimage calculation in the hantro driver, so I should
probably move this code to try_s_capture_fmt().
