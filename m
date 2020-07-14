From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 2/4] media: staging: rkisp1: cap: protect buf.curr and
 buf.next with buf.lock
Date: Tue, 14 Jul 2020 12:11:09 -0300
Message-ID: <dbf0fb76-8401-399f-1404-2424342d98ab@collabora.com>
References: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
 <20200714123832.28011-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200714123832.28011-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/14/20 9:38 AM, Dafna Hirschfeld wrote:
> The spinlock buf.lock should protect access to the buffers.
> This includes the buffers in buf.queue and also buf.curr and
> buf.next. The function 'rkisp1_set_next_buf' access buf.next
> therefore it should also be protected with the lock.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 572b0949c81f..fa3eaeac2a00 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -617,10 +617,11 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
>  {
>  	struct rkisp1_isp *isp = &cap->rkisp1->isp;
> -	struct rkisp1_buffer *curr_buf = cap->buf.curr;
> +	struct rkisp1_buffer *curr_buf;
>  	unsigned long flags;
>  
>  	spin_lock_irqsave(&cap->buf.lock, flags);
> +	curr_buf = cap->buf.curr;
>  
>  	if (curr_buf) {
>  		curr_buf->vb.sequence = atomic_read(&isp->frame_sequence);
> @@ -640,9 +641,9 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
>  						 queue);
>  		list_del(&cap->buf.next->queue);
>  	}
> -	spin_unlock_irqrestore(&cap->buf.lock, flags);
>  
>  	rkisp1_set_next_buf(cap);
> +	spin_unlock_irqrestore(&cap->buf.lock, flags);
>  }
>  
>  void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
> 
