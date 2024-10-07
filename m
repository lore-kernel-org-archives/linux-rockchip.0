Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25449CFB441
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 13:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnmCaXRmK20XWx35CjNJwl3JYQShScBzDupK6yHPFvk=; b=1SuA5X+2sOeHO7
	wdEnMTNp3cM99nyn9vlPS87Ol7BGJUfKtErhgxLi0SXcUOZl/d2qaMZBRFVZV29Mb9WisZw8ueDiU
	hBuyLlV/zxVniRfP0GDYXOFrvkInxTnXU/DWxAwYOwtQB4w/gQjthvUqijTtU2GUR2W3Kq4layN0j
	ICPrZvjHZWIIsPYj7bDXTPwz3G+8OM0bbiRtavtBxuXgLw05QsoC8ug9ij4DjIUPalJArJi0dzygs
	Pm0h/dv6k2Uclm8r2GMk6yNmrgxw8wq/gbt9Ny/SH9ABlvahWwX27X+gXsZJu0lulewpVE5tFhUXB
	7GDaWsVGEeb9EouznPdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoF3-00000002b52-0uIL;
	Mon, 07 Oct 2024 13:57:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoD5-00000002and-3Zoq
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 13:57:40 +0000
Received: from pendragon.ideasonboard.com (unknown [132.205.230.14])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 33DA8D49;
	Mon,  7 Oct 2024 15:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1728309242;
	bh=9JVK802+5ACoKEa0TkByXl7HKF0UgxeNKpNxf+nz1fk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ev1k1wtjs8OXNuEgxr7ac3wE3KkodxTW1yBfVDXl6KzfSlKw69kcm4g3OHfC/h3wK
	 uHkYa0N3U53hx690tDLsq8gCrG3YycUNGks4ovO0NAHxCmcKe78ZIiJrcZi9BOuwLZ
	 d5rNNW4I9sy4b1CLoUh47swUjYWIVSUUCzqvMZjk=
Date: Mon, 7 Oct 2024 16:55:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH] media: rkisp1: Reduce min_queued_buffers to 1
Message-ID: <20241007135532.GB6403@pendragon.ideasonboard.com>
References: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_065540_057862_2160FF5A 
X-CRM114-Status: GOOD (  24.55  )
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

On Mon, Oct 07, 2024 at 02:42:24PM +0200, Jacopo Mondi wrote:
> There apparently is no reason to require 3 queued buffers to call
> streamon() for the RkISP1 as the driver operates with a scratch buffer
> where frames can be directed to if there's no available buffer provided
> by userspace.
> 
> Reduce the number of required buffers to 1 to allow applications to
> operate with a single queued buffer.
> 
> Tested with libcamera, by operating with a single capture a request. The

s/capture a/capture/

> same request (and associated capture buffer) gets recycled once
> completed. This of course causes a frame rate drop but doesn't hinder
> operations.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
> 
> Adam,
>    a few months ago you were exercizing your pinhole app with a single capture
> request for StillCapture operations and you got the video device to hang because
> no enough buffers where provided.
> 	
> This small change should be enough to unblock you. Could you maybe give it a
> spin if you're still working on this ?
> 
> Thanks
>    j
> ---
> 
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 2bddb4fa8a5c..34adaecdee54 100644
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
> @@ -1563,7 +1561,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  	q->ops = &rkisp1_vb2_ops;
>  	q->mem_ops = &vb2_dma_contig_memops;
>  	q->buf_struct_size = sizeof(struct rkisp1_buffer);
> -	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
> +	q->min_queued_buffers = 1;

min_queued_buffers controls two things in vb2:

- It controls the minimum number of buffers that can be allocated, by
  setting

        if (q->min_reqbufs_allocation < q->min_queued_buffers + 1)
                q->min_reqbufs_allocation = q->min_queued_buffers + 1;

  in vb2_core_queue_init(). Note that this ony impacts the
  VIDIOC_REQBUFS ioctl, VIDIOC_CREATE_BUFS can still allocate a lower
  number of buffers.

- It delays the .start_streaming() call until min_queued_buffers buffers
  have been queued.

This patch brings a clear improvement as it allows operating with a
single buffer. Ideally though, it would be nice to set
min_queued_buffers to 0, so that .start_streaming() gets called
synchronously with VIDIOC_STREAMON. Otherwise stream start errors can be
reported later, at VIDIOC_QBUF time.

I expect going for 0 will require more changes in the driver, so I'm
fine merging this patch as-is as a first step.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

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
