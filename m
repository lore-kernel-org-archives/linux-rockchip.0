Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31282C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 12:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGfEQjIq8NgtGSHskFJiXXVimQKP8DEZd5FfRK7dxM0=; b=AfvknzPyG9OB5N
	+t/OuY/ib9NsGa5tQREQEAFP14Kq9Z6dL9dfRL9uKYjYaB4TgIyiqdbzTS2Oy71AfltJMZOs/d7Or
	A03yM5/m2Bv2FuFoDcnJYa2SLkNfzHrn0NYVWDxmO8x0eBwPkxR8AwG4NtFrxZWrDS3tEQFD8F760
	r8PeVPDOjypaex6mq+2uwFy3S0MaXfAwAuDUo2O6KSTG7FrMkR7ILn0iltmESk92JRLjcYSW2r4FO
	FqO89jHodfS3Hi8JfbfXCeQqqmL0V5LBBAT28lSMly76vxQdwkf9F1nOjzYkEoWuFUIEudRHs8Axv
	L+j7+YIYTJdUKDkhnAjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHPeN-00DkcD-CM; Tue, 08 Feb 2022 12:31:15 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHPeK-00Dkbg-Es
 for linux-rockchip@lists.infradead.org; Tue, 08 Feb 2022 12:31:14 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 192so23168890ybd.10
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Feb 2022 04:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yfYLtbVg7Jphgpqo5l2mfLMwKt3fmTcNOyyPV835z9U=;
 b=X73BVSASthoFh71ZUYqhPOBlmWD6VlnN6mtxlLeUi48uyVMU0ZaQsH/cmXLKhp1Jui
 4usjsDrOE/K++FH8OeqG4WNNAOcG9B+4N4GSjY7QwCYxcbUEhBC2Y/nh2OUlwsgnjeox
 eUtinaYsaItLRMZrGl5DhrtfLCm02TgJMPJqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yfYLtbVg7Jphgpqo5l2mfLMwKt3fmTcNOyyPV835z9U=;
 b=zm/XYo5uOlhsEX/svF4BhjdjvbSJgT001xZ6kmRqx18TeTOoLTqrsoy3meyCAurUEp
 uWYeg4TilmjUysx0EZLJC7U/FPXwn77W86/3PUcejG9pGALiXvXDigkEap/iN51AMKZ1
 7DDY547A12qHd+sE1TyXnB9Dj/yueWKCUoYGJCIDhi/fjyxIl1BgyW4iEMnPXjOJRsXt
 op83NP7d0dqNePDYYKonjBjWIQAAAlKu2ydn/1Ull/2sNgXHepb7DH02OSeloV0DX7r6
 Tx+ThepbOYPY3lZkrAibimd2amRjILgAbV4UhzarHK5Yp8gj9v1pjPPS+rDRQRwJFEai
 SLvA==
X-Gm-Message-State: AOAM530XK3yXHewpNNTUwWa2dlKzYDj7kGzQkfcxsTEdswnXJcwmEDwT
 dZtbW9tRSdOu94tdvTZ/FbxvJrYYW0bVmRjijltIpw==
X-Google-Smtp-Source: ABdhPJyCCYOYwDckY357tk7CH1jqmHDW4BUZPjfdeuj7J3jv7vIaHKcjBTuE6IB72wx2P7IBnypp3hlrdAC/yjDoo7g=
X-Received: by 2002:a81:1b4e:: with SMTP id b75mr4316368ywb.295.1644323471148; 
 Tue, 08 Feb 2022 04:31:11 -0800 (PST)
MIME-Version: 1.0
References: <20220208105456.321294-1-wenst@chromium.org>
In-Reply-To: <20220208105456.321294-1-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 8 Feb 2022 20:30:59 +0800
Message-ID: <CAGXv+5HT84sEv9TFV1H=mMEO4oqz4OdwXQGMhwrOf5dtMrjOBQ@mail.gmail.com>
Subject: Re: [PATCH RFC] media: hantro: Implement support for encoder commands
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_043112_552686_B7B9D40E 
X-CRM114-Status: GOOD (  28.75  )
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

On Tue, Feb 8, 2022 at 6:55 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
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
> ---
>
> This is based on linux-next-20220207, and was tested on RK3399 with
> Gstreamer running the JPEG encoder. It was also tested on ChromeOS
> 5.10 on Kevin with the video encoder used in ChromeOS ARC, which
> requires this.
>
> Everything works OK, but since I'm not very familiar with the mem2mem
> framework, I might be missing something, causing resource leaks.
> Hence this patch is labeled RFC.

And it seems I failed to handle the case where the last capture buffer
is empty.

Will rework and send a new version tomorrow.


ChenYu

> ---
>  drivers/staging/media/hantro/hantro_drv.c  | 10 +++++
>  drivers/staging/media/hantro/hantro_v4l2.c | 44 ++++++++++++++++++++++
>  2 files changed, 54 insertions(+)
>
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index bc9bcb4eaf46..ccd47eee5c43 100644
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
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 67148ba346f5..8c6746637236 100644
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
> @@ -759,6 +795,8 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
>         struct hantro_ctx *ctx = vb2_get_drv_priv(q);
>         int ret = 0;
>
> +       v4l2_m2m_update_start_streaming_state(ctx->fh.m2m_ctx, q);
> +
>         if (V4L2_TYPE_IS_OUTPUT(q->type))
>                 ctx->sequence_out = 0;
>         else
> @@ -831,6 +869,12 @@ static void hantro_stop_streaming(struct vb2_queue *q)
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
> 2.35.0.263.gb82422642f-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
