Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF1A2C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 15:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZecFW83a5GHDQfBNnQFKwbBZeWwMGu516rIKOLhmT+A=; b=j28i6fzSGoKX9S
	dypBuIE23DB5hw/wbRLeFehiY/1UYgbw2X95f6oPw1U9oUWusUluaoom5T+ui3ZkfrLrnzARkyd3N
	ER6NtIL1RQrd4QsaXh35OZR2nG6DMbvvXVYrq1r+zqO7j4EixvzY71/m1mq3i7y3omxY7bRXkhHvy
	a12JpWRP4BAKWNLEZpXWuUEemYXPE5qZ4fptsWegGBlFXG5lIfMIF25A6Hj+0xbyuI9B6ugo3/+JO
	on+ovZzJxhzjYpFxaIYhemHLv6T2HfjP6koKk3660YFxrQ93KAHr197TjafzBN5Y0gY7d4ZqswA1g
	j7IlVy1lLonqE3Prgbtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzDY-00FXJT-DU; Thu, 12 Jan 2023 15:10:12 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzDW-00FXHw-6Q
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 15:10:11 +0000
Received: by mail-lf1-x133.google.com with SMTP id y25so28846427lfa.9
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 07:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nxfZ2qN8MzXsqeAe0vT9OR0MbsMemwdZIPX0mBB8DSs=;
        b=aP2ZK3l2HbkQFQr3BjiHH89amPOjBFazr7tsjyfmVPnp3EuwcI1w5dKg35poT2/j2e
         5KGHWSAkboMaRD0K9HCa1KOyfi9aLceGPVdrU69sQIg94vBGGxd0f0mgsm0SGnTuAEit
         G+nhnG2TU75OEQ05lhzLL63EnNc7gzv6aPSWQ2AOKUjoRsR9lv5ut0yUr8pHRpU4F7n1
         13uUrblhJhz4Z/QKboemQNQOQfHWddsk62QSC4vk+iF2QArK152Df639fRa4F7+d3rM5
         MoLs6SiBr27jbLWZVJq7X07m5nuGWYTaccUa9IgZ81TuWO/d75R0uMFd7DxxUFi5fSGn
         TpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nxfZ2qN8MzXsqeAe0vT9OR0MbsMemwdZIPX0mBB8DSs=;
        b=QZhypuc+cTobJnIw62FvrXx16vwcBNxiXok6amJFP07VXz2meIKZHH7a15aDDCguMy
         RzYLrCPT2IzqBfFW6JGX0D7f8LZHBe/oFWMaLYZ3GVhZ3EPraryArjWQaITj5M7pMCFf
         PX01m6Rm3qk3nogLXo77D3ks5AgekumELO4XBW9IKli2B2hHTllODABmeHhds12yA6uy
         8NN6H2D5mu2NHXCrTFVWvK0qFQBPnkpj1bmjfOdX/Urc+QKN/cBoymunTk8K4yrsAsyW
         z5xw9zxH8qXyROLBVIjqRlcbrjJ/EefqbBlZs0A6g/ch8CizR+fFStNBnrteJ61ilDnj
         /mYg==
X-Gm-Message-State: AFqh2kqP0rxcn+kjDp7VKak7c5eGcZQDxdLyc6cXtbAB7001NpRvn2If
	dmlrbbneKFhGznhNayFZGugf56fUQz6FGxV69QLZ8A==
X-Google-Smtp-Source: AMrXdXsxoC5K+Ve6ec7xC0jIZ2GvpTnrNpHpf02BPZZMLipCmdniLgyDnNJuHW4vvexbORlcNwMZsmOUegUt7iyDcaE=
X-Received: by 2002:ac2:5632:0:b0:4cb:33b:6264 with SMTP id
 b18-20020ac25632000000b004cb033b6264mr6975049lff.161.1673536206178; Thu, 12
 Jan 2023 07:10:06 -0800 (PST)
MIME-Version: 1.0
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com> <20230101-patch-series-v2-6-2-rc1-v2-11-fa1897efac14@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-11-fa1897efac14@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 12 Jan 2023 12:09:54 -0300
Message-ID: <CAAEAJfDm3FBUkacR+tRVYnEbO8g43RT_L89WQuZjRi-Kwn7CYA@mail.gmail.com>
Subject: Re: [PATCH v2 11/12] staging: media: rkvdec: Enable S_CTRL IOCTL
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
X-CRM114-CacheID: sfid-20230112_071010_275139_7E8ED277 
X-CRM114-Status: GOOD (  31.65  )
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

