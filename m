Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D027EC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 12:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=luEqHTq7+XzXiRbtCiJJS727dpE4f+jdp4EqwqkabFM=; b=pmxP7JdUg1KlzlQ8c5AZweCDlX
	VFceB4755W00O4yv9qplr8fGgP9U39xZXd81ShD4XbwMdlwakDSHrXqN1w5NGAcAzw89VRe8ix9F8
	24hC2pLR5v8ccmKoDtEz0uecAGMAC1FTy4jCYDm7sYZFElyCExULt0aiSuOs/VvmSz5EB5M6h2uzR
	JaIlczT9G8zR3H26KnvFqSynnn4N8tLpwdVhqUAcIs7zJ+dumJcji+29r/yDqfQUr4HcWKHAukvxI
	T+wWa1QIyJvOIbS332UnlohHOBfLMk85HSNROl4aR7tT9IS+yfPAcbFzrhuthYQwdMK0Yw1O9e7tW
	Ir6I4jZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGcJ-007FYk-30; Sun, 26 Feb 2023 12:59:03 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGcG-007FXK-9i
	for linux-rockchip@lists.infradead.org; Sun, 26 Feb 2023 12:59:01 +0000
Received: by mail-ot1-x331.google.com with SMTP id f19-20020a9d5f13000000b00693ce5a2f3eso2164534oti.8
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Feb 2023 04:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=xU2OW9b85rVHMCoQmN+vBOcqQqQ6/K7t9dGl9R42A6I=;
        b=4fIVpSHDVNIQ0r88f46kz+NnERZrjK9/Nhc/cxBrGIntIe8RjuD3O9v1DCNNFuws8m
         6H3jRVkyZ7FabGfG0xxoO4bZiO96MZW7zy8+O30cg8+v8NpXgxDVQ2ok/pI819pXjqAV
         uDrrVweItV1qixLTHxPogaveel567Wr2yahjYbetowht8jzk4DIHfpkkgZ+9DyAX1TpF
         nDGT/pazv0vMDG/xFccPk9WDDlmOAXHUKw83O6h8AtaTOLnd243wPwz4BupwRqT43HG5
         IjMHZOJ4vcyW9oq0Hl/gh9SbnzpMHBZJwZEwTYo8b/Zo4GvXQgPxEvwrCvu2gowQq/ZI
         ziNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xU2OW9b85rVHMCoQmN+vBOcqQqQ6/K7t9dGl9R42A6I=;
        b=uLqNo3F+iNXVGWaxLINI2nHvKagEhT+8X50APY+IyONOTRQaW0mpNjvRbifmBrFWOL
         JX6pxVui4FkBDh6PJLQt5s2SFwd1l8x/qsC1PlWJSNZpDOrpjfLdjHFmyRbA9K4mePz0
         LMrkQvHqOdEFr8i3vvI+jpav9QXgP/Xrv8IzYymqrzofvhkTmAMmG6hTfNZKFKwVpRVn
         YYiGwI37XWOZnDR/nhD+e14qbif5S0eINTsHLvBO+TaQvMe+QFtfWK6VJxh4mxxTA7fb
         V3cDi9T2YttaiI6JLlQn94fDa5GtGG4WtnzrLODXaz/zY2E/UuU0E84J8rRh32R2vGh6
         IkxQ==
X-Gm-Message-State: AO0yUKVAFIg41o8dDcWf1/0bS4zrHTBlI01oPbHd0sOSoV/+EAoKlXgy
	6uzkRSSRuPxbSJ7l5GfXdv2U2w==
X-Google-Smtp-Source: AK7set/8fqgkojKXCsfLPehtswAr1bPNfmLFCKRTN5FsAKnf51p72+FZXgPWNWIkOhGUT60DoFpQiA==
X-Received: by 2002:a05:6830:2470:b0:686:40e1:2bf3 with SMTP id x48-20020a056830247000b0068640e12bf3mr10316085otr.0.1677416339082;
        Sun, 26 Feb 2023 04:58:59 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.26])
        by smtp.gmail.com with ESMTPSA id w11-20020a9d70cb000000b0068bb3a9e2b9sm1533016otj.77.2023.02.26.04.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 04:58:58 -0800 (PST)
