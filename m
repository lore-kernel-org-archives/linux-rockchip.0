Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEED2C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXz7Ve+VsKEPBR/8pC/CAqPQsANDUG026Fg/pNAx6cM=; b=l6oNG8Ba6rI4M4
	pEQjhnuT8H0BTC/PfbCMnTFIC0rIhExFS9ALhdsB/efNkJN3w4xH8IMNXH2DQtYXUkSlAjR5if0/C
	ca1/RijT+ShZ9cwH9JyIAB9VoeyN6E80fQW48wAOm+73r1me0zw7T43jiSdWWlnNC2lN9+v1GaS/a
	w+CA3bRt8UTwUeCOc8E1EACdmt/B531UXO/wkUCh/fE6UVQCcPIhQ4t2sbBb9sBw0wOv+pbCEsFuT
	1QXnWfe/Kl0oSG0/VOyg2r0sMiJBExv+3boHLxynOOiDDR0Eo5frv7ppfJxlRTKZgC9bf1eN1PLjW
	Mp7UtL3roDl4wcBhNdhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnIqs-00000003Ae4-2Mnz;
	Thu, 21 Mar 2024 13:53:02 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnIqp-00000003AdY-1RHr
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 13:53:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 794C4CE125E;
	Thu, 21 Mar 2024 13:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A655C433F1;
	Thu, 21 Mar 2024 13:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711029176;
	bh=KK8937rTlcMPx4SfrONLn+P4N7ISl2NjAt1ntV0suFg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fecwGz48g9SRySCISVXLuhTQyIiK2kUwKesBhkNcTb2DWIAgX8TwOreROoo1KXWGu
	 hogy9rB9+YaXibhKyUWUfJb4fuqRmyFombK78zd8e8hVNfg8KH5Sg5d5Mbqv3EywSB
	 /LN2R+bj4Rg+bVAixPHv5Tm6aT1KuO/4Y0rRgi/rkYbZ7TsceyUXtoOomf5rqeLejl
	 ab4ApLBNbR4DhzNHOGYCa82/qHey+5rjyGm1bRV/V+LH0p1ZdfvjKGFbjjgEdhFbYj
	 RMcU3CfyB3IOyl6H/5SMl4/rphlDnGouPZmz+b3FVxibzaQ3uLNRthCAGdpXItTGW3
	 gQg/1HkHT9voQ==
Date: Thu, 21 Mar 2024 14:52:50 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v21 2/9] videobuf2: Add min_reqbufs_allocation field to
 vb2_queue structure
Message-ID: <20240321145250.1db723e6@coco.lan>
In-Reply-To: <20240314153226.197445-3-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
	<20240314153226.197445-3-benjamin.gaignard@collabora.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_065259_777329_8C6B5988 
X-CRM114-Status: GOOD (  36.64  )
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

Em Thu, 14 Mar 2024 16:32:19 +0100
Benjamin Gaignard <benjamin.gaignard@collabora.com> escreveu:

