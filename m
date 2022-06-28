Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79978C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 16:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8rCtKkA0ZO3pwIt64PZkKGB7a0vZxS606eaHh2NKnI=; b=IkU8mOeIMuAUjL
	jBtF1/ZzOkZgkjpUAin7w17sgub3wngbyBFT64IrKCMXeDGHr+hSTY91hlyn/auwE6Dq/u3F+QKB2
	QAloeSkiQJSbswuKNqAS24n5+CpjTg8IC6KSplv4RwpRYD0hT8Og4VPyKqowPHz0CKlzeozM7ac2c
	ZLR57U6s+L+bTX3iEv+X4QVpqo5JX3MsauOnGjGRDLkppHuquqgBIc/wK0K4ysfH8MDVkgX+iHY81
	0WAidGkM45UERRcV2psKA22YeD2nLzDbsD5xdKb6B3mxYLj5EIiFd30Cs7BD0+LB0EyKcJRZqYgmR
	gPTvP//fJGp+u9Jol34Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Dqb-00796x-ME; Tue, 28 Jun 2022 16:13:53 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6DqP-007911-JV; Tue, 28 Jun 2022 16:13:43 +0000
Received: by mail-ej1-x629.google.com with SMTP id mf9so26921650ejb.0;
        Tue, 28 Jun 2022 09:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6Lx7tM7FvIRfnZKu78o7ZdG3s890VbwgJIMpBDQ1SB8=;
        b=VWAFcug2fFdI2e8F8vBX6YDg0MzYOgFQTojwHJWJ8Jr/LwsxBu2ry4BIYLQNn/DbRD
         IawwZNF/NMwS25ujAFZZbbdtB5MRhCmyJRnrrY7ONIAe9dtloYM4ctvGRv4L80xrj/P9
         JjvO5VGg8TfMfjl0u69r2fWoT25FadBtqQtwMNZJZmanyDjNQDgZLPoFKFM5nGkeiw4W
         s/1g+gD7LXQ/5Ut1e0a7dyvUXvz2VbmUXsvSng1J708ae0OEbXLAADwnUCFTUpMHxEZq
         GYbhu8rC+xSYmRInlEKW7eTekO2xkOHI08O6aO0nPLse2EnNqESI2Buip6b0qEWCsdpK
         JaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6Lx7tM7FvIRfnZKu78o7ZdG3s890VbwgJIMpBDQ1SB8=;
        b=eXr4n+HChkDIa8a4BCood9Auzjy5eyfTyvuJa7V5rKz2J2NN74WQaLGC5GS80qATgf
         4NEjKxX/3AU3J0f4wUte1WcjM1ze9N8d3DNz7/pahvCNFAhGEfgez1BpTv1bGEKRHcko
         0PDx1yg70qSjhBQAXcei9H6VhsDOB/IT1zPJAf83h4kcdKNKsKecjXVXXQQzD0c75I/X
         hHSEVcJL7v9zqptDDKbUJ4nFraI1vt2J8kdf9K57CmAMr3jefvAaQgLsYcOd065DkAli
         jGRCqdTDJeUkCLmQnFLJTM2zSfGKnAko8eQ3gSjNpXTl32LPANCQZUl+xgTZuvAlcwjP
         ggKA==
X-Gm-Message-State: AJIora/DA86m1kSW8mwH8Jyp1JzUpFGx2YaQzIcXnEhtupuJxyDQJmQu
	zVcWefswGHKzakRf34Fxt7c=
X-Google-Smtp-Source: AGRyM1txh7PKe9jl713q+VzwJ2SumfGwKEpOgKcIAHEzirk7F73v58L8m9Qb7NNtanEUImj71zQq3A==
X-Received: by 2002:a17:907:7285:b0:722:e371:72d5 with SMTP id dt5-20020a170907728500b00722e37172d5mr18921148ejc.731.1656432818741;
        Tue, 28 Jun 2022 09:13:38 -0700 (PDT)
Received: from jernej-laptop.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id ci3-20020a170906c34300b00722ea7a7aeesm6593654ejb.51.2022.06.28.09.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 09:13:37 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl, benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com, gregkh@linuxfoundation.org, linux-media@vger.kernel.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/7] media: hantro: postproc: Fix buffer size calculation
Date: Tue, 28 Jun 2022 18:13:35 +0200
Message-ID: <3180111.44csPzL39Z@jernej-laptop>
In-Reply-To: <YrskKxCDwSulaGJ5@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com> <20220616202513.351039-4-jernej.skrabec@gmail.com> <YrskKxCDwSulaGJ5@eze-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_091341_716781_C3F28322 
X-CRM114-Status: GOOD (  38.04  )
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

