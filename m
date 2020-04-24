From: Niklas =?iso-8859-1?Q?S=F6derlund?=
        <niklas.soderlund@ragnatech.se>
Subject: Re: [PATCH v3 3/4] media: staging: rkisp1: use
 v4l2_pipeline_stream_{enable,disable} helpers
Date: Fri, 24 Apr 2020 15:42:34 +0200
Message-ID: <20200424134234.GC4040416@oden.dyn.berto.se>
References: <20200415013044.1778572-1-helen.koike@collabora.com>
 <20200415013044.1778572-4-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200415013044.1778572-4-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: linux-media@vger.kernel.org, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com, skhan@linuxfoundation.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Helen,

Thanks for your work.

On 2020-04-14 22:30:43 -0300, Helen Koike wrote:
> Use v4l2_pipeline_stream_{enable,disable} to call .s_stream() subdevice
> callbacks through the pipeline.
> 
> Tested by streaming on Scarlet Chromebook.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>

Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> 
> ---
> 
> Changes in v3:
> - rebase on top of new helpers prototypes
> 
> Changes in v2:
> - rebase on top of new helpers prototypes
> 
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 76 +------------------
>  1 file changed, 3 insertions(+), 73 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 24fe6a7888aa4..a18f1668e3563 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -838,71 +838,6 @@ static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
>  	spin_unlock_irqrestore(&cap->buf.lock, flags);
>  }
>  
> -/*
> - * rkisp1_pipeline_sink_walk - Walk through the pipeline and call cb
> - * @from: entity at which to start pipeline walk
> - * @until: entity at which to stop pipeline walk
> - *
> - * Walk the entities chain starting at the pipeline video node and stop
> - * all subdevices in the chain.
> - *
> - * If the until argument isn't NULL, stop the pipeline walk when reaching the
> - * until entity. This is used to disable a partially started pipeline due to a
> - * subdev start error.
> - */
> -static int rkisp1_pipeline_sink_walk(struct media_entity *from,
> -				     struct media_entity *until,
> -				     int (*cb)(struct media_entity *from,
> -					       struct media_entity *curr))
> -{
> -	struct media_entity *entity = from;
> -	struct media_pad *pad;
> -	unsigned int i;
> -	int ret;
> -
> -	while (1) {
> -		pad = NULL;
> -		/* Find remote source pad */
> -		for (i = 0; i < entity->num_pads; i++) {
> -			struct media_pad *spad = &entity->pads[i];
> -
> -			if (!(spad->flags & MEDIA_PAD_FL_SINK))
> -				continue;
> -			pad = media_entity_remote_pad(spad);
> -			if (pad && is_media_entity_v4l2_subdev(pad->entity))
> -				break;
> -		}
> -		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> -			break;
> -
> -		entity = pad->entity;
> -		if (entity == until)
> -			break;
> -
> -		ret = cb(from, entity);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -static int rkisp1_pipeline_disable_cb(struct media_entity *from,
> -				      struct media_entity *curr)
> -{
> -	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
> -
> -	return v4l2_subdev_call(sd, video, s_stream, false);
> -}
> -
> -static int rkisp1_pipeline_enable_cb(struct media_entity *from,
> -				     struct media_entity *curr)
> -{
> -	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
> -
> -	return v4l2_subdev_call(sd, video, s_stream, true);
> -}
> -
>  static void rkisp1_stream_stop(struct rkisp1_capture *cap)
>  {
>  	int ret;
> @@ -929,11 +864,7 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
>  
>  	rkisp1_stream_stop(cap);
>  	media_pipeline_stop(&node->vdev.entity);
> -	ret = rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
> -					rkisp1_pipeline_disable_cb);
> -	if (ret)
> -		dev_err(rkisp1->dev,
> -			"pipeline stream-off failed error:%d\n", ret);
> +	v4l2_pipeline_stream_disable(&node->vdev, &cap->rkisp1->pipe);
>  
>  	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_ERROR);
>  
> @@ -1005,8 +936,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
>  	rkisp1_stream_start(cap);
>  
>  	/* start sub-devices */
> -	ret = rkisp1_pipeline_sink_walk(entity, NULL,
> -					rkisp1_pipeline_enable_cb);
> +	ret = v4l2_pipeline_stream_enable(&cap->vnode.vdev, &cap->rkisp1->pipe);
>  	if (ret)
>  		goto err_stop_stream;
>  
> @@ -1019,7 +949,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
>  	return 0;
>  
>  err_pipe_disable:
> -	rkisp1_pipeline_sink_walk(entity, NULL, rkisp1_pipeline_disable_cb);
> +	v4l2_pipeline_stream_disable(&cap->vnode.vdev, &cap->rkisp1->pipe);
>  err_stop_stream:
>  	rkisp1_stream_stop(cap);
>  	v4l2_pipeline_pm_put(entity);
> -- 
> 2.26.0
> 

-- 
Regards,
Niklas Söderlund
