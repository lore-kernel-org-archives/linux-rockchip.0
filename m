Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADED9C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 13:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKpykhjj7SRaBkbwsAhhycKqlk5aiCmRdz+RIfOrchQ=; b=WtkSJuUiuay0kv
	KITwGN6C4sWOP2QsjHayCynjRRsG0X3NiPn+TMELYNkYrCZWvRgdW4xglJ31VZJOvvAfmLV4eY/3T
	ll0YufS5X8kFJBo+Jf9isk3N9sYCDgnnRlqkGc1NYZbepLv6LJkkCQT1STvllh4HusM5et4n7pqp3
	vmt+OIQg3nzeojzwTu9v97j+3SkfMWnn7bGvMd0ovTT2xaR8vyPpspiJwFmgKbyHYpxdDnQNnY2b+
	tlA6MBhEAO5XYcXBUpibbDSj6XAcS4QVG/qHTTTSkbgvjHoMJBWEuQ176Q3ZuSGXFuR+gsBdaOt3a
	NlmxNcFzeiezVOy4Kuzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnIrZ-00000003AnP-3mm9;
	Thu, 21 Mar 2024 13:53:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnIrW-00000003Amf-2GOe
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 13:53:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C170CCE129B;
	Thu, 21 Mar 2024 13:53:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 997C6C433C7;
	Thu, 21 Mar 2024 13:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711029220;
	bh=DvBB/6zGVSZEaFi3VzDateQj+BuaDOQRH3kaUMryqAs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SMNmknAsOyNkFkvEajAPGgh18UHLS9x4ff9AqvWrb4D+691nx3lmV4E7gHlOPkx0F
	 5bBarqx7qjYaCJBCSlRvs9pPhuNwC0acUoL548A3yjB8RPuPkoIfG2AnEFGxsKaLeE
	 pgbiL6/DpMZtwT50H8I/RPaJHiRzSTLOSGPYhhNMmC7qpMG4pwrCxqkmRdQG9WiQu5
	 A+TdCUusbi89soOaxyVC3Mm1xCiAXJ7KMl+4FuRw7AnRhU8PVVzmuJZ3jEaCKEuAmG
	 bHqGAzM5ydlWTGBHkEeDJhRoqaR3Gcy1CWImrtzw8WTsbKz42Q7cMG3yTPPM2c6dp5
	 MEZIE5rSopL7A==
Date: Thu, 21 Mar 2024 14:53:34 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v21 3/9] media: test-drivers: Set REQBUFS minimum number
 of buffers
Message-ID: <20240321145334.25c23712@coco.lan>
In-Reply-To: <20240314153226.197445-4-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
	<20240314153226.197445-4-benjamin.gaignard@collabora.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_065343_073172_EEA6646A 
X-CRM114-Status: GOOD (  16.09  )
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

Em Thu, 14 Mar 2024 16:32:20 +0100
Benjamin Gaignard <benjamin.gaignard@collabora.com> escreveu:

> Instead of using 'min_queued_buffers' field to specify the
> minimum number of buffers to be allocated when calling REQBUF
> use 'min_reqbufs_allocation' field which is dedicated to this
> purpose.
> 
> While at it rename vivid_create_queue() parameter.

LGTM.
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
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



Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