On Thu, Jan 12, 2023 at 9:57 AM Sebastian Fricke
<sebastian.fricke@collabora.com> wrote:
>
> Enable user-space to set the SPS of the current byte-stream on the
> decoder. This action will enable the decoder to pick the optimal
> pixel-format for the capture queue, whenever it is required.
>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 81 +++++++++++++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index b303c6e0286d..3d413c5ad1d2 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -93,6 +93,79 @@ static int rkvdec_get_sps_attributes(struct rkvdec_ctx *ctx, void *sps,
>         return 0;
>  }
>
> +static int rkvdec_set_sps(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
> +{
> +       struct v4l2_pix_format_mplane *pix_mp;
> +       struct sps_attributes attributes = {0};
> +       void *new_sps = NULL;
> +
> +       /*
> +        * SPS structures are not filled until the control handler is set up
> +        */
> +       if (!ctx->fh.ctrl_handler)
> +               return 0;

The control handler is embedded in the context, and the fh.ctrl_handler
is initialized when the context is returned.

You cannot have a context without a control handler (see hantro_open).

> +
> +       switch (ctrl->id) {
> +       case V4L2_CID_STATELESS_H264_SPS:
> +               new_sps = (void *)ctrl->p_new.p_h264_sps;
> +               break;
> +       case V4L2_CID_STATELESS_HEVC_SPS:
> +               new_sps = (void *)ctrl->p_new.p_hevc_sps;
> +               break;
> +       default:
> +               dev_err(ctx->dev->dev, "Unsupported stateless control ID: %x\n", ctrl->id);
> +               return -EINVAL;
> +       };
> +       rkvdec_get_sps_attributes(ctx, new_sps, &attributes);
> +
> +       /*
> +        * Providing an empty SPS is valid but we do not store it.
> +        */
> +       if (attributes.width == 0 && attributes.height == 0)
> +               return 0;
> +
> +       pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
> +
> +       /*
> +        * SPS must match the provided format dimension, if it doesn't userspace has to
> +        * first reset the output format

This comment says it's a mismatch check, but the check is checking for
"larger than".

Other than that, the general idea looks good, can you rework the series to avoid
the extra storage of the SPS control in the context?

Thanks,
Ezequiel

> +        */
> +       if ((attributes.width > pix_mp->width) || (attributes.height > pix_mp->height)) {
> +               dev_err(ctx->dev->dev,
> +                       "Dimension mismatch. [%s SPS] W: %d, H: %d, [Format] W: %d, H: %d)\n",
> +                       ctrl->id == V4L2_CID_STATELESS_HEVC_SPS ? "HEVC" : "H264",
> +                       attributes.width, attributes.height, pix_mp->width, pix_mp->height);
> +               return -EINVAL;
> +       }
> +
> +       if (ctx->sps && pix_mp->pixelformat == rkvdec_get_valid_fmt(ctx)) {
> +               /*
> +                * Userspace is allowed to change the SPS at any point, if the
> +                * pixel format doesn't differ from the format in the context,
> +                * just accept the change even if buffers are queued
> +                */
> +               ctx->sps = new_sps;
> +       } else {
> +               /*
> +                * Do not accept changing the SPS, while buffers are queued,
> +                * when the new SPS would cause switching the CAPTURE pixel format
> +                */
> +               if (pix_mp->pixelformat != rkvdec_get_valid_fmt(ctx)) {
> +                       if (rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE))
> +                               return -EBUSY;
> +               }
> +               ctx->sps = new_sps;
> +               /*
> +                * For the initial SPS setting and when the pixel format is
> +                * changed adjust the pixel format stored in the context
> +                */
> +               pix_mp->pixelformat = rkvdec_get_valid_fmt(ctx);
> +               rkvdec_fill_decoded_pixfmt(ctx, pix_mp);
> +       }
> +
> +       return 0;
> +}
> +
>  static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
>         struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> @@ -104,8 +177,16 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +       struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> +
> +       return rkvdec_set_sps(ctx, ctrl);
> +}
> +
>  static const struct v4l2_ctrl_ops rkvdec_ctrl_ops = {
>         .try_ctrl = rkvdec_try_ctrl,
> +       .s_ctrl = rkvdec_s_ctrl,
>  };
>
>  static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
>
> --
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
