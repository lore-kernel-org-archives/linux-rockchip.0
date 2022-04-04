Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE41C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 14:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gboe4dSI5JaeGpX0ssQNujCc5Vm4L+MwDa2lh9UKTNY=; b=W0CS8w56f8ORLZ
	cvWbLLIdJVFSVs7ZW3ZTGapB23Gjb2we60ccVsnatsNS1i/uT2s3D+yLRzAssHNjY0qLILdy7O8sr
	nOPCWnBi/7MKMiwMJYL73NN5dOQoSLLxvx62awczIPQDd6xmmyjVQYLKCFbt5PqJCcDvZg8kRG+Q+
	ZiL/Aqej8kR6pElkTkYj8lJRQJ+gbln4orOhd9FEOjjrngsfJ99ZL574Kkq5E33m/kxKdYBmNgdvN
	HGtMh4doSZ9PwTsnm6sU5xC0d1KTXl6VIIPvxzfUuPZyAZlpWToo305iyjSiC/QGvE+WpTqhDc/0H
	edhvN0BjG/fc3+O5BIzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbNNk-00FHG6-BS; Mon, 04 Apr 2022 14:08:36 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbNNg-00FHDq-1a
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 14:08:35 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:120:3210:52e1:bbc1:ca8:7fa9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1AB751F44E48;
 Mon,  4 Apr 2022 15:08:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649081308;
 bh=aNWJUHS5QEs9ea/zLSsrqqFtmxqVRUi9CSX9U08ggpA=;
 h=From:To:Cc:Subject:Date:From;
 b=HRvH7pYmojBV8uTx36H6x1JVPqPr3RT3fc7znvDBrqTL+oTk+A/3f0/wkoS5yfCaO
 U++ZHmsbwbfzKKE+9426GMpMbudonC1AdALpoTHrbRMfo5lpK6JRhUGLT/H/MQmJ79
 FYaO+SlLY6LSvGK7MEUtEnKpOPcIeZC3s0n9pTz0m/1IfdCnUnPiWBC1JAfBE7gIEI
 CMyXpRF/5z6VbGH2ulq6RsTn6J1AiYIQEezavHFb0asYgw20sAdNYjefDEetif0Wv0
 e30XCQ1qQyGi6pqHe8wgEMwOby1bTEGJTviQUG2cGjy1l5vYuyOis/c5rMfEU+W25j
 YI8A5/RErqSyg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: hantro: Use post processor scaling capacities
Date: Mon,  4 Apr 2022 16:08:19 +0200
Message-Id: <20220404140819.733931-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_070832_390846_1BD8534E 
X-CRM114-Status: GOOD (  19.77  )
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

Hantro G2 post processor is able to down scale decoded frames
by 2, 4, or 8 factor.
Add enum_framesizes() ops to postproc_ops structure to enumerate the
possible output sizes for a given input resolution.
For G2 post-processor use fsize->index (from 0 to 3) has power of 2
diviser. As describe in v4l2 documentation return -EINVAL when scaling
down isn't possible.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
Fluster score with this patch is 77/147 like before.

 drivers/staging/media/hantro/hantro.h         |  2 +
 drivers/staging/media/hantro/hantro_g2_regs.h |  6 +++
 drivers/staging/media/hantro/hantro_hw.h      |  8 ++-
 .../staging/media/hantro/hantro_postproc.c    | 53 ++++++++++++++++++-
 drivers/staging/media/hantro/hantro_v4l2.c    | 15 +++---
 5 files changed, 72 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 357f83b86809..26308bb29adc 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -475,5 +475,7 @@ void hantro_postproc_disable(struct hantro_ctx *ctx);
 void hantro_postproc_enable(struct hantro_ctx *ctx);
 void hantro_postproc_free(struct hantro_ctx *ctx);
 int hantro_postproc_alloc(struct hantro_ctx *ctx);
+int hanto_postproc_enum_framesizes(struct hantro_ctx *ctx,
+				   struct v4l2_frmsizeenum *fsize);
 
 #endif /* HANTRO_H_ */
diff --git a/drivers/staging/media/hantro/hantro_g2_regs.h b/drivers/staging/media/hantro/hantro_g2_regs.h
index b7c6f9877b9d..877d663a8181 100644
--- a/drivers/staging/media/hantro/hantro_g2_regs.h
+++ b/drivers/staging/media/hantro/hantro_g2_regs.h
@@ -290,6 +290,10 @@
 #define g2_buswidth		G2_DEC_REG(58, 8,  0x7)
 #define g2_max_burst		G2_DEC_REG(58, 0,  0xff)
 
+#define g2_down_scale_e		G2_DEC_REG(184, 7, 0x1)
+#define g2_down_scale_y		G2_DEC_REG(184, 2, 0x3)
+#define g2_down_scale_x		G2_DEC_REG(184, 0, 0x3)
+
 #define G2_REG_CONFIG				G2_SWREG(58)
 #define G2_REG_CONFIG_DEC_CLK_GATE_E		BIT(16)
 #define G2_REG_CONFIG_DEC_CLK_GATE_IDLE_E	BIT(17)
@@ -312,6 +316,8 @@
 #define G2_TILE_FILTER_ADDR		(G2_SWREG(179))
 #define G2_TILE_SAO_ADDR		(G2_SWREG(181))
 #define G2_TILE_BSD_ADDR		(G2_SWREG(183))
