From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v5 3/7] media: vivid: Add support to the CSC API
Date: Tue, 21 Jul 2020 15:50:43 +0200
Message-ID: <18f3d74b-896a-a449-0c4f-772f360a3920@xs4all.nl>
References: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
 <20200703171019.19270-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200703171019.19270-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: helen.koike@collabora.com, ezequiel@collabora.com, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

On 03/07/2020 19:10, Dafna Hirschfeld wrote:
> The CSC API (Colorspace conversion) allows userspace to try
> to configure the ycbcr/hsv_enc function and the quantization
> for capture devices. This patch adds support to the CSC API

Not just ycbcr/hsv_enc and quantization but also colorspace and
transfer function!

> in vivid.
> Using the CSC API, userspace is allowed to do the following:
> 
> - Set the ycbcr_enc function for YUV formats.
> - Set the hsv_enc function for HSV formats
> - Set the quantization for YUV and RGB formats.
> - Set the xfer_func.
> - Set the colorspace.

Reorder.

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  .../media/test-drivers/vivid/vivid-vid-cap.c  | 74 +++++++++++++++++--
>  .../test-drivers/vivid/vivid-vid-common.c     | 24 ++++++
>  2 files changed, 92 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/test-drivers/vivid/vivid-vid-cap.c b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
> index e94beef008c8..8916def70ffe 100644
> --- a/drivers/media/test-drivers/vivid/vivid-vid-cap.c
> +++ b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
> @@ -549,6 +549,45 @@ int vivid_g_fmt_vid_cap(struct file *file, void *priv,
>  	return 0;
>  }
>  
> +static bool vivid_is_colorspace_valid(__u32 colorspace)
> +{
> +	if (colorspace > V4L2_COLORSPACE_DEFAULT &&
> +	    colorspace <= V4L2_COLORSPACE_DCI_P3)
> +		return true;
> +	return false;
> +}
> +
> +static bool vivid_is_hsv_enc_valid(__u8 hsv_enc)
> +{
> +	if (hsv_enc == V4L2_HSV_ENC_180 || hsv_enc == V4L2_HSV_ENC_256)
> +		return true;
> +	return false;
> +}
> +
> +static bool vivid_is_ycbcr_enc_valid(__u8 ycbcr_enc)
> +{
> +	/* V4L2_YCBCR_ENC_SMPTE240M is the last ycbcr_enc enum */
> +	if (ycbcr_enc && ycbcr_enc <= V4L2_YCBCR_ENC_SMPTE240M)
> +		return true;
> +	return false;
> +}
> +
> +static bool vivid_is_quant_valid(__u8 quantization)
> +{
> +	if (quantization == V4L2_QUANTIZATION_FULL_RANGE ||
> +	    quantization == V4L2_QUANTIZATION_LIM_RANGE)
> +		return true;
> +	return false;
> +}
> +
> +static bool vivid_is_xfer_func_valid(__u32 xfer_func)
> +{
> +	if (xfer_func > V4L2_XFER_FUNC_DEFAULT &&
> +	    xfer_func <= V4L2_XFER_FUNC_SMPTE2084)
> +		return true;
> +	return false;
> +}

Reorder these functions. But wouldn't this be useful to add to v4l2-common.h
as static inline helpers?

