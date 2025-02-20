Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 458BEC021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 16:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvpyMz+WdLK5OuoAwE2uD6aUNaVBBpdDYMplqsZ7ckw=; b=UEy57ql6XKpDfa
	+haUObFs5QXkapRj0/GbwKJl003lLgt+Low0kuZmu1VbLsKkGWLMptNXzl3qDFWrlTbdIERoqP5XO
	1fGB0ce7AhE+x3Rnl5STWfTU2ojMg2DGgaSayraHgpZi9sM0jmI7FxTB6AyckY9hh81KdpcMXj6Y/
	Cf9WT/hYoHt0QAIyVQdw+OIS3U/4+1PFD3EqJhw4LLDgZSIwQqAqBkEJC6V4G5hOr8cRnFVVWkd4S
	DxRHW8H5SdjUEQqIvAAXPJFmnzlQ0/3tz8zT/MKLJdzkbTiH13V10r979DintwWj4LkiI6GswSYaD
	iLPYpTuQ9MXpb0FwVGew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9Qt-00000001sEd-0rKK;
	Thu, 20 Feb 2025 16:29:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9OR-00000001rQm-2TYv
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 16:27:21 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 397511193;
	Thu, 20 Feb 2025 17:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1740068754;
	bh=DGDQA8CUj3VE5iEX7cTcf4GvXnj7uWMPLRDyzcyoJGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U9XXooxHOLe6B8H1KuocJBvmtwyYjgvyAblBxbHlx8POxpZ8157YnhVJ3PfDrk+7b
	 7724X79pbNuc+8ySudgWg5TveU0P7dFxJmL4WB496j8TN693CJLZunjkFpzQcpGBeq
	 AKJ5lv7ppZFEd3GRWN8JCwp9PWya8jKAOVow2epg=
Date: Thu, 20 Feb 2025 17:27:14 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH v3] media: rkisp1: Remove min_queued_buffers
Message-ID: <sw2x5l3o5zvlaufe7a4hfbwub3yrzsr3e5qgr6os6brcrpd3zp@2abh2jyru2yd>
References: <20241029082117.55385-1-jacopo.mondi@ideasonboard.com>
 <tpdzxkug5gtive7h4tvl6jn5r7ybb3dby7ajfuwmzigphhlkin@geirq67p6dww>
 <67af5601-922b-4683-9e5f-ccf4fd757dbb@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67af5601-922b-4683-9e5f-ccf4fd757dbb@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_082720_084702_44FE65B8 
X-CRM114-Status: GOOD (  49.33  )
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

On Thu, Feb 20, 2025 at 04:39:59PM +0100, Hans Verkuil wrote:
> On 2/20/25 15:22, Jacopo Mondi wrote:
> > Hello
> >
> > On Tue, Oct 29, 2024 at 09:21:16AM +0100, Jacopo Mondi wrote:
> >> There apparently is no reason to require 3 queued buffers for RkISP1,
> >> as the driver operates with a scratch buffer where data can be
> >> directed to if there's no available buffer provided by userspace.
> >>
> >> Reduce the number of required buffers to 0 by removing the
> >> initialization of min_queued_buffers, to allow applications to operate
> >> by queueing capture buffers on-demand.
> >>
> >> Tested with libcamera, by operating with a single capture request. The
> >> same request (and the associated capture buffer) gets recycled once
> >> completed. This of course causes a frame rate drop but doesn't hinder
> >> operations.
> >>
> >> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> >
> > I just noticed v2 of this series:
> > media: rkisp1: Reduce min_queued_buffers to 1
> >
> > has been collected instead of this v3.
>
> Did you mark your v2 as Superseded in patchwork when you posted the v3?
> I marked your v1 and v2 as Superseded today when I was cleaning up patchwork,
> so I know you didn't :-)
>
> When I post a new version I always mark the old one as Superseded, exactly
> to prevent such things from happening.
>

> Also, more people should help keep patchwork clean. I think I am usually the
> person who is doing this, but this is a collective responsibility.

Yes, and it's a thankless job. So thank you.

