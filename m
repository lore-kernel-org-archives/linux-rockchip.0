Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41C4C54EAA
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 23:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AT4/CaLLqBOZKe1buM/BUuTwQwgSeuA4gUKRd3cs1yM=; b=S5bF0VAUPgZBSN
	lK6U+fKBRHEurvltbz8P2r3LrtHw/BgUW1FKtGrxVSVxRdp007l8IB9YQG65RLREnWS+qo7uouCYs
	EVSleS1lU8utKyOmiU1eoSIp3HkWDg5gOojHLywZVSgxhi9vkzsR60ri5gRZVEoierv+SjnF2p/rz
	LuOHpaiHtjyChgmGwes/6bEJriUfCePTiedqS4rMvvRKv6BMFVhD7kOsFN4ldWofpIQ0ZfhgHYiRO
	JdiwJg+GASzmyhMq9hokr1M5sTjK7/woP+jEvjvuN3BLpTsMj5PsZjqu1S4y9V5RcRrsnoqb+otK6
	mmzYO+dcVOSvjINisEgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLBfS-00Ck8Q-BE; Thu, 26 Jan 2023 23:28:30 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLBfG-00Ck6Y-W6; Thu, 26 Jan 2023 23:28:20 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4CD63CDB;
	Fri, 27 Jan 2023 00:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1674775689;
	bh=85GVWImqabLaQOCHxWsKf6TcbxMX/QaYIdYeLIfaCmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jR+URH5KqirXEN1bdS/bwqV5ZiQWPoMn7MmH2vwcJtLOLQBAzr6lVqIQ5f5aEDaWb
	 mxRqlKT7o81ByhdPGIDdL97oCrfpMhOtJt0wR1x0Ydd61cLrpf0N1tn0Ui9eRsnREW
	 SSpRzF7bk4FfyLeBq3bkdJEz4l1UrcZglgSLDlKE=
Date: Fri, 27 Jan 2023 01:28:05 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] media: rkisp1: Make local immutable array
 variables static const
Message-ID: <Y9MMhSVrWujmfgCR@pendragon.ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
 <20221117084217.3892680-3-paul.elder@ideasonboard.com>
 <Y3lYcRySWnrLKpWe@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3lYcRySWnrLKpWe@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_152819_311229_B6F53D6C 
X-CRM114-Status: GOOD (  21.82  )
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

Hi Dafna,

On Sun, Nov 20, 2022 at 12:28:01AM +0200, Laurent Pinchart wrote:
> Hi Dafna,
> 
> Are you fine with this patch, can I include it in my next pull request
> along with the other ones from the series ?

Ping.

> On Thu, Nov 17, 2022 at 05:42:16PM +0900, Paul Elder wrote:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > The max_widths and max_heights variables in rkisp1_try_fmt() are
> > immutable and don't need to be allocated on the stack every time the
> > function is called. Make them static.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
> > ---
> >  .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > index 7695ef134908..91e685fdbbe9 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > @@ -1150,13 +1150,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
> >  			   const struct rkisp1_capture_fmt_cfg **fmt_cfg,
> >  			   const struct v4l2_format_info **fmt_info)
> >  {
> > +	static const unsigned int max_widths[] = {
> > +		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > +		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
> > +	};
> > +	static const unsigned int max_heights[] = {
> > +		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > +		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
> > +	};
> >  	const struct rkisp1_capture_config *config = cap->config;
> >  	const struct rkisp1_capture_fmt_cfg *fmt;
> >  	const struct v4l2_format_info *info;
> > -	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > -					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> > -	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > -					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
> >  
> >  	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
> >  	if (!fmt) {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
