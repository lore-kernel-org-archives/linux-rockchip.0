Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFD7C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 19:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyU3BVm9YtnSQDj/fxDYcvtYwOCAr07A0DzrkGlEhYk=; b=aDl+hcdQsU0gi9
	bNtSYJLf0+d/JM6c7ltA42aRugweBB8haRnSVg5zfMCQ8wtSvHQ6dPQ+V28n4Kb1meo8JyetX7qUI
	EB4jTWoALTaDZh4+N39s3qDqC2NvPrHAAOBsHuCK/q8y4LUWjrBBVaRQx9QUoI+TlxM5uT5+Ncllj
	vnXiRWDRZBCMskLu22SJuZC4f5QAc+zhkFlXq5XxsTAdXMltcA38iYGIzkGZ05hnZ+Qh2j2f9pM5q
	cT3WaGjsAQn/NaoMRWpwEgoUWUIZ5hSqv0585GoGQyALMcXemAqfiWA5HnRjuFVb7oYYxissayKOT
	nWykPRHB3M1CWMi8qHTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pg9VY-007Dhb-1M;
	Sat, 25 Mar 2023 19:24:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pg9VU-007DgX-0d;
	Sat, 25 Mar 2023 19:24:53 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1CE7789F;
	Sat, 25 Mar 2023 20:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679772290;
	bh=tG8wxnDoKhE6wm3AvyjW+76dHK/YLCiCysUyipc/yhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AWjPw8uONxngtUjdrdiW6BYpT8VyfZWnbPubrTVOw9IaNipY+6kwvaZQdi6cA3m3L
	 N+t3QDVjYdSwNg9ghdL9KU3VJWMY1bVV0wkl/yDaKc49CyXXfuKdPb+dXhC7QYjWsF
	 Gth9J41F+BXyOopFAiqzTFz4mLlwj+piAmrgzCTA=
Date: Sat, 25 Mar 2023 21:24:56 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-media@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] media: rkisp1: Make local immutable array
 variables static const
Message-ID: <20230325192456.GE9876@pendragon.ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
 <20221117084217.3892680-3-paul.elder@ideasonboard.com>
 <Y3lYcRySWnrLKpWe@pendragon.ideasonboard.com>
 <Y9MMhSVrWujmfgCR@pendragon.ideasonboard.com>
 <20230324103744.ww67j3di73xg4ois@uno.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324103744.ww67j3di73xg4ois@uno.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_122452_400563_1AA40135 
X-CRM114-Status: GOOD (  29.06  )
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

On Fri, Mar 24, 2023 at 11:37:44AM +0100, Jacopo Mondi wrote:
> Hello
>    the change seems trivial, do we need an explicit ack from Dafna ?

An alternative patch has been merged in commit 4ee8191c7c9f ("media:
rkisp1: make a few const arrays static").

> Dafna are you comfortable being listed as maintainer of this driver or
> do you think you won't be able to dedicate time to it and need help ?
> 
> Thanks
>    j
> 
> On Fri, Jan 27, 2023 at 01:28:05AM +0200, Laurent Pinchart wrote:
> > On Sun, Nov 20, 2022 at 12:28:01AM +0200, Laurent Pinchart wrote:
> > > Hi Dafna,
> > >
> > > Are you fine with this patch, can I include it in my next pull request
> > > along with the other ones from the series ?
> >
> > Ping.
> >
> > > On Thu, Nov 17, 2022 at 05:42:16PM +0900, Paul Elder wrote:
> > > > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > >
> > > > The max_widths and max_heights variables in rkisp1_try_fmt() are
> > > > immutable and don't need to be allocated on the stack every time the
> > > > function is called. Make them static.
> > > >
> > > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > > Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
> > > > ---
> > > >  .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
> > > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > > index 7695ef134908..91e685fdbbe9 100644
> > > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > > @@ -1150,13 +1150,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
> > > >  			   const struct rkisp1_capture_fmt_cfg **fmt_cfg,
> > > >  			   const struct v4l2_format_info **fmt_info)
> > > >  {
> > > > +	static const unsigned int max_widths[] = {
> > > > +		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > > > +		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
> > > > +	};
> > > > +	static const unsigned int max_heights[] = {
> > > > +		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > > > +		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
> > > > +	};
> > > >  	const struct rkisp1_capture_config *config = cap->config;
> > > >  	const struct rkisp1_capture_fmt_cfg *fmt;
> > > >  	const struct v4l2_format_info *info;
> > > > -	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > > > -					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> > > > -	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > > > -					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
> > > >
> > > >  	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
> > > >  	if (!fmt) {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
