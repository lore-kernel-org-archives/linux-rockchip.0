Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA33C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 07:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhPPXZj2GudLxNIdTJBqQqRywghAETF+zqE+IX5/2d4=; b=t5jj1d31KmcylV
	74Gwr6As/WT5H2jD9vkn/N6XlclOyxgRPQC4oDhu7vneYaMy5PbIHd9Ewx05uII3DzQjTVNzedBjT
	wOIkegD01++bWUdk3klfZXUa4oSNRmHafE/fWg6BJnEXDG7+2yaOKc3gnrYfj9M+eFfgwxIu+pKWn
	6geUA7axyPLSVjnNlq+spprG/PDyQuh3s3sEl9h8tG/2m30ZDzvEKarwNyzhD1+6ign6vl4WsDR3P
	KCuUo51mmtP6gABfQQRhS9/CD0tEGihVl0cC2dermvmkafEGayy8oIVsbB7g+Z8Rd7JjeIypCZcw2
	BbJsEyhhmsWpLRm98WxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1kFc-001B7d-KS; Thu, 16 Jun 2022 07:49:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1k8F-00177L-JG
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 07:41:37 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4B39930B;
	Thu, 16 Jun 2022 09:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655365292;
	bh=83ArDhvb0QFjQekie4YKbuYuSiSn6kZfMwCisqy1E0Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e3ilFD0nBpMcba0P/VpiSAhhzoMzKUZsbuU5Z48HDAHFvIXYvjpJ1OT94mBMZubR8
	 xI9AO7LpfJa/fOwmzJStGaynWDQt1gInWiGJbF226+Omwarnt/DSSGF0QxdvsD/9e+
	 L6y6VtD3iW7Er0qkFXaKoRqiB+s4+UqYOO+4bry8=
Date: Thu, 16 Jun 2022 10:41:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: (EXT) [PATCH 10/55] media: rkisp1: cap: Print debug message on
 failed link validation
Message-ID: <Yqreoo/szj8FhH6r@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-11-paul.elder@ideasonboard.com>
 <7310038.DvuYhMxLoT@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7310038.DvuYhMxLoT@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_004135_836827_31DC1403 
X-CRM114-Status: GOOD (  14.21  )
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

Hi Alexander,

On Thu, Jun 16, 2022 at 09:32:17AM +0200, Alexander Stein wrote:
> Am Dienstag, 14. Juni 2022, 21:10:42 CEST schrieb Paul Elder:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > When a link validation failure occurs, print a debug message to help
> > diagnosing the cause.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c index
> > 94819e6c23e2..94a0d787a312 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > @@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct
> > media_link *link)
> > 
> >  	if (sd_fmt.format.height != cap->pix.fmt.height ||
> >  	    sd_fmt.format.width != cap->pix.fmt.width ||
> > -	    sd_fmt.format.code != fmt->mbus)
> > +	    sd_fmt.format.code != fmt->mbus) {
> > +		dev_dbg(cap->rkisp1->dev,
> 
> I wonder if a dev_warn is more suitable here.

I usually recommend dev_dbg() for conditions that are triggered directly
by userspace, to avoid giving unpriviledged applications an(other) easy
way to flood the kernel log.

> > +			"link '%s':%u -> '%s':%u not valid: 0x%04x/ %ux%u != 0x%04x/%ux%u",
> > +			link->source->entity->name, link->source->index,
> > +			link->sink->entity->name, link->sink->index,
> > +			sd_fmt.format.code, sd_fmt.format.width,
> > +			sd_fmt.format.height, fmt->mbus, cap->pix.fmt.width,
> > +			cap->pix.fmt.height);
> >  		return -EPIPE;
> > +	}
> > 
> >  	return 0;
> >  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
