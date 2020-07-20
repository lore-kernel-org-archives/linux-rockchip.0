From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 4/9] media: staging: rkisp1: don't define vaddr field
 in rkisp1_buffer as an array
Date: Mon, 20 Jul 2020 16:22:53 -0300
Message-ID: <d8c882d7-2b9a-2972-1994-ec8d7b9ac1c6@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
 <20200718145918.17752-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200718145918.17752-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/18/20 11:59 AM, Dafna Hirschfeld wrote:
> The field vaddr in rkisp1_buffer struct is used only by the
> rkisp1-stats and rkisp1-params entities and they both use only
> vaddr[0] so there is no need to define this field as an array.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 2 +-
>  drivers/staging/media/rkisp1/rkisp1-params.c | 4 ++--
>  drivers/staging/media/rkisp1/rkisp1-stats.c  | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 3dc51d703f73..e54793d13c3d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -127,7 +127,7 @@ struct rkisp1_buffer {
>  	struct list_head queue;
>  	union {
>  		u32 buff_addr[VIDEO_MAX_PLANES];
> -		void *vaddr[VIDEO_MAX_PLANES];
> +		void *vaddr;
>  	};
>  };
>  
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 797e79de659c..2ab25062cde6 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1215,7 +1215,7 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
>  	if (!cur_buf)
>  		return;
>  
> -	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
> +	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr);
>  
>  	if (isp_mis & RKISP1_CIF_ISP_FRAME) {
>  		u32 isp_ctrl;
> @@ -1463,7 +1463,7 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
>  		return;
>  	}
>  
> -	params_buf->vaddr[0] = vb2_plane_vaddr(vb, 0);
> +	params_buf->vaddr = vb2_plane_vaddr(vb, 0);
>  	spin_lock_irqsave(&params->config_lock, flags);
>  	list_add_tail(&params_buf->queue, &params->params);
>  	spin_unlock_irqrestore(&params->config_lock, flags);
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 87e4104d20dd..a67c233b8641 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -116,7 +116,7 @@ static void rkisp1_stats_vb2_buf_queue(struct vb2_buffer *vb)
>  	struct vb2_queue *vq = vb->vb2_queue;
>  	struct rkisp1_stats *stats_dev = vq->drv_priv;
>  
> -	stats_buf->vaddr[0] = vb2_plane_vaddr(vb, 0);
> +	stats_buf->vaddr = vb2_plane_vaddr(vb, 0);
>  
>  	spin_lock_irq(&stats_dev->lock);
>  	list_add_tail(&stats_buf->queue, &stats_dev->stat);
> @@ -322,7 +322,7 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
>  		return;
>  
>  	cur_stat_buf =
> -		(struct rkisp1_stat_buffer *)(cur_buf->vaddr[0]);
> +		(struct rkisp1_stat_buffer *)(cur_buf->vaddr);
>  
>  	if (isp_ris & RKISP1_CIF_ISP_AWB_DONE)
>  		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
> 