+#define G2_DS_DST			(G2_SWREG(186))
+#define G2_DS_DST_CHR			(G2_SWREG(188))
 
 #define g2_strm_buffer_len	G2_DEC_REG(258, 0, 0xffffffff)
 #define g2_strm_start_offset	G2_DEC_REG(259, 0, 0xffffffff)
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index ed018e293ba0..09f17a3ceb95 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -245,12 +245,16 @@ struct hantro_postproc_ctx {
 /**
  * struct hantro_postproc_ops - post-processor operations
  *
- * @enable:	Enable the post-processor block. Optional.
- * @disable:	Disable the post-processor block. Optional.
+ * @enable:		Enable the post-processor block. Optional.
+ * @disable:		Disable the post-processor block. Optional.
+ * @enum_framesizes:	Enumerate possible scaled output formats.
+ *			Returns zero if OK, a negative value in error cases.
+ *			Optional.
  */
 struct hantro_postproc_ops {
 	void (*enable)(struct hantro_ctx *ctx);
 	void (*disable)(struct hantro_ctx *ctx);
+	int (*enum_framesizes)(struct hantro_ctx *ctx, struct v4l2_frmsizeenum *fsize);
 };
 
 /**
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 248abe5423f0..ab168c1c0d28 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -100,21 +100,58 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
 	HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
 }
 
+static int down_scale_factor(struct hantro_ctx *ctx)
+{
+	if (ctx->src_fmt.width == ctx->dst_fmt.width)
+		return 0;
+
+	return DIV_ROUND_CLOSEST(ctx->src_fmt.width, ctx->dst_fmt.width);
+}
+
 static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *dst_buf;
 	size_t chroma_offset = ctx->dst_fmt.width * ctx->dst_fmt.height;
+	int down_scale = down_scale_factor(ctx);
 	dma_addr_t dst_dma;
 
 	dst_buf = hantro_get_dst_buf(ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
-	hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
-	hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
+	if (down_scale) {
+		hantro_reg_write(vpu, &g2_down_scale_e, 1);
+		hantro_reg_write(vpu, &g2_down_scale_y, down_scale >> 2);
+		hantro_reg_write(vpu, &g2_down_scale_x, down_scale >> 2);
+		hantro_write_addr(vpu, G2_DS_DST, dst_dma);
+		hantro_write_addr(vpu, G2_DS_DST_CHR, dst_dma + (chroma_offset >> down_scale));
+	} else {
+		hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
+		hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
+	}
 	hantro_reg_write(vpu, &g2_out_rs_e, 1);
 }
 
+static int hantro_postproc_g2_enum_framesizes(struct hantro_ctx *ctx,
+					      struct v4l2_frmsizeenum *fsize)
+{
+	/**
+	 * G2 scaler can scale down by 0, 2, 4 or 8
+	 * use fsize->index has power of 2 diviser
+	 **/
+	if (fsize->index > 3)
+		return -EINVAL;
+
+	if (!ctx->src_fmt.width || !ctx->src_fmt.height)
+		return -EINVAL;
+
+	fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
+	fsize->discrete.width = ctx->src_fmt.width >> fsize->index;
+	fsize->discrete.height = ctx->src_fmt.height >> fsize->index;
+
+	return 0;
+}
+
 void hantro_postproc_free(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
@@ -197,6 +234,17 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 		vpu->variant->postproc_ops->enable(ctx);
 }
 
+int hanto_postproc_enum_framesizes(struct hantro_ctx *ctx,
+				   struct v4l2_frmsizeenum *fsize)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (vpu->variant->postproc_ops && vpu->variant->postproc_ops->enum_framesizes)
+		return vpu->variant->postproc_ops->enum_framesizes(ctx, fsize);
+
+	return -EINVAL;
+}
+
 const struct hantro_postproc_ops hantro_g1_postproc_ops = {
 	.enable = hantro_postproc_g1_enable,
 	.disable = hantro_postproc_g1_disable,
@@ -205,4 +253,5 @@ const struct hantro_postproc_ops hantro_g1_postproc_ops = {
 const struct hantro_postproc_ops hantro_g2_postproc_ops = {
 	.enable = hantro_postproc_g2_enable,
 	.disable = hantro_postproc_g2_disable,
+	.enum_framesizes = hantro_postproc_g2_enum_framesizes,
 };
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 67148ba346f5..8314a2efd4c8 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -116,12 +116,6 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	const struct hantro_fmt *fmt;
 
-	if (fsize->index != 0) {
-		vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
-			  fsize->index);
-		return -EINVAL;
-	}
-
 	fmt = hantro_find_format(ctx, fsize->pixel_format);
 	if (!fmt) {
 		vpu_debug(0, "unsupported bitstream format (%08x)\n",
@@ -129,9 +123,14 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	/* This only makes sense for coded formats */
-	if (fmt->codec_mode == HANTRO_MODE_NONE)
+	/* For non-coded formats check if postprocessing scaling is possible */
+	if (fmt->codec_mode == HANTRO_MODE_NONE && hantro_needs_postproc(ctx, fmt)) {
+		return hanto_postproc_enum_framesizes(ctx, fsize);
+	} else if (fsize->index != 0) {
+		vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
+			  fsize->index);
 		return -EINVAL;
+	}
 
 	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
 	fsize->stepwise = fmt->frmsize;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
