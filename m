Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15642C54EBD
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Jan 2023 21:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3UBjXb/Ja7TF6EQzsP1gnZq8U7w7yMLk3sFhgqnKBM=; b=CA7Nw8wJnz6o/z
	kUZ2icVVIegkvSeFLedkQpmlIv4GhWqfb3bKSwvYWsMh8ljEfZ4byYEIll5cBXRBWaoZwvxUFOrI+
	tUeSXv1FLQL2hKhg3k2aQVbadGhGQEsI8yi9NwxqMp+g0uRsnqSLEXbSWC79wRy2JrX4Vt6M3xH7d
	aKeOGVLEpGjbOx1OTzSRzTTc3r8nC8oGPL/vLYGF+xJTwnslGqNZxYuj5khNOfxV2pQ50SFbx/jxu
	W7aMhPE2ebGTgqe+toISOR6ukWA7CnuRvW9vlGkQXtlHvTW+cyEvrrEh8yZrA8iZlngq97uvudUue
	StVXWI+0acN3YscvjhGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEcyL-00FpId-E0; Sun, 08 Jan 2023 21:12:53 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEcyI-00FpEM-Aq
	for linux-rockchip@lists.infradead.org; Sun, 08 Jan 2023 21:12:51 +0000
Received: by mail-lj1-x22f.google.com with SMTP id p25so825272ljn.12
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Jan 2023 13:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x53uwOLKbwK81PFlMs31vANCaDhh1Zsvs/a9zuGpPQk=;
        b=0PDk1gKy7Bf3a6EwyRvCAxmVMnlOtuNpFYpwSfF8y6YltxiIQb7a28VlfLbdiYUi6Z
         8MUnG9BR3yVVQpLQU8XqLEmftHA2d1Gw5X/S61ZSMcY9nerIvO6sUXlrqj5+Ry8uK6s4
         9+cxshzjPhDQxmL8A46alekPNVEs72Y5+5WPOa/B1jrup3Id5EloKkFXO0A1+jXx9HcN
         4DK1RRwIkfvPYHrFAU2H0zcozt4Orl+qAk871SXv+SFwN217D4TvTQj04jycZig2r0f2
         EQxBzqR9uic9UGoshpdACfObFi9jPenr8z/7THbGN2Te4ymD3Z1yCRA1igE8Ygf8s6Xr
         +M/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x53uwOLKbwK81PFlMs31vANCaDhh1Zsvs/a9zuGpPQk=;
        b=aXlj4x0qB5b5t6FZjBGWqOJuxZz3Hjc+Rt7Dy1nQMBGvTuPMyziAOAImpN39BMuKP8
         XBHCyxGPW7Xr/XEhATUxvmaJEswGZEwxmhLoIhACKc+JPfCyNGHfgStxwJcPa5dFTI2C
         gv/0DYdPbhosrTwztQi2Sv9ywNJORmEga+UVfxwanchtjZDzTUVOxpVg5X7jCy6rWBnS
         PYvtVFShRcModqDLtN4uRDDQTa+r4+bLNmCKYqND0BY2IrhlVzDh+z1wUkNh3+TVwlt2
         D7Yd6kYVo/9t6PZ5NZZVj1vvvnn8lkKQ2xscjC+LLFwlgF8wyTukHWdZ/YffW/SIhhOG
         cTJQ==
X-Gm-Message-State: AFqh2kqHqNmAWwkE0+zowjTcrlOxpDUt+jrYP4offX2YFbRO/dB2gjF+
	5wSheiAOe9euGJ8EhszmnIoSq5MBHMPeaupKeWGzWQ==
X-Google-Smtp-Source: AMrXdXssLooCUB3JcSjFGQGlVuCaFAVGO6fwtMCDpc/mUlglB++tww+r2xlSFr4vPtbjYEwsLwWpTCjfAlStv55FVrU=
X-Received: by 2002:a2e:90d2:0:b0:27f:f22d:afe9 with SMTP id
 o18-20020a2e90d2000000b0027ff22dafe9mr1990761ljg.404.1673212366368; Sun, 08
 Jan 2023 13:12:46 -0800 (PST)
MIME-Version: 1.0
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com> <20230103170058.810597-14-benjamin.gaignard@collabora.com>
In-Reply-To: <20230103170058.810597-14-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sun, 8 Jan 2023 18:12:34 -0300
Message-ID: <CAAEAJfBRtBSZt0B3OyQSCHhsseUn6_H+JSvAR3cOH15WUryuNw@mail.gmail.com>
Subject: Re: [PATCH v2 13/13] media: verisilicon: Conditionnaly ignore native formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_131250_431165_97749916 
X-CRM114-Status: GOOD (  22.30  )
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

