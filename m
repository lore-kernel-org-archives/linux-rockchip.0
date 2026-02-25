Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF22F5544C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 03:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdMDF6S/f8UBLhBDWDzqD9RAEI/bYiNxkNO1o8qWVko=; b=0Rkr8LHBdhnKot
	e99XwdBFJZ5Bp08DEts6kv6aD7ZILZMo8GuKaM64bdm+loQwm8Pz3BkiFcMFsdSw++BD88N8Q8O4v
	Y/Acup+8fUuMAOXHUjX5+vCP2jIQcM6JIfS+9L3+QohvnbAwbuofPXPLQZcpkECIgE8qVA2IMVixv
	5dvVOjYCRKioBswO+/bzL9n2Syyfcvp9jMUlAqFTd7kQuug0NJmWD8EgjSsAEhN8gRTBztJ0rm7LH
	PSwKjpvTX6pkrZJVcx2C/akNPoDQbY7DrNFzElWwgWHJ62C3qdAPK3GfoXzj3BV7wo9K+D08670Nr
	9I7f67BC7CVRCQfLfY3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv5Qc-000000038w4-0VmF;
	Wed, 25 Feb 2026 03:19:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv5QZ-000000038vc-1dW2;
	Wed, 25 Feb 2026 03:19:08 +0000
Received: from neptunite.rasen.tech (unknown [IPv6:2404:7a81:160:2100:4acc:2a06:1e26:a070])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 35CD7379;
	Wed, 25 Feb 2026 04:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1771989484;
	bh=86tpInZ8+ci+Ym8kxlgK40xMk2up+pweLCgAFY7KCPU=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=imioVQU3vnKy8bWBA8qBQiSKghe+WaMisXEznZJAQgxbTkoVNUKBgI8DJ5wLROqJ/
	 8JZVq9o9P3BuM8LUHn5saFx1rBWwmw2G8AtmXD3fYu2zTN2gdis1BNvrAyiMR9YveH
	 c8dq6HEpxqL7mHUiWDI7tDrKLWRXZs2zOd/DOc/Y=
MIME-Version: 1.0
In-Reply-To: <20260216-rkcif-fixes-v2-2-ee40931fe0ff@collabora.com>
References: <20260216-rkcif-fixes-v2-0-ee40931fe0ff@collabora.com> <20260216-rkcif-fixes-v2-2-ee40931fe0ff@collabora.com>
Subject: Re: [PATCH v2 2/2] media: rockchip: rkcif: comply with minimum number of buffers requirement
From: Paul Elder <paul.elder@ideasonboard.com>
Cc: Collabora Kernel Team <kernel@collabora.com>, stable@kernel.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@collabora.com>, Chen-Yu Tsai <wens@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dan Carpenter <dan.carpenter@linaro.org>, Hans Verkuil <hverkuil+cisco@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Mehdi Djait <mehdi.djait@linux.intel.com>, Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, michael.riesch@collabora.com
Date: Wed, 25 Feb 2026 12:18:54 +0900
Message-ID: <177198953428.607498.5430457856688755364@neptunite.rasen.tech>
User-Agent: alot/0.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_191907_593107_39557F3F 
X-CRM114-Status: GOOD (  18.00  )
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

Hi Michael,

Thanks for the patch.

Quoting Michael Riesch via B4 Relay (2026-02-20 17:15:08)
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
> Tested-by: Paul Elder <paul.elder@ideasonboard.com>
> Tested-by: Chen-Yu Tsai <wens@kernel.org>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>

Looks good to me.

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  .../media/platform/rockchip/rkcif/rkcif-stream.c   | 44 +++++++++++-----------
>  1 file changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> index e00010a91e8b..f15bee4f7cd7 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> @@ -106,42 +106,42 @@ static int rkcif_stream_init_buffers(struct rkcif_stream *stream)
>  {
>         struct v4l2_pix_format_mplane *pix = &stream->pix;
>  
> -       stream->buffers[0] = rkcif_stream_pop_buffer(stream);
> -       if (!stream->buffers[0])
> -               goto err_buff_0;
> -
> -       stream->buffers[1] = rkcif_stream_pop_buffer(stream);
> -       if (!stream->buffers[1])
> -               goto err_buff_1;
> -
> -       if (stream->queue_buffer) {
> -               stream->queue_buffer(stream, 0);
> -               stream->queue_buffer(stream, 1);
> -       }
> -
>         stream->dummy.size = pix->num_planes * pix->plane_fmt[0].sizeimage;
>         stream->dummy.vaddr =
>                 dma_alloc_attrs(stream->rkcif->dev, stream->dummy.size,
>                                 &stream->dummy.buffer.buff_addr[0], GFP_KERNEL,
>                                 DMA_ATTR_NO_KERNEL_MAPPING);
>         if (!stream->dummy.vaddr)
> -               goto err_dummy;
> +               return -ENOMEM;
>  
>         for (unsigned int i = 1; i < pix->num_planes; i++)
>                 stream->dummy.buffer.buff_addr[i] =
>                         stream->dummy.buffer.buff_addr[i - 1] +
>                         pix->plane_fmt[i - 1].bytesperline * pix->height;
>  
> -       return 0;
> +       stream->buffers[0] = rkcif_stream_pop_buffer(stream);
> +       if (!stream->buffers[0])
> +               goto err_dummy_free;
> +
> +       stream->buffers[1] = rkcif_stream_pop_buffer(stream);
> +       if (!stream->buffers[1]) {
> +               stream->buffers[1] = &stream->dummy.buffer;
> +               stream->buffers[1]->is_dummy = true;
> +       }
>  
> -err_dummy:
> -       rkcif_stream_return_buffer(stream->buffers[1], VB2_BUF_STATE_QUEUED);
> -       stream->buffers[1] = NULL;
> +       if (stream->queue_buffer) {
> +               stream->queue_buffer(stream, 0);
> +               stream->queue_buffer(stream, 1);
> +       }
> +
> +       return 0;
>  
> -err_buff_1:
> -       rkcif_stream_return_buffer(stream->buffers[0], VB2_BUF_STATE_QUEUED);
> -       stream->buffers[0] = NULL;
> -err_buff_0:
> +err_dummy_free:
> +       dma_free_attrs(stream->rkcif->dev, stream->dummy.size,
> +                      stream->dummy.vaddr,
> +                      stream->dummy.buffer.buff_addr[0],
> +                      DMA_ATTR_NO_KERNEL_MAPPING);
> +       stream->dummy.vaddr = NULL;
>         return -EINVAL;
>  }
>  
> 
> -- 
> 2.39.5
> 
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
