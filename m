Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB503C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 15:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUv5frTgCmycP273mUcndW3J5gJekWd8A4q3c7AqxSU=; b=PoGyKTugT+nIyx
	LMwOxfMKAoVRQEERuDm35KjL01HvBc+KXfQpS7v7lbyS4mamwaoLgEk3L4OEvbxXYKy7oq0UNbjsu
	4uYSgRw3fUE3qt+3eti5E4GmZx2V/HHQa5G3nGAeBGl8ZzELcB8Ns7OJhWALBmHY08jnSVTX1YDYs
	hZl0mI+SO3mDnM1fFuCNlIlMie02GF1vs+b9GW8TUN3s5Dr2ixQ9++5Lcv85NAHuBpXXJibVVRVoF
	lWJ1XzOIxW+3PkWBX62hheyzZlaZ+jBuRtoEyzkzLro61s4wqMpn4hgNhr62Ix67eTw+c7tZJW8vU
	HuliUl1BjWytzMELOQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzYw-00Ffwu-R8; Thu, 12 Jan 2023 15:32:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzXC-00FetV-Q9
	for linux-rockchip@bombadil.infradead.org; Thu, 12 Jan 2023 15:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=iKwwjEGopbISTrCjxgfQJsmoWWl/0HgOwyebrt0JLGA=; b=FnsC2xiqt8M+y8if3a6XKWN18Q
	FqKR/5FYYLy9kuUfioJ1PUQlv14ipDLRPgsZ0i7NF+jOmhR2+gpgjR/h9b2yh0VCTVJL6JBclTt58
	AQziyokZm04+lxhbyZQ3kXFgwQLVRgUOgPV9dLjd2ZQiomgewjVn4zOvxlovptgrF0razrtq+DMR8
	GU16s739SyKZrqVwqRFyUdr8hUzfg7VtYVFHbuZVMJ1K+OU7yeDkSvdsf2mmBLuwfoBThN7gFh/fX
	mttU7VPv047oA44Tj7+DpBUvUqxMrP/LVMnEwbtvJbpvDYhM/+YmWYsbmxUltJarkcwCI4qU03jPG
	W14qyjYw==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pFzX0-0041ZK-34
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Jan 2023 15:30:21 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bu8so28937882lfb.4
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 07:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iKwwjEGopbISTrCjxgfQJsmoWWl/0HgOwyebrt0JLGA=;
        b=QbI169xhV8vhsr4V43oKe3t3ypXsYwuhSqv+U3fpDtFAZlimhEns/OKDdeLbZoZmIh
         vBTAIdpXaeEx1D8wnaC3SOK1pmpgvLkcH52Ack0AR7xityglMY5G15apEjxBliyOTcKf
         KFFNUZ/wh5OgRKL1qOxea/YdXalez4QJD7y6CWBklcPj8VmiUF9OHe+7zenmpRYbEwyj
         vVdl99EChOEYB09vc3Xi2oVNySDI1Kr72mtUi2hElBPN5ZCghAltKgpET/OaAgmQjr1y
         KGcH3IH4RklrAMcPgz1IyWMrFqQh8AnpD12cHrk5PQxIO3ZQD7ZqWRNC9TEbE+lVRNPl
         asWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKwwjEGopbISTrCjxgfQJsmoWWl/0HgOwyebrt0JLGA=;
        b=XHL2hFdRJU7ErXATiLM3iryeGeu13dqfyZuxb9xSfWz+6zKcKJX9ItwvGIPg2IKQyi
         clfvCERpyiQy4XpdpgXCJjDmcJOC07DPVtSAnOqpOO/SW5mbij0QUxMJ8+5z48smswl9
         UiGOwgGNUYt2KQV1iB/rHlQyumDA0QtjN+8tGpYYPMIDrlwZGgkfHB/FNuy+gUaoE/Lx
         u7dSo4pY9fGXuZOxXl25Y44/BP4y1SF6TUWDyNCv2wbrJj5bPgm6uFSXo0mnVkfgGDAY
         P6jAzUkgGUt8PPu5iaVYYRbUySYluK1GBz1AQv/9l376m9C8PDoODqc30mOhyrkywTCQ
         M3tQ==
X-Gm-Message-State: AFqh2kotfgOC2miP9eQqeY1VfaALBBTC8Y31LWfqB2dLcXPLufjpacNZ
	eg6kvv/j4p4zNoqXfeiXPKNceIIaDIovZDxu6qS/0YrlsR+MJg==
X-Google-Smtp-Source: AMrXdXsfoS3G1+dA5+WKzSYh25yd+Y2eQHNON3kw/MeVVXIcC4tY8i5M8+KHlpGkY0ARtDng3p/ekgpCc9RpY74z6no=
X-Received: by 2002:a05:6512:2805:b0:4b5:b18a:c52d with SMTP id
 cf5-20020a056512280500b004b5b18ac52dmr7967483lfb.299.1673537423283; Thu, 12
 Jan 2023 07:30:23 -0800 (PST)
