From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 3/4] media: staging: rkisp1: cap: move code that manages
 the buffers to rkisp1_set_next_buf
Date: Tue, 14 Jul 2020 12:11:13 -0300
Message-ID: <4a4a9264-b5b6-06e2-8cee-5dceb043bbce@collabora.com>
References: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
 <20200714123832.28011-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200714123832.28011-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/14/20 9:38 AM, Dafna Hirschfeld wrote:
> The function 'rkisp1_set_next_buf' configures the registers
> according to 'cap->buf.next'. It is called after updating
> 'cap->buf.next' and 'cap->buf.curr'. This patch moves the
> code that updates those fields to rkisp1_set_next_buf.
> This is a preparation for later patch that change a call to
> 'rkisp1_handle_buffer' with a call to 'rkisp1_set_next_buf'.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 30 +++++++++----------
>  1 file changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index fa3eaeac2a00..7f400aefe550 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -575,12 +575,16 @@ static void rkisp1_dummy_buf_destroy(struct rkisp1_capture *cap)
>  
>  static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  {
> -	/*
> -	 * Use the dummy space allocated by dma_alloc_coherent to
> -	 * throw data if there is no available buffer.
> -	 */
> -	if (cap->buf.next) {
> -		u32 *buff_addr = cap->buf.next->buff_addr;
> +	cap->buf.curr = cap->buf.next;
> +	cap->buf.next = NULL;
> +
> +	if (!list_empty(&cap->buf.queue)) {
> +		u32 *buff_addr;
> +
> +		cap->buf.next = list_first_entry(&cap->buf.queue, struct rkisp1_buffer, queue);
> +		list_del(&cap->buf.next->queue);
> +
> +		buff_addr = cap->buf.next->buff_addr;
>  
>  		rkisp1_write(cap->rkisp1,
>  			     buff_addr[RKISP1_PLANE_Y],
> @@ -592,6 +596,10 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  			     buff_addr[RKISP1_PLANE_CR],
>  			     cap->config->mi.cr_base_ad_init);
>  	} else {
> +		/*
> +		 * Use the dummy space allocated by dma_alloc_coherent to
> +		 * throw data if there is no available buffer.
> +		 */
>  		rkisp1_write(cap->rkisp1,
>  			     cap->buf.dummy.dma_addr,
>  			     cap->config->mi.y_base_ad_init);
> @@ -632,16 +640,6 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
>  		cap->rkisp1->debug.frame_drop[cap->id]++;
>  	}
>  
> -	cap->buf.curr = cap->buf.next;
> -	cap->buf.next = NULL;
> -
> -	if (!list_empty(&cap->buf.queue)) {
> -		cap->buf.next = list_first_entry(&cap->buf.queue,
> -						 struct rkisp1_buffer,
> -						 queue);
> -		list_del(&cap->buf.next->queue);
> -	}
> -
>  	rkisp1_set_next_buf(cap);
>  	spin_unlock_irqrestore(&cap->buf.lock, flags);
>  }
> 
