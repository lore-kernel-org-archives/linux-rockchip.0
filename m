Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C88DC54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 15:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/Hm609BO+nxqyc4xqDUYMUKStilbCSsCYHC6J8kgNw=; b=VjTxS7gnq80LZZ
	1s7XWEi+xMq6TUyy8XfMLKtcZw+9Nr5CXMqnShk3dh7xv3Ke7wqCwUqACpJqNiy7ZUDnM61RIfiEa
	tC2PonSIs+w9iu3zU0DcT6qAcv3hk9U91VAAZ54lgmHU93d0tw/UFO9EJq+877BBgeNu8/NiApcxI
	RjbHedwlGgkA1VSgRC7B0ARSfIoG9Tq8CBiByUxRocxt8WRWhP3HLuV7fC2pY6IT7vNECMzObanMM
	J+60vqxAoO8NMJ/+DCDA+eei6QA+5RgTZ1JmN/0GaeR9wqB9+KJr3TDJ6eYjXpW/EU8JhceMw38Ha
	zKwemT9XsS8Pen8ONrPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzOh-00FbrK-UV; Thu, 12 Jan 2023 15:21:44 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzOe-00Fbns-It
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 15:21:42 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bq39so28957041lfb.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 07:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PLjUlihlOn6KrGPfRsDYWE8893zqQEmbofoas2WFAEc=;
        b=SywnFV2N5Emj10XSfvVuUokJIgUcgT0jKNBvmfrF+iAFEDZptKOCpmVa3qb44nslus
         8Th7qYWysspKoTbf/7loSNdwBCoo5irw7kASu3kdhVV93zVCIrmojeT3YeY2rj+A9o5V
         Dqgl3H3jpUl7lL8s0JfdKKGlGzC9CJ02x3SjsGIYqfTHf7tQd9mMEvVECjf0Gt8D60wE
         bf8yoagzNlt5pSFFsebfeJI0mOhJrZ4CiONTVav8bqTXDcxFaFdX+D4O+Eb7e3n4ugNv
         vmr9rWgbEprXXIv3o2Qt35adjprPHK2QFPLoX8bgAVxbgjqdrRVyh0BOdfiP+ulM/ZoS
         lPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PLjUlihlOn6KrGPfRsDYWE8893zqQEmbofoas2WFAEc=;
        b=H892BEiCLN5VkbDZp781kPAqFNQssfvgy0gUQe9i8y8n14epW5BnR8LHvUB6q+N5VO
         I4AzZL19zHDYErinBJUebSd1UfnrighwUpOsaxvAHK8eEYra3D9pFq1Ub9cu/uk2NmNq
         EJ69O4ujb5nyeVif0aFm9YeLJxQo3uytuP/PAay7jde9wKRrR/iIfwj2G2rvpxQ4uMSl
         eib1bqVvk/NIB6WwLiQU6CXlCQwB7GGDwgtpiAzgLDBn72kO08rAn7MpdoeZzvYqI4jx
         +UP8Y2EGkMaJqYlL7n4c6uoFMOIoyEYjngUHcy6/gIRampFeRppK261EBuPTPA4eYq8l
         RpCQ==
X-Gm-Message-State: AFqh2kr1/VjxVKwKke686sD2nl6f32KjrhzY1WKWHTEu5TwUjKhkNLx+
	JRNRcKPTXv6l8V6fKTmJuLoviwGxO4ODYt5A5whEgg==
X-Google-Smtp-Source: AMrXdXvWNGq+Iy/iMVcrZTawQSw4jKiWni/BUS3d6esGNtRp3GYOUo2KvW6/tQ2Yn6O4Pz+QNQVr2R90jVZRYrnek0U=
X-Received: by 2002:a05:6512:33cd:b0:4cb:3df9:b25f with SMTP id
 d13-20020a05651233cd00b004cb3df9b25fmr1751541lfg.653.1673536897679; Thu, 12
 Jan 2023 07:21:37 -0800 (PST)
