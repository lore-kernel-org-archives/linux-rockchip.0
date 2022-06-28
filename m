Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3550DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 15:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZCc7csIrC+PP8F2bojkoxTTJy+c5Y/7U5tUFEOo6d0=; b=I/Qjg5OWMK6ErE
	ehNPbQEKCGreD/a/6C33Zg0gzKUjcoU26Lp6bTVJFVWARE3ZSmkV4Cb2fCxQxKPpwnTMXWNiF493S
	F54OUCCaK7GLcdwY+gYaNUJCkVnS2wW4lStGXmqukl9ltsaCCTcF/v8QlcvUHf7+LK/1n5H6uZ/e5
	OcFZZgjZM9igl+NXdrxuO6yc4e47V+He60APm85J7gjPyB7RFQ0FxdWlvWoRJFDrl2wqQ4WTJpsTk
	rM6nV52i7HJ0SA0EomRSxzmQBlRgpXLhfXUt0A4BYwP/os/kOQ4Zm//4g96QXoCIOf1NgIkrevGud
	1pT1VISQfoaE7l6j0XXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6DXt-0074NF-1S; Tue, 28 Jun 2022 15:54:33 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6DXn-0074KZ-Gy
	for linux-rockchip@lists.infradead.org; Tue, 28 Jun 2022 15:54:30 +0000
Received: by mail-oi1-x233.google.com with SMTP id u9so17704891oiv.12
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jun 2022 08:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9s0QaBc92dvqSy7LvwRSQHvJrBbfVuzRUIGci4bIuy8=;
        b=EEw+yeY16nQIMGhNOYTbmNvlvpmQkfqixMGy0PlQNnAFNKdadyUdZ3JU0CCEnfhBb+
         5/gtv7MXT4uGm0nLmx9CPi3CHtNawEYWF3kPGtT4sQQtSi3cd//iF1I2thGM2hfzTvj0
         +O/PqdVYwPOtzWCipAbxesPEEOMQP8u/+96NKk0rBQyZ3sv02qw+sfIr7rkPvQrCYupI
         pYEO5/EvmV5teZE7MD01OBVsLE5SVpoHzp4VLDny+JvedIvDl94sLZYYuGRIPDz4a17W
         x150Wruii5psW/Dd+9oRiTR7Q0MSB6n3Z6W1V2ZezTJN+ZEdkTk6cY3kDBKUZznjd+K0
         vlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9s0QaBc92dvqSy7LvwRSQHvJrBbfVuzRUIGci4bIuy8=;
        b=hZtx3brVKqLLboEDLdZYcH1QJKaBMl12LwSe3T3pWe44P4IcavYUFYs1iziSfuO+ey
         lru7jLSN9d3W+aY8YczG5JYlKq/OB1d5F1F0LOeoOH45r/kgcrmOxntVGI7oghn0Alha
         kPUA3vf9TmbaZdYtP+59OVdfCxdDb19U5IsnQr6wGmIdWQ2NZEt0OjbcONak7ol0iNVD
         PKDsH2v7KPGMdXtlyRFzppgNZC+E0w+jJOFniMDLMvdT7oCeIWqsJi64TZZRb3G1Gqma
         ZhgR3bZvjifD1cqZW6LNn5yR1SJcPau3sIff7gdSi7okoaq6sof9jC0zGzJUwCVKud2z
         8kCw==
X-Gm-Message-State: AJIora9De7dMM60KjnJsn/puV+Fch7kXPZsKrSbhqVzlG6xmEy3dWvJy
	8NMKuGDEnFfAEkXVHX0/NaQhDA==
X-Google-Smtp-Source: AGRyM1teDI6cOFjKi7FCrOwX7B8iLc85sr8XBKPl0Vu4QHVwVIZdUlaxtJx+9/MyOXACv4ZuIJYf2w==
X-Received: by 2002:a05:6808:2099:b0:335:1606:2504 with SMTP id s25-20020a056808209900b0033516062504mr209210oiw.110.1656431665945;
        Tue, 28 Jun 2022 08:54:25 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id l14-20020a4ae2ce000000b00425b69ca19asm1302270oot.48.2022.06.28.08.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 08:54:24 -0700 (PDT)