Date: Sun, 26 Feb 2023 09:58:47 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v9 2/6] media: verisilicon: Do not use ctx fields as
 format storage when resetting
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Message-Id: <ZPUOQR.4QD6IOKPPRQ@vanguardiasur.com.ar>
In-Reply-To: <20230220104849.398203-3-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
	<20230220104849.398203-3-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_045900_366312_FF4D9841 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On Mon, Feb 20 2023 at 11:48:45 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> Source and destination pixel formats fields of context structure 
> should
> not be used as storage when resetting the format.
> Use local variables instead and let hantro_set_fmt_out() and
> hantro_set_fmt_cap() set them correctly later.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  .../media/platform/verisilicon/hantro_v4l2.c  | 40 
> +++++++++----------
>  1 file changed, 18 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c 
> b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index d8aa42bd4cd4..d94c99f875c8 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -378,47 +378,43 @@ static void
>  hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_fmt *vpu_fmt;
> -	struct v4l2_pix_format_mplane *fmt;
> +	struct v4l2_pix_format_mplane fmt;
> 
>  	vpu_fmt = hantro_get_default_fmt(ctx, true);
> +	if (!vpu_fmt)
> +		return;
> 
> +	hantro_reset_fmt(&fmt, vpu_fmt);
> +	fmt.width = vpu_fmt->frmsize.min_width;
> +	fmt.height = vpu_fmt->frmsize.min_height;
>  	if (ctx->is_encoder)
> -		fmt = &ctx->dst_fmt;
> -	else
> -		fmt = &ctx->src_fmt;
> -
> -	hantro_reset_fmt(fmt, vpu_fmt);
> -	fmt->width = vpu_fmt->frmsize.min_width;
> -	fmt->height = vpu_fmt->frmsize.min_height;
> -	if (ctx->is_encoder)
> -		hantro_set_fmt_cap(ctx, fmt);
> +		hantro_set_fmt_cap(ctx, &fmt);
>  	else
> -		hantro_set_fmt_out(ctx, fmt);
> +		hantro_set_fmt_out(ctx, &fmt);
>  }
> 
>  static void
>  hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_fmt *raw_vpu_fmt;
> -	struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
> +	struct v4l2_pix_format_mplane raw_fmt, *encoded_fmt;
> 
>  	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
> +	if (!raw_vpu_fmt)
> +		return;
> 
> -	if (ctx->is_encoder) {
> -		raw_fmt = &ctx->src_fmt;
> +	if (ctx->is_encoder)
>  		encoded_fmt = &ctx->dst_fmt;
> -	} else {
> -		raw_fmt = &ctx->dst_fmt;
> +	else
>  		encoded_fmt = &ctx->src_fmt;
> -	}
> 
> -	hantro_reset_fmt(raw_fmt, raw_vpu_fmt);
> -	raw_fmt->width = encoded_fmt->width;
> -	raw_fmt->height = encoded_fmt->height;
> +	hantro_reset_fmt(&raw_fmt, raw_vpu_fmt);
> +	raw_fmt.width = encoded_fmt->width;
> +	raw_fmt.height = encoded_fmt->height;
>  	if (ctx->is_encoder)
> -		hantro_set_fmt_out(ctx, raw_fmt);
> +		hantro_set_fmt_out(ctx, &raw_fmt);
>  	else
> -		hantro_set_fmt_cap(ctx, raw_fmt);
> +		hantro_set_fmt_cap(ctx, &raw_fmt);
>  }
> 
>  void hantro_reset_fmts(struct hantro_ctx *ctx)
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
