From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v3 5/6] media: staging: rkisp1: cap: support uv swapped
 plane formats
Date: Wed, 8 Apr 2020 15:11:41 +0300
Message-ID: <20200408121141.GG4881@pendragon.ideasonboard.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
 <20200408114822.27360-6-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200408114822.27360-6-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 08, 2020 at 01:48:21PM +0200, Dafna Hirschfeld wrote:
> Plane formats with the u and v planes swapped can be

s/Plane/Planar/

> supported by swapping the address of the cb and cr buffers.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 257799a7d865..9f0a3c407286 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -743,6 +743,14 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
>  			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
>  	}
>  
> +	/*
> +	 * uv swap can be supported for plane formats by switching

s/plane/planar/

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	 * the address of cb and cr
> +	 */
> +	if (cap->pix.info->comp_planes == 3 && cap->pix.cfg->uv_swap)
> +		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
> +		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
> +
>  	spin_lock_irqsave(&cap->buf.lock, flags);
>  
>  	/*

-- 
Regards,

Laurent Pinchart
