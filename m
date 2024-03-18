Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76677C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Mar 2024 10:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhcEuVxATTMIpdiIzR2O7ZdAkgMPM782wW6cbDvQt5Y=; b=rAiyY08m3tCQRj
	D2V/tZxO/iRiJI9irbaruEhT5HJAkO8zDP/fiHTtZ89+OCt+R5TZbv2lCfzXUZmKv2tKyLzeZc1AU
	IydSroN/EjrDAw/zSQTkeaT4qUyLR/DHTUGYhEWAVARctB8YZMah0YYysJjr0CJ6RwwDZBELeseyk
	ATCHolWf3yXt8UU+RHkiPgcLE/9SowVn8f+dFufafZFsTMrBC/kqzydD8abIKt+xMFDYQaAA9doOC
	Xta7Q6zKV+2TS7qiKL99YXr8JD9lwAAnmegxK9coq+d284uCij1HMTePg4dxB9/AXldcFut3v/GxW
	nq/NTOgy1OyWfFlGatoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm9sp-000000083v4-3MiW;
	Mon, 18 Mar 2024 10:06:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm9sn-000000083sf-0iV7
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Mar 2024 10:06:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EDC7A60AB6;
	Mon, 18 Mar 2024 10:06:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5867BC433F1;
	Mon, 18 Mar 2024 10:06:09 +0000 (UTC)
Message-ID: <43d27ed7-94ff-4916-b1f3-07204b2f54ab@xs4all.nl>
Date: Mon, 18 Mar 2024 11:06:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 3/9] media: test-drivers: Set REQBUFS minimum number
 of buffers
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, nicolas@ndufresne.ca
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
 <20240314153226.197445-4-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20240314153226.197445-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_030617_400733_7D7DA7D4 
X-CRM114-Status: GOOD (  22.02  )
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

On 14/03/2024 4:32 pm, Benjamin Gaignard wrote:
> Instead of using 'min_queued_buffers' field to specify the
> minimum number of buffers to be allocated when calling REQBUF
> use 'min_reqbufs_allocation' field which is dedicated to this
> purpose.
> 
> While at it rename vivid_create_queue() parameter.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/test-drivers/vimc/vimc-capture.c | 2 +-
>  drivers/media/test-drivers/vivid/vivid-core.c  | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/test-drivers/vimc/vimc-capture.c b/drivers/media/test-drivers/vimc/vimc-capture.c
> index 2a2d19d23bab..97693561f1e4 100644
> --- a/drivers/media/test-drivers/vimc/vimc-capture.c
> +++ b/drivers/media/test-drivers/vimc/vimc-capture.c
> @@ -432,7 +432,7 @@ static struct vimc_ent_device *vimc_capture_add(struct vimc_device *vimc,
>  	q->mem_ops = vimc_allocator == VIMC_ALLOCATOR_DMA_CONTIG
>  		   ? &vb2_dma_contig_memops : &vb2_vmalloc_memops;
>  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> -	q->min_queued_buffers = 2;
> +	q->min_reqbufs_allocation = 2;
>  	q->lock = &vcapture->lock;
>  	q->dev = v4l2_dev->dev;
>  
> diff --git a/drivers/media/test-drivers/vivid/vivid-core.c b/drivers/media/test-drivers/vivid/vivid-core.c
> index 159c72cbb5bf..11b8520d9f57 100644
> --- a/drivers/media/test-drivers/vivid/vivid-core.c
> +++ b/drivers/media/test-drivers/vivid/vivid-core.c
> @@ -861,7 +861,7 @@ static const struct media_device_ops vivid_media_ops = {
>  static int vivid_create_queue(struct vivid_dev *dev,
>  			      struct vb2_queue *q,
>  			      u32 buf_type,
> -			      unsigned int min_queued_buffers,
> +			      unsigned int min_reqbufs_allocation,
>  			      const struct vb2_ops *ops)
>  {
>  	if (buf_type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->multiplanar)
> @@ -898,7 +898,7 @@ static int vivid_create_queue(struct vivid_dev *dev,
>  	q->mem_ops = allocators[dev->inst] == 1 ? &vb2_dma_contig_memops :
>  						  &vb2_vmalloc_memops;
>  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> -	q->min_queued_buffers = supports_requests[dev->inst] ? 0 : min_queued_buffers;
> +	q->min_reqbufs_allocation = min_reqbufs_allocation;
>  	q->lock = &dev->mutex;
>  	q->dev = dev->v4l2_dev.dev;
>  	q->supports_requests = supports_requests[dev->inst];

How did you test this series? If I run the test-media script using the patch
v4l2-compliance (the v9 series) I get two failures. Both are traced to code
in vivid: meta_out_queue_setup() and touch_cap_queue_setup():

Both have this code:

        if (*nplanes) {
                if (sizes[0] < size)
                        return -EINVAL;
        } else {
                sizes[0] = size;
        }

        if (q_num_bufs + *nbuffers < 2)
                *nbuffers = 2 - q_num_bufs;

        *nplanes = 1;
        return 0;

It's the *nbuffers assignment that is wrong. Looking at vivid-core.c I see
that vivid_create_queue() is called with min_reqbufs_allocation set to 1 for
these two devices. I think that should be 2, and then the code above can
be dropped.

It is probably best to post a v21.1 3/9 patch only.

Regards,

	Hans



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
