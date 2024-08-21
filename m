Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6347FC52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 14:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+WTAp7+0N8+mvYm6f+0wlDZ95SIJb0JT6ddi3ErCZY=; b=gBaoHc/x0m4fA5
	qeeLvRAIFPWHW0nuPXiCAqWwa5Pv++hKB3ezmjrCbHZTH0v3LLaRUHjx+BNRwnUeoYd599UznhywT
	iKWn61tzDlCQqgIEbvLgfYYSpOxpijxx1CdO/PTXE3fjUcO5Q1sl1AmrB7LHTlurJKmrMB2s+xcXT
	smoOsasP8hJsjFbkbtT/YZkef+nO8/oeEZ5wjU9sHBMtHpoHtHd4J8UEJQoTYsUfWwBqoQbH5L5wK
	8i4uUhgmRvHCqRv15m3tj5grJBnYEIv5RtFxBEwOR2UehnOt8mZAKFD9xo1rOUaQLG5AELaq7t5I4
	I/BWy7ymSuv+422jEosA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sglvy-00000009Dsv-1j3a;
	Wed, 21 Aug 2024 14:03:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sglvv-00000009DrR-3FNC
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 14:03:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1sglvq-00064b-Mg; Wed, 21 Aug 2024 16:03:26 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1sglvp-0021gA-Jl; Wed, 21 Aug 2024 16:03:25 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1sglvp-00FXHo-1a;
	Wed, 21 Aug 2024 16:03:25 +0200
Date: Wed, 21 Aug 2024 16:03:25 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: John Keeping <jkeeping@inmusicbrands.com>
Cc: linux-media@vger.kernel.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] media: platform: rga: fix 32-bit DMA limitation
Message-ID: <ZsXzrV2vC4aB8GMq@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	John Keeping <jkeeping@inmusicbrands.com>,
	linux-media@vger.kernel.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
References: <20240812143555.530279-1-jkeeping@inmusicbrands.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812143555.530279-1-jkeeping@inmusicbrands.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_070331_835870_C035E249 
X-CRM114-Status: GOOD (  16.76  )
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

On Mon, 12 Aug 2024 15:35:55 +0100, John Keeping wrote:
> The destination buffer flags are assigned twice but source is not set in
> what looks like a copy+paste mistake.  Assign the source queue flags so
> the 32-bit DMA limitation is handled consistently.
> 
> Fixes: ec9ef8dda2a24 ("media: rockchip: rga: set dma mask to 32 bits")
> Signed-off-by: John Keeping <jkeeping@inmusicbrands.com>

Reviewed-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  drivers/media/platform/rockchip/rga/rga.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 0e768f3e9edab..de532b7ecd74c 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -102,7 +102,7 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
>  	src_vq->drv_priv = ctx;
>  	src_vq->ops = &rga_qops;
>  	src_vq->mem_ops = &vb2_dma_sg_memops;
> -	dst_vq->gfp_flags = __GFP_DMA32;
> +	src_vq->gfp_flags = __GFP_DMA32;
>  	src_vq->buf_struct_size = sizeof(struct rga_vb_buffer);
>  	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
>  	src_vq->lock = &ctx->rga->mutex;
> -- 
> 2.46.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
