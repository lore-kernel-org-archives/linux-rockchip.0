Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA69C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cZWCdmxQNeTRoh1Yj/wR3u5Mbty/OY1pywMCw1Gk3c=; b=dC16NmU2t7GShJ
	ke8ABN5vy9QuYL5+rc1QJ7vZkHzCpookft/07l3MWlwSJRNLZh+gxWWoWpFMqakSjVKeg9gDWO2Sm
	ci8sMKcPgSPiyoQSNKc/tK4KuKzwEOt9FbEUQExGxiUCmGa8Pafh5dcGvRRNRASgRWsmjvK9qA/IX
	LeP2vgO8wLO//qqqQ7zTvdNKh7tzOYSaVj0o3J2nFbs9NWtBAZGjyuGVRQ7FawqbQ6/DyIHRTyMao
	pnzLcQ3LYh3IHQJdoLXSKiQ3nWgpfNU23I7QaeTm2kqkJkd8t898ogrRI4cq2rkV/dfqeWEzx48bo
	T0gyfNNkibLTei6LdrrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfeo2-004BDB-06;
	Fri, 24 Mar 2023 10:37:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfeny-004BBV-0y;
	Fri, 24 Mar 2023 10:37:55 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F40ACAFD;
	Fri, 24 Mar 2023 11:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679654267;
	bh=vuEBulVH+5BCa9CjmVtqtw6+G2FVlT7nzmxs65AfPC0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b6u838Ce+B4XGhEQ5WjJv8ZJljxFspho/ikGBR1ihloudFKQ0oTihy1fvfZgDaAZA
	 lVO9f03PkSoXL4Uo/ISYLLnYMgAFFY60vONZDgY6BrDSHYm+Fk/EVtaklq1UgaB1hV
	 qTKB6EoM0sqPXe/bp3GoKT7vuVBfCrKzknjkPUZo=
Date: Fri, 24 Mar 2023 11:37:44 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-media@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] media: rkisp1: Make local immutable array
 variables static const
Message-ID: <20230324103744.ww67j3di73xg4ois@uno.localdomain>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
 <20221117084217.3892680-3-paul.elder@ideasonboard.com>
 <Y3lYcRySWnrLKpWe@pendragon.ideasonboard.com>
 <Y9MMhSVrWujmfgCR@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9MMhSVrWujmfgCR@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_033754_509771_240AE7B7 
X-CRM114-Status: GOOD (  26.08  )
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

Hello
   the change seems trivial, do we need an explicit ack from Dafna ?

Dafna are you comfortable being listed as maintainer of this driver or
do you think you won't be able to dedicate time to it and need help ?

Thanks
   j

On Fri, Jan 27, 2023 at 01:28:05AM +0200, Laurent Pinchart wrote:
> Hi Dafna,
>
> On Sun, Nov 20, 2022 at 12:28:01AM +0200, Laurent Pinchart wrote:
> > Hi Dafna,
> >
> > Are you fine with this patch, can I include it in my next pull request
> > along with the other ones from the series ?
>
> Ping.
>
> > On Thu, Nov 17, 2022 at 05:42:16PM +0900, Paul Elder wrote:
> > > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >
> > > The max_widths and max_heights variables in rkisp1_try_fmt() are
> > > immutable and don't need to be allocated on the stack every time the
> > > function is called. Make them static.
> > >
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
> > > ---
> > >  .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
> > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > index 7695ef134908..91e685fdbbe9 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > @@ -1150,13 +1150,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
> > >  			   const struct rkisp1_capture_fmt_cfg **fmt_cfg,
> > >  			   const struct v4l2_format_info **fmt_info)
> > >  {
> > > +	static const unsigned int max_widths[] = {
> > > +		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > > +		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
> > > +	};
> > > +	static const unsigned int max_heights[] = {
> > > +		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > > +		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
> > > +	};
> > >  	const struct rkisp1_capture_config *config = cap->config;
> > >  	const struct rkisp1_capture_fmt_cfg *fmt;
> > >  	const struct v4l2_format_info *info;
> > > -	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > > -					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> > > -	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > > -					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
> > >
> > >  	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
> > >  	if (!fmt) {
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
