Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FA63C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 00:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WN6tVTi62LiS0hxs1R1c4RefapUBVGkbrQLpE/Zkv9s=; b=3wLWPX5wcqwxll
	NCXaNhH16P2p6/AxyBZcZ3YtV4TbEmrxShhfm+CAIaySSJWInLE7Uy96c397Mly5Y2rKmpzwCZmGZ
	hktxFxMDHczyH/+m6oA+3udVbpdi++DQi2t9yq9U7VDeLNIy8Y3YHeET3q1CZx5EIUEwk6R7G1hWk
	Ayvx2OyWE2gDKWaJQdAjyNrVDvpF3UUpkLgM7dBtGvpkibqfBN+lUEjdeDmlO1r57jQ3jN7chV+FJ
	2lmyDfVj91Zx8ftZ/XAi3EX8GDc7Gqujibdok4055WKLSW5U51kufmuM3MV/QisbUTDOu1Wihs95c
	34OOnSsIpIGBaF4iGodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbAWn-00CedP-H5; Mon, 04 Apr 2022 00:25:05 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbAWk-00CecP-NZ
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 00:25:04 +0000
Received: by mail-oi1-x233.google.com with SMTP id k10so8650685oia.0
 for <linux-rockchip@lists.infradead.org>; Sun, 03 Apr 2022 17:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1G2fhWHXOGUibX5yg94QDD822pn32q0wbjaup8hf5s4=;
 b=aLHLHrHcfTvZFQ2F5TbC+6hZWBAhBotkewKH/LbsHTuceDjZOzeR50cv03+s+fBFd3
 8K/70HPL75wiTqDmf/8c+xMQC/mw5pf0P6Kf4P27zwfLxs9lzipCxbRT43cNT10uJ3Ss
 7FTO595x4WxwuhkK2j1PgvdxVr1e8LKwOVBr/rNROIbJP0LVFI43X7WdrZDcetVxi9Ov
 gEvj4N7DYpNtrRhZmG2PWwL+cwqqZKsErYqAhPQlZEdNVO901BmclC85mDR0LdCmwKuS
 NpszSNwMkDbd1D5CAxxyPcQwuxeq3A9l7R3Pf1+pxTG65tfCJuPb1TxJOSBdO4tp/u09
 HuRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1G2fhWHXOGUibX5yg94QDD822pn32q0wbjaup8hf5s4=;
 b=8BeFn5E0tSjlOsvF5YRCoQokyRf+5wQ1k12p7WJHXsmpBJXAHi0LvB34Ypf7uvYxUT
 3/d/zaJSagkDLsva9XgkvsvuOVOnm8opJIkiOkxthSx5EnXvptah4HCDviulYknOUJ+k
 t6fAgwrdkxtGiZv9Av2Ms91ryFqfOA5O5r9Sihz/BTm6a5YFdvHlNqGEQESicGjF6cHK
 kjx8ugi2HHhlDRWYHQMYCtIFQgizain5l35IvxDszBWNgiilSRERm4WolE1dX9zdbroL
 nB2twLiHGqHyg/jW/aimUEZuypU+Ub76thiGn7CHTNMHHMa0cCx+9FUylFVX+X/OU9tN
 2YIA==
X-Gm-Message-State: AOAM532vevC9idw30czYD3c3tEq5ddpWDSBvAYvQJyNZUGPkMiZBu+BH
 6+1Zteo+mFCBBJwMbb12g0Nbcg==
X-Google-Smtp-Source: ABdhPJxWaiImogjvxj3LL5WNbNyYGXaY8CHBqh5rfxUrNTI1rxj34lIu0EqgyDqI9lO9zzb5YhWbcQ==
X-Received: by 2002:a05:6808:1819:b0:2d9:beb5:7fa8 with SMTP id
 bh25-20020a056808181900b002d9beb57fa8mr9184282oib.68.1649031901583; 
 Sun, 03 Apr 2022 17:25:01 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 q16-20020a9d4b10000000b005b22b93d468sm3926610otf.74.2022.04.03.17.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Apr 2022 17:25:00 -0700 (PDT)
Date: Sun, 3 Apr 2022 21:24:53 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, nicolas@ndufresne.ca,
 hverkuil-cisco@xs4all.nl, gregkh@linuxfoundation.org, wens@csie.org,
 samuel@sholland.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [RFC PATCH 5/8] media: hantro: postproc: Fix legacy regs
 configuration
Message-ID: <Yko61YA2DpHi7/4B@eze-laptop>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <20220227144926.3006585-6-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220227144926.3006585-6-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220403_172502_778385_5DD77276 
X-CRM114-Status: GOOD (  17.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sun, Feb 27, 2022 at 03:49:23PM +0100, Jernej Skrabec wrote:
> Some postproc legacy registers were set in VP9 code. Move them to
> postproc and fix their value.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/staging/media/hantro/hantro_g2_vp9_dec.c |  8 --------
>  drivers/staging/media/hantro/hantro_postproc.c   | 10 ++++++++++
>  2 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
> index 91c21b634fab..c9cb11fd95af 100644
> --- a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
> @@ -515,16 +515,8 @@ static void
>  config_bit_depth(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_frame *dec_params)
>  {
>  	if (ctx->dev->variant->legacy_regs) {
> -		u8 pp_shift = 0;
> -
>  		hantro_reg_write(ctx->dev, &g2_bit_depth_y, dec_params->bit_depth);
>  		hantro_reg_write(ctx->dev, &g2_bit_depth_c, dec_params->bit_depth);
> -		hantro_reg_write(ctx->dev, &g2_rs_out_bit_depth, dec_params->bit_depth);
> -
> -		if (dec_params->bit_depth > 8)
> -			pp_shift = 16 - dec_params->bit_depth;
> -
> -		hantro_reg_write(ctx->dev, &g2_pp_pix_shift, pp_shift);
>  		hantro_reg_write(ctx->dev, &g2_pix_shift, 0);
>  	} else {
>  		hantro_reg_write(ctx->dev, &g2_bit_depth_y_minus8, dec_params->bit_depth - 8);
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index 1a76628d5754..11ae663f11b7 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -113,6 +113,16 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
>  
>  	hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
>  	hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
> +	if (ctx->dev->variant->legacy_regs) {
> +		int out_depth = hantro_get_formath_depth(ctx->dst_fmt.pixelformat);
> +		u8 pp_shift = 0;
> +
> +		if (out_depth > 8)
> +			pp_shift = 16 - out_depth;
> +
> +		hantro_reg_write(ctx->dev, &g2_rs_out_bit_depth, out_depth);
> +		hantro_reg_write(ctx->dev, &g2_pp_pix_shift, pp_shift);
> +	}
>  	hantro_reg_write(vpu, &g2_out_rs_e, 1);
>  }
>  
> -- 
> 2.35.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
