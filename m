Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441A7C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 23:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2oI41hx+ctQNN6Ri1da9GMqcH6EtJKHtpxysF5boGo=; b=ofagHgSvpq4E7P
	/n6deJbYKQKaA/VN94hXGlAqNtOotS76Y/XNzD3E7QktxDUdDluW/qeAANYjndy7Sgsdik1aQGhu8
	U0YNYMeYLdsY9DgLj+0FDeoOvOztCxnFwaY9nEVUn6stUoIXOLE9tT/Nb30LkFXeCYdlwM3IbIUUI
	YnudfB55Y4whfKfpui9o2cNlYJknOOHDvlur8Z5Sj19jJRXM7A5m+oTRA0nOQYp+sSC2FA5ehj3LO
	UmAOKK0vLNDEkeIeoSkMzvJq7hfUYb9VkRSzTDa11/u0dRiAEzHcHr5debt6uH6ffBUZL81Mn/x1h
	IBPNppq1AmAhfKr6DnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgumi-0000000AfFS-2YFC;
	Wed, 21 Aug 2024 23:30:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sguke-0000000AeYq-2Qmb
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 23:28:30 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6501F2D5;
	Thu, 22 Aug 2024 01:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1724282838;
	bh=9+JvsqBUfEI+RL/ie2rdDQQLLtHrPy2Q8Ug4scOkQMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j77iXEHTan2gR+IoGtFfwGz/Fs0WDsoVUB/amIY39PQ9hdkUY1fUaPkGMfyRQWxiW
	 jjxGP5Zz0YzKo4L387muD4LR+YOTrrR02H0CqaF8vE92jbeLLLcsL11I9V2fTKamXy
	 Rse7FYALlAYmHK/nrJZ5jKP6qDhSXzPQqLuzvqMo=
Date: Thu, 22 Aug 2024 02:28:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v21 2/9] videobuf2: Add min_reqbufs_allocation field to
 vb2_queue structure
Message-ID: <20240821232819.GA18600@pendragon.ideasonboard.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
 <20240314153226.197445-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240314153226.197445-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_162828_792385_FE30DF7A 
X-CRM114-Status: GOOD (  41.04  )
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

Hi Benjamin,

On Thu, Mar 14, 2024 at 04:32:19PM +0100, Benjamin Gaignard wrote:
> Add 'min_reqbufs_allocation' field in the vb2_queue structure so drivers
> can specify the minimum number of buffers to allocate when calling
> VIDIOC_REQBUFS.
> When initializing the queue, v4l2 core makes sure that the following
> constraints are respected:
> - the minimum number of buffers to allocate must be at least 2 because
> one buffer is used by the hardware while the other is being processed
> by userspace.

This breaks userspace for the Renesas vsp1 driver :-( Unit tests fail,
as some of them rely on operation with a single buffer.

The vsp1 is a memory-to-memory processing engine, so operating with a
single buffer is fine in some use cases. I would argue that for live
capture devices there are valid use cases to operate with a single
buffer too. Changing this by default will break use cases.

How can we relax this check ? Should I simply submit a patch that lowers
the minimum to one buffer ?

> -if the driver needs 'min_queued_buffers' in the queue before calling
> start_streaming(), then the minimum requirement is 'min_queued_buffers + 1'
> to keep at least one buffer available for userspace.
> 
> Simplify __vb2_init_fileio() by using 'min_reqbufs_allocation' directly
> to avoid duplicating the minimum number of buffers to allocate computation.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
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

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
