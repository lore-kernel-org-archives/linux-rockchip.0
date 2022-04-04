Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D688BC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 00:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoCS9+Lgvdzv+BCgf0ckwpWywirnqd4KqqRFgFHZsqg=; b=tK5zC2KgYz4Llb
	pxluXoGPTrpIv+53LcG0QmXSLtrQK1hTCeVWoYBTqGHZbI551OJCoeBO2Yjzva3omjasEW59Scfdp
	BaZmgqdAKrmeEyAdkdCX0MHipEU5Jdde0HzC+ABIx0mrmB0Kila7yuqP22EGc3tAVq1wRU47cySLY
	SQBOQEMPe5ukVIgEhOAOpWfoRC9GG//UE85/ErjY/J3FeicDsSaI1azhzrz8P97hDUKQujW/r5AAE
	zXWZoybtr7ltsyQCiPWQ6ib9mvVr/NVimx1hOyJi2QlXTRo0p5y17byQDdORNGLoOG2A3fUS9K3in
	kJyTrvKDEkxodIBd/toA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbAOX-00Ccqj-SM; Mon, 04 Apr 2022 00:16:33 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbAOV-00Ccpy-Q0
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 00:16:33 +0000
Received: by mail-oi1-x231.google.com with SMTP id q129so8597513oif.4
 for <linux-rockchip@lists.infradead.org>; Sun, 03 Apr 2022 17:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sDeGF+MYx4+61NVMd2dbBEp/m5RR7DyRrVH6YT77uYY=;
 b=8FpXIGs0demQMcF9wi+HglWWgziC9NDgvpiniQ4bKSgMVGNPvEIhbaNVe74GaFGxXz
 AzyXQDBrUgmXW0I7c+4PfPkGrlZt14dFiHByNfcaB5ZHtigjt2351EUvpfQhpwl2iYvs
 YK/kRH6XyM9r+5wuPcSLZZ3a7pvZrRdqbWv9JaDTBTwzmY2qvN8XAd1SYKigWClPx/mi
 o0GH09HKV1TDyt1I4Wfd/T2epQmjiQflvLNwzTq4XBU1pVLsweaxLNT6cb+DiinVMIPt
 d2QE3iccjlYOyKjWB3x++6ZajTyu1+SbJZ3sRLxyPCDkNCEE39FgMCGRSdzTeP/mqoIp
 MPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sDeGF+MYx4+61NVMd2dbBEp/m5RR7DyRrVH6YT77uYY=;
 b=44wLhFU8AXgF0sGxwwxwjQHS7538Mn0UzGrLi+6uiOvgLoo6e60JDcNgxYGL96FXTC
 hJPR/EmZ3q9aaG4IvqDQHeoKJZeXXD1LmQVGRyCDVnuz+GF6t57vMsyhTRas+ZDEMYO2
 sSb6cIdfn+MpNSERSrmiGzITksSZNmACr7KIACl/Hq2sPm5TZrLyz/voqdc+XlT/GHhi
 xe7nqWJYlg2tvfFA961YSvn59cRQcUG7LPPMN3mmcc6c6skGQx04KH1/ow8eb6HPc+i8
 TQrV89nwujxsD/qKzen1srNOLg3u8rMfv+0Ouy0pYX1YpeuXFXQ7ZRhP/AJhOFrCPrTC
 pVKQ==
X-Gm-Message-State: AOAM530AJUDKyYzIoAAZpTKdqHPAqzpOuMKv8k7kHUojGv9dVIYgd70k
 qsPuWRcSaPnVI2S8r1SPY18MoA==
X-Google-Smtp-Source: ABdhPJxihSPqr2QYA2oL/jcuxEUYVVKdwk8aKwxld6QbdGF7LeA3ST+QQ7UwApuCRdUE/4mhD9DORQ==
X-Received: by 2002:a05:6808:1207:b0:2da:7087:8685 with SMTP id
 a7-20020a056808120700b002da70878685mr9251992oil.167.1649031390668; 
 Sun, 03 Apr 2022 17:16:30 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 w22-20020acaad16000000b002d9c98e551bsm3647786oie.36.2022.04.03.17.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Apr 2022 17:16:30 -0700 (PDT)
Date: Sun, 3 Apr 2022 21:16:23 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, nicolas@ndufresne.ca,
 hverkuil-cisco@xs4all.nl, gregkh@linuxfoundation.org, wens@csie.org,
 samuel@sholland.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [RFC PATCH 4/8] media: hantro: postproc: Fix buffer size
 calculation
Message-ID: <Yko41wsU2r7ScL1c@eze-laptop>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <20220227144926.3006585-5-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220227144926.3006585-5-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220403_171631_881426_2988FAFD 
X-CRM114-Status: GOOD (  19.99  )
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

Hi Jernej,

On Sun, Feb 27, 2022 at 03:49:22PM +0100, Jernej Skrabec wrote:
> When allocating aux buffers for postprocessing, it's assumed that base
> buffer size is the same as that of output. Coincidentally, that's true
> most of the time, but not always. 10-bit source also needs aux buffer
> size which is appropriate for 10-bit native format, even if the output
> format is 8-bit. Similarly, mv sizes and other extra buffer size also
> depends on source width/height, not destination.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
>  .../staging/media/hantro/hantro_postproc.c    | 24 +++++++++++++------
>  drivers/staging/media/hantro/hantro_v4l2.c    |  2 +-
>  drivers/staging/media/hantro/hantro_v4l2.h    |  2 ++
>  3 files changed, 20 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index 248abe5423f0..1a76628d5754 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -12,6 +12,7 @@
>  #include "hantro_hw.h"
>  #include "hantro_g1_regs.h"
>  #include "hantro_g2_regs.h"
> +#include "hantro_v4l2.h"
>  
>  #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
>  { \
> @@ -137,18 +138,27 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
>  	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>  	struct vb2_queue *cap_queue = &m2m_ctx->cap_q_ctx.q;
>  	unsigned int num_buffers = cap_queue->num_buffers;
> +	struct v4l2_pix_format_mplane pix_mp;
> +	const struct hantro_fmt *fmt;
>  	unsigned int i, buf_size;
>  
> -	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
> +	/* this should always pick native format */
> +	fmt = hantro_get_default_fmt(ctx, false);
> +	if (!fmt)
> +		return -EINVAL;
> +	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
> +			    ctx->src_fmt.height);
> +
> +	buf_size = pix_mp.plane_fmt[0].sizeimage;

Took me a while to see that the main change is taking buf_size
from pix_mp, which now takes into account the bit-depth :)

To me this makes sense.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
