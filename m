Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDF4C43217
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUA3XQmNBksExOAyRGwNlGFCD3233A4QdzeQe0TIgM4=; b=Zr9vi2SHTPp70m
	acFW4Acse21yW27EPYTxlmQ3B0eZMrEj0FO8VLtSUOF5k6qX1evGqh5CbtqkeJ4lgLiQKaT5s88TM
	ica34iZVtEIlgNCr5RwHWVP9e8ZUWWC3VnM5kIe+IzCu4SNqQIQn0rqdwE3zII99eNLNI1FN5EaP6
	cfN+cxf1I21HRjG0CcwdhC7xBVVM/K4Iz/vgdFhP3EFTj7+sJd+KFzSI/WTPvKLWOv+7mgeI/T39D
	sPIyQGL26/JxS8lwxOrLx0iZVJWs/6OABhzt6slQ63r/qgncaI0V2dDihXG112t6DjhFE5jhMq2US
	hZCk/hWs1HKoWX2s+TnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAi-00Dwc1-95; Fri, 24 Dec 2021 08:43:28 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAe-00DwZ1-QI
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:26 +0000
Received: by mail-pg1-x536.google.com with SMTP id l10so7128617pgm.7
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hPZ63IyF6LoQKfupZUYc1OfiqowFJJPTt5kR2M+K+aw=;
 b=dNsLI1dDTkEL8sIW3ny3gAsoz1nRkv258v3uwCcpJhDURPMCsDTPwDgv0kmfPhcTd9
 QQWZKy14pJzcegF1dyUXg94nFDpDJXvROLST/R0ev6nQ8jeNqrzo1g5N/hUCekE++7+f
 CVA+fQ8i00xxN+wH2SR3mJGvpEKzXJ/ir4/a4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hPZ63IyF6LoQKfupZUYc1OfiqowFJJPTt5kR2M+K+aw=;
 b=bh8tlbCw+BrwTub6OgilKayWtNf5DA3a8lB6x7JxuQNzU0A43M94Gn301FqJEzttKV
 37WL9xiBr1PKlK1TB164obTUoaEwM9mSd26CLcoG+uBUn2SCk4cQwoeTf7mQyRYVbSW3
 YTJBej7KBhmNGItPSXoeszNVD+R5R54t9s4ggf7N8xQ4/jsLxYAsXPfjTEdm7tiY+mCC
 jH93kie6+QNVOYJlUJCgoUcBTzMas6/qvwzvJWAMcK3mQgPoIy07qJeF2dY7iw1Ifwuq
 FpP1jNT/HhXFWsTYW2xb2kz0i6QcS4rE4Ic7TLVAl4hFt0hblWRSZwJGTrk+yzU5rO/m
 /QMw==
X-Gm-Message-State: AOAM530SuryxhhVF8G7+bYw4H6HpszW4uW0UJtIJmWgjykWPLA2FUDkS
 ipkJAmyg418MRze1kvlUheBRBw==
X-Google-Smtp-Source: ABdhPJwmWihogTmdnnVewbBslv5mjEqGK9TOipfVT6uZ268tyVFKlnfV9znTFjnSvDQ9BW3mGruA0Q==
X-Received: by 2002:a05:6a00:cca:b0:4ba:f5cc:538c with SMTP id
 b10-20020a056a000cca00b004baf5cc538cmr5892369pfv.60.1640335404048; 
 Fri, 24 Dec 2021 00:43:24 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:23 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 3/7] media: hantro: Support cropping visible area for
 encoders
Date: Fri, 24 Dec 2021 16:42:44 +0800
Message-Id: <20211224084248.3070568-4-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
In-Reply-To: <20211224084248.3070568-1-wenst@chromium.org>
References: <20211224084248.3070568-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004324_907186_A8463632 
X-CRM114-Status: GOOD (  21.61  )
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

Encoders typically operate on macroblocks. Thus their output or coded
resolution is constrained to multiples of macroblocks. For frame sizes
not aligned to macroblocks, cropping is needed to limit the visible
area of the frame.

Add support for cropping on the output (source) side for encoders,
using the selection API.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/TODO             |  3 -
 .../staging/media/hantro/hantro_h1_jpeg_enc.c | 17 +++-
 drivers/staging/media/hantro/hantro_v4l2.c    | 77 +++++++++++++++++++
 .../media/hantro/rockchip_vpu2_hw_jpeg_enc.c  | 17 ++--
 4 files changed, 101 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/hantro/TODO b/drivers/staging/media/hantro/TODO
index fa0c94057007..da181dc93069 100644
--- a/drivers/staging/media/hantro/TODO
+++ b/drivers/staging/media/hantro/TODO
@@ -5,9 +5,6 @@
 
   For this reason, we are keeping this driver in staging for now.
 
-* Add support for the S_SELECTION API.
-  See the comment for VEPU_REG_ENC_OVER_FILL_STRM_OFFSET.
-
 * Instead of having a DMA bounce buffer, it could be possible to use a
   normal buffer and memmove() the payload to make space for the header.
   This might need to use extra JPEG markers for padding reasons.
diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 96153c755fb8..9104973af8df 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -18,12 +18,21 @@
 static void hantro_h1_set_src_img_ctrl(struct hantro_dev *vpu,
 				       struct hantro_ctx *ctx)
 {
-	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
+	u32 overfill_r, overfill_b;
 	u32 reg;
 
-	reg = H1_REG_IN_IMG_CTRL_ROW_LEN(pix_fmt->width)
-		| H1_REG_IN_IMG_CTRL_OVRFLR_D4(0)
-		| H1_REG_IN_IMG_CTRL_OVRFLB(0)
+	/*
+	 * The format width and height are already macroblock aligned
+	 * by .vidioc_s_fmt_vid_cap_mplane() callback. Destination
+	 * format width and height can be further modified by
+	 * .vidioc_s_selection(), and the width is 4-aligned.
+	 */
+	overfill_r = ctx->src_fmt.width - ctx->dst_fmt.width;
+	overfill_b = ctx->src_fmt.height - ctx->dst_fmt.height;
+
+	reg = H1_REG_IN_IMG_CTRL_ROW_LEN(ctx->src_fmt.width)
+		| H1_REG_IN_IMG_CTRL_OVRFLR_D4(overfill_r / 4)
+		| H1_REG_IN_IMG_CTRL_OVRFLB(overfill_b)
 		| H1_REG_IN_IMG_CTRL_FMT(ctx->vpu_src_fmt->enc_fmt);
 	vepu_write_relaxed(vpu, reg, H1_REG_IN_IMG_CTRL);
 }
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index e595905b3bd7..67148ba346f5 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -554,6 +554,80 @@ vidioc_s_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	return hantro_set_fmt_cap(fh_to_ctx(priv), &f->fmt.pix_mp);
 }
 
+static int vidioc_g_selection(struct file *file, void *priv,
+			      struct v4l2_selection *sel)
+{
+	struct hantro_ctx *ctx = fh_to_ctx(priv);
+
+	/* Crop only supported on source. */
+	if (!ctx->is_encoder ||
+	    sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+		return -EINVAL;
+
+	switch (sel->target) {
+	case V4L2_SEL_TGT_CROP_DEFAULT:
+	case V4L2_SEL_TGT_CROP_BOUNDS:
+		sel->r.top = 0;
+		sel->r.left = 0;
+		sel->r.width = ctx->src_fmt.width;
+		sel->r.height = ctx->src_fmt.height;
+		break;
+	case V4L2_SEL_TGT_CROP:
+		sel->r.top = 0;
+		sel->r.left = 0;
+		sel->r.width = ctx->dst_fmt.width;
+		sel->r.height = ctx->dst_fmt.height;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int vidioc_s_selection(struct file *file, void *priv,
+			      struct v4l2_selection *sel)
+{
+	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct v4l2_rect *rect = &sel->r;
+	struct vb2_queue *vq;
+
+	/* Crop only supported on source. */
+	if (!ctx->is_encoder ||
+	    sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+		return -EINVAL;
+
+	/* Change not allowed if the queue is streaming. */
+	vq = v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx);
+	if (vb2_is_streaming(vq))
+		return -EBUSY;
+
+	if (sel->target != V4L2_SEL_TGT_CROP)
+		return -EINVAL;
+
+	/*
+	 * We do not support offsets, and we can crop only inside
+	 * right-most or bottom-most macroblocks.
+	 */
+	if (rect->left != 0 || rect->top != 0 ||
+	    round_up(rect->width, MB_DIM) != ctx->src_fmt.width ||
+	    round_up(rect->height, MB_DIM) != ctx->src_fmt.height) {
+		/* Default to full frame for incorrect settings. */
+		rect->left = 0;
+		rect->top = 0;
+		rect->width = ctx->src_fmt.width;
+		rect->height = ctx->src_fmt.height;
+	} else {
+		/* We support widths aligned to 4 pixels and arbitrary heights. */
+		rect->width = round_up(rect->width, 4);
+	}
+
+	ctx->dst_fmt.width = rect->width;
+	ctx->dst_fmt.height = rect->height;
+
+	return 0;
+}
+
 const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 	.vidioc_querycap = vidioc_querycap,
 	.vidioc_enum_framesizes = vidioc_enum_framesizes,
@@ -580,6 +654,9 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 
 	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
+
+	.vidioc_g_selection = vidioc_g_selection,
+	.vidioc_s_selection = vidioc_s_selection,
 };
 
 static int
diff --git a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
index b931fc5fa1a9..da275568874a 100644
--- a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
@@ -35,18 +35,23 @@
 static void rockchip_vpu2_set_src_img_ctrl(struct hantro_dev *vpu,
 					   struct hantro_ctx *ctx)
 {
-	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
+	u32 overfill_r, overfill_b;
 	u32 reg;
 
 	/*
-	 * The pix fmt width/height are already macroblock aligned
-	 * by .vidioc_s_fmt_vid_cap_mplane() callback
+	 * The format width and height are already macroblock aligned
+	 * by .vidioc_s_fmt_vid_cap_mplane() callback. Destination
+	 * format width and height can be further modified by
+	 * .vidioc_s_selection(), and the width is 4-aligned.
 	 */
-	reg = VEPU_REG_IN_IMG_CTRL_ROW_LEN(pix_fmt->width);
+	overfill_r = ctx->src_fmt.width - ctx->dst_fmt.width;
+	overfill_b = ctx->src_fmt.height - ctx->dst_fmt.height;
+
+	reg = VEPU_REG_IN_IMG_CTRL_ROW_LEN(ctx->src_fmt.width);
 	vepu_write_relaxed(vpu, reg, VEPU_REG_INPUT_LUMA_INFO);
 
-	reg = VEPU_REG_IN_IMG_CTRL_OVRFLR_D4(0) |
-	      VEPU_REG_IN_IMG_CTRL_OVRFLB(0);
+	reg = VEPU_REG_IN_IMG_CTRL_OVRFLR_D4(overfill_r / 4) |
+	      VEPU_REG_IN_IMG_CTRL_OVRFLB(overfill_b);
 	/*
 	 * This register controls the input crop, as the offset
 	 * from the right/bottom within the last macroblock. The offset from the
-- 
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
