Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABDF5D33998
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 15:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVMz2Th0J4Q6gVMLNxdl4i2vSP6s89XFoBjbJjoJC/o=; b=jGXFR1rZGl8Liz
	NZyREbxPuvPRKyZ5J/NnQZyJzhu04P1srHgn8UREqbkITdZH50xxTpNEEMhp3ueu9YNHIGSlzrWQ5
	bpktb+7MDBxy8t6+02Z0xMWimxuqoxFnBh5XG/S/Xbgcn9JGvxai89X8e/Uo8xETY+qYuFGEla0mW
	KOU+meVVUst0DP3rN4wfO3iPTX2zWrSJ1KOGr43aauqqWALgiEGUq/VkCpULFYcJBOxsFGR73ILkk
	HD97C5sZC65mExAi8K2ZvERkYYTswv/GinkdduQxOPP+14zHMkIiyPOXiQJFaeyDkYNs13DukkuK8
	NK2ar5zwLmnOunzQn+dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5S5z-0000000BNyX-2JBu;
	Mon, 28 Oct 2024 15:55:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Rh6-0000000BJlj-0Hvi
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 15:30:13 +0000
Received: from ideasonboard.com (mob-5-90-59-111.net.vodafone.it [5.90.59.111])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B3DF91AFB;
	Mon, 28 Oct 2024 16:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730129405;
	bh=/6Bcj0CPEUpTetdghXBMkQBN5vHJHRw+yJI9qQfbVDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I+73oouv5/YjFLjXkHISCWjde46eiZBgA+BQJ8x78XJjNSTtqajldC1smQ+/c8jiC
	 YBx/UqS7PchhvUddtN+yv1D9vITiZ2gjjYSP+YdrGD2D8fdYsJYK3re9XxNKmwjj0w
	 nYzdfM+1Td4pk9dkbU7Opf3louwFG04/RHqqX/kc=
Date: Mon, 28 Oct 2024 16:30:02 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH v2] media: rkisp1: Reduce min_queued_buffers to 0
Message-ID: <ncxqnajjdty456w6wsk5sonjuk3e2uzvcse7bdmmmmk4lop5i2@73vuqxkol4nr>
References: <20241028143553.36704-1-jacopo.mondi@ideasonboard.com>
 <392682fd-3325-41ab-825d-67cb3de4c7b2@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <392682fd-3325-41ab-825d-67cb3de4c7b2@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_083012_279754_A07AC2A8 
X-CRM114-Status: GOOD (  41.35  )
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

Hi Hans

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

I suspected so :)

>
> And is the RKISP1_MIN_BUFFERS_NEEDED define still needed after this change?

No, and this patch removes it in facts

 -#define RKISP1_MIN_BUFFERS_NEEDED 3
 -

>
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

Yeah, I've read the discussion between you and Tomi and it seemed like
a good time to re-send this patch.

>
> My RFC suggests improvements in the uAPI. With that in place you can use CREATE_BUFS in
> libcamera to get much better control over how many buffers should be allocated.
>

In my understanding min_queued_buffers identifies how many buffers
should be queued before calling start_streaming, and this comes
directly from an hw/driver requirement. This doesn't mean that at
least min_queue_buffers should be queued at all the times during
streaming, at least, I don't see how and where videobuf2 enforces
this. Or does it ?

If the above is correct, then the number of buffers to be queued
during streaming is, in my opinion, less an hw/driver requirement but
more an application decision. As you said an application should be good with
3 buffers (one queued, one currently being written to, one to be
consumed by the application), but in very specific cases where an
application retains the buffer for longer, for whatever reason, it
might need a larger number of queued buffers to provide the DMA
engines a space where to write data without them being discarded (to
scratch buffers or discarded by the DMA engine itself, if the HW
supports that). Or maybe an application is fine to drop frames and
only queue buffers sporadically (if the HW supports that ofc).

For libcamera, and for this specific platform in particular, we're
going to base new developments on the assumption that
min_queued_buffers == 0, and it would be more convenient for use to be
able to access its value from userspace to identify if we're running
on a kernel with or without this patch being applied.

Thanks
  j

> Regards,
>
> 	Hans
>
> >  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> >  	q->lock = &node->vlock;
> >  	q->dev = cap->rkisp1->dev;
> > --
> > 2.47.0
> >
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
