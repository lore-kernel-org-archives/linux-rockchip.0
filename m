Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB11C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 18:32:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF085610D2
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 18:32:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF085610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVfvqQGCMrorWpxMP1LPoeRtenZA1nSobuapjvcZF+E=; b=4ku3CyVr7CnmmP
	RvgnoAcE/t4kjKZnHDTS3ra/Jm720LjKqklors8a8ERM62o4OU9LN+V6tyBtjsZkedst8unvuXDD7
	REgOY4rzvCBWeWoIS5ZmfItTTLpos3cBhsl6QkAZ2bEJ29Z6IvryOwIT4QWPuVMpjjaxkVtnXZ7UC
	S3Yzx1JbK3tBMc25m1+NImdkskHHwyOenVqt7fxumFwWJRhwk1u0PSeDh8mMeIhAGObKtLw8aA8uN
	MWY3vo2O4A2ogJOick+IWU7oMZJ6G9JexxQGd/o0qSHa2DAcvSYTsJbBZOY+tm5ttw9BaglM0fUJL
	YkRA0sw/VHW6hhaAAGEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPqko-002wXY-C3; Mon, 13 Sep 2021 18:32:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPqiv-002vZe-IV; Mon, 13 Sep 2021 18:30:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id DE5E91F42D23
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v4 10/10] media: hantro: Support NV12 on the G2 core
Date: Mon, 13 Sep 2021 20:30:13 +0200
Message-Id: <20210913183013.19616-11-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210913183013.19616-1-andrzej.p@collabora.com>
References: <20210913183013.19616-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_113033_978103_19BDDAC5 
X-CRM114-Status: GOOD (  15.73  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

The G2 decoder block produces NV12 4x4 tiled format (NV12_4L4).
Enable the G2 post-processor block, in order to produce regular NV12.

The logic in hantro_postproc.c is leveraged to take care of allocating
the extra buffers and configure the post-processor, which is
significantly simpler than the one on the G1.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 .../staging/media/hantro/hantro_g2_vp9_dec.c  |  6 ++--
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/hantro_postproc.c    | 31 +++++++++++++++++++
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 11 +++++++
 4 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
index 49b5f304b6b4..754a32e41bf5 100644
--- a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
@@ -152,7 +152,7 @@ static void config_output(struct hantro_ctx *ctx,
 	hantro_reg_write(ctx->dev, &g2_out_dis, 0);
 	hantro_reg_write(ctx->dev, &g2_output_format, 0);
 
-	luma_addr = vb2_dma_contig_plane_dma_addr(&dst->base.vb.vb2_buf, 0);
+	luma_addr = hantro_get_dec_buf_addr(ctx, &dst->base.vb.vb2_buf);
 	hantro_write_addr(ctx->dev, G2_ADDR_DST, luma_addr);
 
 	chroma_addr = luma_addr + chroma_offset(ctx, dec_params);
@@ -191,7 +191,7 @@ static void config_ref(struct hantro_ctx *ctx,
 	hantro_reg_write(ctx->dev, &ref_reg->hor_scale, (refw << 14) / dst->vp9.width);
 	hantro_reg_write(ctx->dev, &ref_reg->ver_scale, (refh << 14) / dst->vp9.height);
 
-	luma_addr = vb2_dma_contig_plane_dma_addr(&buf->base.vb.vb2_buf, 0);
+	luma_addr = hantro_get_dec_buf_addr(ctx, &buf->base.vb.vb2_buf);
 	hantro_write_addr(ctx->dev, ref_reg->y_base, luma_addr);
 
 	chroma_addr = luma_addr + chroma_offset(ctx, dec_params);
@@ -236,7 +236,7 @@ static void config_ref_registers(struct hantro_ctx *ctx,
 	config_ref(ctx, dst, &ref_regs[1], dec_params, dec_params->golden_frame_ts);
 	config_ref(ctx, dst, &ref_regs[2], dec_params, dec_params->alt_frame_ts);
 
-	mv_addr = vb2_dma_contig_plane_dma_addr(&mv_ref->base.vb.vb2_buf, 0) +
+	mv_addr = hantro_get_dec_buf_addr(ctx, &mv_ref->base.vb.vb2_buf) +
 		  mv_offset(ctx, dec_params);
 	hantro_write_addr(ctx->dev, G2_REG_DMV_REF(0), mv_addr);
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 2961d399fd60..3d4a5dc1e6d5 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -274,6 +274,7 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 
 extern const struct hantro_postproc_ops hantro_g1_postproc_ops;
+extern const struct hantro_postproc_ops hantro_g2_postproc_ops;
 
 extern const u32 hantro_vp8_dec_mc_filter[8][6];
 
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 4549aec08feb..bc94bf46d218 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -11,6 +11,7 @@
 #include "hantro.h"
 #include "hantro_hw.h"
 #include "hantro_g1_regs.h"
+#include "hantro_g2_regs.h"
 
 #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
 { \
@@ -99,6 +100,21 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
 	HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
 }
 
+static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+	struct vb2_v4l2_buffer *dst_buf;
+	size_t chroma_offset = ctx->dst_fmt.width * ctx->dst_fmt.height;
+	dma_addr_t dst_dma;
+
+	dst_buf = hantro_get_dst_buf(ctx);
+	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+
+	hantro_write_addr(vpu, G2_RASTER_SCAN, dst_dma);
+	hantro_write_addr(vpu, G2_RASTER_SCAN_CHR, dst_dma + chroma_offset);
+	hantro_reg_write(vpu, &g2_out_rs_e, 1);
+}
+
 void hantro_postproc_free(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
@@ -127,6 +143,9 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
 		buf_size += hantro_h264_mv_size(ctx->dst_fmt.width,
 						ctx->dst_fmt.height);
+	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
+		buf_size += hantro_vp9_mv_size(ctx->dst_fmt.width,
+					       ctx->dst_fmt.height);
 
 	for (i = 0; i < num_buffers; ++i) {
 		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
@@ -152,6 +171,13 @@ static void hantro_postproc_g1_disable(struct hantro_ctx *ctx)
 	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x0);
 }
 
+static void hantro_postproc_g2_disable(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	hantro_reg_write(vpu, &g2_out_rs_e, 0);
+}
+
 void hantro_postproc_disable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
@@ -172,3 +198,8 @@ const struct hantro_postproc_ops hantro_g1_postproc_ops = {
 	.enable = hantro_postproc_g1_enable,
 	.disable = hantro_postproc_g1_disable,
 };
+
+const struct hantro_postproc_ops hantro_g2_postproc_ops = {
+	.enable = hantro_postproc_g2_enable,
+	.disable = hantro_postproc_g2_disable,
+};
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 455a107ffb02..1a43f6fceef9 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -132,6 +132,14 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
 	},
 };
 
+static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
+	},
+};
+
 static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12_4L4,
@@ -301,6 +309,9 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.dec_offset = 0x0,
 	.dec_fmts = imx8m_vpu_g2_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
+	.postproc_fmts = imx8m_vpu_g2_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(imx8m_vpu_g2_postproc_fmts),
+	.postproc_ops = &hantro_g2_postproc_ops,
 	.codec = HANTRO_HEVC_DECODER | HANTRO_VP9_DECODER,
 	.codec_ops = imx8mq_vpu_g2_codec_ops,
 	.init = imx8mq_vpu_hw_init,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