Date: Tue, 28 Jun 2022 12:54:19 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/7] media: hantro: postproc: Fix buffer size
 calculation
Message-ID: <YrskKxCDwSulaGJ5@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-4-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616202513.351039-4-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_085427_858310_9B45929F 
X-CRM114-Status: GOOD (  27.97  )
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

Hi Jernej,

On Thu, Jun 16, 2022 at 10:25:09PM +0200, Jernej Skrabec wrote:
> When allocating aux buffers for postprocessing, it's assumed that base
> buffer size is the same as that of output. Coincidentally, that's true
> most of the time, but not always. 10-bit source also needs aux buffer
> size which is appropriate for 10-bit native format, even if the output
> format is 8-bit. Similarly, mv sizes and other extra buffer size also
> depends on source width/height, not destination.
> 
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

I took a new look at this patch.

> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
>  .../staging/media/hantro/hantro_postproc.c    | 24 +++++++++++++------
>  drivers/staging/media/hantro/hantro_v4l2.c    |  2 +-
>  drivers/staging/media/hantro/hantro_v4l2.h    |  2 ++
>  3 files changed, 20 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index ab168c1c0d28..b77cc55e43ea 100644
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
> @@ -174,18 +175,27 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
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

Clearly this is correct.

When the driver enables the post-processor it decodes a coded format (H264, etc.)
to a native format (NV12_4L4 or P010_4L4) and feeds this into the postprocessor
engine to produce some other format (YUYV, NV12, etc.).

The buffers allocated here should be taken from the native format,
so it's correct to use hantro_get_default_fmt().

> +	if (!fmt)
> +		return -EINVAL;
> +	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
> +			    ctx->src_fmt.height);

The issue comes at this point, where we negotiate the buffer size based on the
source size (OUTPUT queue size), instead of negotiating based
on the Native size.

  Coded -> [ Decoder ] -> Native -> [ Post-processor ] -> Decoded

So, while the patch is surely improving things, I wonder if it won't
cause other issues.

This reminds me we are still lacking a more complete test-suite for this
driver, so that we can validate changes and ensure there are no
regressions.

Perhaps we could hack Fluster to not only test the conformance,
but also test the post-processor?

Thanks,
Ezequiel


> +
> +	buf_size = pix_mp.plane_fmt[0].sizeimage;
>  	if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
> -		buf_size += hantro_h264_mv_size(ctx->dst_fmt.width,
> -						ctx->dst_fmt.height);
> +		buf_size += hantro_h264_mv_size(pix_mp.width,
> +						pix_mp.height);
>  	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
> -		buf_size += hantro_vp9_mv_size(ctx->dst_fmt.width,
> -					       ctx->dst_fmt.height);
> +		buf_size += hantro_vp9_mv_size(pix_mp.width,
> +					       pix_mp.height);
>  	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
> -		buf_size += hantro_hevc_mv_size(ctx->dst_fmt.width,
> -						ctx->dst_fmt.height);
> +		buf_size += hantro_hevc_mv_size(pix_mp.width,
> +						pix_mp.height);
>  
>  	for (i = 0; i < num_buffers; ++i) {
>  		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 334f18a4120d..2c7a805289e7 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -118,7 +118,7 @@ hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
>  	return NULL;
>  }
>  
> -static const struct hantro_fmt *
> +const struct hantro_fmt *
>  hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
>  {
>  	const struct hantro_fmt *formats;
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.h b/drivers/staging/media/hantro/hantro_v4l2.h
> index b17e84c82582..64f6f57e9d7a 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.h
> +++ b/drivers/staging/media/hantro/hantro_v4l2.h
> @@ -23,5 +23,7 @@ extern const struct vb2_ops hantro_queue_ops;
>  
>  void hantro_reset_fmts(struct hantro_ctx *ctx);
>  int hantro_get_format_depth(u32 fourcc);
> +const struct hantro_fmt *
> +hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream);
>  
>  #endif /* HANTRO_V4L2_H_ */
> -- 
> 2.36.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