On Tue, Jan 3, 2023 at 2:01 PM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> AV1 film grain feature requires to use the postprocessor to produce
> valid frames. In such case the driver shouldn't propose native pixels
> format but only post-processed pixels format.
> If a codec set need_postproc field in hantro_ctx structure to true
> native pixel formats will be ignored.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro.h   |  3 ++
>  .../media/platform/verisilicon/hantro_drv.c   |  5 ++
>  .../platform/verisilicon/hantro_postproc.c    |  4 ++
>  .../media/platform/verisilicon/hantro_v4l2.c  | 46 +++++++++++++------
>  4 files changed, 45 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
> index a98cb40a8d3b..7a5357e810fb 100644
> --- a/drivers/media/platform/verisilicon/hantro.h
> +++ b/drivers/media/platform/verisilicon/hantro.h
> @@ -231,6 +231,8 @@ struct hantro_dev {
>   * @ctrl_handler:      Control handler used to register controls.
>   * @jpeg_quality:      User-specified JPEG compression quality.
>   * @bit_depth:         Bit depth of current frame
> + * @need_postproc:     Set to true if the bitstream features require to
> + *                     use the post-processor.
>   *
>   * @codec_ops:         Set of operations related to codec mode.
>   * @postproc:          Post-processing context.
> @@ -258,6 +260,7 @@ struct hantro_ctx {
>         struct v4l2_ctrl_handler ctrl_handler;
>         int jpeg_quality;
>         int bit_depth;
> +       bool need_postproc;
>
>         const struct hantro_codec_ops *codec_ops;
>         struct hantro_postproc_ctx postproc;
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 4fc6dea16ae6..8d7055c0bf3b 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -346,6 +346,11 @@ static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
>                                 return -EINVAL;
>
>                 ctx->bit_depth = bit_depth;
> +
> +               if (ctrl->p_new.p_av1_sequence->flags
> +                   & V4L2_AV1_SEQUENCE_FLAG_FILM_GRAIN_PARAMS_PRESENT)
> +                       ctx->need_postproc = true;
> +
>                 break;
>         default:
>                 return -EINVAL;
> diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
> index 7dc39519a2ee..293e5612e2ce 100644
> --- a/drivers/media/platform/verisilicon/hantro_postproc.c
> +++ b/drivers/media/platform/verisilicon/hantro_postproc.c
> @@ -57,6 +57,10 @@ bool hantro_needs_postproc(const struct hantro_ctx *ctx,
>  {
>         if (ctx->is_encoder)
>                 return false;
> +
> +       if (ctx->need_postproc)
> +               return true;
> +
>         return fmt->postprocessed;
>  }
>
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index bbe79dbd2cd9..5c381766cca3 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -38,6 +38,11 @@ hantro_get_formats(const struct hantro_ctx *ctx, unsigned int *num_fmts)
>  {
>         const struct hantro_fmt *formats;
>
> +       if (ctx->need_postproc) {
> +               *num_fmts = 0;
> +               return NULL;
> +       }
> +
>         if (ctx->is_encoder) {
>                 formats = ctx->dev->variant->enc_fmts;
>                 *num_fmts = ctx->dev->variant->num_enc_fmts;
> @@ -132,6 +137,15 @@ hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
>                     hantro_check_depth_match(ctx, &formats[i]))
>                         return &formats[i];
>         }
> +
> +       formats = hantro_get_postproc_formats(ctx, &num_fmts);
> +       for (i = 0; i < num_fmts; i++) {
> +               if (bitstream == (formats[i].codec_mode !=
> +                                 HANTRO_MODE_NONE) &&
> +                   hantro_check_depth_match(ctx, &formats[i]))
> +                       return &formats[i];
> +       }
> +
>         return NULL;
>  }
>
> @@ -261,19 +275,6 @@ static int vidioc_g_fmt_out_mplane(struct file *file, void *priv,
>         return 0;
>  }
>
> -static int vidioc_g_fmt_cap_mplane(struct file *file, void *priv,
> -                                  struct v4l2_format *f)
> -{
> -       struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> -       struct hantro_ctx *ctx = fh_to_ctx(priv);
> -
> -       vpu_debug(4, "f->type = %d\n", f->type);
> -
> -       *pix_mp = ctx->dst_fmt;
> -
> -       return 0;
> -}
> -
>  static int hantro_try_fmt(const struct hantro_ctx *ctx,
>                           struct v4l2_pix_format_mplane *pix_mp,
>                           enum v4l2_buf_type type)
> @@ -353,6 +354,25 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
>         return 0;
>  }
>
> +static int vidioc_g_fmt_cap_mplane(struct file *file, void *priv,
> +                                  struct v4l2_format *f)
> +{
> +       struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> +       struct hantro_ctx *ctx = fh_to_ctx(priv);
> +       int ret;
> +
> +       vpu_debug(4, "f->type = %d\n", f->type);
> +
> +       ret = hantro_try_fmt(ctx, pix_mp, f->type);
> +       if (ret)
> +               return ret;
> +
> +       ctx->vpu_dst_fmt = hantro_find_format(ctx, pix_mp->pixelformat);
> +       ctx->dst_fmt = *pix_mp;
> +

This looks like the g_fmt is setting some state in the context,
this looks incorrect.

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
