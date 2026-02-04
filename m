Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A4FDE9D410
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 16:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6I/Mt1if6hPA4DnJRSrdiUtTRqYvPJVqdbhEUJviMc=; b=VfVBo10Jdo3iIO
	zIJHJ4/tpN3F8B4woHZ+1dOFQWkuaAyYHtyYAeUdfNWu5YjQpfkaUqA/pB3IA8yPF8yavvy4utRsD
	/A2pYT6+KKt8h6hkqqxsQbfjwKSVgTvH3a8HnvdpPGwAkdCGT4sg9FCXBUYCEA8TSbfAarHDM7lhs
	x1bXl14UA9+G4o0h3KaavM2iEBxLNeilysA2aMFd2yS9OrBUtI1ULtUFDn+W2UIW1QjVPfJBww3YA
	VY2+pxbJHT9EIhWawTGTw0KLgSIxnCr453P4S1ORqatOzHiKWNq3Ifltg+IGmt86Om751FVazeHR6
	JjUT9slBr2YO8PzMJSNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnfs9-00000008loe-2rdM;
	Wed, 04 Feb 2026 16:36:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnfs7-00000008lo6-3AAY;
	Wed, 04 Feb 2026 16:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7uiJxB1yzYT2A6BxL+4h58VPDNU7wHMXQxxqlMMl3YQ=; b=NAGvELqqKFP8Pne4IGxfwtKdhA
	5Rw64/kYAM0zMTTl9bQdzHgnNpiKTfQpo+ddqGL5oU5y5e58Uvitri1zrYeZZMWrhJHX0yTlhZKGi
	p4yizv0IjWyNaVWgXSRK0BVFCSdEMJr4H1tueA2uzU/OwAlytzNRgkh/0KhrU1RucCT2RwNQVunem
	Gee6hjSr5wD9FSTVEn68OU11SQyMXPZ2OncgSzKxbQJKVGqTlbey3rLSYNnecEwMwzI4SCYLMKKTY
	W33aBCw63bk5hSZnYhpnkR34Wqf5TEeXzmgmg+o2Mq58l6PEmbbKCeXgaoebQRT3/JWzwfUrqm3sp
	NAIcb4tQ==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnfs4-00000000tZc-2WdW;
	Wed, 04 Feb 2026 16:36:54 +0000
Received: from thinkpad.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1ECC0593;
	Wed,  4 Feb 2026 17:36:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770222968;
	bh=tbsPWsjIEplvCYj1UTeTpbUnN9fE9qjeHkB6BN/DecE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=bT5kACGXu/f/coZk/BKFUWb3wCmO61hgrtqyp3P+1RyJdcX0MUacDG0lGUlEXELdi
	 aHn7t/dv0QO/mHEVJSZ5Tx/EHlUPqE1uVRLblSTUeYVBFyocacw8yudtoUyClALb46
	 Vv+t3Jf0hGFihyWTSKKXy+RqIPqn8SVmNbT0U6uk=
MIME-Version: 1.0
In-Reply-To: <20260204154004.GB170964@killaraus>
References: <20260204112506.3706049-1-isaac.scott@ideasonboard.com> <20260204112506.3706049-6-isaac.scott@ideasonboard.com> <20260204154004.GB170964@killaraus>
Subject: Re: [PATCH v1 5/6] media: rkisp1: Give buffers back instead of dropping in bypass mode
From: Isaac Scott <isaac.scott@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, mchehab@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Wed, 04 Feb 2026 16:36:47 +0000
Message-ID: <177022300744.3835511.13262707370784191079@isaac-ThinkPad-T16-Gen-2>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_163653_057632_7B1F794C 
X-CRM114-Status: GOOD (  31.69  )
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

Hi Laurent,

Quoting Laurent Pinchart (2026-02-04 15:40:04)
> On Wed, Feb 04, 2026 at 11:25:05AM +0000, Isaac Scott wrote:
> > In the data mode used for YUV passthrough, falling VSYNC events are used
> > to determine when a buffer is complete. This means there is no 'Frame
> > End' signal.
> > 
> > Previously, all buffers would be dropped when bypass mode was active.
> > Instead of dropping every frame, we should return the buffer to user
> > space if it is marked as complete by a falling VSYNC signal.
> > 
> > Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > index 867cdddf9f89..2753be39ab33 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > @@ -832,6 +832,11 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
> >       for (i = 0; i < dev_count; ++i) {
> >               struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
> >  
> > +             if (rkisp1->in_bypass) {
> > +                     rkisp1_handle_buffer(cap);
> > +                     continue;
> > +             }
> > +
> 
> You're completing the buffer if *any* interrupt bit is set, this doesn't
> seem right. At the moment we may not enable interrupts other than the
> one you expect, but that may change later, and this will misbehave.
> You're also not handling the stopping logic, which also seems wrong.
> 
> Finally, what interrupt bit do you expect to see ? There's no VSYNC
> interrupt in the RKISP1_CIF_MI_MIS register. Are you relying on the fact
> that your platform has a single interrupt line for the three interrupt
> sources (CSI2, ISP and MI), and react to the VSYNC interrupt from the
> ISP interrupt here ? That's not right either, not only will it not work
> on platforms that have three separate interrupt lines, but it will also
> cause rkisp1_handle_buffer() to be called for *any* ISP interrupt.
> 
> I'm surprised that the frame end interrupt doesn't fire. It's part of
> the MI, not the ISP, so it shouldn't be affected by bypass mode. You
> should investigate that.

You're right, I think I should get a frame end interrupt. I think what
has happened is during development part I was getting no frame end
interrupts, so I made this change, but it actually turned out to be an
inform_size_err if I recall correctly.

Although it may also be incorrect, I have checked whether I actually do
not get a frame end interrupt by dropping this patch, and it seems I do.
(I must have had my FPGA configured to output the wrong width / height
at the time).

I'll drop this in v2 as it doesn't seem necessary.

Thanks very much,
Isaac

> 
> >               if (!(status & RKISP1_CIF_MI_FRAME(cap)))
> >                       continue;
> >               if (!cap->is_stopping) {
> 
> -- 
> Regards,
> 
> Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
