Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 935C1C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 22:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLi3f3aPvw8Cvn98qOO7hZWeAbPP2quBySRJGHieLKw=; b=CGH9m+d5oCqADq
	/toJwTntGrF8pgyvrzHQsNX4wTLeHBMOFxqGtkCvQh8nFL9BB2auAxFGwVr0sP3R9DPff43q9csue
	3TSpJ+6Q8kavCXfvj+XTtHNPa3b3GouUamCPBs8XVrUCbOUwP/YB6X/5ziqnDqbHFf/MTbYLM8v2R
	6lNyvK6qzbLHM2XYvv9ijvz0TpWS/15agnFHyWHgKiwRorYiOXaU07OoVF+yNSVK4Lpg3Vn4YKRpF
	j4V1nOl6nM+vfpa6dOhGn/b3dVeTTc8X3DU5PyhgKVdaP4pr0SnbKRxT3cw4Q80okbTAci/sRg3PD
	UF2s9V0mXdYp0YGABNLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owWK8-00HTbV-Bv; Sat, 19 Nov 2022 22:28:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owWJx-00HTZU-9D; Sat, 19 Nov 2022 22:28:22 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E8C39749;
	Sat, 19 Nov 2022 23:28:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668896898;
	bh=5lAZjq/Qa546GFzmky2g0r1fpVjt3znao3kF2DJgorU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lRbem7e6no7CZC6tGJHSggi+AYgWUb1fjX2iTUOa9dex8S3pEAB7aNk9x4l8XIT8A
	 +aYh8Dmo2QPwwXErCY5fV6fyY+zEG8eJZ20Z6wl7j8v9oPxOXpRhUe9l7E4nVzz0px
	 MC45fVXZJWKeiAegECFNe+30kb1xo2fi0JgGXnQs=
Date: Sun, 20 Nov 2022 00:28:01 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] media: rkisp1: Make local immutable array
 variables static const
Message-ID: <Y3lYcRySWnrLKpWe@pendragon.ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
 <20221117084217.3892680-3-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117084217.3892680-3-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221119_142821_513089_AB4ABE8C 
X-CRM114-Status: GOOD (  19.90  )
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

Are you fine with this patch, can I include it in my next pull request
along with the other ones from the series ?

On Thu, Nov 17, 2022 at 05:42:16PM +0900, Paul Elder wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> The max_widths and max_heights variables in rkisp1_try_fmt() are
> immutable and don't need to be allocated on the stack every time the
> function is called. Make them static.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 7695ef134908..91e685fdbbe9 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1150,13 +1150,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
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
> -- 
> 2.35.1
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
