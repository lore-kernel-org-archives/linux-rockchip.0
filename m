Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32EBAD2AB2B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 12:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYuFtPBS3ob3nnWYpKEzft6DLBiiOl9s20sDpSChdmw=; b=EK8HDBiU/M5EKV
	pQLJcaMLJRI/+Vlo/C6fXqfH4N/g52Mvfl61wN0fST7dCAkcPeKKadsRrMG6CdrSbvMQ476NnaW2g
	k9bs2Y8Hos5qyYg8WPtxLCEdvbmnPIOXh/Lf1i3h2BLmuEdytsJY/HyGNN8+H3As35fRZGoSykHsA
	ovRyPSeQnDf4vBzAxaqLcl08KbbL0NHB2EeO9/1d54bkQ6zaG8JBfD9GYlwbr2sNmVWUlwijiYkvi
	5lnANx1Oa6O5C7My422NHCJkg1ZTZJdlE+WXusuj9+mg6UqBjBXQ8zOmsfgY8yrr9hZ3S575mPv4R
	ExzL52+99DmRvZY80Zcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5l37-0000000EM5O-0pjx;
	Tue, 29 Oct 2024 12:10:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5kPz-0000000EEfJ-22Bq
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 11:29:48 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3388DAF;
	Tue, 29 Oct 2024 12:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730201382;
	bh=lxEaz9zefDj/aMT9+pxqqU4ButtnS0rBn6cwmMQYqaA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hyp3I+tfpgji+te1tB8y4IuN6AP/h3BBi/P6yFtx0CB42Br25C1TlEtYnFvMf8YIc
	 647CrdI57zVI41fUVuPDLN3IltBhpkXHd3CPS6g0OUyZcQXcm9/XYrs9k1X9cWjuA/
	 2hjIyO3XmBdhEa+NykvcSis6t1K7OEMvHmviMEVE=
Date: Tue, 29 Oct 2024 13:29:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH v3] media: rkisp1: Remove min_queued_buffers
Message-ID: <20241029112938.GK22600@pendragon.ideasonboard.com>
References: <20241029082117.55385-1-jacopo.mondi@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241029082117.55385-1-jacopo.mondi@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_042947_686528_CD408696 
X-CRM114-Status: GOOD (  22.24  )
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

Hi Jacopo,

Thank you for the patch.

On Tue, Oct 29, 2024 at 09:21:16AM +0100, Jacopo Mondi wrote:
> There apparently is no reason to require 3 queued buffers for RkISP1,
> as the driver operates with a scratch buffer where data can be
> directed to if there's no available buffer provided by userspace.
> 
> Reduce the number of required buffers to 0 by removing the
> initialization of min_queued_buffers, to allow applications to operate
> by queueing capture buffers on-demand.
> 
> Tested with libcamera, by operating with a single capture request. The
> same request (and the associated capture buffer) gets recycled once
> completed. This of course causes a frame rate drop but doesn't hinder
> operations.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> v2->v3:
> - Remove min_queued_buffers initialization
> 
> v1->v2:
> The first version of this patch set min_queued_buffers to 1, but setting it
> to 0 doesn't compromise operations and it's even better as it allows application
> to queue buffers to the capture devices on-demand. If a buffer is not provided
> to the DMA engines, image data gets directed to the driver's internal scratch
> buffer.
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 2bddb4fa8a5c..2f0c610e74b9 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -35,8 +35,6 @@
>  #define RKISP1_SP_DEV_NAME	RKISP1_DRIVER_NAME "_selfpath"
>  #define RKISP1_MP_DEV_NAME	RKISP1_DRIVER_NAME "_mainpath"
> 
> -#define RKISP1_MIN_BUFFERS_NEEDED 3
> -
>  enum rkisp1_plane {
>  	RKISP1_PLANE_Y	= 0,
>  	RKISP1_PLANE_CB	= 1,
> @@ -1563,7 +1561,6 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  	q->ops = &rkisp1_vb2_ops;
>  	q->mem_ops = &vb2_dma_contig_memops;
>  	q->buf_struct_size = sizeof(struct rkisp1_buffer);
> -	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
>  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>  	q->lock = &node->vlock;
>  	q->dev = cap->rkisp1->dev;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
