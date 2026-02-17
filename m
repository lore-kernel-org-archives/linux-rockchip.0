Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 647C3E6817A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Feb 2026 12:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcaMh5GxT5XGhx+PcI9houl4QLXQAgBhPF7sIqO6TUY=; b=a3IUtjY8GLV4de
	xE28tbUkXNhXb2/CVOfV0DMmfDhmpHLauLSVGBb5JqWOsX43LtwqY05TRxY2eUGCS2RdOwO5wT8Uw
	WRZsWk6pW0yu8on6KdCB+XlV/ad1XSz1EzVxdfTzs0oUthr+7x/jYqD+viqR9NFYSz1wm92nbJ+FV
	FzfuvrBFWw1jpR6i5ek8jCcadSE1GFuV5xn35xzgfB/9fX/mXFIbEKHYjadZx4tzZq9zG62LQKXPX
	T4nMKFKdFw0lHBtXSX9f199a+kkJVDC7jxKVeZABikimqLwP4dNY++FcFWkPgMBHmS0Ui8pk4LQtH
	FHujg2hYy/GMrVUdxPXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsK8k-00000008CZC-0GXp;
	Tue, 17 Feb 2026 12:25:18 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsK8g-00000008CYb-450s;
	Tue, 17 Feb 2026 12:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771331111;
	bh=GyWpm1OvKFeNuabdefWlpxAQ7+bEShb8BHADcv3Mbqc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bup9UnAvluGCNoLDUkRBGqW3M3XlqXwkAp4dnX8yIecHvFggYLlGQy4iQf9oWNOIh
	 2Dl0CukM0Hws801FPyfYIhoYuPSiuFw01rN5VCQzAE6zwFbW84Z/oz437xRo993m0K
	 ImGzRA8ZKvHZ5GpoK+vawjMsWlTfVxW9kwy4DWN0Lvn5971SgO3CT2hBYwLe8hraSI
	 k7pDSBUOuTvT0m5RRPM23KFvhfOAYLmz7Zaun2BqdqzZ0ub9a7n5IdIy/O2TA6exMe
	 4eRPHL/tI7f3AbvFVx4ZtwWd8h/QIStKx7hxNNIXAl2g/7fqn22ruZnYpIDbxCnnou
	 hEjezCpf4Y79g==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 392C617E0C21;
	Tue, 17 Feb 2026 13:25:11 +0100 (CET)
Message-ID: <23791918-8fed-404d-ad51-d97966ff58c1@collabora.com>
Date: Tue, 17 Feb 2026 13:25:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: rockchip: rkcif: comply with minimum number of
 buffers requirement
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Collabora Kernel Team <kernel@collabora.com>, stable@kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260216-rkcif-fixes-v1-0-b16db20b6d68@collabora.com>
 <20260216-rkcif-fixes-v1-2-b16db20b6d68@collabora.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260216-rkcif-fixes-v1-2-b16db20b6d68@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_042515_171493_03CE5323 
X-CRM114-Status: GOOD (  18.12  )
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

Hi all,

On 2/16/26 14:49, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> Each stream requires CIF_REQ_BUFS_MIN=1 buffers to enable streaming.
> However, it failed with only one buffer provided.
> 
> Comply with the minimum number of buffers requirement and accept
> exactly one buffer.
> 
> Fixes: 501802e2ad51 ("media: rockchip: rkcif: add abstraction for dma blocks")
> Cc: stable@kernel.org
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../media/platform/rockchip/rkcif/rkcif-stream.c   | 41 +++++++++++-----------
>  1 file changed, 21 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> index e00010a91e8b..5a5ab9e7e86e 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> @@ -106,19 +106,6 @@ static int rkcif_stream_init_buffers(struct rkcif_stream *stream)
>  {
>  	struct v4l2_pix_format_mplane *pix = &stream->pix;
>  
> -	stream->buffers[0] = rkcif_stream_pop_buffer(stream);
> -	if (!stream->buffers[0])
> -		goto err_buff_0;
> -
> -	stream->buffers[1] = rkcif_stream_pop_buffer(stream);
> -	if (!stream->buffers[1])
> -		goto err_buff_1;
> -
> -	if (stream->queue_buffer) {
> -		stream->queue_buffer(stream, 0);
> -		stream->queue_buffer(stream, 1);
> -	}
> -
>  	stream->dummy.size = pix->num_planes * pix->plane_fmt[0].sizeimage;
>  	stream->dummy.vaddr =
>  		dma_alloc_attrs(stream->rkcif->dev, stream->dummy.size,
> @@ -132,16 +119,30 @@ static int rkcif_stream_init_buffers(struct rkcif_stream *stream)
>  			stream->dummy.buffer.buff_addr[i - 1] +
>  			pix->plane_fmt[i - 1].bytesperline * pix->height;
>  
> -	return 0;
> +	stream->buffers[0] = rkcif_stream_pop_buffer(stream);
> +	if (!stream->buffers[0])
> +		goto err_buff_0;
>  
> -err_dummy:
> -	rkcif_stream_return_buffer(stream->buffers[1], VB2_BUF_STATE_QUEUED);
> -	stream->buffers[1] = NULL;
> +	stream->buffers[1] = rkcif_stream_pop_buffer(stream);
> +	if (!stream->buffers[1]) {
> +		stream->buffers[stream->frame_phase] = &stream->dummy.buffer;
> +		stream->buffers[stream->frame_phase]->is_dummy = true;

Apparently I was too quick on the trigger here. This should read
"stream->buffers[1]" in both lines *facepalm*. Will wait for other
responses and send a v2.

Best regards,
Michael

> +	}
> +
> +	if (stream->queue_buffer) {
> +		stream->queue_buffer(stream, 0);
> +		stream->queue_buffer(stream, 1);
> +	}
> +
> +	return 0;
>  
> -err_buff_1:
> -	rkcif_stream_return_buffer(stream->buffers[0], VB2_BUF_STATE_QUEUED);
> -	stream->buffers[0] = NULL;
>  err_buff_0:
> +	dma_free_attrs(stream->rkcif->dev, stream->dummy.size,
> +		       stream->dummy.vaddr,
> +		       stream->dummy.buffer.buff_addr[0],
> +		       DMA_ATTR_NO_KERNEL_MAPPING);
> +	stream->dummy.vaddr = NULL;
> +err_dummy:
>  	return -EINVAL;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