MIME-Version: 1.0
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com> <20230101-patch-series-v2-6-2-rc1-v2-9-fa1897efac14@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-9-fa1897efac14@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 12 Jan 2023 12:21:26 -0300
Message-ID: <CAAEAJfDkTX=EwDCs+uN0bFwMb_JhJfkQiwRR9+b-9v3cJnPTsw@mail.gmail.com>
Subject: Re: [PATCH v2 09/12] staging: media: rkvdec: h264: Add callbacks for h264
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Collabora Kernel-domain <kernel@collabora.com>, Robert Beckett <bob.beckett@collabora.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_072140_660627_0CD79509 
X-CRM114-Status: GOOD (  33.10  )
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

On Thu, Jan 12, 2023 at 9:56 AM Sebastian Fricke
<sebastian.fricke@collabora.com> wrote:
>
> Implement the valid format and sps validation callbacks for H264.
> H264 already has a SPS validation function, adjust it to fit the
> function the declaration and add error messages.
> Additionally, add a function to fetch attributes from the SPS in a human
> readable format to make the code more self documenting.
>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 105 ++++++++++++++++++++++-------
>  1 file changed, 80 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 4fc167b42cf0..17b215874ddd 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -1026,40 +1026,80 @@ static int rkvdec_h264_adjust_fmt(struct rkvdec_ctx *ctx,
>         return 0;
>  }
>
> -static int rkvdec_h264_validate_sps(struct rkvdec_ctx *ctx,
> -                                   const struct v4l2_ctrl_h264_sps *sps)
> +/*
> + * Convert some fields from the SPS structure into human readable attributes.
> + */
> +static int rkvdec_h264_get_sps_attributes(struct rkvdec_ctx *ctx, void *sps,
> +                                         struct sps_attributes *attributes)
> +{
> +       struct v4l2_ctrl_h264_sps *h264_sps = sps;
> +       unsigned int width = (h264_sps->pic_width_in_mbs_minus1 + 1) * 16;
> +       unsigned int height = (h264_sps->pic_height_in_map_units_minus1 + 1) * 16;
> +       /*
> +        * When frame_mbs_only_flag is not set, this is field height,
> +        * which is half the final height (see (7-18) in the
> +        * specification)
> +        */
> +       if (!(h264_sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
> +               height *= 2;
> +
> +       attributes->width = width;
> +       attributes->height = height;
> +       attributes->luma_bitdepth = h264_sps->bit_depth_luma_minus8 + 8;
> +       attributes->chroma_bitdepth = h264_sps->bit_depth_chroma_minus8 + 8;
> +       switch (h264_sps->chroma_format_idc) {
> +       case 0:
> +               attributes->subsampling = 400;
> +               break;
> +       case 1:
> +               attributes->subsampling = 420;
> +               break;
> +       case 2:
> +               attributes->subsampling = 422;
> +               break;
> +       case 3:
> +               attributes->subsampling = 444;
> +               break;
> +       };
> +       return 0;
> +}
> +
> +static int rkvdec_h264_validate_sps(struct rkvdec_ctx *ctx, void *sps,
> +                                   struct v4l2_pix_format_mplane *pix_mp)
>  {
> -       unsigned int width, height;
> +       struct sps_attributes attributes = {0};
> +
> +       rkvdec_h264_get_sps_attributes(ctx, sps, &attributes);
>
>         /*
>          * TODO: The hardware supports 10-bit and 4:2:2 profiles,
>          * but it's currently broken in the driver.
>          * Reject them for now, until it's fixed.
>          */
> -       if (sps->chroma_format_idc > 1)
> -               /* Only 4:0:0 and 4:2:0 are supported */
> +       if (attributes.subsampling > 420) {
> +               dev_err(ctx->dev->dev,
> +                       "Only 4:0:0 and 4:2:0 subsampling schemes are supported, got: %d\n",
> +                       attributes.subsampling);
>                 return -EINVAL;
> -       if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
> -               /* Luma and chroma bit depth mismatch */
> +       }
> +       if (attributes.luma_bitdepth != attributes.chroma_bitdepth) {
> +               dev_err(ctx->dev->dev,
> +                       "Luma and chroma bit depth mismatch, luma %d, chroma %d\n",
> +                       attributes.luma_bitdepth, attributes.chroma_bitdepth);
>                 return -EINVAL;
> -       if (sps->bit_depth_luma_minus8 != 0)
> -               /* Only 8-bit is supported */
> +       }
> +       if (attributes.luma_bitdepth != 8) {
> +               dev_err(ctx->dev->dev, "Only 8-bit H264 formats supported, SPS %d\n",
> +                       attributes.luma_bitdepth);
>                 return -EINVAL;
> +       }
>
> -       width = (sps->pic_width_in_mbs_minus1 + 1) * 16;
> -       height = (sps->pic_height_in_map_units_minus1 + 1) * 16;
> -
> -       /*
> -        * When frame_mbs_only_flag is not set, this is field height,
> -        * which is half the final height (see (7-18) in the
> -        * specification)
> -        */
> -       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
> -               height *= 2;
> -
> -       if (width > ctx->coded_fmt.fmt.pix_mp.width ||
> -           height > ctx->coded_fmt.fmt.pix_mp.height)
> +       if (attributes.width > pix_mp->width || attributes.height > pix_mp->height) {
> +               dev_err(ctx->dev->dev,
> +                       "Incompatible SPS dimension, SPS %dx%d, Pixel format %dx%d.",
> +                       attributes.width, attributes.height, pix_mp->width, pix_mp->height);
>                 return -EINVAL;
> +       }
>
>         return 0;
>  }
> @@ -1077,8 +1117,9 @@ static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
>         if (!ctrl)
>                 return -EINVAL;
>
> -       ret = rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
> -       if (ret)
> +       ret = rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps,
> +                                      &ctx->coded_fmt.fmt.pix_mp);

Not a problem with this patch, but I wonder why we accepted a validation
in the start_streaming step.

At this point, the driver accepted all the format negotiations in try_fmt.
It's difficult for applications to recover from this, as there would
be no way to tell what failed,
we would be returning EINVAL, which as per the spec is "buffer type is
not supported,
or no buffers have been allocated (memory mapping) or enqueued (output) yet.".

I think it would really make a lot of sense to fix this now, instead of continue
abusing it. And also, I'd like to prevent a possible anti-pattern from
spreading.

Thanks!
Ezequiel

> +       if (ret < 0)
>                 return ret;
>
>         h264_ctx = kzalloc(sizeof(*h264_ctx), GFP_KERNEL);
> @@ -1175,10 +1216,21 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>         return 0;
>  }
>
> +static u32 rkvdec_h264_valid_fmt(struct rkvdec_ctx *ctx)
> +{
> +       /*
> +        * Only 8 bit 4:0:0 and 4:2:0 formats supported for now.
> +        * The SPS is validated at a different function thus we can assume that
> +        * it is correct.
> +        */
> +       return V4L2_PIX_FMT_NV12;
> +}
> +
>  static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
>  {
>         if (ctrl->id == V4L2_CID_STATELESS_H264_SPS)
> -               return rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
> +               return rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps,
> +                                               &ctx->coded_fmt.fmt.pix_mp);
>
>         return 0;
>  }
> @@ -1189,4 +1241,7 @@ const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
>         .stop = rkvdec_h264_stop,
>         .run = rkvdec_h264_run,
>         .try_ctrl = rkvdec_h264_try_ctrl,
> +       .valid_fmt = rkvdec_h264_valid_fmt,
> +       .sps_check = rkvdec_h264_validate_sps,
> +       .get_sps_attributes = rkvdec_h264_get_sps_attributes,
>  };
>
> --
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
