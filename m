Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB527C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 10:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iPBesl52QbKt17PPNgt/pkxVvu0zwQf5M5tLrkxRIgo=; b=xN4psMEgjnclYb
	y19tmnsb/JO2vuGG6Mpouvt+ZxTva2lkdsTtQx9kPbtVFLiJPSNCRMbKRqgMxIBsESgN1FK8knPuu
	+oRMp4w6CM+xbD1sbF8Kx4gqq1IwciP/wJww/qViLw2cml7VQ4Z4f2YQwddg2gErKwbAhn/7gzuIt
	Ngg7qGmZ6myRrLdOjiesVZOCboNszIr4eM8zoedWd/rnZeSaMNuwZZ8amsUm/bZGA2IxIHht9t73Q
	7jOyv3PAa8jT9pKIvwJ0xPfZSWm8hQ2J7QAxkj2k8dwSpk/RvUzp2XgHEdqwQRF0xYBZ8itAPmF8l
	nqyc3i155jqMQa5axvgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHO9M-00DTw2-1m; Tue, 08 Feb 2022 10:55:08 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHO9I-00DTu2-El
 for linux-rockchip@lists.infradead.org; Tue, 08 Feb 2022 10:55:06 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 a11-20020a17090a740b00b001b8b506c42fso1815223pjg.0
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Feb 2022 02:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JpFe2MD1E+2DPoXg543PglALXj4OP+/vcuv1a1idPqs=;
 b=deOHRpDN7/U/V2+1GsKT9q4cej3QCC1mv9oreCRy2yqCzqwof20GqvzEGli/OdHxZp
 XbF3QBT3Th2t6JVa2oGczJxri5/zN1rZQOLve5TxfB5GgIpK5tzEM08Ad2tDnXi2n3L1
 QkJwk/5mWQ/oqiRINLAHiGlQgQye9NmBNdHJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JpFe2MD1E+2DPoXg543PglALXj4OP+/vcuv1a1idPqs=;
 b=wBVl/M3OvKuA4ERfV/1w0uf+5BBbRjdi0Lt3qsf+tq2OthVRQv4z140bw8lvYNKv8I
 ofRBIgvxQYwdHdyCeusNq5ZLPVFK7nyeyPTOw599c4uhOiN3gDE1QDERq9eHtoDx9k9S
 5A4V5NL+m5I6S1I3KulrOwfn7DaE+GnACMAzIyce1NymVHn5AnGGHx3aZX5BoDMYxZei
 7czx8HnpTa3f+MNTVyTG7j1jaowmu7fA+NfEQsXtRx5ol4Yxfepc05lOxMW7iPITtrv7
 YvhrrgGqHEXLCC0PXBj+rlYZGIwwijPKFi69zBFFI4/OAC81GlH4s518DAVRHG7ctCfp
 Q8wQ==
X-Gm-Message-State: AOAM530qUG5RXMyGmE9ISt4y/nHh9OToy+jfassfIwfEOz64yrNtpfbS
 acKhhLCG9nWD96X6WgxETWP5tA==
X-Google-Smtp-Source: ABdhPJzxCELfUQ71vOBWo/X6NxZxybbY8TJpqWcbbxZ9oEXImbmiUN5OoLbviGkL9g1oIynidlrpnw==
X-Received: by 2002:a17:902:dcca:: with SMTP id
 t10mr3844961pll.133.1644317702158; 
 Tue, 08 Feb 2022 02:55:02 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:41b6:813e:c823:609c])
 by smtp.gmail.com with ESMTPSA id e17sm14907277pfv.101.2022.02.08.02.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 02:55:01 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFC] media: hantro: Implement support for encoder commands
Date: Tue,  8 Feb 2022 18:54:56 +0800
Message-Id: <20220208105456.321294-1-wenst@chromium.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_025504_548734_2C90D37D 
X-CRM114-Status: GOOD (  16.18  )
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

The V4L2 stateful encoder uAPI specification requires that drivers
support the ENCODER_CMD ioctl to allow draining of buffers. This
however was not implemented, and causes issues for some userspace
applications.

Implement support for the ENCODER_CMD ioctl using v4l2-mem2mem helpers.
This is entirely based on existing code found in the vicodec test
driver.

Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---

