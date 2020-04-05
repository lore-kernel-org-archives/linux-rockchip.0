From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 4/5] media: staging: rkisp1: cap: support uv swapped
 plane formats
Date: Sun, 5 Apr 2020 21:16:23 +0300
Message-ID: <20200405181623.GQ5846@pendragon.ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thank you for the patch.

On Thu, Apr 02, 2020 at 09:04:18PM +0200, Dafna Hirschfeld wrote:
> Plane formats with the u and v planes swapped can be
> supported by changing the address of the cb and cr in
> the buffer.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index fa2849209433..2d274e8f565b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -41,6 +41,10 @@
>  	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
>  	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
>  
> +#define RKISP1_IS_PLANAR(write_format)					\
> +	(((write_format) == RKISP1_MI_CTRL_SP_WRITE_PLA) ||		\
> +	 ((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8))
> +
>  enum rkisp1_plane {
>  	RKISP1_PLANE_Y	= 0,
>  	RKISP1_PLANE_CB	= 1,
> @@ -788,6 +792,19 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
>  			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
>  	}
>  
> +	/*
> +	 * uv swap can be supported for plane formats by switching
> +	 * the address of cb and cr
> +	 */
> +	if (RKISP1_IS_PLANAR(cap->pix.cfg->write_format) &&

As commented on patch 3/5, could this be checked from the data in
v4l2_format_info ?

> +	    cap->pix.cfg->uv_swap) {
> +		ispbuf->buff_addr[RKISP1_PLANE_CR] =
> +			ispbuf->buff_addr[RKISP1_PLANE_CB];
> +		ispbuf->buff_addr[RKISP1_PLANE_CB] =
> +			ispbuf->buff_addr[RKISP1_PLANE_CR] +
> +			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR);

How about

		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
		     ispbuf->buff_addr[RKISP1_PLANE_CB]);

?

> +	}
> +
>  	spin_lock_irqsave(&cap->buf.lock, flags);
>  
>  	/*

-- 
Regards,

Laurent Pinchart
