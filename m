Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BB1C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 09:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1cXWTix2JYZF8FobMRTCYrrH5SqQU+3PSIMKUlZSc0=; b=zs2J8qoHWN2gDY
	BGI3PRE1kOJxMBUrSD7EPNnrfirg3cb+0t6sArw+vTFRCsNyw58mzSLZmSD/FZ/rJSFTykjFuYSAU
	c2fJESk2amOZanbnd8PoKbllovlUC2c+JDU4x8qyDYFJeDiUHuW4MQNY7K5kxbP4j+LDKRxF9Tm6Q
	fGdwHJoSj6ql6tGWJd+QkKpSPbcjFm8MWdBzPaMGUAEhmt7v5PsOYhocXc3L/8nmGziUwgV7eLLrP
	ceEb0dGwFUJ6Dr5g+8V7FjJfcsAWYGuL7caQNlaFw5BQXknNwBEWLDoSYyV3JspzyyBfyLV8hq/KU
	jjzf3UMP4DWgnlhe15Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0f51-003NdR-25;
	Wed, 08 Nov 2023 09:42:35 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0f4y-003NbE-1l
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Nov 2023 09:42:34 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1cc5b6d6228so45536395ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Nov 2023 01:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699436548; x=1700041348; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aDXaY//8y/74BvKRPuAKyEkdsaFq1PaWBhrY8xQYRKA=;
        b=SDz/kIK9rEgyfGvliU/ILqcXCOynsoADpobucC3wwMQUVcFho45/iNah9txVo8pJlf
         husPr6cA4h3ubNUonKe6/iZsRVw4bPBhOzPMiPlZrYQMe6m0SJYbY3P4boYT2OtJfWdW
         8bX4SWvuZa6k08lF1SwIAKDNNWUMi2TQoXle8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699436548; x=1700041348;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aDXaY//8y/74BvKRPuAKyEkdsaFq1PaWBhrY8xQYRKA=;
        b=MwmyvvNiUg8fkcPevfAJS7HHIW0lhA1qPtidHxxxt5RII32/CR6QpURlT3FIjFjq0c
         RSwagPP7FWLY8N7gSctBQEWBS6Yo+zU/7hysSHZKyHkdRN+mLRMmjpCsD1a6uOEwxXFP
         Ud5MEpRwX+wrgX2hIIasPhZ0E42l8+UdUW4ZJ9iAOhB7eVcOwMlRnygXV0Y2ri0JuX/y
         9DvyQ+NlZuKbDLzRArCqjKHn3+VJWW3tPAvrOec9htkxRlhomXsdo0oRWIBD3itKxaOg
         /Q1jIrFKi0eKjEfvHoYim20ihXBUA2obWAvLf2r98m09Y6YsJRvXhX2du72X+CtS3HaF
         tT0g==
X-Gm-Message-State: AOJu0Yyo2Zbc2UEmDyf+7lKN699JIRHuv6L8g4wQik4gIw+7yUPCqrVf
	Jzn8pM/Rnoo8z3qOeyUJMwbbNg==
X-Google-Smtp-Source: AGHT+IEku/YTV/xT1M0nzk1MJ4RhSHCuriXRqjCX16X/FZowan9lL/VgocqkpYuEJFJ0gwLpNy3ZMw==
X-Received: by 2002:a17:902:e9c6:b0:1cc:3598:4ba0 with SMTP id 6-20020a170902e9c600b001cc35984ba0mr1216149plk.68.1699436548216;
        Wed, 08 Nov 2023 01:42:28 -0800 (PST)
Received: from chromium.org (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id q9-20020a170902dac900b001cc32f46757sm1314380plx.107.2023.11.08.01.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 01:42:27 -0800 (PST)
Date: Wed, 8 Nov 2023 09:42:23 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v14 08/56] media: videobuf2: Use vb2_get_num_buffers()
 helper
