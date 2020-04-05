From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/3] media: staging: rkisp1: rsz: get the capture format
 info from the capture struct
Date: Sun, 5 Apr 2020 20:24:50 +0300
Message-ID: <20200405172450.GH5846@pendragon.ideasonboard.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200328105606.13660-2-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thank you for the patch.

On Sat, Mar 28, 2020 at 11:56:04AM +0100, Dafna Hirschfeld wrote:
> Currently the format info of the capture is retrieved by calling
> the function  v4l2_format_info. This is not needed since it is
> already save in the capture object.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 87799fbf0363..8704267a066f 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -387,8 +387,7 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  	if (rsz->fmt_type == RKISP1_FMT_YUV) {
>  		struct rkisp1_capture *cap =
>  			&rsz->rkisp1->capture_devs[rsz->id];
> -		const struct v4l2_format_info *pixfmt_info =
> -			v4l2_format_info(cap->pix.fmt.pixelformat);
> +		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
>  
>  		hdiv = pixfmt_info->hdiv;
>  		vdiv = pixfmt_info->vdiv;

-- 
Regards,

Laurent Pinchart
