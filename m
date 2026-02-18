Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E36E9A04A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Feb 2026 03:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2He+OUubF7WJtOqFMg0+ZlZ16SczWGFHhH3IChoO+zE=; b=fLjEJs+wryUW2i
	TUZT0tPDFbEqZeZ/ncGEXyx4BELFlIfw3xKmQaf/YOsHtuRPSiR7RJ+hxuVHyG2mexUbEVj/3Ek4Y
	phMbApeFgf3NMYL5bs8C8zgp2KH/31+jxzk9RvE2tt7Ikx3W+LPt1Ppwj0/PdD57K0gdI4PwDv0n7
	/QhQ3bcyInUIWGGdUS59YG1EtQQFwtMPp44fxbKbJG6U5uMFGRSJ9xo6993DXjdKyIGE4uLhdyske
	Xk3bnkMnBQBGMm4Ln0EYU3x2XTqefW1GdKs/9UpUd1ZphzkKQ7IGm08gCVqVCey/pbYaAYWxpLoZE
	G97L9wjKrleP+C8eulnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsYAR-00000009ENv-3fzU;
	Wed, 18 Feb 2026 03:23:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsYAO-00000009ENM-3sd3;
	Wed, 18 Feb 2026 03:23:58 +0000
Received: from neptunite.rasen.tech (unknown [IPv6:2404:7a81:160:2100:e39a:e0d4:739a:978])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 425A166B;
	Wed, 18 Feb 2026 04:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1771384982;
	bh=XATtTewez/t8FFgr/Q7a3oAK/bpwADOb4HhHCmUxTR4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=qjQgakFimSjo+7hVS83lyznzRBzJ0wGgos8/mczeTo4OWWaGziEKi8WmzdwLOj6l3
	 zaaSV+S2q447z69uWL2HwUQH82Y4TNYgD9LxMajb9ODdF4Z4aGS1CHRwWrbh7l7stu
	 O92zjCg78vyhneBHkYq/+kv7XlZ0mejUHnISLgSw=
MIME-Version: 1.0
In-Reply-To: <23791918-8fed-404d-ad51-d97966ff58c1@collabora.com>
References: <20260216-rkcif-fixes-v1-0-b16db20b6d68@collabora.com> <20260216-rkcif-fixes-v1-2-b16db20b6d68@collabora.com> <23791918-8fed-404d-ad51-d97966ff58c1@collabora.com>
Subject: Re: [PATCH 2/2] media: rockchip: rkcif: comply with minimum number of buffers requirement
From: Paul Elder <paul.elder@ideasonboard.com>
Cc: Collabora Kernel Team <kernel@collabora.com>, stable@kernel.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dan Carpenter <dan.carpenter@linaro.org>, Hans Verkuil <hverkuil+cisco@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Mehdi Djait <mehdi.djait@linux.intel.com>, Michael Riesch <michael.riesch@collabora.com>, Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Wed, 18 Feb 2026 12:23:48 +0900
Message-ID: <177138502835.607498.8225991057811144969@neptunite.rasen.tech>
User-Agent: alot/0.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_192357_128890_77D98DB8 
X-CRM114-Status: GOOD (  21.11  )
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

Quoting Michael Riesch (2026-02-17 21:25:10)
> Hi all,
> 
> On 2/16/26 14:49, Michael Riesch via B4 Relay wrote:
> > From: Michael Riesch <michael.riesch@collabora.com>
> > 
> > Each stream requires CIF_REQ_BUFS_MIN=1 buffers to enable streaming.
> > However, it failed with only one buffer provided.
> > 
> > Comply with the minimum number of buffers requirement and accept
> > exactly one buffer.
> > 
> > Fixes: 501802e2ad51 ("media: rockchip: rkcif: add abstraction for dma blocks")
> > Cc: stable@kernel.org
> > Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> > ---
> >  .../media/platform/rockchip/rkcif/rkcif-stream.c   | 41 +++++++++++-----------
> >  1 file changed, 21 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> > index e00010a91e8b..5a5ab9e7e86e 100644
> > --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> > +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> > @@ -106,19 +106,6 @@ static int rkcif_stream_init_buffers(struct rkcif_stream *stream)
> >  {
> >       struct v4l2_pix_format_mplane *pix = &stream->pix;
> >  
> > -     stream->buffers[0] = rkcif_stream_pop_buffer(stream);
> > -     if (!stream->buffers[0])
> > -             goto err_buff_0;
> > -
> > -     stream->buffers[1] = rkcif_stream_pop_buffer(stream);
> > -     if (!stream->buffers[1])
> > -             goto err_buff_1;
> > -
> > -     if (stream->queue_buffer) {
> > -             stream->queue_buffer(stream, 0);
> > -             stream->queue_buffer(stream, 1);
> > -     }
> > -
> >       stream->dummy.size = pix->num_planes * pix->plane_fmt[0].sizeimage;
> >       stream->dummy.vaddr =
> >               dma_alloc_attrs(stream->rkcif->dev, stream->dummy.size,
> > @@ -132,16 +119,30 @@ static int rkcif_stream_init_buffers(struct rkcif_stream *stream)
> >                       stream->dummy.buffer.buff_addr[i - 1] +
> >                       pix->plane_fmt[i - 1].bytesperline * pix->height;
> >  
> > -     return 0;
> > +     stream->buffers[0] = rkcif_stream_pop_buffer(stream);
> > +     if (!stream->buffers[0])
> > +             goto err_buff_0;
> >  
> > -err_dummy:
> > -     rkcif_stream_return_buffer(stream->buffers[1], VB2_BUF_STATE_QUEUED);
> > -     stream->buffers[1] = NULL;
> > +     stream->buffers[1] = rkcif_stream_pop_buffer(stream);
> > +     if (!stream->buffers[1]) {
> > +             stream->buffers[stream->frame_phase] = &stream->dummy.buffer;
> > +             stream->buffers[stream->frame_phase]->is_dummy = true;
> 
> Apparently I was too quick on the trigger here. This should read
> "stream->buffers[1]" in both lines *facepalm*. Will wait for other
> responses and send a v2.

With this fix I've tested that it works, and it looks good to me :)


Paul

> 
> Best regards,
> Michael
> 
> > +     }
> > +
> > +     if (stream->queue_buffer) {
> > +             stream->queue_buffer(stream, 0);
> > +             stream->queue_buffer(stream, 1);
> > +     }
> > +
> > +     return 0;
> >  
> > -err_buff_1:
> > -     rkcif_stream_return_buffer(stream->buffers[0], VB2_BUF_STATE_QUEUED);
> > -     stream->buffers[0] = NULL;
> >  err_buff_0:
> > +     dma_free_attrs(stream->rkcif->dev, stream->dummy.size,
> > +                    stream->dummy.vaddr,
> > +                    stream->dummy.buffer.buff_addr[0],
> > +                    DMA_ATTR_NO_KERNEL_MAPPING);
> > +     stream->dummy.vaddr = NULL;
> > +err_dummy:
> >       return -EINVAL;
> >  }
> >  
> > 
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
