Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17840C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 14:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRfrMq1F5ikEuVsYb0TNAxz2/z52zReur5Px2INXXB8=; b=I1vc/ktMUBaS+U
	fYQ7conQs7U1PnE8UyzBjaAty6R9erdmWF9SOUpvOfYEa7JeMHmUYfXHkGd9UPo5J6KsF5Jai1uL9
	TfrYd8ZsiMFAi+pbn4GzakOp+lOW8qbgEn0EG59kS5hpx7Wc0f0QdV89h3N1pegTvHXnmApxCxybA
	NGG/plLM4134DZm6GV9myIin3afTixKofaQ8itgEthSq17V7UoxMuO1w2Os4xiOesCj1Fsi4XraTZ
	+ItWraHWbtKU4vRd9jvWLzqK2mxsfoMoV52wvPLZ9cZeoel/wyaDulvBJaW+F0ZellBry7dJCvaNn
	vI90wdEbCGjPcnGc21iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD3Hl-0000000AWDa-302d;
	Fri, 31 May 2024 14:31:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD3Hc-0000000AW7w-34yK
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 14:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1sD3HO-0004xZ-N7; Fri, 31 May 2024 16:30:50 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1sD3HK-003jxx-DT; Fri, 31 May 2024 16:30:46 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1sD3HK-001xjl-13;
	Fri, 31 May 2024 16:30:46 +0200
Date: Fri, 31 May 2024 16:30:46 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] media: rockchip: rga: fix field in OUTPUT buffers
Message-ID: <ZlnfFu-l0ivMUuf8@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de>
 <20240528-rk3568-rga-v1-1-b946e55d9d37@pengutronix.de>
 <22c65578-c3bf-44cc-a9c2-6e1e29260d3e@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22c65578-c3bf-44cc-a9c2-6e1e29260d3e@xs4all.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_073104_870282_316AFAE2 
X-CRM114-Status: GOOD (  22.01  )
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

On Thu, 30 May 2024 14:47:48 +0200, Hans Verkuil wrote:
> On 28/05/2024 16:05, Michael Tretter wrote:
> > Returned buffers shouldn't contain V4L2_FIELD_ANY as field. Set the
> > field to V4L2_FIELD_NONE, if it isn't set.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  drivers/media/platform/rockchip/rga/rga-buf.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
> > index 662c81b6d0b5..77c7535893e3 100644
> > --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> > +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> > @@ -119,6 +119,16 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
> >  	if (IS_ERR(f))
> >  		return PTR_ERR(f);
> >  
> > +	if (V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type)) {
> > +		if (vbuf->field == V4L2_FIELD_ANY)
> > +			vbuf->field = V4L2_FIELD_NONE;
> > +		if (vbuf->field != V4L2_FIELD_NONE) {
> > +			v4l2_err(&ctx->rga->v4l2_dev, "Unsupported field %s\n",
> > +				 v4l2_field_names[vbuf->field]);
> 
> This should be v4l2_dbg: incorrect userspace data should not result in
> spamming of the kernel log. It's fine to report it if debugging is enabled.

I cannot use v4l2_dbg here, as the debug module parameter for the RGA
driver is defined in a different file. I'll just drop the error message
in v2.

Michael

> 
> Regards,
> 
> 	Hans
> 
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> >  	for (i = 0; i < vb->num_planes; i++) {
> >  		vb2_set_plane_payload(vb, i, f->pix.plane_fmt[i].sizeimage);
> >  
> > 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
