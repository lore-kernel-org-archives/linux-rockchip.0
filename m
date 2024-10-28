Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD852D33997
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 15:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzkzwMVg3Ag5Cjlg3pWkx5UJophnyLHT+MU+jCwIqCQ=; b=w6Ir9/f4HBbXkk
	alhnzPgAQNR11n2z4Ya+D0WJWvpgt1Us5ycX0pK7oXuwTAEig5jJzTHXJvuQiQQ0TG28GDhB6sw3l
	ZcL8Mi6MSSS6Ojf/3SEnSHfE5n769XFIckcphKRqToZhrEk4D8c3+rJLyzBNTGWqbYfAGanzwaBSF
	5Lwf8qTndQE3+W36sPB9xuuk/nx4GTIgzZCG4Amw+K30CzrwCouzkhUa+chgpXVLYZ/anrBEheCj5
	u+OnwKjyW5eQyJXTOeFc3TSFVYsuZOZOKulzlYRRcZZO9cEu4Of2iyg59Z6ec5cZc9V+x1IhRZhsD
	maI7d1B9cq2jPxc7SOzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5RiM-0000000BK1w-2HqW;
	Mon, 28 Oct 2024 15:31:30 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5RX6-0000000BHq3-44ay
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 15:19:54 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E768C743;
	Mon, 28 Oct 2024 16:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730128787;
	bh=g6orTQC54oYNvbTHJnvWmaykWl9/Id342abfy9t75o0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZDIZyYpL+BlBwzQQ0ncGTXKmKBMjqHxniNIIrnoEqm6C/+9bdiydvwgI3FCBVPCnJ
	 aPTLJnhzsQij9s1hPVrjwQFSci/g64QRCKp4NnuURgDEdPpDXdYM4lHIqM/aUft+kz
	 sVn+kutn3lzJPNytWbP+njJbD088oOt1emb16MpQ=
Date: Mon, 28 Oct 2024 17:19:39 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH v2] media: rkisp1: Reduce min_queued_buffers to 0
Message-ID: <20241028151939.GJ24052@pendragon.ideasonboard.com>
References: <20241028143553.36704-1-jacopo.mondi@ideasonboard.com>
 <392682fd-3325-41ab-825d-67cb3de4c7b2@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <392682fd-3325-41ab-825d-67cb3de4c7b2@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_081953_172514_5B96D2B5 
X-CRM114-Status: GOOD (  32.55  )
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

Hi Hans, Jacopo,

On Mon, Oct 28, 2024 at 04:02:13PM +0100, Hans Verkuil wrote:
> On 28/10/2024 15:35, Jacopo Mondi wrote:
> > There apparently is no reason to require 3 queued buffers to call
> > streamon() for the RkISP1 as the driver operates with a scratch buffer
> > where frames can be directed to if there's no available buffer provided
> > by userspace.
> > 
> > Reduce the number of required buffers to 0 to allow applications to
> > operate by queueing capture buffers on-demand.
> > 
> > Tested with libcamera, by operating with a single capture request. The
> > same request (and associated capture buffer) gets recycled once
> > completed. This of course causes a frame rate drop but doesn't hinder
> > operations.
> > 
> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > ---
> > The first version of this patch set min_queued_buffers to 1, but setting it
> > to 0 doesn't compromise operations and it's even better as it allows application
> > to queue buffers to the capture devices on-demand. If a buffer is not provided
> > to the DMA engines, image data gets directed to the driver's internal scratch
> > buffer.
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > index 2bddb4fa8a5c..5fcf9731f41b 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > @@ -35,8 +35,6 @@
> >  #define RKISP1_SP_DEV_NAME	RKISP1_DRIVER_NAME "_selfpath"
> >  #define RKISP1_MP_DEV_NAME	RKISP1_DRIVER_NAME "_mainpath"
> > 
> > -#define RKISP1_MIN_BUFFERS_NEEDED 3
> > -
> >  enum rkisp1_plane {
> >  	RKISP1_PLANE_Y	= 0,
> >  	RKISP1_PLANE_CB	= 1,
> > @@ -1563,7 +1561,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
> >  	q->ops = &rkisp1_vb2_ops;
> >  	q->mem_ops = &vb2_dma_contig_memops;
> >  	q->buf_struct_size = sizeof(struct rkisp1_buffer);
> > -	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
> > +	q->min_queued_buffers = 0;
> 
> You can probably just drop this since the vb2_queue struct is zeroed when it
> is allocated. So no need to set it to 0.
> 
> And is the RKISP1_MIN_BUFFERS_NEEDED define still needed after this change?

Probably not, as the patch drops the define :-)

> Also, see my RFC I posted today:
> 
> https://lore.kernel.org/linux-media/126cd76a-6224-483b-a18d-a3cc89e5ff2d@xs4all.nl/T/#u
> 
> My main concern is that applications that just call VIDIOC_REQBUFS with count = 1
> and expect the driver to change that to a workable value, will, in fact, now just get
> one buffer. And streaming that will cause lots of frame drops.
> 
> It makes sense to leave min_queued_buffers at 0 if a scratch buffer is available,
> but I'm unhappy with the fact that you get a poor experience when REQBUFS(1) is called.

The rkisp1 driver requires a device-specific userspace, so I don't think
we need to care about old and/or dumb applications calling REQBUFS(1).

> My RFC suggests improvements in the uAPI. With that in place you can use CREATE_BUFS in
> libcamera to get much better control over how many buffers should be allocated.
> 
> >  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> >  	q->lock = &node->vlock;
> >  	q->dev = cap->rkisp1->dev;

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
