Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF693C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 06:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JSCoBG4Y6wvu2kaDJCxTwAQabWJxVCKZITsA22AXaM=; b=S1k0by+OQGIIOy
	5I8N9o4W9vlTIEcUPv77Mzwrch4/aJTzf0i14bhuJuO67nAmtUI+ZB+nidPumuhUqD7+rHDQECGoX
	bIjjQfAa8orrM0JOAAEMP4QAdKWzfFE5FDc/yg5W6XKIlvQzuVY9/nBrTdRJOVvnp+P7iV0Sk32zR
	A0qeCvJj3Ou9W7gT3uYsH5+/UnRJuNzIA9GRRLAyomaoBJr5VQnXMdCQb8xTGWEgiYe/AZGZNcJgM
	7ERxsGETCnybAFP+Cjvy/P3+RhOZdMGkO8vgBYKX4qC96iunzI6KL451w0s19WVGB15eG7darKSRC
	p56ioWkG5uw3g3o8YWOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTefj-003zt3-2M; Mon, 14 Mar 2022 06:59:15 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTeff-003zrt-FV
 for linux-rockchip@lists.infradead.org; Mon, 14 Mar 2022 06:59:13 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id z30so28850940ybi.2
 for <linux-rockchip@lists.infradead.org>; Sun, 13 Mar 2022 23:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A6lw8z2Kqd92OdM33qxIItDF7pb69i6eyPKA9hHFNIQ=;
 b=d+6NkN3xbbrLoDcO/sx000ipg/UVnmRRQfhlGEnnpBVQxzR64BLWxYzMzt8R5jx1U/
 CC0nSvUddXRT5PDZPBOz0SBRMkOGXlzxtgFmgO2sFy/TOk0DmkngpGD9m3gfYP7Hx0wm
 6rexHzVpPnB2ecA6iiUcrmSERtOBlBCyeX3EY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A6lw8z2Kqd92OdM33qxIItDF7pb69i6eyPKA9hHFNIQ=;
 b=H3YM3FkCeZNEA4m3YlwoCOd6V89MNoGK7lM8JZNTjSq32VWQUK/CXHFxPlazo4G6A1
 9rg8FIj1em3scwnRJzneLt3A4qK0VPu1XTaYgNzAn2MvZDWhGgmp1MlcqWVDuQ4kyklq
 /JVKLnBPS8ykYcmC4ZszuIYz7RYl9RHEBgPGutlO78KkkzL8EM8EtOoVoVGYxGql1ceh
 XWhQqHzAXeU5LcQZ/eAuhZP3J3CTt3YXmQrss9KxjsLkmPg+Ty9SeI3KqxBmlCSgRE7F
 nHMOuqRShTdKt2mlrohZGqY8SnI2N8sPOeUXkXPUFVYuWxuQ4eAOOX5aDt+Wk9OKiiAw
 6stw==
X-Gm-Message-State: AOAM531JowkLO7xvqvwoLM2M1taN/DRQA8BcRAZWJ/EVuTofMZmlZyyc
 e2/c5Ffe7GkRbNmVewtkzWKDqBhn6v6Y6vGZEDfTPQ==
X-Google-Smtp-Source: ABdhPJxPPqe8L7B4Err4gUcZpeAr9JDl95qVOqYxAzyRKleMe8mrC9iVvH9vmt+ZI+QQN+vXvHn68WfjmRak0uY671k=
X-Received: by 2002:a25:3403:0:b0:628:a2e4:ae8a with SMTP id
 b3-20020a253403000000b00628a2e4ae8amr16062943yba.219.1647241149643; Sun, 13
 Mar 2022 23:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220301042225.1540019-1-wenst@chromium.org>