Dne torek, 28. junij 2022 ob 17:54:19 CEST je Ezequiel Garcia napisal(a):
> Hi Jernej,
> 
> On Thu, Jun 16, 2022 at 10:25:09PM +0200, Jernej Skrabec wrote:
> > When allocating aux buffers for postprocessing, it's assumed that base
> > buffer size is the same as that of output. Coincidentally, that's true
> > most of the time, but not always. 10-bit source also needs aux buffer
> > size which is appropriate for 10-bit native format, even if the output
> > format is 8-bit. Similarly, mv sizes and other extra buffer size also
> > depends on source width/height, not destination.
> > 
> > Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> 
> I took a new look at this patch.
> 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> > ---
> > 
> >  .../staging/media/hantro/hantro_postproc.c    | 24 +++++++++++++------
> >  drivers/staging/media/hantro/hantro_v4l2.c    |  2 +-
> >  drivers/staging/media/hantro/hantro_v4l2.h    |  2 ++
> >  3 files changed, 20 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_postproc.c
> > b/drivers/staging/media/hantro/hantro_postproc.c index
> > ab168c1c0d28..b77cc55e43ea 100644
> > --- a/drivers/staging/media/hantro/hantro_postproc.c
> > +++ b/drivers/staging/media/hantro/hantro_postproc.c
> > @@ -12,6 +12,7 @@
> > 
> >  #include "hantro_hw.h"
> >  #include "hantro_g1_regs.h"
> >  #include "hantro_g2_regs.h"
> > 
> > +#include "hantro_v4l2.h"
> > 
> >  #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
> >  { \
> > 
> > @@ -174,18 +175,27 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
> > 
> >  	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> >  	struct vb2_queue *cap_queue = &m2m_ctx->cap_q_ctx.q;
> >  	unsigned int num_buffers = cap_queue->num_buffers;
> > 
> > +	struct v4l2_pix_format_mplane pix_mp;
> > +	const struct hantro_fmt *fmt;
> > 
> >  	unsigned int i, buf_size;
> > 
> > -	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
> > +	/* this should always pick native format */
> > +	fmt = hantro_get_default_fmt(ctx, false);
> 
> Clearly this is correct.
> 
> When the driver enables the post-processor it decodes a coded format (H264,
> etc.) to a native format (NV12_4L4 or P010_4L4) and feeds this into the
> postprocessor engine to produce some other format (YUYV, NV12, etc.).
> 
> The buffers allocated here should be taken from the native format,
> so it's correct to use hantro_get_default_fmt().
> 
> > +	if (!fmt)
> > +		return -EINVAL;
> > +	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
> > +			    ctx->src_fmt.height);
> 
> The issue comes at this point, where we negotiate the buffer size based on
> the source size (OUTPUT queue size), instead of negotiating based
> on the Native size.
> 
>   Coded -> [ Decoder ] -> Native -> [ Post-processor ] -> Decoded

I'm not sure what is the difference between source and native size? You mean 
one coded in controls and one set via output format? IMO they should always be 
the same, otherwise it can be considered a bug in userspace application.

Best regards,
Jernej

> 
> So, while the patch is surely improving things, I wonder if it won't
> cause other issues.
> 
> This reminds me we are still lacking a more complete test-suite for this
> driver, so that we can validate changes and ensure there are no
> regressions.
> 
> Perhaps we could hack Fluster to not only test the conformance,
> but also test the post-processor?
> 
> Thanks,
> Ezequiel
> 
> > +
> > +	buf_size = pix_mp.plane_fmt[0].sizeimage;
> > 
> >  	if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
> > 
> > -		buf_size += hantro_h264_mv_size(ctx->dst_fmt.width,
> > -						ctx-
>dst_fmt.height);
> > +		buf_size += hantro_h264_mv_size(pix_mp.width,
> > +						
pix_mp.height);
> > 
> >  	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
> > 
> > -		buf_size += hantro_vp9_mv_size(ctx->dst_fmt.width,
> > -					       ctx-
>dst_fmt.height);
> > +		buf_size += hantro_vp9_mv_size(pix_mp.width,
> > +					       pix_mp.height);
> > 
> >  	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
> > 
> > -		buf_size += hantro_hevc_mv_size(ctx->dst_fmt.width,
> > -						ctx-
>dst_fmt.height);
> > +		buf_size += hantro_hevc_mv_size(pix_mp.width,
> > +						
pix_mp.height);
> > 
> >  	for (i = 0; i < num_buffers; ++i) {
> >  	
> >  		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c
> > b/drivers/staging/media/hantro/hantro_v4l2.c index
> > 334f18a4120d..2c7a805289e7 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > @@ -118,7 +118,7 @@ hantro_find_format(const struct hantro_ctx *ctx, u32
> > fourcc)> 
> >  	return NULL;
> >  
> >  }
> > 
> > -static const struct hantro_fmt *
> > +const struct hantro_fmt *
> > 
> >  hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
> >  {
> >  
> >  	const struct hantro_fmt *formats;
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.h
> > b/drivers/staging/media/hantro/hantro_v4l2.h index
> > b17e84c82582..64f6f57e9d7a 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.h
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.h
> > @@ -23,5 +23,7 @@ extern const struct vb2_ops hantro_queue_ops;
> > 
> >  void hantro_reset_fmts(struct hantro_ctx *ctx);
> >  int hantro_get_format_depth(u32 fourcc);
> > 
> > +const struct hantro_fmt *
> > +hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream);
> > 
> >  #endif /* HANTRO_V4L2_H_ */





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
