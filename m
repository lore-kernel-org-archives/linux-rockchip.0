Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0962D1BDD8
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeSkMaxWfgyUhJF2o1/GBXyDRCc/4J6FW3epc2SZMJA=; b=c1ZlmAt/F8EYGi
	chk18KugajPqNNhp/JeoLzWfpW4WC4DOsbQNsjyfWHRLy6r9vULf4wv4Ds3JMC/VQ+TQ0XadQ4wBI
	ojrHr88djRcnNTsrbhevsV7cvzX+Dgi+z0C0eA2rtZOwHheqveqFcxzRlgJEq6Xx7cv//jTw8uPHj
	wXSGAPBjbRydiyfou3hCfmfoiip39KMSJJ3mkf/IZJd2ikvx4+eoch8EV3EIIgDn5/eprAyx90vnv
	jSMHfqCJLeN/kH2NDA5hMezMT2G62g075gTjaKDMKGzVLJVB3kPaZ5S6MjePvN1enDhcC7HmXwZix
	CIwLTSRbJZ+q87FdIVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t81P8-0000000Edmb-12YV;
	Mon, 04 Nov 2024 18:02:18 +0000
Received: from a7-28.smtp-out.eu-west-1.amazonses.com ([54.240.7.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t810B-0000000EYWX-23kf
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 17:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=bc7lryepznv65m6r2ewkpoafjt4fiq42; d=collabora.com; t=1730741788;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=RyA2c+9+Ddlewu7wtM9PZ1eedZb6cSZNDDfJq8urag8=;
	b=gzgb67FVYudZ0393+7RTCfMZNKguJFOVwsHFoi3Cz9bQuEnT8AwbjuJv8aylMwcZ
	/kKKW+XRjazoSUgptqPkAxqcVGqdAhjMFwE/yYUl+J31yz3BYrROe5VVFfa7/T/3YWe
	z8VZ4BE7BU8UNNh902rG/XwfgGNepwcIhkIMltmp2OFDOyvx/7R0bRKJR5PzjNRTl5l
	SNc2WvHYHyegAHL7BBKa/c3wkUEWowHsaMNWHcJmNpdMnB9gjBZNmJC4zv6Yi4+m41H
	Od/SACfekzPBZKom49tWPpbgiSWUufYZQo3qgvCcJVZWtUKMt0zdvqxlIXcz9831xBm
	VXyBnmJyWw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1730741788;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=RyA2c+9+Ddlewu7wtM9PZ1eedZb6cSZNDDfJq8urag8=;
	b=WtL8islvmY0B4clAngyfA2qZkL2k1awviwdkBdm7wsVipXN7BILzdVZhtsyrzXcQ
	wdQMlkWwQ/9WdZjczmBugd3Tlg/mZS0SE68QrQLl+BnKOf0PHnAlaG+5yRBVhQRgQWn
	sNTInxcu2XgX/II52B/AfN8oUtibQQqof58oO1N4=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 1/2] media: verisilicon: Store reference frames pixels format
Date: Mon, 4 Nov 2024 17:36:27 +0000
Message-ID: <01020192f83fdd04-16f415e6-64f6-44f2-8f79-7676d301d4ab-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241104173623.1058335-1-benjamin.gaignard@collabora.com>
References: <20241104173623.1058335-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.11.04-54.240.7.28
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_093631_784475_D25E4C30 
X-CRM114-Status: GOOD (  14.89  )
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

Hantro decoder always produce tiled pixels formats but
when the post-processor is used the destination pixels
format is a non tiled pixels format. This led to compute
wrong reference frame size and offsets.
Getting and saving the correct tiled pixels format for 8
and 10 bit stream solve the computation issues.

Fluster VP9 score increase to 166/305 (vs 145/305).
HEVC score is still 141/147.


Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro.h   |  2 ++
 .../media/platform/verisilicon/hantro_g2.c    |  2 +-
 .../platform/verisilicon/hantro_postproc.c    | 28 ++++++-------------
 .../media/platform/verisilicon/hantro_v4l2.c  | 21 ++++++++++++++
 4 files changed, 33 insertions(+), 20 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 811260dc3c77..14fc6a3e2878 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -227,6 +227,7 @@ struct hantro_dev {
  * @src_fmt:		V4L2 pixel format of active source format.
  * @vpu_dst_fmt:	Descriptor of active destination format.
  * @dst_fmt:		V4L2 pixel format of active destination format.
+ * @ref_fmt:		V4L2 pixel format of the reference frames format.
  *
  * @ctrl_handler:	Control handler used to register controls.
  * @jpeg_quality:	User-specified JPEG compression quality.
@@ -255,6 +256,7 @@ struct hantro_ctx {
 	struct v4l2_pix_format_mplane src_fmt;
 	const struct hantro_fmt *vpu_dst_fmt;
 	struct v4l2_pix_format_mplane dst_fmt;
+	struct v4l2_pix_format_mplane ref_fmt;
 
 	struct v4l2_ctrl_handler ctrl_handler;
 	int jpeg_quality;
diff --git a/drivers/media/platform/verisilicon/hantro_g2.c b/drivers/media/platform/verisilicon/hantro_g2.c
index b880a6849d58..5d33d745d346 100644
--- a/drivers/media/platform/verisilicon/hantro_g2.c
+++ b/drivers/media/platform/verisilicon/hantro_g2.c
@@ -47,7 +47,7 @@ irqreturn_t hantro_g2_irq(int irq, void *dev_id)
 
 size_t hantro_g2_chroma_offset(struct hantro_ctx *ctx)
 {
-	return ctx->dst_fmt.width * ctx->dst_fmt.height * ctx->bit_depth / 8;
+	return ctx->ref_fmt.plane_fmt[0].bytesperline *	ctx->ref_fmt.height;
 }
 
 size_t hantro_g2_motion_vectors_offset(struct hantro_ctx *ctx)
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 41e93176300b..4ba29682dbd6 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -194,31 +194,21 @@ void hantro_postproc_free(struct hantro_ctx *ctx)
 
 static unsigned int hantro_postproc_buffer_size(struct hantro_ctx *ctx)
 {
-	struct v4l2_pix_format_mplane pix_mp;
-	const struct hantro_fmt *fmt;
 	unsigned int buf_size;
 
-	/* this should always pick native format */
-	fmt = hantro_get_default_fmt(ctx, false, ctx->bit_depth, HANTRO_AUTO_POSTPROC);
-	if (!fmt)
-		return 0;
-
-	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
-			    ctx->src_fmt.height);
-
-	buf_size = pix_mp.plane_fmt[0].sizeimage;
+	buf_size = ctx->ref_fmt.plane_fmt[0].sizeimage;
 	if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
-		buf_size += hantro_h264_mv_size(pix_mp.width,
-						pix_mp.height);
+		buf_size += hantro_h264_mv_size(ctx->ref_fmt.width,
+						ctx->ref_fmt.height);
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
-		buf_size += hantro_vp9_mv_size(pix_mp.width,
-					       pix_mp.height);
+		buf_size += hantro_vp9_mv_size(ctx->ref_fmt.width,
+					       ctx->ref_fmt.height);
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
-		buf_size += hantro_hevc_mv_size(pix_mp.width,
-						pix_mp.height);
+		buf_size += hantro_hevc_mv_size(ctx->ref_fmt.width,
+						ctx->ref_fmt.height);
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_AV1_FRAME)
-		buf_size += hantro_av1_mv_size(pix_mp.width,
-					       pix_mp.height);
+		buf_size += hantro_av1_mv_size(ctx->ref_fmt.width,
+					       ctx->ref_fmt.height);
 
 	return buf_size;
 }
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index df6f2536263b..a9a54f177405 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -126,6 +126,24 @@ hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
 	return NULL;
 }
 
