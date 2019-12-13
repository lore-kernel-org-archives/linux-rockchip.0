From: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH v3 6/7] media: rkvdec: Add the rkvdec driver
Date: Fri, 13 Dec 2019 15:21:05 +0100
Message-ID: <036d3ecb-2307-4e8c-eaad-3c70c8cbda22@xs4all.nl>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-7-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191213125414.90725-7-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Boris,

A few small comments:

On 12/13/19 1:54 PM, Boris Brezillon wrote:
> The rockchip vdec block is a stateless decoder that's able to decode
> H264, HEVC and VP9 content. This commit adds the core infrastructure
> and the H264 backend. Support for VP9 and HEVS will be added later on.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> Changes in v3:
> * Move the driver to drivers/staging/media/rkvdec/
> * Fix copy&paste error in the Kconfig desc
> * Use REC709 color space when resetting the capture format
> * Prepare things to support VP9
> * Move H264 priv-table field definition out of rkvdec-regs.h
> * Clarify the provenance of the CABAC table
> * Ease RPS,PPS_FIELD() definition/manipulation
> * Take DPB field flags into account
> * Use the generic H264 helpers to build the reflists
> ---
>  drivers/staging/media/Kconfig              |    2 +
>  drivers/staging/media/Makefile             |    1 +
>  drivers/staging/media/rkvdec/Kconfig       |   15 +
>  drivers/staging/media/rkvdec/Makefile      |    3 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 1154 ++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec-regs.h |  239 ++++
>  drivers/staging/media/rkvdec/rkvdec.c      | 1130 +++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.h      |  124 +++
>  8 files changed, 2668 insertions(+)
>  create mode 100644 drivers/staging/media/rkvdec/Kconfig
>  create mode 100644 drivers/staging/media/rkvdec/Makefile
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
> 

<snip>

> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> new file mode 100644
> index 000000000000..6de4bd39f286
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c

<snip>

> +/*
> + * dpb poc related registers table
> + */

Shouldn't the next two arrays be const?

> +static u32 poc_reg_tbl_top_field[16] = {
> +	RKVDEC_REG_H264_POC_REFER0(0),
> +	RKVDEC_REG_H264_POC_REFER0(2),
> +	RKVDEC_REG_H264_POC_REFER0(4),
> +	RKVDEC_REG_H264_POC_REFER0(6),
> +	RKVDEC_REG_H264_POC_REFER0(8),
> +	RKVDEC_REG_H264_POC_REFER0(10),
> +	RKVDEC_REG_H264_POC_REFER0(12),
> +	RKVDEC_REG_H264_POC_REFER0(14),
> +	RKVDEC_REG_H264_POC_REFER1(1),
> +	RKVDEC_REG_H264_POC_REFER1(3),
> +	RKVDEC_REG_H264_POC_REFER1(5),
> +	RKVDEC_REG_H264_POC_REFER1(7),
> +	RKVDEC_REG_H264_POC_REFER1(9),
> +	RKVDEC_REG_H264_POC_REFER1(11),
> +	RKVDEC_REG_H264_POC_REFER1(13),
> +	RKVDEC_REG_H264_POC_REFER2(0)
> +};
> +
> +static u32 poc_reg_tbl_bottom_field[16] = {
> +	RKVDEC_REG_H264_POC_REFER0(1),
> +	RKVDEC_REG_H264_POC_REFER0(3),
> +	RKVDEC_REG_H264_POC_REFER0(5),
> +	RKVDEC_REG_H264_POC_REFER0(7),
> +	RKVDEC_REG_H264_POC_REFER0(9),
> +	RKVDEC_REG_H264_POC_REFER0(11),
> +	RKVDEC_REG_H264_POC_REFER0(13),
> +	RKVDEC_REG_H264_POC_REFER1(0),
> +	RKVDEC_REG_H264_POC_REFER1(2),
> +	RKVDEC_REG_H264_POC_REFER1(4),
> +	RKVDEC_REG_H264_POC_REFER1(6),
> +	RKVDEC_REG_H264_POC_REFER1(8),
> +	RKVDEC_REG_H264_POC_REFER1(10),
> +	RKVDEC_REG_H264_POC_REFER1(12),
> +	RKVDEC_REG_H264_POC_REFER1(14),
> +	RKVDEC_REG_H264_POC_REFER2(1)
> +};

<snip>


> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> new file mode 100644
> index 000000000000..97698be9072e
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -0,0 +1,1130 @@

<snip>

> +static int rkvdec_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> +			      unsigned int *num_planes, unsigned int sizes[],
> +			      struct device *alloc_devs[])
> +{
> +	struct rkvdec_ctx *ctx = vb2_get_drv_priv(vq);
> +	struct v4l2_pix_format_mplane *pixfmt;
> +	struct v4l2_format *f;
> +	unsigned int i;
> +
> +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> +		f = &ctx->coded_fmt;
> +	else
> +		f = &ctx->decoded_fmt;
> +
> +	if (*num_planes) {
> +		if (*num_planes != f->fmt.pix_mp.num_planes)
> +			return -EINVAL;
> +
> +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> +			if (sizes[i] < f->fmt.pix_mp.plane_fmt[i].sizeimage)
> +				return -EINVAL;
> +		}

Shouldn't there be a 'return 0' here? In the CREATE_BUFS case all you do is check
if the given size is large enough, and if so then you are done.

> +	} else {
> +		*num_planes = f->fmt.pix_mp.num_planes;
> +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++)
> +			sizes[i] = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> +	}
> +
> +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> +		return 0;
> +
> +	pixfmt = &ctx->decoded_fmt.fmt.pix_mp;
> +	sizes[0] += 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> +		    DIV_ROUND_UP(pixfmt->height, 16);
> +	return 0;
> +}

<snip>

Regards,

	Hans