> Add 'min_reqbufs_allocation' field in the vb2_queue structure so drivers
> can specify the minimum number of buffers to allocate when calling
> VIDIOC_REQBUFS.
> When initializing the queue, v4l2 core makes sure that the following
> constraints are respected:
> - the minimum number of buffers to allocate must be at least 2 because
> one buffer is used by the hardware while the other is being processed
> by userspace.
> -if the driver needs 'min_queued_buffers' in the queue before calling
> start_streaming(), then the minimum requirement is 'min_queued_buffers + 1'
> to keep at least one buffer available for userspace.
> 
> Simplify __vb2_init_fileio() by using 'min_reqbufs_allocation' directly
> to avoid duplicating the minimum number of buffers to allocate computation.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
>  .../media/common/videobuf2/videobuf2-core.c   | 38 +++++++++++--------
>  include/media/videobuf2-core.h                | 15 +++++++-
>  2 files changed, 37 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index d8b3c04cb3b5..58c495b253ce 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -866,7 +866,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
>  	/*
>  	 * Make sure the requested values and current defaults are sane.
>  	 */
> -	num_buffers = max_t(unsigned int, *count, q->min_queued_buffers);
> +	num_buffers = max_t(unsigned int, *count, q->min_reqbufs_allocation);
>  	num_buffers = min_t(unsigned int, num_buffers, q->max_num_buffers);
>  	memset(q->alloc_devs, 0, sizeof(q->alloc_devs));
>  	/*
> @@ -918,7 +918,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
>  	 * There is no point in continuing if we can't allocate the minimum
>  	 * number of buffers needed by this vb2_queue.
>  	 */
> -	if (allocated_buffers < q->min_queued_buffers)
> +	if (allocated_buffers < q->min_reqbufs_allocation)
>  		ret = -ENOMEM;
>  
>  	/*
> @@ -2524,6 +2524,25 @@ int vb2_core_queue_init(struct vb2_queue *q)
>  	if (WARN_ON(q->supports_requests && q->min_queued_buffers))
>  		return -EINVAL;
>  
> +	/*
> +	 * The minimum requirement is 2: one buffer is used
> +	 * by the hardware while the other is being processed by userspace.
> +	 */
> +	if (q->min_reqbufs_allocation < 2)
> +		q->min_reqbufs_allocation = 2;
> +
> +	/*
> +	 * If the driver needs 'min_queued_buffers' in the queue before
> +	 * calling start_streaming() then the minimum requirement is
> +	 * 'min_queued_buffers + 1' to keep at least one buffer available
> +	 * for userspace.
> +	 */
> +	if (q->min_reqbufs_allocation < q->min_queued_buffers + 1)
> +		q->min_reqbufs_allocation = q->min_queued_buffers + 1;
> +
> +	if (WARN_ON(q->min_reqbufs_allocation > q->max_num_buffers))
> +		return -EINVAL;
> +
>  	INIT_LIST_HEAD(&q->queued_list);
>  	INIT_LIST_HEAD(&q->done_list);
>  	spin_lock_init(&q->done_lock);
> @@ -2717,7 +2736,6 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
>  	struct vb2_fileio_data *fileio;
>  	struct vb2_buffer *vb;
>  	int i, ret;
> -	unsigned int count = 0;
>  
>  	/*
>  	 * Sanity check
> @@ -2738,18 +2756,8 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
>  	if (q->streaming || vb2_get_num_buffers(q) > 0)
>  		return -EBUSY;
>  
> -	/*
> -	 * Start with q->min_queued_buffers + 1, driver can increase it in
> -	 * queue_setup()
> -	 *
> -	 * 'min_queued_buffers' buffers need to be queued up before you
> -	 * can start streaming, plus 1 for userspace (or in this case,
> -	 * kernelspace) processing.
> -	 */
> -	count = max(2, q->min_queued_buffers + 1);
> -
>  	dprintk(q, 3, "setting up file io: mode %s, count %d, read_once %d, write_immediately %d\n",
> -		(read) ? "read" : "write", count, q->fileio_read_once,
> +		(read) ? "read" : "write", q->min_reqbufs_allocation, q->fileio_read_once,
>  		q->fileio_write_immediately);
>  
>  	fileio = kzalloc(sizeof(*fileio), GFP_KERNEL);
> @@ -2763,7 +2771,7 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
>  	 * Request buffers and use MMAP type to force driver
>  	 * to allocate buffers by itself.
>  	 */
> -	fileio->count = count;
> +	fileio->count = q->min_reqbufs_allocation;
>  	fileio->memory = VB2_MEMORY_MMAP;
>  	fileio->type = q->type;
>  	q->fileio = fileio;
> diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
> index 667bf9ee1101..4a8b9135cec8 100644
> --- a/include/media/videobuf2-core.h
> +++ b/include/media/videobuf2-core.h
> @@ -549,9 +549,21 @@ struct vb2_buf_ops {
>   *		@start_streaming can be called. Used when a DMA engine
>   *		cannot be started unless at least this number of buffers
>   *		have been queued into the driver.
> - *		VIDIOC_REQBUFS will ensure at least @min_queued_buffers
> + *		VIDIOC_REQBUFS will ensure at least @min_queued_buffers + 1
>   *		buffers will be allocated. Note that VIDIOC_CREATE_BUFS will not
>   *		modify the requested buffer count.
> + * @min_reqbufs_allocation: the minimum number of buffers to be allocated when
> + *		calling VIDIOC_REQBUFS. Note that VIDIOC_CREATE_BUFS will *not*
> + *		modify the requested buffer count and does not use this field.
> + *		Drivers can set this if there has to be a certain number of
> + *		buffers available for the hardware to work effectively.
> + *		This allows calling VIDIOC_REQBUFS with a buffer count of 1 and
> + *		it will be automatically adjusted to a workable	buffer count.
> + *		If set, then @min_reqbufs_allocation must be larger than
> + *		@min_queued_buffers + 1.
> + *		If this field is > 3, then it is highly recommended that the
> + *		driver implements the V4L2_CID_MIN_BUFFERS_FOR_CAPTURE/OUTPUT
> + *		control.
>   * @alloc_devs:	&struct device memory type/allocator-specific per-plane device
>   */
>  /*
> @@ -622,6 +634,7 @@ struct vb2_queue {
>  	u32				timestamp_flags;
>  	gfp_t				gfp_flags;
>  	u32				min_queued_buffers;
> +	u32				min_reqbufs_allocation;
>  
>  	struct device			*alloc_devs[VB2_MAX_PLANES];
>  



Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
