Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F4EAC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSITBFBpNz5XYnpiWX7wc7sxEEtB2Dv2sLMOATFuEAQ=; b=YV1wqMjGKhRyTS
	18izIyJRlA+9D/GAvY6CTvlpCvbzPyQZvL1MId7+Vtz2cHdYSPAAdFl+SKdHb0aUar/+UWtcqqQD6
	RDW69hVfY/+3Slxqb8bxYvVBMHeNInj/RioZiDoKPnsJb9F9EjDBtfgWvBLkOLXUg+ORrtSZUs0HH
	6qMAJs4CGJ4p7cGRaCdlWlYmmKGw28w5asD7XRWm15zwi+Hlom5gB5QpF8Lre+wN3DvTMFKXwzCX3
	mCwus0YESXQdNePhnqaAMnB/bVP/pvOA/x3JoKu0x330M84ZkP5C2zM96ekuBiPFUwxxCN+WXWLad
	p92tDHcF9qZNMoDHvcaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y7x-000sRc-Qu; Thu, 30 Jun 2022 17:38:53 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y7d-000sJg-J4
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:38:36 +0000
Received: by mail-oi1-x244.google.com with SMTP id r82so213252oig.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yRt2uPyCTkr3L23mkOV5jzWQCVWH61bPdgdKUhINZi0=;
        b=dUxjXs4MlHvfXO9xVNfCPOq2IDb3+NDw6so8BPXnwxWxhv51RZ3Uh49XkRLb1PVquF
         vXPqYQo3o0XU/wDvQ6ceawvxHBXRA6/9tMKO96IJn9b6JEOhHhvB7nlxlfKd9UN9caB8
         7Ah2Jx6IJa/TbkshlWuKPbumjWqYC/OTi4pxLgsAHTP7xDZfpOjn7w5sOBs2ai7IWgs7
         BOf2Oevb9NpBtcNPYKn8VcOL0QZQmrHo6tDKPFmhyIOpgm1J7r+3HxURB250+u3OgUGt
         QjSBPh2z9yjLRsQFWdO+axuYy17ZZf3rGj9pUwmzGv3kzSIwUgE9cyYMMEYSkGjVZdsr
         Jehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yRt2uPyCTkr3L23mkOV5jzWQCVWH61bPdgdKUhINZi0=;
        b=us2fiTIxxVlh2ANKU6+n7XQudANUWssMwOmtB9frui7ALhBp4Tw2bELdYd++e81ghc
         nraFsdGO6kLumZ2/tVHh0jRNOPu82EPo8DgUkY8WISUV107c+hmCnHrlNfgKQWAe6iC4
         d+gtjp7SKy6PQsUEcsWj/CHwYnMV/hmwSmyrl7auoJI1+09B/8L/FNlfBBPXJhKmTlbh
         0/f7syeTaZ/2UORsIfmWarM1p5qb0lHbwOq1wSRA2rw3Kbb409g07huKJYcW9hBFQzT7
         xkrrlxr+xCd0kSbkkJOoFapUwg0wNwWR3SA0zCyMXbj8qX+K14i+YVXg0lXa2kGGpqHq
         w1uA==
X-Gm-Message-State: AJIora8HrpS15dEMcHEvfOww9J9MowXpPnUJAwF2ntTimjCNcnkwjuiK
	xAM+U2S18n1sf9GladGljg+TMw==
X-Google-Smtp-Source: AGRyM1sMFzpdDko0W+UJF+RaaGAmUzY7TXCDlzU+R3T3PNpyAfQe5AIXUZ1C8LrlBLBZuPyCeeNW5A==
X-Received: by 2002:aca:c282:0:b0:32f:546:61ff with SMTP id s124-20020acac282000000b0032f054661ffmr5879809oif.39.1656610711298;
        Thu, 30 Jun 2022 10:38:31 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id c13-20020aca1c0d000000b003351dbf5e36sm10269648oic.43.2022.06.30.10.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:38:30 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:38:24 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH 5/7] media: Hantro: HEVC: Allows 10-bit bitstream
Message-ID: <Yr3fkPrQXqT+UZNa@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-6-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-6-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_103833_689487_0D22E340 
X-CRM114-Status: GOOD (  14.32  )
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

Hi Benjamin,

On Fri, Jun 17, 2022 at 01:58:00PM +0200, Benjamin Gaignard wrote:
> Stop limiting HEVC support to 8-bits bitstreams also
> accept 10-bits bitstreams.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_hevc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
> index e06837108a09..85688a4df166 100644
> --- a/drivers/staging/media/hantro/hantro_hevc.c
> +++ b/drivers/staging/media/hantro/hantro_hevc.c
> @@ -159,8 +159,8 @@ int hantro_hevc_validate_sps(struct hantro_ctx *ctx, const struct v4l2_ctrl_hevc

I'd like to go back to checking the SPS control directly
in hantro_try_ctrl. I believe the best and most reasonable
place to validate the controls would be TRY_CTRL.

See https://patchwork.linuxtv.org/project/linux-media/patch/20220629195624.45745-2-ezequiel@vanguardiasur.com.ar/.

>  	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
>  		/* Luma and chroma bit depth mismatch */
>  		return -EINVAL;
> -	if (sps->bit_depth_luma_minus8 != 0)
> -		/* Only 8-bit is supported */
> +	if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
> +		/* Only 8-bit and 10-bit is supported */

Having said that, the change looks good:

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

>  		return -EINVAL;
>  
>  	ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