> +
>  int vivid_try_fmt_vid_cap(struct file *file, void *priv,
>  			struct v4l2_format *f)
>  {
> @@ -560,6 +599,7 @@ int vivid_try_fmt_vid_cap(struct file *file, void *priv,
>  	unsigned factor = 1;
>  	unsigned w, h;
>  	unsigned p;
> +	bool user_set_csc = !!(mp->flags & V4L2_PIX_FMT_FLAG_SET_CSC);
>  
>  	fmt = vivid_get_format(dev, mp->pixelformat);
>  	if (!fmt) {
> @@ -633,13 +673,26 @@ int vivid_try_fmt_vid_cap(struct file *file, void *priv,
>  			(fmt->bit_depth[p] / fmt->vdownsampling[p])) /
>  			(fmt->bit_depth[0] / fmt->vdownsampling[0]);
>  
> -	mp->colorspace = vivid_colorspace_cap(dev);
> -	if (fmt->color_enc == TGP_COLOR_ENC_HSV)
> -		mp->hsv_enc = vivid_hsv_enc_cap(dev);
> -	else
> +	if (!user_set_csc || !vivid_is_colorspace_valid(mp->colorspace))
> +		mp->colorspace = vivid_colorspace_cap(dev);
> +	if (fmt->color_enc == TGP_COLOR_ENC_HSV) {
> +		if (!user_set_csc || !vivid_is_hsv_enc_valid(mp->hsv_enc))
> +			mp->hsv_enc = vivid_hsv_enc_cap(dev);
> +	} else if (fmt->color_enc == TGP_COLOR_ENC_YCBCR) {
> +		if (!user_set_csc || !vivid_is_ycbcr_enc_valid(mp->ycbcr_enc))
> +			mp->ycbcr_enc = vivid_ycbcr_enc_cap(dev);
> +	} else {
>  		mp->ycbcr_enc = vivid_ycbcr_enc_cap(dev);
> -	mp->xfer_func = vivid_xfer_func_cap(dev);
> -	mp->quantization = vivid_quantization_cap(dev);
> +	}
> +	if (!user_set_csc || !vivid_is_xfer_func_valid(mp->xfer_func))
> +		mp->xfer_func = vivid_xfer_func_cap(dev);
> +	if (fmt->color_enc == TGP_COLOR_ENC_YCBCR ||
> +	    fmt->color_enc == TGP_COLOR_ENC_RGB) {
> +		if (!user_set_csc || !vivid_is_quant_valid(mp->quantization))
> +			mp->quantization = vivid_quantization_cap(dev);
> +	} else {
> +		mp->quantization = vivid_quantization_cap(dev);
> +	}
>  	memset(mp->reserved, 0, sizeof(mp->reserved));
>  	return 0;
>  }
> @@ -769,6 +822,15 @@ int vivid_s_fmt_vid_cap(struct file *file, void *priv,
>  	if (vivid_is_sdtv_cap(dev))
>  		dev->tv_field_cap = mp->field;
>  	tpg_update_mv_step(&dev->tpg);
> +	dev->tpg.colorspace = mp->colorspace;
> +	dev->tpg.quantization = mp->quantization;
> +	if (dev->fmt_cap->color_enc == TGP_COLOR_ENC_YCBCR)
> +		dev->tpg.ycbcr_enc = mp->ycbcr_enc;
> +	else
> +		dev->tpg.hsv_enc = mp->hsv_enc;
> +	dev->tpg.quantization = mp->quantization;

Duplicate of the same assignment above.

> +	dev->tpg.xfer_func = mp->xfer_func;

Reorder.

> +
>  	return 0;
>  }
>  
> diff --git a/drivers/media/test-drivers/vivid/vivid-vid-common.c b/drivers/media/test-drivers/vivid/vivid-vid-common.c
> index 76b0be670ebb..5cab9b2a74bd 100644
> --- a/drivers/media/test-drivers/vivid/vivid-vid-common.c
> +++ b/drivers/media/test-drivers/vivid/vivid-vid-common.c
> @@ -920,6 +920,30 @@ int vivid_enum_fmt_vid(struct file *file, void  *priv,
>  	fmt = &vivid_formats[f->index];
>  
>  	f->pixelformat = fmt->fourcc;
> +
> +	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
> +	    f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> +		return 0;
> +	/*
> +	 * For capture devices, we support the CSC API.
> +	 * We allow userspace to:
> +	 * 1. set the ycbcr_enc on yuv format
> +	 * 2. set the hsv_enc on hsv format
> +	 * 3. set the quantization on yuv and rgb formats
> +	 * 4. set the colorspace
> +	 * 5. set the xfer_func
> +	 */
> +	if (fmt->color_enc == TGP_COLOR_ENC_YCBCR) {
> +		f->flags |= V4L2_FMT_FLAG_CSC_YCBCR_ENC;
> +		f->flags |= V4L2_FMT_FLAG_CSC_QUANTIZATION;
> +	} else if (fmt->color_enc == TGP_COLOR_ENC_HSV) {
> +		f->flags |= V4L2_FMT_FLAG_CSC_HSV_ENC;
> +	} else if (fmt->color_enc == TGP_COLOR_ENC_RGB) {
> +		f->flags |= V4L2_FMT_FLAG_CSC_QUANTIZATION;
> +	}
> +	f->flags |= V4L2_FMT_FLAG_CSC_COLORSPACE;
> +	f->flags |= V4L2_FMT_FLAG_CSC_XFER_FUNC;

Reorder.

Regards,

	Hans

> +
>  	return 0;
>  }
>  
> 
