Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 520ADC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 19:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0oLb/oFIJ786CgQLZr2pHGOQgXnVsQLaSLV0JCq20E=; b=PAvKd+cvPLJ3nr
	3oa6VxjyvQcBYpdgwQ9YzfK1yKNksx5e4C88qdk4WfCMXbUgK4JnRHilnL/lN22lvCByVDI1bJuLb
	Yihm/ygL1/KVtzbWs5gFsgyB6LC47rt7WU39mP2CqnFLPkwwZ8c3XFrfTX5JEgfPmMVH/I5+Q+kLL
	POBTU9jc4g/y3IC4dtt+R/hjIp+5LJncc8oryjQQudXDa8w047ZWFYKgUyqspX0i2OIkeQE9Ykkkg
	q6SKnpBMUfu+JRf9dEB0H1mu5576jvwHXlPN3GcTkaGCK99Pv/TMfRK67/f06j2qgjFY/7BlfYvcf
	yqjNAy0Xnh0jcvXmsm9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBhmR-007IuU-Gf; Wed, 13 Jul 2022 19:12:15 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBhmO-007ItM-L4
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 19:12:14 +0000
Received: by mail-ed1-x532.google.com with SMTP id g1so15317262edb.12
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 12:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PLq+vxmSJZQVlzojHgHWzYyGYj9NCZYGnKKKS15nhgc=;
        b=z+8/nuDj0YhTITREu8tEiSYhUaWtxa2u8s/WCri+GGAhIqC1JlOWNr5amsXORQhXvC
         HIjrp0W+dC6fYVhLJKT+zqPvpxBtXVbp5QUhil9xtDc9gq6HbcU1o/Av4IlXLCjJ5llM
         YBYmLJc5gwMUNbqCkOvUx+7S8DxrCJZp0WqnPxLynzfopX5/QBU/GlyE22MUUgPuPwEZ
         YUzweQU4YvgVe010Jf1Tj2yM79HPjV+GDG1DzxV0mn//ddaGYYgso77VgA6wl9Cnceov
         NyVS1PjEJgD/kOTaQSkTPG+cdImEbh3mU2gEU3pSs8lCD/S9namtcGgmYawjdFqtiMYs
         c18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PLq+vxmSJZQVlzojHgHWzYyGYj9NCZYGnKKKS15nhgc=;
        b=zpn0Wq6f2dLig9y8cZeVOmQtR9ft83OFrT2nOYa5FhB/w1cu0AkdHFr81nwf0LTmU9
         HyRv5y9phA5MnwZLL3evinA09+x5/p/u8ru3LGOHz7dw4GUx0WAKiSmwVa9N0O0MhQju
         z4nEuHc+ptXzUM439AxdLEIvjAQbW9k2yVHh/9B+5Pjb5Y/DVpiXxSMse+C/NwKzkkNz
         CDJel1cv21eCl1vZMoHnXsc7GbVZDySCx3KSGhRcHzo8su16amBKGI/JjXjq0nzBgs7J
         FVcDX/uv8sPz/IavNbFVP4miBQ8Ot4DkCxfrLhTIdtpPT2wM5baFvaaA0OXMkyClJ04j
         iTxQ==
X-Gm-Message-State: AJIora8oDYUMji6lJrPbaTEkeTU+VIcEk+OLb+tWV4+KxXjvuwrUZLJm
	AN979uNOFqwzHZsCsUsUNOdUlC+YyoUuYGQhXNJeDA==
X-Google-Smtp-Source: AGRyM1ubxyRQpxoVT6CAxq4vQ0utB7Mdt4cgjhd5Fh5373cKkbymnqNFUGq1gmsYNG8qOCThsrxESBTdiHe6Uajwe7M=
X-Received: by 2002:a05:6402:4396:b0:43a:77b5:41f7 with SMTP id
 o22-20020a056402439600b0043a77b541f7mr6804147edc.45.1657739529010; Wed, 13
 Jul 2022 12:12:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220713163201.136202-1-sebastian.fricke@collabora.com> <20220713163201.136202-3-sebastian.fricke@collabora.com>
In-Reply-To: <20220713163201.136202-3-sebastian.fricke@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 13 Jul 2022 16:11:57 -0300
Message-ID: <CAAEAJfAD49kc_zQsjKjB+v5PNcQXTEyT_fL98a2cSyzhTuk1Zg@mail.gmail.com>
Subject: Re: [PATCH 5/6] staging: media: rkvdec: Enable S_CTRL IOCTL
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: linux-media <linux-media@vger.kernel.org>, 
	=?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
	Alex Bee <knaerzche@gmail.com>, Collabora Kernel ML <kernel@collabora.com>, 
	Robert Beckett <bob.beckett@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Yury Norov <yury.norov@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_121212_940317_3C91DA36 
X-CRM114-Status: GOOD (  19.52  )
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

On Wed, Jul 13, 2022 at 1:33 PM Sebastian Fricke
<sebastian.fricke@collabora.com> wrote:
>
> Enable user-space to set the SPS of the current byte-stream on the
> decoder. This action will trigger the decoder to pick the optimal
> pixel-format for the capture queue.
>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 60 ++++++++++++++++++++-------
>  1 file changed, 46 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 2625e0a736f4..f84579f764ab 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -27,6 +27,17 @@
>  #include "rkvdec.h"
>  #include "rkvdec-regs.h"
>
> +static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
> +                                      struct v4l2_pix_format_mplane *pix_mp)
> +{
> +       v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
> +                           pix_mp->width, pix_mp->height);
> +       pix_mp->plane_fmt[0].sizeimage += 128 *
> +               DIV_ROUND_UP(pix_mp->width, 16) *
> +               DIV_ROUND_UP(pix_mp->height, 16);
> +       pix_mp->field = V4L2_FIELD_NONE;
> +}
> +
>  /*
>   * Fetch the optimal pixel-format directly from the codec variation. If the
>   * valid_fmt callback is not implemented, then the context variable valid_fmt
> @@ -44,6 +55,27 @@ static int rkvdec_get_valid_fmt(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int rkvdec_set_valid_fmt(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
> +{
> +       struct v4l2_pix_format_mplane *pix_mp;
> +
> +       switch (ctrl->id) {
> +       case V4L2_CID_STATELESS_H264_SPS:
> +       case V4L2_CID_STATELESS_VP9_FRAME:
> +       case V4L2_CID_STATELESS_HEVC_SPS:
> +               ctx->valid_fmt = rkvdec_get_valid_fmt(ctx, ctrl);
> +
> +               pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
> +               pix_mp->pixelformat = ctx->valid_fmt;
> +               rkvdec_fill_decoded_pixfmt(ctx, pix_mp);
> +               break;
> +       default:
> +               dev_err(ctx->dev->dev, "Unsupported stateless control ID: %x\n", ctrl->id);
> +               return -EINVAL;
> +       };
> +       return 0;
> +}
> +
>  static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
>         struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> @@ -58,8 +90,18 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +       struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> +
> +       if (!ctx->valid_fmt)
> +               return rkvdec_set_valid_fmt(ctx, ctrl);

We've discussed this approach with Jonas.
See "[PATCH v2 10/12] media: rkvdec: Lock capture pixel format in
s_ctrl and s_fmt".

https://lore.kernel.org/all/f26407dbf3efc6cc046daaabdbe75c516743a187.camel@collabora.com/

The outcome of the discussion is:
* setting SPS resets the CAPTURE format (as per the spec).
* the application uses ENUM/TRY/S_FMT to negotiate a format, and uses
SPS to filter formats.

Thanks!
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