+static int
+hantro_set_reference_frames_format(struct hantro_ctx *ctx)
+{
+	const struct hantro_fmt *fmt;
+	int dst_bit_depth = hantro_get_format_depth(ctx->vpu_dst_fmt->fourcc);
+
+	fmt = hantro_get_default_fmt(ctx, false, dst_bit_depth, HANTRO_AUTO_POSTPROC);
+	if (!fmt)
+		return -EINVAL;
+
+	ctx->ref_fmt.width = ctx->src_fmt.width;
+	ctx->ref_fmt.height = ctx->src_fmt.height;
+
+	v4l2_apply_frmsize_constraints(&ctx->ref_fmt.width, &ctx->ref_fmt.height, &fmt->frmsize);
+	return v4l2_fill_pixfmt_mp(&ctx->ref_fmt, fmt->fourcc,
+				   ctx->ref_fmt.width, ctx->ref_fmt.height);
+}
+
 const struct hantro_fmt *
 hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream,
 		       int bit_depth, bool need_postproc)
@@ -591,6 +609,9 @@ static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
 
 	ctx->vpu_dst_fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	ctx->dst_fmt = *pix_mp;
+	ret = hantro_set_reference_frames_format(ctx);
+	if (ret)
+		return ret;
 
 	/*
 	 * Current raw format might have become invalid with newly
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
