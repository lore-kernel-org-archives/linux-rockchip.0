From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
Date: Wed, 20 May 2020 19:23:37 -0300
Message-ID: <8b011c17-0374-c7d7-a030-26ce16828491@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> If the capture format is YUV444M then the memory input format
> should be YUV422, so the resizer should not change the default
> hdiv, vdiv in that case.

I didn't understand why YUV444M is special, do you mind elaborating a bit
more to help me understand please?

Thanks
Helen

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 04a29af8cc92..5f9740ddd558 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
>  	 * streams should be set according to the pixel format in the capture.
>  	 * The resizer always gets the input as YUV422. If the capture format
> -	 * is RGB then the memory input (the resizer output) should be YUV422
> -	 * so we use the hdiv, vdiv of the YUV422 info in this case.
> +	 * is RGB or YUV444 then the memory input (the resizer output) should
> +	 * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
>  	 */
> -	if (v4l2_is_format_yuv(cap->pix.info)) {
> +	if (v4l2_is_format_yuv(cap->pix.info) &&
> +	    cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
>  		src_c.width = cap->pix.info->hdiv;
>  		src_c.height = cap->pix.info->vdiv;
>  	} else {
> 