In-Reply-To: <20220301042225.1540019-1-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 14 Mar 2022 14:58:58 +0800
Message-ID: <CAGXv+5F-Nir_OHbenYntDhOVFviLP1n-dZcaw07GohSc=YK6SA@mail.gmail.com>
Subject: Re: [PATCH v3] media: hantro: Implement support for encoder commands
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-kernel@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_235911_563124_F6ECC178 
X-CRM114-Status: GOOD (  34.39  )
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

Hi Ezequiel,

On Tue, Mar 1, 2022 at 12:22 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> The V4L2 stateful encoder uAPI specification requires that drivers
> support the ENCODER_CMD ioctl to allow draining of buffers. This
> however was not implemented, and causes issues for some userspace
> applications.
>
> Implement support for the ENCODER_CMD ioctl using v4l2-mem2mem helpers.
> This is entirely based on existing code found in the vicodec test
> driver.
>
> Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Reviewed-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Gentle ping on this patch. Any comments?

> ---
>
> Changes since v2:
> - Dropped RFC tag
> - Added Reviewed-by from Benjamin
> - Replace direct access to vb->planes[i].bytesused with
>   vb2_set_plane_payload()
>
> Changes since v1:
> - Correctly handle last buffers that are empty
> - Correctly handle last buffers that just got queued
> - Disable (TRY_)ENCODER_CMD ioctls for hantro decoder
>
> This is based on linux-next-20220208, and was tested on RK3399 with
> Gstreamer running the JPEG encoder. It was also tested on ChromeOS
> 5.10 on Kevin with the video encoder used in ChromeOS ARC, which
> requires this. For ChromeOS, both encoder and decoder tests were run
> to check for regressions.
>
> Everything really works OK now, but since I'm not very familiar with
> the mem2mem framework, I might be missing something, causing resource
> leaks. Hence this patch is labeled RFC.
>
> Last, I suppose we could also add support for (TRY_)DECODER_CMD now?
>
>  drivers/staging/media/hantro/hantro_drv.c  | 17 +++++-
>  drivers/staging/media/hantro/hantro_v4l2.c | 68 +++++++++++++++++++++-
>  2 files changed, 81 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index bc9bcb4eaf46..99bc650a5a93 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -56,6 +56,10 @@ dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
>         return hantro_get_dec_buf_addr(ctx, buf);
>  }
>
> +static const struct v4l2_event hantro_eos_event = {
> +       .type = V4L2_EVENT_EOS
> +};
> +
>  static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
>                                     struct hantro_ctx *ctx,
>                                     enum vb2_buffer_state result)
> @@ -73,6 +77,12 @@ static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
>         src->sequence = ctx->sequence_out++;
>         dst->sequence = ctx->sequence_cap++;
>
> +       if (v4l2_m2m_is_last_draining_src_buf(ctx->fh.m2m_ctx, src)) {
> +               dst->flags |= V4L2_BUF_FLAG_LAST;
> +               v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
> +               v4l2_m2m_mark_stopped(ctx->fh.m2m_ctx);
> +       }
> +
>         v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
>                                          result);
>  }
> @@ -807,10 +817,13 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>         snprintf(vfd->name, sizeof(vfd->name), "%s-%s", match->compatible,
>                  funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ? "enc" : "dec");
>
> -       if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER)
> +       if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>                 vpu->encoder = func;
> -       else
> +       } else {
>                 vpu->decoder = func;
> +               v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
> +               v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
> +       }
>
>         video_set_drvdata(vfd, vpu);
>
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 67148ba346f5..aa10ecd04c9c 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -628,6 +628,39 @@ static int vidioc_s_selection(struct file *file, void *priv,
>         return 0;
>  }
>
> +static const struct v4l2_event hantro_eos_event = {
> +       .type = V4L2_EVENT_EOS
> +};
> +
> +static int vidioc_encoder_cmd(struct file *file, void *priv,
> +                             struct v4l2_encoder_cmd *ec)
> +{
> +       struct hantro_ctx *ctx = fh_to_ctx(priv);
> +       int ret;
> +
> +       ret = v4l2_m2m_ioctl_try_encoder_cmd(file, priv, ec);
> +       if (ret < 0)
> +               return ret;
> +
> +       if (!vb2_is_streaming(v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)) ||
> +           !vb2_is_streaming(v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx)))
> +               return 0;
> +
> +       ret = v4l2_m2m_ioctl_encoder_cmd(file, priv, ec);
> +       if (ret < 0)
> +               return ret;
> +
> +       if (ec->cmd == V4L2_ENC_CMD_STOP &&
> +           v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
> +               v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
> +
> +       if (ec->cmd == V4L2_ENC_CMD_START &&
> +           v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
> +               vb2_clear_last_buffer_dequeued(&ctx->fh.m2m_ctx->cap_q_ctx.q);
> +
> +       return 0;
> +}
> +
>  const struct v4l2_ioctl_ops hantro_ioctl_ops = {
>         .vidioc_querycap = vidioc_querycap,
>         .vidioc_enum_framesizes = vidioc_enum_framesizes,
> @@ -657,6 +690,9 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
>
>         .vidioc_g_selection = vidioc_g_selection,
>         .vidioc_s_selection = vidioc_s_selection,
> +
> +       .vidioc_try_encoder_cmd = v4l2_m2m_ioctl_try_encoder_cmd,
> +       .vidioc_encoder_cmd = vidioc_encoder_cmd,
>  };
>
>  static int
> @@ -733,8 +769,12 @@ static int hantro_buf_prepare(struct vb2_buffer *vb)
>          * (for OUTPUT buffers, if userspace passes 0 bytesused, v4l2-core sets
>          * it to buffer length).
>          */
> -       if (V4L2_TYPE_IS_CAPTURE(vq->type))
> -               vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
> +       if (V4L2_TYPE_IS_CAPTURE(vq->type)) {
> +               if (ctx->is_encoder)
> +                       vb2_set_plane_payload(vb, 0, 0);
> +               else
> +                       vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
> +       }
>
>         return 0;
>  }
> @@ -744,6 +784,22 @@ static void hantro_buf_queue(struct vb2_buffer *vb)
>         struct hantro_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
>         struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
>
> +       if (V4L2_TYPE_IS_CAPTURE(vb->vb2_queue->type) &&
> +           vb2_is_streaming(vb->vb2_queue) &&
> +           v4l2_m2m_dst_buf_is_last(ctx->fh.m2m_ctx)) {
> +               unsigned int i;
> +
> +               for (i = 0; i < vb->num_planes; i++)
> +                       vb2_set_plane_payload(vb, i, 0);
> +
> +               vbuf->field = V4L2_FIELD_NONE;
> +               vbuf->sequence = ctx->sequence_cap++;
> +
> +               v4l2_m2m_last_buffer_done(ctx->fh.m2m_ctx, vbuf);
> +               v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
> +               return;
> +       }
> +
>         v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
>  }
>
> @@ -759,6 +815,8 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
>         struct hantro_ctx *ctx = vb2_get_drv_priv(q);
>         int ret = 0;
>
> +       v4l2_m2m_update_start_streaming_state(ctx->fh.m2m_ctx, q);
> +
>         if (V4L2_TYPE_IS_OUTPUT(q->type))
>                 ctx->sequence_out = 0;
>         else
> @@ -831,6 +889,12 @@ static void hantro_stop_streaming(struct vb2_queue *q)
>                 hantro_return_bufs(q, v4l2_m2m_src_buf_remove);
>         else
>                 hantro_return_bufs(q, v4l2_m2m_dst_buf_remove);
> +
> +       v4l2_m2m_update_stop_streaming_state(ctx->fh.m2m_ctx, q);
> +
> +       if (V4L2_TYPE_IS_OUTPUT(q->type) &&
> +           v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
> +               v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
>  }
>
>  static void hantro_buf_request_complete(struct vb2_buffer *vb)
> --
> 2.35.1.574.g5d30c73bfb-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
