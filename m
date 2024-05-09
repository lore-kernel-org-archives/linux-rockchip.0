Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1CCAC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 20:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avNC9qFz6QOdw34qOcILjeBsjIJAh71XXyw9WFlmQwo=; b=TcEwNucmi9G3qo
	f/TCSnRvwpr7SK1AS8hZCwW5YQeOsBi7TBnt/5c5rzVjJHTATz8CRO9ipka55Nt/divtCs1PNYQk6
	QICFabmzzHGwXBAO/U20z+thO+TgIhstOAExTNwf9EOpsr38dFCkbX/3aIYEYJkvkx+8OMX0QuCvz
	trtGDe1wyVvpbmBbSyvhx/qjjFeU1eQGItgjZFWQ8qV82qYHlY79HkQ3ZqlKz79I4QOkbPc4T2yqI
	mLOmbVoJmz/XINQVfjwOVCe/Q7c6Zso1oop0QXZS9vQxe0triJXcRkIZASqMJNWomnMI8qFnDV/uJ
	AuIzeR+Cq1/pNalgJghQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5A99-00000002hb3-0zN0;
	Thu, 09 May 2024 20:13:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5A95-00000002hZA-3fZt
	for linux-rockchip@lists.infradead.org;
	Thu, 09 May 2024 20:13:41 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A1CC2904;
	Thu,  9 May 2024 22:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715285055;
	bh=e7lkbL17JFBkXnmrsWxmCdGFxL1hWtBjFhCz2AmDR8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jNf+Cg/QI9vnCYnFZVb+7XiY/uPBpcyzb1T0SpPUgQM2TRuGcedv6kjwryE2ina5S
	 BMuL/er0UhAn/4bFUpCX1hdj3B4yk1YKgIXkfTkKTtK9yo7yW9MCfZe25UQj7HduwB
	 DrhhW2D1gqLxejn0hKudNIXYZehq9d0E1VdXabwo=
Date: Thu, 9 May 2024 23:04:10 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] media: v4l2-subdev: Fix
 v4l2_subdev_state_get_format() documentation
Message-ID: <20240509200410.GA6407@pendragon.ideasonboard.com>
References: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
 <20240508214045.24716-2-laurent.pinchart+renesas@ideasonboard.com>
 <Zj0WFQo0cHReRCcU@valkosipuli.retiisi.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zj0WFQo0cHReRCcU@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_131340_074314_F526BAF0 
X-CRM114-Status: GOOD (  22.14  )
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

On Thu, May 09, 2024 at 06:29:41PM +0000, Sakari Ailus wrote:
> On Thu, May 09, 2024 at 12:40:43AM +0300, Laurent Pinchart wrote:
> > The documentation of the v4l2_subdev_state_get_format() macro
> > incorrectly references __v4l2_subdev_state_get_format() instead of
> > __v4l2_subdev_state_gen_call(). Fix it, and also update the list of
> > similar macros to add the missing v4l2_subdev_state_get_interval().
> > 
> > Suggested-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > ---
> >  include/media/v4l2-subdev.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> > index e30c463d90e5..b25b6e97ecbd 100644
> > --- a/include/media/v4l2-subdev.h
> > +++ b/include/media/v4l2-subdev.h
> > @@ -1340,12 +1340,12 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
> >   */
> >  /*
> >   * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
> > - * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
> > + * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
> >   * macro below is to come up with the name of the function or macro to call,
> 
> You could drop "below" here, too: the macro definition is above the text.

I think "below" here refers to "usage below". I'll drop it nonetheless.

> Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>

Thanks.

> >   * using the last two arguments (_stream and _pad). The selected function or
> >   * macro is then called using the arguments specified by the caller. A similar
> > - * arrangement is used for v4l2_subdev_state_crop() and
> > - * v4l2_subdev_state_compose() below.
> > + * arrangement is used for v4l2_subdev_state_crop(), v4l2_subdev_state_compose()
> > + * and v4l2_subdev_state_get_interval() below.
> >   */
> >  #define v4l2_subdev_state_get_format(state, pad, ...)			\
> >  	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
