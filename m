From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH for 5.4] media: hantro: Fix s_fmt for dynamic resolution
 changes
Date: Wed, 04 Sep 2019 12:13:31 +0200
Message-ID: <1567592011.3041.1.camel@pengutronix.de>
References: <20190903171256.25052-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190903171256.25052-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On Tue, 2019-09-03 at 14:12 -0300, Ezequiel Garcia wrote:
> Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> changed the conditions under S_FMT was allowed for OUTPUT
> CAPTURE buffers.
> 
> However, and according to the mem-to-mem stateless decoder specification,
> in order to support dynamic resolution changes, S_FMT should be allowed
> even if OUTPUT buffers have been allocated.
> 
> Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
> modification, provided the pixel format stays the same.
> 
> Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
> 
> Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_v4l2.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 3dae52abb96c..d48b548842cf 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -367,19 +367,22 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>  {
>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
>  	struct hantro_ctx *ctx = fh_to_ctx(priv);
> +	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
>  	const struct hantro_fmt *formats;
>  	unsigned int num_fmts;
> -	struct vb2_queue *vq;
>  	int ret;
>  
> -	/* Change not allowed if queue is busy. */
> -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> -	if (vb2_is_busy(vq))
> -		return -EBUSY;
> -
>  	if (!hantro_is_encoder_ctx(ctx)) {
>  		struct vb2_queue *peer_vq;
>  
> +		/*
> +		 * In other to support dynamic resolution change,
> +		 * the decoder admits a resolution change, as long
> +		 * as the pixelformat remains. Can't be done if streaming.
> +		 */
> +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))

Before using contents of the v4l2_format f for comparison, we should run
vidioc_try_fmt_out_mplane over it. Also, besides pixelformat, sizeimage
shouldn't change either, at least if this is a VB2_MMAP queue.

> +			return -EBUSY;
>  		/*
>  		 * Since format change on the OUTPUT queue will reset
>  		 * the CAPTURE queue, we can't allow doing so
> @@ -389,6 +392,13 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>  					  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
>  		if (vb2_is_busy(peer_vq))
>  			return -EBUSY;
> +	} else {
> +		/*
> +		 * The encoder doesn't admit a format change if
> +		 * there are OUTPUT buffers allocated.
> +		 */
> +		if (vb2_is_busy(vq))
> +			return -EBUSY;
>  	}
>  
>  	ret = vidioc_try_fmt_out_mplane(file, priv, f);

I think this needs to be moved up.

regards
Philipp