>
> Part of the job description for someone with commit rights is actually to
> keep patchwork clean.
>

Part of the motivation to do admin tasks around patch handling
actually comes from a feeling of ownership and responsibility. If
one is given trust and responsibilities then doing admin tasks just
becomes part of what you do as you get through the day.

Don't get me wrong, this is not an excuse for being sluggish, but in
the current process I'm not even sure if it's my responsibility to go
through patchwork. In the end, right now, once I've sent a patch and
replied to comments, then it's not "my business" anymore. Right ?
Wrong ? Not sure, but I'm rather certain that if people is given
ownership of something they will be motivated to care about it.

Anyway, I would like to use this little hiccups as an example of
something that went wrong (for $reasons) in the current model, and
which requires energies from both submitter and maintainers to be
corrected. All the discussion we had have gone into depicting doomsday
scenarios potentially caused by the new model, but I have the feeling
maintainers themselves sometimes do not appreciate the burden the
current process inflicts on them. That's why I'm a little surprised
this taking so long, as the first ones that should want this happening
are the people which are doing most of thankless and underappreciated
housekeeping work that keeps the subsystem functional.

Thank you!


> Regards,
>
> 	Hans
>
> >
> > And I noticed because a user complained to me about this.
> >
> > Now, I can provide an update based on the now merged v2, not a big
> > deal, but this depresses me a bit as the discussion about
> > implementing multi-commiter model is apparently (again) stalled.
> >
> > I know, sh*t happens (TM) and hiccups are expected in the process,
> > we all make mistakes and I'm not even sure through which path the
> > patch has been collected, but I could have handled this one easily,
> > and instead what we have is:
> >
> > 1) an unhappy user that will likely have to wait for the next release
> > 2) me having to send an additional (rather trivial) patch
> > 3) Someone will have to review, collect, PR etc etc
> >
> > (and I'm not even mentioning this patch is 3 lines)
> >
> > Issues like this one seems to be considered a fact of life we decided
> > is fine to live with, while every possible corner case of the proposed
> > multi-committer model is analyzed with great concern like we're
> > trading a perfect model for something that has to be equally perfect.
> >
> > And while I agree the biggest reason for the proverbial v4l2 slow pace
> > is the reviewers scarcity and the limited maintainers bandwidth, now
> > that we have everything in place to reduce the system clogginess
> > it still seems we're not all sold for it. I really don't get it, sorry.
> >
> >
> >> ---
> >> v2->v3:
> >> - Remove min_queued_buffers initialization
> >>
> >> v1->v2:
> >> The first version of this patch set min_queued_buffers to 1, but setting it
> >> to 0 doesn't compromise operations and it's even better as it allows application
> >> to queue buffers to the capture devices on-demand. If a buffer is not provided
> >> to the DMA engines, image data gets directed to the driver's internal scratch
> >> buffer.
> >> ---
> >>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 3 ---
> >>  1 file changed, 3 deletions(-)
> >>
> >> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> >> index 2bddb4fa8a5c..2f0c610e74b9 100644
> >> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> >> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> >> @@ -35,8 +35,6 @@
> >>  #define RKISP1_SP_DEV_NAME	RKISP1_DRIVER_NAME "_selfpath"
> >>  #define RKISP1_MP_DEV_NAME	RKISP1_DRIVER_NAME "_mainpath"
> >>
> >> -#define RKISP1_MIN_BUFFERS_NEEDED 3
> >> -
> >>  enum rkisp1_plane {
> >>  	RKISP1_PLANE_Y	= 0,
> >>  	RKISP1_PLANE_CB	= 1,
> >> @@ -1563,7 +1561,6 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
> >>  	q->ops = &rkisp1_vb2_ops;
> >>  	q->mem_ops = &vb2_dma_contig_memops;
> >>  	q->buf_struct_size = sizeof(struct rkisp1_buffer);
> >> -	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
> >>  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> >>  	q->lock = &node->vlock;
> >>  	q->dev = cap->rkisp1->dev;
> >> --
> >> 2.47.0
> >>
> >>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
