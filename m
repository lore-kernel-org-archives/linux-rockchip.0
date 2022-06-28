Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7567BC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 21:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oV+RphiNILwXLUIY8kwvbGf4SGcrsTfTzCn20f6EFE=; b=e35Z/urX65shmc
	2Blpofg2ffynxOK6oZFfEU6nr+cKMXHaX8V3bJUtJ/sOieK7lvPnkD1WFNUPFkTRBIksXxvPxNbi0
	Tmg+0mL1aEtVTzGcEkzyQUsqriBrvT50Trz8VzxMgzQ1TtdVz+A9RF9aUgjdi0dxd/FyKsxsipQ1T
	F0RvJbLtckurIDntSAz8h4wv5qJzZtjbQzIF0Bg2IHo1TtrQAjYFSYhDqngRuZL1vQgDRkar3diD5
	j4PcI+RcIAduJfxiMBj7Xx9kKP6wNce1vRgC1YSPRrR4x3WNuM67EQLL9YvJefzaxa+nNGczSxakq
	e9pfjoBV6SAy0/9yrE3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6IPq-008Bxb-6S; Tue, 28 Jun 2022 21:06:34 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6IPc-008Brf-Nv
	for linux-rockchip@lists.infradead.org; Tue, 28 Jun 2022 21:06:22 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-fe023ab520so18688707fac.10
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jun 2022 14:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=STiH3iHegpDpulyFQR+v1Cyk/1DLN8ULnvsLF3GIIV0=;
        b=Y9HzhG4fGXuQ58JNTmAFjTjRBHNGrWPz+HrW0HyptCDkEDLxl24x+Fxg8apWji3mJQ
         oaHOEEJJMUOnI7cD9j4TldOud0k8owYfERJ6tRP4ajtj6mFEQ1nvagBSs67J2hw4dyGv
         iuKP5ochqtmRHEtnERn9Nwy2h4aWw9bWAFY6iBMTQ9UCPNhBWZVYpUSAtQRZaEgCMQ8d
         l6FhdQyib5yidn20uLINQ4wzcgrVXauqZ/ApbSi2FT8AaRwscP4P6gmMuRIV+ErEo/vG
         axoPhyCHSjyotQ5RNQIh2yMPy6XLbBueSLIvvFeqBZXo+XPrAtIti8vexxRRMx5xFiJT
         1/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=STiH3iHegpDpulyFQR+v1Cyk/1DLN8ULnvsLF3GIIV0=;
        b=xyutGND4NI/B00yuGUmiGd6tTOprIkXk17o4kCbAGUhimbLPDgITMu9NZ2W7sekIXZ
         sf8N828dcwxh1zVz0ZInVSgm6b7X74plMPSnEOIRTTnMxhPub0Ks+x2NWvdoikjk7nTy
         yLSf1fj7U2PgO4tCY3k+k5xN7Zeu60pp1IOP0a3V4Msb2ON6PnDrlFdCWgSlZauZF3+s
         nfK7zYOoG+bC80kM5Br5LrV2WCKuGcfLB0ONr0R2ifCrI3gQJ43O/hQNLaN/L2HxkW9n
         2IMlDWeZKAEmBRH8mnEgHlcSSExL7BfZDSOgWmKB3XpDRIrbcZNCk8O7c5DSF9ssHSXl
         Vixw==
X-Gm-Message-State: AJIora9c4bvFwNfPZh6SpYtbfvdtr81AUBZjFTiZVBZWR3W9qYBKZKpR
	XeCrFYWRF15tDEe97KfFDixxXQ==
X-Google-Smtp-Source: AGRyM1v2ljwfJu4Ftr09DXtpIBJE4LLFvqlHANGlLO3yn9V0hbctPbQFQ7bioOM1VtDqk+iXViSjkA==
X-Received: by 2002:a05:6870:2189:b0:101:cdf6:e0bd with SMTP id l9-20020a056870218900b00101cdf6e0bdmr1005126oae.194.1656450378975;
        Tue, 28 Jun 2022 14:06:18 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id bf9-20020a056808190900b0032f0e611cc0sm7823129oib.19.2022.06.28.14.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 14:06:18 -0700 (PDT)
Date: Tue, 28 Jun 2022 18:06:12 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 6/7] media: hantro: Store VP9 bit depth in context
Message-ID: <YrttRJrgmDji5tVc@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-7-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616202513.351039-7-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_140620_807005_AD78A573 
X-CRM114-Status: GOOD (  19.41  )
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

Jernej,

On Thu, Jun 16, 2022 at 10:25:12PM +0200, Jernej Skrabec wrote:
> Now that we have proper infrastructure for postprocessing 10-bit
> formats, store VP9 bit depth in context.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 01d33dcb0467..afddf7ac0731 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -324,6 +324,24 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
>  	return 0;
>  }
>  
> +static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct hantro_ctx *ctx;
> +
> +	ctx = container_of(ctrl->handler,
> +			   struct hantro_ctx, ctrl_handler);
> +
> +	switch (ctrl->id) {
> +	case V4L2_CID_STATELESS_VP9_FRAME:
> +		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;

Since this affects the possible formats, shouldn't it reset
the decoded format?

In other words, it would mean calling hantro_reset_raw_fmt().

Hopefully, that would be OK and not cause any weird issues?

Nicolas, any feedback?

Thanks,
Ezequiel

> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
>  	.try_ctrl = hantro_try_ctrl,
>  };
> @@ -336,6 +354,10 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
>  	.s_ctrl = hantro_hevc_s_ctrl,
>  };
>  
> +static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
> +	.s_ctrl = hantro_vp9_s_ctrl,
> +};
> +
>  #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
>  					 V4L2_JPEG_ACTIVE_MARKER_COM | \
>  					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
> @@ -503,6 +525,7 @@ static const struct hantro_ctrl controls[] = {
>  		.codec = HANTRO_VP9_DECODER,
>  		.cfg = {
>  			.id = V4L2_CID_STATELESS_VP9_FRAME,
> +			.ops = &hantro_vp9_ctrl_ops,
>  		},
>  	}, {
>  		.codec = HANTRO_VP9_DECODER,
> -- 
> 2.36.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
