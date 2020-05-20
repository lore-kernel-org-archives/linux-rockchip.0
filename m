From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v4 1/3] media: rkvdec: Fix .buf_prepare
Date: Wed, 20 May 2020 15:07:12 +0200
Message-ID: <2c69a8d6-3402-15e8-1b19-49b8591ae1d8@xs4all.nl>
References: <20200518174011.15543-1-ezequiel@collabora.com>
 <20200518174011.15543-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200518174011.15543-2-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, gustavo.padovan@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

On 18/05/2020 19:40, Ezequiel Garcia wrote:
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
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
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

This should just be:

	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
		vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);

If the application passes 0 as bytesused, then 1) a warning will be generated
by the v4l2 core and 2) the v4l2 core will set bytesused to the length of the
buffer. See vb2_fill_vb2_v4l2_buffer() in videobuf2-v4l2.c.

Some old drivers explicitly allow bytesused to be 0 for an output queue to
signal end-of-stream, but that's only supported if the allow_zero_bytesused
flag is set in the vb2_queue, and that shall not be used for new drivers
since it is deprecated functionality.

Regards,

	Hans

>  	return 0;
>  }
>  
> 
