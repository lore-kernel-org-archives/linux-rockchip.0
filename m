From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: cap: enable RGB capture
 format with YUV media bus
Date: Sun, 5 Apr 2020 20:37:29 +0300
Message-ID: <20200405173729.GJ5846@pendragon.ideasonboard.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200328105606.13660-4-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna

Thank you for the patch.

On Sat, Mar 28, 2020 at 11:56:06AM +0100, Dafna Hirschfeld wrote:
> In selfpath, RGB capture formats are received in the sink pad as YUV
> and are converted to RGB only when writing to memory. So the validation
> function should accept YUV bus formats with RGB capture encoding.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index b7681b806b4c..3abf38362f5a 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1227,6 +1227,9 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  		media_entity_to_v4l2_subdev(link->source->entity);
>  	struct rkisp1_capture *cap = video_get_drvdata(vdev);
>  	struct rkisp1_isp *isp = &cap->rkisp1->isp;
> +	enum rkisp1_fmt_pix_type cap_fmt =
> +		rkisp1_pixel_enc_to_fmt_pix(cap->pix.info);
> +	enum rkisp1_fmt_pix_type isp_fmt = isp->src_fmt->fmt_type;
>  	struct v4l2_subdev_format sd_fmt;
>  	int ret;
>  
> @@ -1237,8 +1240,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  		return -EPIPE;
>  	}
>  
> -	if (rkisp1_pixel_enc_to_fmt_pix(cap->pix.info) !=
> -	    isp->src_fmt->fmt_type) {
> +	if ((cap_fmt == RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_YUV) ||
> +	    (cap_fmt != RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_BAYER)) {

How about listing the supported options instead of the unsupported
options ?

	if (!(isp_fmt == cap_fmt) &&
	    !(isp_fmt == RKISP1_FMT_YUV && cap_fmt == RKISP1_FMT_RGB))

This would also reject RKISP1_FMT_JPEG (which isn't used yet, true), and
generally (in my opinion at least) be more readable.

>  		dev_err(cap->rkisp1->dev,
>  			"format type mismatch in link '%s:%d->%s:%d'\n",
>  			link->source->entity->name, link->source->index,

-- 
Regards,

Laurent Pinchart
