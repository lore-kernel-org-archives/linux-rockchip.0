Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F898C87FD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 10:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JL8f6dTUA4aqtHoPeRre2K+eraRcsXlzlCF6bxJr0iI=; b=2CAqaNCAKj3P2q
	aM6u5dUc2blQE7lz87kE89FzqkJ3LS6zqKhuxWJS8KfmwvD4tvOX+DlyeRNL4toH6KU++7U1WAjXm
	+T+Fhr0xS5Z+UBZpyAOKJp5TiAyyl3FLZubeL//8a/G/+PQjDCBP+HmlLF/pfR29G1sX7b7n0fERh
	YidbI+RtSxrvKbo21MHZKuviSmvpwxpFkqLgmWeTWD9HySThzBHZVZwd1kb9XotE1l3oWtoQjrUXy
	Rj5v/HZflL2SuT8y45kEYPtIBP/Mn9AjBz0WORcxI+TdNFfMBJTUGkGUuCPGvBiZQUnFbRMTqu8Jy
	Vsega9eRSfwmlEJIOKTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEoF-0000000CTUg-2vYQ;
	Tue, 05 Aug 2025 10:22:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujES6-0000000CQzy-3SDE;
	Tue, 05 Aug 2025 09:59:28 +0000
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D96F2AD0;
	Tue,  5 Aug 2025 11:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754387915;
	bh=RV+XSnddoBH4JRWHZZy+4T5rBIZcZFEquw455N0WQVA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=aPIOyP3CCN60ghQ95OYLB9emUWH/n0b6O3gtc9ZoA+uMAITK5524gPFOoFe3iPgrR
	 PeGZgkGvvmEIfAIjVWqinSJN2vlhZuO+XIf+jbLxH1tzVI09y3TIRrSaAcZCkteW9d
	 f9FcX+PdukMOKmU3dXioC96DYHeFg17Pwv6UxHrs=
MIME-Version: 1.0
In-Reply-To: <20250802-media-private-data-v1-42-eb140ddd6a9d@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com> <20250802-media-private-data-v1-42-eb140ddd6a9d@ideasonboard.com>
Subject: Re: [PATCH 42/65] media: renesas: Access v4l2_fh from file
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org, imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, mjpeg-users@lists.sourceforge.net
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Tue, 05 Aug 2025 10:59:19 +0100
Message-ID: <175438795943.1641235.15440393062572657340@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_025927_001004_E505C0F4 
X-CRM114-Status: GOOD (  14.55  )
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