This is based on linux-next-20220207, and was tested on RK3399 with
Gstreamer running the JPEG encoder. It was also tested on ChromeOS
5.10 on Kevin with the video encoder used in ChromeOS ARC, which
requires this.

Everything works OK, but since I'm not very familiar with the mem2mem
framework, I might be missing something, causing resource leaks.
Hence this patch is labeled RFC.

---
 drivers/staging/media/hantro/hantro_drv.c  | 10 +++++
 drivers/staging/media/hantro/hantro_v4l2.c | 44 ++++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index bc9bcb4eaf46..ccd47eee5c43 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -56,6 +56,10 @@ dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
 	return hantro_get_dec_buf_addr(ctx, buf);
 }
 
+static const struct v4l2_event hantro_eos_event = {
+	.type = V4L2_EVENT_EOS
+};
+
 static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
 				    struct hantro_ctx *ctx,
 				    enum vb2_buffer_state result)
@@ -73,6 +77,12 @@ static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
 	src->sequence = ctx->sequence_out++;
 	dst->sequence = ctx->sequence_cap++;
 
+	if (v4l2_m2m_is_last_draining_src_buf(ctx->fh.m2m_ctx, src)) {
+		dst->flags |= V4L2_BUF_FLAG_LAST;
+		v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
+		v4l2_m2m_mark_stopped(ctx->fh.m2m_ctx);
+	}
+
 	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
 					 result);
 }
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 67148ba346f5..8c6746637236 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -628,6 +628,39 @@ static int vidioc_s_selection(struct file *file, void *priv,
 	return 0;
 }
 
+static const struct v4l2_event hantro_eos_event = {
+	.type = V4L2_EVENT_EOS
+};
+
+static int vidioc_encoder_cmd(struct file *file, void *priv,
+			      struct v4l2_encoder_cmd *ec)
+{
+	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	int ret;
+
+	ret = v4l2_m2m_ioctl_try_encoder_cmd(file, priv, ec);
+	if (ret < 0)
+		return ret;
+
+	if (!vb2_is_streaming(v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)) ||
+	    !vb2_is_streaming(v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx)))
+		return 0;
+
+	ret = v4l2_m2m_ioctl_encoder_cmd(file, priv, ec);
+	if (ret < 0)
+		return ret;
+
+	if (ec->cmd == V4L2_ENC_CMD_STOP &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
+
+	if (ec->cmd == V4L2_ENC_CMD_START &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		vb2_clear_last_buffer_dequeued(&ctx->fh.m2m_ctx->cap_q_ctx.q);
+
+	return 0;
+}
+
 const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 	.vidioc_querycap = vidioc_querycap,
 	.vidioc_enum_framesizes = vidioc_enum_framesizes,
@@ -657,6 +690,9 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 
 	.vidioc_g_selection = vidioc_g_selection,
 	.vidioc_s_selection = vidioc_s_selection,
+
+	.vidioc_try_encoder_cmd = v4l2_m2m_ioctl_try_encoder_cmd,
+	.vidioc_encoder_cmd = vidioc_encoder_cmd,
 };
 
 static int
@@ -759,6 +795,8 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
 	struct hantro_ctx *ctx = vb2_get_drv_priv(q);
 	int ret = 0;
 
+	v4l2_m2m_update_start_streaming_state(ctx->fh.m2m_ctx, q);
+
 	if (V4L2_TYPE_IS_OUTPUT(q->type))
 		ctx->sequence_out = 0;
 	else
@@ -831,6 +869,12 @@ static void hantro_stop_streaming(struct vb2_queue *q)
 		hantro_return_bufs(q, v4l2_m2m_src_buf_remove);
 	else
 		hantro_return_bufs(q, v4l2_m2m_dst_buf_remove);
+
+	v4l2_m2m_update_stop_streaming_state(ctx->fh.m2m_ctx, q);
+
+	if (V4L2_TYPE_IS_OUTPUT(q->type) &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		v4l2_event_queue_fh(&ctx->fh, &hantro_eos_event);
 }
 
 static void hantro_buf_request_complete(struct vb2_buffer *vb)
-- 
2.35.0.263.gb82422642f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