Message-ID: <20231108094223.rprskkeee47vaezy@chromium.org>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-9-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231031163104.112469-9-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_014232_590580_5FD4838F 
X-CRM114-Status: GOOD (  48.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Oct 31, 2023 at 05:30:16PM +0100, Benjamin Gaignard wrote:
> Stop using queue num_buffers field directly, instead use
> vb2_get_num_buffers().
> This prepares for the future 'delete buffers' feature where there are
> holes in the buffer indices.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/common/videobuf2/videobuf2-core.c   | 92 +++++++++++--------
>  .../media/common/videobuf2/videobuf2-v4l2.c   |  4 +-
>  2 files changed, 54 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index b406a30a9b35..c5c5ae4d213d 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -444,13 +444,14 @@ static int __vb2_queue_alloc(struct vb2_queue *q, enum vb2_memory memory,
>  			     unsigned int num_buffers, unsigned int num_planes,
>  			     const unsigned plane_sizes[VB2_MAX_PLANES])
>  {
> +	unsigned int q_num_buffers = vb2_get_num_buffers(q);
>  	unsigned int buffer, plane;
>  	struct vb2_buffer *vb;
>  	int ret;
>  
>  	/* Ensure that q->num_buffers+num_buffers is below VB2_MAX_FRAME */
>  	num_buffers = min_t(unsigned int, num_buffers,
> -			    VB2_MAX_FRAME - q->num_buffers);
> +			    VB2_MAX_FRAME - q_num_buffers);

I guess it's safe in this specific situation, but was there any reason
behind not just calling vb2_get_num_buffers() directly here?

>  
>  	for (buffer = 0; buffer < num_buffers; ++buffer) {
>  		/* Allocate vb2 buffer structures */
> @@ -470,7 +471,7 @@ static int __vb2_queue_alloc(struct vb2_queue *q, enum vb2_memory memory,
>  			vb->planes[plane].min_length = plane_sizes[plane];
>  		}
>  
> -		vb2_queue_add_buffer(q, vb, q->num_buffers + buffer);
> +		vb2_queue_add_buffer(q, vb, q_num_buffers + buffer);

In this case it should also be fine, but actually now this is a loop and if
somone doesn't know what the other code in the loop does, one could be
concerned that the num buffers actually could have changed, but we still
use the cached one that we got at the beginning of the function.

(Ideally I'd imagine vb2_queue_add_buffer() to append the buffer
at the end of the queue and increment the num_buffers internally, but it
doesn't have to happen now, as this series is already quite complex...)

>  		call_void_bufop(q, init_buffer, vb);
>  
>  		/* Allocate video buffer memory for the MMAP type */
[snip]
> @@ -2513,7 +2519,8 @@ void vb2_core_queue_release(struct vb2_queue *q)
>  	__vb2_cleanup_fileio(q);
>  	__vb2_queue_cancel(q);
>  	mutex_lock(&q->mmap_lock);
> -	__vb2_queue_free(q, q->num_buffers);
> +	__vb2_queue_free(q, vb2_get_num_buffers(q));
> +	q->num_buffers = 0;

Unrelated change?

>  	mutex_unlock(&q->mmap_lock);
>  }
>  EXPORT_SYMBOL_GPL(vb2_core_queue_release);
> @@ -2542,7 +2549,7 @@ __poll_t vb2_core_poll(struct vb2_queue *q, struct file *file,
>  	/*
>  	 * Start file I/O emulator only if streaming API has not been used yet.
>  	 */
> -	if (q->num_buffers == 0 && !vb2_fileio_is_active(q)) {
> +	if (vb2_get_num_buffers(q) == 0 && !vb2_fileio_is_active(q)) {
>  		if (!q->is_output && (q->io_modes & VB2_READ) &&
>  				(req_events & (EPOLLIN | EPOLLRDNORM))) {
>  			if (__vb2_init_fileio(q, 1))
> @@ -2580,7 +2587,7 @@ __poll_t vb2_core_poll(struct vb2_queue *q, struct file *file,
>  	 * For output streams you can call write() as long as there are fewer
>  	 * buffers queued than there are buffers available.
>  	 */
> -	if (q->is_output && q->fileio && q->queued_count < q->num_buffers)
> +	if (q->is_output && q->fileio && q->queued_count < vb2_get_num_buffers(q))
>  		return EPOLLOUT | EPOLLWRNORM;
>  
>  	if (list_empty(&q->done_list)) {
> @@ -2629,8 +2636,8 @@ struct vb2_fileio_buf {
>   * struct vb2_fileio_data - queue context used by file io emulator
>   *
>   * @cur_index:	the index of the buffer currently being read from or
> - *		written to. If equal to q->num_buffers then a new buffer
> - *		must be dequeued.
> + *		written to. If equal to number of already queued buffers
> + *		then a new buffer must be dequeued.

Hmm, that's a significant meaning change compared to the original text. Is
it indended?

>   * @initial_index: in the read() case all buffers are queued up immediately
>   *		in __vb2_init_fileio() and __vb2_perform_fileio() just cycles
>   *		buffers. However, in the write() case no buffers are initially
> @@ -2640,7 +2647,7 @@ struct vb2_fileio_buf {
>   *		buffers. This means that initially __vb2_perform_fileio()
>   *		needs to know what buffer index to use when it is queuing up
>   *		the buffers for the first time. That initial index is stored
> - *		in this field. Once it is equal to q->num_buffers all
> + *		in this field. Once it is equal to num_buffers all

It's not clear what num_buffers means here. Would it make sense to instead
say "number of buffers in the vb2_queue"?

>   *		available buffers have been queued and __vb2_perform_fileio()
>   *		should start the normal dequeue/queue cycle.
>   *
> @@ -2690,7 +2697,7 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
>  	/*
>  	 * Check if streaming api has not been already activated.
>  	 */
> -	if (q->streaming || q->num_buffers > 0)
> +	if (q->streaming || vb2_get_num_buffers(q) > 0)
>  		return -EBUSY;
>  
>  	/*
> @@ -2740,7 +2747,7 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
>  	/*
>  	 * Get kernel address of each buffer.
>  	 */
> -	for (i = 0; i < q->num_buffers; i++) {
> +	for (i = 0; i < vb2_get_num_buffers(q); i++) {
>  		/* vb can never be NULL when using fileio. */
>  		vb = vb2_get_buffer(q, i);
>  
> @@ -2759,18 +2766,23 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
>  		/*
>  		 * Queue all buffers.
>  		 */
> -		for (i = 0; i < q->num_buffers; i++) {
> -			ret = vb2_core_qbuf(q, q->bufs[i], NULL, NULL);
> +		for (i = 0; i < vb2_get_num_buffers(q); i++) {
> +			struct vb2_buffer *vb2 = vb2_get_buffer(q, i);
> +
> +			if (!vb2)
> +				continue;
> +
> +			ret = vb2_core_qbuf(q, vb2, NULL, NULL);
>  			if (ret)
>  				goto err_reqbufs;
>  			fileio->bufs[i].queued = 1;
>  		}

Doesn't this part belong to the previous patch that changes q->bufs[x] to
vb2_get_buffer()?

>  		/*
>  		 * All buffers have been queued, so mark that by setting
> -		 * initial_index to q->num_buffers
> +		 * initial_index to num_buffers

What num_buffers?

>  		 */
> -		fileio->initial_index = q->num_buffers;
> -		fileio->cur_index = q->num_buffers;
> +		fileio->initial_index = vb2_get_num_buffers(q);
> +		fileio->cur_index = fileio->initial_index;
>  	}
>  
>  	/*
> @@ -2964,12 +2976,12 @@ static size_t __vb2_perform_fileio(struct vb2_queue *q, char __user *data, size_
>  		 * If we are queuing up buffers for the first time, then
>  		 * increase initial_index by one.
>  		 */
> -		if (fileio->initial_index < q->num_buffers)
> +		if (fileio->initial_index < vb2_get_num_buffers(q))
>  			fileio->initial_index++;
>  		/*
>  		 * The next buffer to use is either a buffer that's going to be
> -		 * queued for the first time (initial_index < q->num_buffers)
> -		 * or it is equal to q->num_buffers, meaning that the next
> +		 * queued for the first time (initial_index < num_buffers)
> +		 * or it is equal to num_buffers, meaning that the next

What num_buffers?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