Quoting Jacopo Mondi (2025-08-02 10:23:04)
> The v4l2_fh associated with an open file handle is now guaranteed
> to be available in file->private_data, initialised by v4l2_fh_add().
> 
> Access the v4l2_fh, and from there the driver-specific structure,
> from the file * in all ioctl handlers.
> 
> While at it, remove the now unused fh_to_ctx() macro.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> ---
>  drivers/media/platform/renesas/rcar_fdp1.c | 11 +++--------
>  drivers/media/platform/renesas/rcar_jpu.c  | 21 ++++++++-------------
>  2 files changed, 11 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/media/platform/renesas/rcar_fdp1.c b/drivers/media/platform/renesas/rcar_fdp1.c
> index e78d8fb104e9544d27c8ace38888995ca170483f..84c3901a2e5dc3e7ccfb3b44062e839f8f19ee02 100644
> --- a/drivers/media/platform/renesas/rcar_fdp1.c
> +++ b/drivers/media/platform/renesas/rcar_fdp1.c
> @@ -630,11 +630,6 @@ struct fdp1_ctx {
>         struct fdp1_field_buffer        *previous;
>  };
>  
> -static inline struct fdp1_ctx *fh_to_ctx(struct v4l2_fh *fh)
> -{
> -       return container_of(fh, struct fdp1_ctx, fh);
> -}
> -
>  static inline struct fdp1_ctx *file_to_ctx(struct file *filp)
>  {
>         return container_of(file_to_v4l2_fh(filp), struct fdp1_ctx, fh);
> @@ -1411,8 +1406,8 @@ static int fdp1_enum_fmt_vid_out(struct file *file, void *priv,
>  
>  static int fdp1_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> +       struct fdp1_ctx *ctx = file_to_ctx(file);
>         struct fdp1_q_data *q_data;
> -       struct fdp1_ctx *ctx = fh_to_ctx(priv);
>  
>         if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
>                 return -EINVAL;
> @@ -1589,7 +1584,7 @@ static void fdp1_try_fmt_capture(struct fdp1_ctx *ctx,
>  
>  static int fdp1_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> -       struct fdp1_ctx *ctx = fh_to_ctx(priv);
> +       struct fdp1_ctx *ctx = file_to_ctx(file);
>  
>         if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
>                 fdp1_try_fmt_output(ctx, NULL, &f->fmt.pix_mp);
> @@ -1660,7 +1655,7 @@ static void fdp1_set_format(struct fdp1_ctx *ctx,
>  
>  static int fdp1_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> -       struct fdp1_ctx *ctx = fh_to_ctx(priv);
> +       struct fdp1_ctx *ctx = file_to_ctx(file);
>         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>         struct vb2_queue *vq = v4l2_m2m_get_vq(m2m_ctx, f->type);
>  
> diff --git a/drivers/media/platform/renesas/rcar_jpu.c b/drivers/media/platform/renesas/rcar_jpu.c
> index 058fcfb967bd98440f33272db42f0d973299d572..9c70a74a2969fce6446b0f26e0637a68eade3942 100644
> --- a/drivers/media/platform/renesas/rcar_jpu.c
> +++ b/drivers/media/platform/renesas/rcar_jpu.c
> @@ -480,11 +480,6 @@ static struct jpu_ctx *ctrl_to_ctx(struct v4l2_ctrl *c)
>         return container_of(c->handler, struct jpu_ctx, ctrl_handler);
>  }
>  
> -static struct jpu_ctx *fh_to_ctx(struct v4l2_fh *fh)
> -{
> -       return container_of(fh, struct jpu_ctx, fh);
> -}
> -
>  static struct jpu_ctx *file_to_ctx(struct file *filp)
>  {
>         return container_of(file_to_v4l2_fh(filp), struct jpu_ctx, fh);
> @@ -661,7 +656,7 @@ static u8 jpu_parse_hdr(void *buffer, unsigned long size, unsigned int *width,
>  static int jpu_querycap(struct file *file, void *priv,
>                         struct v4l2_capability *cap)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         if (ctx->encoder)
>                 strscpy(cap->card, DRV_NAME " encoder", sizeof(cap->card));
> @@ -719,7 +714,7 @@ static int jpu_enum_fmt(struct v4l2_fmtdesc *f, u32 type)
>  static int jpu_enum_fmt_cap(struct file *file, void *priv,
>                             struct v4l2_fmtdesc *f)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_CAPTURE :
>                             JPU_DEC_CAPTURE);
> @@ -728,7 +723,7 @@ static int jpu_enum_fmt_cap(struct file *file, void *priv,
>  static int jpu_enum_fmt_out(struct file *file, void *priv,
>                             struct v4l2_fmtdesc *f)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_OUTPUT : JPU_DEC_OUTPUT);
>  }
> @@ -828,7 +823,7 @@ static int __jpu_try_fmt(struct jpu_ctx *ctx, struct jpu_fmt **fmtinfo,
>  
>  static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
>                 return -EINVAL;
> @@ -839,7 +834,7 @@ static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  static int jpu_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
>         struct vb2_queue *vq;
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>         struct jpu_fmt *fmtinfo;
>         struct jpu_q_data *q_data;
> @@ -868,8 +863,8 @@ static int jpu_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  
>  static int jpu_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>         struct jpu_q_data *q_data;
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
>  
>         if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
>                 return -EINVAL;
> @@ -902,8 +897,8 @@ static const struct v4l2_ctrl_ops jpu_ctrl_ops = {
>  
>  static int jpu_streamon(struct file *file, void *priv, enum v4l2_buf_type type)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
>         struct jpu_q_data *src_q_data, *dst_q_data, *orig, adj, *ref;
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>         enum v4l2_buf_type adj_type;
>  
>         src_q_data = jpu_get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
> @@ -1284,8 +1279,8 @@ static int jpu_open(struct file *file)
>  
>  static int jpu_release(struct file *file)
>  {
> -       struct jpu *jpu = video_drvdata(file);
>         struct jpu_ctx *ctx = file_to_ctx(file);
> +       struct jpu *jpu = video_drvdata(file);
>  
>         v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
>         v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> 
> -- 
> 2.49.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
