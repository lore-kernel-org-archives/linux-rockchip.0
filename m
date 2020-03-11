From: Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH 1/6] v4l2-mem2mem: return CAPTURE buffer first
Date: Wed, 11 Mar 2020 14:53:37 -0400
Message-ID: <7b0e33f9c66dd87904b787218389c3d639f7469a.camel@ndufresne.ca>
References: <20200311174300.19407-1-ezequiel@collabora.com>
         <20200311174300.19407-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200311174300.19407-2-ezequiel@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Le mercredi 11 mars 2020 à 14:42 -0300, Ezequiel Garcia a écrit :
> When the request API is used, typically an OUTPUT (src) buffer
> will be part of a request. A userspace process will be typically
> blocked, waiting on the request file descriptor.
> 
> Returning the OUTPUT (src) buffer will wake-up such processes,
> who will immediately attempt to dequeue the CAPTURE buffer,
> only to find it's still unavailable.
> 
> Therefore, change v4l2_m2m_buf_done_and_job_finish returning
> the CAPTURE (dst) buffer first, to avoid signalling the request
> file descriptor prematurely, i.e. before the CAPTURE buffer is done.
> 
> When the request API is not used, this change should have
> no impact.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

This was tested with upcoming GStreamer element with O_NONBLOCK flag passed when
opening the video node. Before this change, EAGAIN would from time to time be
returned when DQBUF(CAPTURE) was called.

  gst-launch-1.0 filesrc location=somefile.mp4 ! parsebin ! v4l2slh264dec ! fakevideosink
  https://gitlab.freedesktop.org/ndufresne/gst-plugins-bad/-/blob/v4l2codecs-hantro-v3/sys/v4l2codecs/gstv4l2decoder.c#L139

Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/v4l2-core/v4l2-mem2mem.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-
> core/v4l2-mem2mem.c
> index 8986c31176e9..62ac9424c92a 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -504,12 +504,21 @@ void v4l2_m2m_buf_done_and_job_finish(struct
> v4l2_m2m_dev *m2m_dev,
>  
>  	if (WARN_ON(!src_buf || !dst_buf))
>  		goto unlock;
> -	v4l2_m2m_buf_done(src_buf, state);
>  	dst_buf->is_held = src_buf->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
>  	if (!dst_buf->is_held) {
>  		v4l2_m2m_dst_buf_remove(m2m_ctx);
>  		v4l2_m2m_buf_done(dst_buf, state);
>  	}
> +	/*
> +	 * If the request API is being used, returning the OUTPUT
> +	 * (src) buffer will wake-up any process waiting on the
> +	 * request file descriptor.
> +	 *
> +	 * Therefore, return the CAPTURE (dst) buffer first,
> +	 * to avoid signalling the request file descriptor
> +	 * before the CAPTURE buffer is done.
> +	 */
> +	v4l2_m2m_buf_done(src_buf, state);
>  	schedule_next = _v4l2_m2m_job_finish(m2m_dev, m2m_ctx);
>  unlock:
>  	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
