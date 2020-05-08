From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v3 4/4] media: rockchip: rga: Only set output CSC mode
 for RGB input
Date: Fri, 08 May 2020 01:19:17 -0300
Message-ID: <96c35183ad7cde60afb8617e334b060e718ee532.camel@collabora.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
         <20200430164245.1630174-5-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200430164245.1630174-5-paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2020-04-30 at 18:42 +0200, Paul Kocialkowski wrote:
> Setting the output CSC mode is required for a YUV output, but must not
> be set when the input is also YUV. Doing this (as tested with a YUV420P
> to YUV420P conversion) results in wrong colors.
> 
> Adapt the logic to only set the output CSC mode when the output is YUV and
> the input is RGB. Also add a comment to clarify the rationale.
> 
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>

Reviewed-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

Thanks!

> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
> index 5607ee8d1917..aaa96f256356 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -200,6 +200,11 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
>  	dst_info.data.format = ctx->out.fmt->hw_format;
>  	dst_info.data.swap = ctx->out.fmt->color_swap;
>  
> +	/*
> +	 * CSC mode must only be set when the colorspace families differ between
> +	 * input and output. It must remain unset (zeroed) if both are the same.
> +	 */
> +
>  	if (RGA_COLOR_FMT_IS_YUV(ctx->in.fmt->hw_format) &&
>  	    RGA_COLOR_FMT_IS_RGB(ctx->out.fmt->hw_format)) {
>  		switch (ctx->in.colorspace) {
> @@ -212,7 +217,8 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
>  		}
>  	}
>  
> -	if (RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
> +	if (RGA_COLOR_FMT_IS_RGB(ctx->in.fmt->hw_format) &&
> +	    RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
>  		switch (ctx->out.colorspace) {
>  		case V4L2_COLORSPACE_REC709:
>  			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
