Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02102C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 13:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GW5b7iKv3UQO2DqcwMN5K/bdMKpubXLgm/jL9qHRAG8=; b=oOyA6PTntG51VN
	mrP0CzLEVwoihabgQr0pGUprQiXwuKeNMH719jErt7V5TcpUg2f0K6xl4uNey5t4e68ftKcO0XwNm
	NBU5IE01tbE5qCa4uEgAuCLqR0nmwhKDGrj7SnrRkATQEOba/qcP5SyMwJvfY9Q2U+hloYzPK23pl
	wAAjC/R1ElFvyi2k39n5a7vpY5EuhuK3xNs6uy5/kmTpY6AN0hqc3CWyTqP/yZHaJANMem55/tp1S
	LGvc8VcZypZF1kcHSynpIsofNMzXOd0n+03hXtozjfbI4+MnqdUGpfW/mXBV4I5Z9m4JtcfOPxui4
	xsnRno1lA/yETvZueDbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnIo1-00000003AGQ-1NWX;
	Thu, 21 Mar 2024 13:50:05 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnInx-00000003AF5-3ADN
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 13:50:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1BAD1CE129B;
	Thu, 21 Mar 2024 13:49:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E471CC433F1;
	Thu, 21 Mar 2024 13:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711028998;
	bh=SnT+trnOBIgAFkauK2EJaaxNT18qG8zwDsEmbwHz2AM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hIk4gRGxGxuB0x7UWZqPKMUDZb+S0UZr3oI2rzKyebKATj6NbvEHzGfG7G6hAKGJb
	 2NGOGrOrrptzH8Usy/P7BSCippt8KendICagbmwtw88RKYD5P88WwFHqUiSE5OuiRx
	 npsvSICctvPB/GbalRrxJVngfzwigvQum0wucaYi3uMY+zrp3Bw0Atpd/BWkAm/8/K
	 DbfOj3fqzxmhnGSaXUNUi8aLNA8G+t01acvH+NEnraLLfDBLs7X+bX6IThYp/6IeEv
	 aVtrpWoTsLfqe2RcQnves32RsgS8ZSrzmt9LoBmax8miFKjDZC7y5ZzNIpwEy0bTw3
	 c3EbnC0TWyBFw==
Date: Thu, 21 Mar 2024 14:49:52 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v21 1/9] media: videobuf2: Update vb2_is_busy() logic
Message-ID: <20240321144952.5effcb82@coco.lan>
In-Reply-To: <20240314153226.197445-2-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
	<20240314153226.197445-2-benjamin.gaignard@collabora.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_065002_369764_B6B06259 
X-CRM114-Status: GOOD (  22.55  )
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

Em Thu, 14 Mar 2024 16:32:18 +0100
Benjamin Gaignard <benjamin.gaignard@collabora.com> escreveu:

> Do not rely on the number of allocated buffers to know if the
> queue is busy but on a flag set when at least one buffer has been allocated
> by REQBUFS or CREATE_BUFS ioctl.
> The flag is reset when REQBUFS is called with count = 0 or the file
> handle is closed.
> This is needed because remove buffers feature will be able to remove
> all the buffers from a queue while streaming so relying on the number
> of allocated buffers in the queue won't be possible.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  drivers/media/common/videobuf2/videobuf2-core.c | 4 ++++
>  include/media/videobuf2-core.h                  | 4 +++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index b6bf8f232f48..d8b3c04cb3b5 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -854,6 +854,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
>  		__vb2_queue_free(q, q_num_bufs);
>  		mutex_unlock(&q->mmap_lock);
>  
> +		q->is_busy = 0;
>  		/*
>  		 * In case of REQBUFS(0) return immediately without calling
>  		 * driver's queue_setup() callback and allocating resources.
> @@ -966,6 +967,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
>  	 */
>  	*count = allocated_buffers;
>  	q->waiting_for_buffers = !q->is_output;
> +	q->is_busy = 1;
>  
>  	return 0;
>  
> @@ -1091,6 +1093,7 @@ int vb2_core_create_bufs(struct vb2_queue *q, enum vb2_memory memory,
>  	 * to the userspace.
>  	 */
>  	*count = allocated_buffers;
> +	q->is_busy = 1;
>  
>  	return 0;
>  
> @@ -2555,6 +2558,7 @@ void vb2_core_queue_release(struct vb2_queue *q)
>  	__vb2_queue_free(q, vb2_get_num_buffers(q));
>  	kfree(q->bufs);
>  	q->bufs = NULL;
> +	q->is_busy = 0;
>  	mutex_unlock(&q->mmap_lock);
>  }
>  EXPORT_SYMBOL_GPL(vb2_core_queue_release);
> diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
> index 8b86996b2719..667bf9ee1101 100644
> --- a/include/media/videobuf2-core.h
> +++ b/include/media/videobuf2-core.h
> @@ -582,6 +582,7 @@ struct vb2_buf_ops {
>   *		released. Used to prevent destroying the queue by other threads.
>   * @is_multiplanar: set if buffer type is multiplanar
>   * @is_output:	set if buffer type is output
> + * @is_busy:	set if at least one buffer has been allocated at some time.
>   * @copy_timestamp: set if vb2-core should set timestamps
>   * @last_buffer_dequeued: used in poll() and DQBUF to immediately return if the
>   *		last decoded buffer was already dequeued. Set for capture queues
> @@ -647,6 +648,7 @@ struct vb2_queue {
>  	unsigned int			waiting_in_dqbuf:1;
>  	unsigned int			is_multiplanar:1;
>  	unsigned int			is_output:1;
> +	unsigned int			is_busy:1;
>  	unsigned int			copy_timestamp:1;
>  	unsigned int			last_buffer_dequeued:1;
>  
> @@ -1166,7 +1168,7 @@ static inline unsigned int vb2_get_num_buffers(struct vb2_queue *q)
>   */
>  static inline bool vb2_is_busy(struct vb2_queue *q)
>  {
> -	return vb2_get_num_buffers(q) > 0;
> +	return !!q->is_busy;
>  }
>  
>  /**



Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
