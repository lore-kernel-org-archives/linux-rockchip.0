From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
Date: Thu, 14 May 2020 10:50:53 -0400
Message-ID: <7cd2e6ba4da315ba61878db9e80a10cda8daeb12.camel@collabora.com>
References: <20200505134110.3435-1-ezequiel@collabora.com>
         <20200505134110.3435-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200505134110.3435-2-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, gustavo.padovan@collabora.com
List-Id: linux-rockchip.vger.kernel.org

Le mardi 05 mai 2020 à 10:41 -0300, Ezequiel Garcia a écrit :
> The driver should only set the payload on .buf_prepare
> if the buffer is CAPTURE type, or if an OUTPUT buffer
> has a zeroed payload.
> 
> Fix it.
> 
> Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c
> b/drivers/staging/media/rkvdec/rkvdec.c
> index 225eeca73356..4df2a248ab96 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -456,7 +456,15 @@ static int rkvdec_buf_prepare(struct vb2_buffer *vb)
>  		if (vb2_plane_size(vb, i) < sizeimage)
>  			return -EINVAL;
>  	}
> -	vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
> +
> +	/*
> +	 * Buffer's bytesused is written by the driver for CAPTURE buffers,
> +	 * or if the application passed zero bytesused on an OUTPUT buffer.
> +	 */
> +	if (!V4L2_TYPE_IS_OUTPUT(vq->type) ||
> +	    (V4L2_TYPE_IS_OUTPUT(vq->type) && !vb2_get_plane_payload(vb, 0)))
> +		vb2_set_plane_payload(vb, 0,
> +				      f->fmt.pix_mp.plane_fmt[0].sizeimage);

I believe the spec lacks a bit of a clarification. Converting from 0 to
sizeimage should only be allowed for RAW images. So I would like to suggest to
change this fix into:

-	vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
+
+	/* Buffer's bytesused is written by the driver for CAPTURE buffers */
+	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
+		vb2_set_plane_payload(vb, 0,
+				      f->fmt.pix_mp.plane_fmt[0].sizeimage);

And then we can fix the spec accordingly. Note that neighter FFMPEG or GStreamer
will pass empty (zero sized) payload at the moment, and if it did, it would be a
bug, and the payload should instead be ignored.

>  	return 0;
>  }
>  
> -- 
> 2.26.0.rc2
> 
> 