MIME-Version: 1.0
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com> <20230101-patch-series-v2-6-2-rc1-v2-6-fa1897efac14@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-6-fa1897efac14@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 12 Jan 2023 12:30:11 -0300
Message-ID: <CAAEAJfDOcYBtWR41BLM-SUnm9oe1t=8ffJS1Kg_V-gYWzUfe8w@mail.gmail.com>
Subject: Re: [PATCH v2 06/12] staging: media: rkvdec: Add a valid pixel format
 check as callback
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
X-CRM114-CacheID: sfid-20230112_153019_296109_84E5473B 
X-CRM114-Status: GOOD (  29.99  )
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

Hi Sebastian,

On Thu, Jan 12, 2023 at 9:56 AM Sebastian Fricke
<sebastian.fricke@collabora.com> wrote:
>
> Provide a callback for codec variant drivers to indicate the correct
> output pixel-format. It will either utilize the SPS structure stored via
> the S_CTRL IOCTL or return the default pixel-format.
>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 45 +++++++++++++++++++++++++++++------
>  drivers/staging/media/rkvdec/rkvdec.h |  1 +
>  2 files changed, 39 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index e0e95d06e216..a46f918926a2 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -38,6 +38,20 @@ static int rkvdec_queue_busy(struct rkvdec_ctx *ctx, enum v4l2_buf_type buf_type
>                 return 0;
>  }
>
> +/*
> + * Use the current SPS, set by the user via the VIDIOC_S_CTRL IOCTL,
> + * to determine the optimal pixel-format. Each codec is responsible
> + * for choosing the appropriate pixel-format for a given parameter set.
> + */

It seems this assumes there's always only one valid format.
Do you think that will hold true always for RKVDEC and for all codecs?

How about we approach this differently? Instead of having a callback
for codecs to implement, we just maintain a list of valid decoded formats
(in the context) and re-create the list when the SPS is changed (in the S_CTRL).

Possibly simpler and less invasive, not sure if there are any caveats.

Thanks,
Ezequiel

> +static int rkvdec_get_valid_fmt(struct rkvdec_ctx *ctx)
> +{
> +       const struct rkvdec_coded_fmt_desc *coded_desc = ctx->coded_fmt_desc;
> +
> +       if (coded_desc->ops->valid_fmt)
> +               return coded_desc->ops->valid_fmt(ctx);
> +       return ctx->coded_fmt_desc->decoded_fmts[0];
> +}
> +
>  static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
>         struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> @@ -200,8 +214,9 @@ static void rkvdec_reset_coded_fmt(struct rkvdec_ctx *ctx)
>  static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
>  {
>         struct v4l2_format *f = &ctx->decoded_fmt;
> +       u32 valid_fmt = rkvdec_get_valid_fmt(ctx);
>
> -       rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
> +       rkvdec_reset_fmt(ctx, f, valid_fmt);
>         f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
>         v4l2_fill_pixfmt_mp(&f->fmt.pix_mp,
>                             ctx->coded_fmt_desc->decoded_fmts[0],
> @@ -260,13 +275,17 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
>         if (WARN_ON(!coded_desc))
>                 return -EINVAL;
>
> -       for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
> -               if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
> -                       break;
> -       }
> +       if (ctx->sps) {
> +               pix_mp->pixelformat = rkvdec_get_valid_fmt(ctx);
> +       } else {
> +               for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
> +                       if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
> +                               break;
> +               }
>
> -       if (i == coded_desc->num_decoded_fmts)
> -               pix_mp->pixelformat = coded_desc->decoded_fmts[0];
> +               if (i == coded_desc->num_decoded_fmts)
> +                       pix_mp->pixelformat = coded_desc->decoded_fmts[0];
> +       }
>
>         /* Always apply the frmsize constraint of the coded end. */
>         pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
> @@ -435,6 +454,18 @@ static int rkvdec_enum_capture_fmt(struct file *file, void *priv,
>         if (WARN_ON(!ctx->coded_fmt_desc))
>                 return -EINVAL;
>
> +       /*
> +        * According to the specification the driver can only return formats
> +        * that are supported by both the current encoded format and the
> +        * provided controls
> +        */
> +       if (ctx->sps) {
> +               if (f->index)
> +                       return -EINVAL;
> +               f->pixelformat = rkvdec_get_valid_fmt(ctx);
> +               return 0;
> +       }
> +
>         if (f->index >= ctx->coded_fmt_desc->num_decoded_fmts)
>                 return -EINVAL;
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> index 332126e7b812..e353a4403e5b 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -66,6 +66,7 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
>  struct rkvdec_coded_fmt_ops {
>         int (*adjust_fmt)(struct rkvdec_ctx *ctx,
>                           struct v4l2_format *f);
> +       u32 (*valid_fmt)(struct rkvdec_ctx *ctx);
>         int (*start)(struct rkvdec_ctx *ctx);
>         void (*stop)(struct rkvdec_ctx *ctx);
>         int (*run)(struct rkvdec_ctx *ctx);
>
> --
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
