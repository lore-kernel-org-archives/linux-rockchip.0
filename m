Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89021CCA479
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 07:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNHpJ0KA7xJRi8M+274lz/5ueljqkNroh9n8KRGfZ5w=; b=f6QQVrZtgos9GU
	oou+GFtcdAMCzbFT3q3n4BSIjNsIecwZmhAKE1N0vp2N+3/4MKvUmKvfmq1GIU7Ng/33p9OMHLYQT
	4d5Am25S5ztKpZEpxXaYes45cV8dOFVXdRKQ9lad83bcwLOyYpDuvDZ2+TQ8KhudDxBLlCBilWRRF
	+6RFOEEMPXUUmk6DG9kjvITqzr62q0yE6ScHbtTtvCa0AkMfIeRnRGKxMW1d+OgeyJ+GhAkIagJdu
	YXxDDxU9yGA291m5WUqSkVWpNpHWvgLbYnVcRfI0Ms0pH6JJKVsxXEoYb2I+G7LQMpZpz428KDGC9
	VehvcAVEC98hTjUW2/Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEQwP-0025is-Ot; Thu, 21 Jul 2022 07:49:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEQwM-0025fG-V1
	for linux-rockchip@lists.infradead.org; Thu, 21 Jul 2022 07:49:48 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3137B496;
	Thu, 21 Jul 2022 09:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658389783;
	bh=CPjQHhrXXdyNa2+NGD8ownN20SJ22yDUQmBS/tUjUbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aNYKiXz7WpN2LBFAW9zYUS900Hz+ZLS9qF3Xl3TJ7fuDVlUZKqS8jcDWwNHU2ASQB
	 vQfwopzVdaz9+nex/qcpa9LpWYTR7ZT3We5r4SN34BWLYe6MeuJOVbgjZiehJaii/D
	 anGetrNb5eeMmlbjq2UTLYeMqvjggGstz/iGHkZ0=
Date: Thu, 21 Jul 2022 16:49:35 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] media: rkisp1: Make local immutable array variables
 static const
Message-ID: <20220721074935.GI3984498@pyrite.rasen.tech>
References: <20220721065706.31710-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220721065706.31710-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_004947_181601_51F98F6D 
X-CRM114-Status: GOOD (  14.44  )
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

On Thu, Jul 21, 2022 at 09:57:06AM +0300, Laurent Pinchart wrote:
> The max_widths and max_heights variables in rkisp1_try_fmt() are
> immutable and don't need to be allocated on the stack every time the
> function is called. Make them static.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index ef3c9389d684..81177ad08cf0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1162,13 +1162,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
>  			   const struct rkisp1_capture_fmt_cfg **fmt_cfg,
>  			   const struct v4l2_format_info **fmt_info)
>  {
> +	static const unsigned int max_widths[] = {
> +		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> +		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
> +	};
> +	static const unsigned int max_heights[] = {
> +		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> +		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
> +	};
>  	const struct rkisp1_capture_config *config = cap->config;
>  	const struct rkisp1_capture_fmt_cfg *fmt;
>  	const struct v4l2_format_info *info;
> -	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> -					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> -	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> -					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
>  
>  	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
>  	if (!fmt) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
