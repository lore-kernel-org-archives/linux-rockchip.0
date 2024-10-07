Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260C6CFB443
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 13:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuUjxnDofyxI9wH0I/M7sZ+JelT5e/sTyY4tTQyOJoY=; b=MrrpIGOItyRAaw
	JagS74FmvostZgUQUUohD7F7iW7kJBasy1TIf8c8+67l0sd7eOo4+PUJpJp9yM63BhypIUPSndnmH
	3w3lkJ3GPMIXKf+0u6vPwVHIJTRzWdDohSU7yFBxhuZpvegVEkh596GMBPFIZqyFNM02a2DhwHREM
	fexeSiByg76VMaX+lX/1R0T1XGtDUx3qZHIk1vHwTSxeXbOgmeHY+ZAkjcEAf3NdOsFPuRKDVPRZL
	QZkk/pfDD6VRjCQ8m+zRIc86b+aTC3XNIRfpoQ2MKLEFBwlQepRHd4pkfBxbfXb4eWVOWUqhkN5pt
	J/HjSBcAXqDQZJRCFchA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxo8Q-00000002a0P-0S2a;
	Mon, 07 Oct 2024 13:50:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxo5P-00000002ZP9-2Kjf
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 13:47:45 +0000
Received: from pendragon.ideasonboard.com (unknown [132.205.230.14])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D4FC9D49;
	Mon,  7 Oct 2024 15:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1728308764;
	bh=qskkxcmC/vCV4Vt/RLO7XR0wYzs5bGYBv2xmxZEFU+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s+DeR30JoyYakVNFTJtoLJfUbQRih1vEt/bVWzI+TPTC1wUcBKLj75x6Upv+f6hy9
	 VT+irHGFt3Jbt8JeGSdZgB1Stf3XPeOlnej7Y/qWfweB9tD+/SKZ4xPZX57Ix6RU5z
	 uxm4gnfNWyIiS5TY18c8fyIF9yYeCN8d/p7Gstv0=
Date: Mon, 7 Oct 2024 16:47:34 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH] media: rkisp1: Reduce min_queued_buffers to 1
Message-ID: <20241007134734.GA7439@pendragon.ideasonboard.com>
References: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
 <20241007125730.yn6xinehhm73yqob@basti-XPS-13-9310>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007125730.yn6xinehhm73yqob@basti-XPS-13-9310>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_064743_757158_C9449FD2 
X-CRM114-Status: GOOD (  24.43  )
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

On Mon, Oct 07, 2024 at 02:57:30PM +0200, Sebastian Fricke wrote:
> Hey Jacopo,
> 
> On 07.10.2024 14:42, Jacopo Mondi wrote:
> > There apparently is no reason to require 3 queued buffers to call
> > streamon() for the RkISP1 as the driver operates with a scratch buffer
> > where frames can be directed to if there's no available buffer provided
> > by userspace.
> > 
> > Reduce the number of required buffers to 1 to allow applications to
> > operate with a single queued buffer.
> > 
> > Tested with libcamera, by operating with a single capture a request. The
> > same request (and associated capture buffer) gets recycled once
> > completed. This of course causes a frame rate drop but doesn't hinder
> > operations.
> > 
> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > ---
> > 
> > Adam,
> >    a few months ago you were exercizing your pinhole app with a single capture
> > request for StillCapture operations and you got the video device to hang because
> > no enough buffers where provided.
> > 
> > This small change should be enough to unblock you. Could you maybe give it a
> > spin if you're still working on this ?
> > 
> > Thanks
> >    j
> > ---
> > 
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > index 2bddb4fa8a5c..34adaecdee54 100644
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
> 
> It looks like RKISP1_MIN_BUFFERS_NEEDED is used only here, so can you
> remove the define as well?

Isn't that exactly what this patch is doing ?

> rg 'RKISP1_MIN_BUFFERS_NEEDED' 
> drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> 38:#define RKISP1_MIN_BUFFERS_NEEDED 3
> 1566:	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
> 
> Or maybe just change the value, but I am not sure whether this can be
> considered a magic value.
> 
> > +	q->min_queued_buffers = 1;
> >  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> >  	q->lock = &node->vlock;
> >  	q->dev = cap->rkisp1->dev;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
