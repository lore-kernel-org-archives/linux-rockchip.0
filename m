Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88253C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:43:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4846A63219
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:43:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4846A63219
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CAarvZwFGOrmsbn5j6u3dRS7fD3lSRFI5q/WIiObCc=; b=xjwCoo4BSwbMqe
	45bCOfO0LhMP0uqygTpaa/t6uJkZXg/rWf3F8hh8IXp69w6oLR5EajLp51+6clvbWLjgf6Ad25vqV
	jSPhSXeTF7GkK1WszpKhMaSzwCRQVZj9n2CiJ7Dn4JKXmu/CaVAGukk5QJ2Kc3xU7c/abMl8XdgTS
	54zDdEOwC4X2v5m/fQL7vVZcHx1WX33R9HxN1jZ9pFnMwxaWIzt3D1Erlm6ggKvpr7DvuPE3acBhC
	Cd4mQjrs1zCB133ctXwuoGL6hglmtqteFkKlLf13CPG2k2631LJNiiL/qT5l6cGq+S1JLL02DEQUa
	/p3GXBvJVdz384SILJPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmzgA-001xU4-Pq; Tue, 16 Nov 2021 14:43:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmzc8-001vCJ-MX; Tue, 16 Nov 2021 14:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Iyp3A2bgScnAezHrJ1KeMukqfsKfIgsELm+SNcuweq8=; b=Fn4rs0LHez4GNwDNt1GRoj2Y8f
 ib6CGXLW+DxicKoK+qjSp1z1cc+sPoiE8gaapoMgdRBVyfmLlZfodvupKeAP6GB+LtsYyX1NGOjTI
 qS2V0cRccDzOKYMxNksgODYnXe8rufI7ZP7PgSVeC3wvnbKLb1WyFNLoeSRsi5Xxr2IvTePv2abzz
 oge6MKuPZiDBabGOzVUOS8+Ijs47yzWPVLmENV6+/hVWxH6ly4dZDMzoEpw45SQUBlkyvoSN6MsqZ
 pdZKe2kXNFxNQ/kDTkcj7B4xTjvzf088dq/eQiUGS91DsP4FhHONSuftSOyAkFyqd2BWlBMULoh2f
 635qChGA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmzby-00GKSM-2W; Tue, 16 Nov 2021 14:39:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4959A1F4583D
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637073539; bh=HSCKcs4GqDZJPmsOE6G02KNqo+F2t4JQ0Nka1j8AW8g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M5AJNTCD0sUPGW1cAJ9EM4B/XGC7Wnhzf8TZHBPMGELTUR+btp0i2fm8JaLfRWVaA
 QXjX2hPpdgFzRQxGRz6IOYIiwfg+viJ8mqSNS9htIcUbOct8mLD80RUGdiTDznPDcF
 kzYhO3TCHTRbjSfFbnqt3iXsz90WrutfntcdtXUEg0bxe4mWuju0ImOGbwKuWqKhaq
 bN9KfjwEoIZch9wyclZ+h/UODQdRm1ijQ/PYpa7qBAYs6kWrXJNri84OLFxyJzsmbp
 sne1IeVBCZpYtk+TnHcGy446wvbZRjxIgs2ScPXuwbSinyhjrTo+I/QQQDZfuixuRB
 emiU0QBZfiJdw==
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
Subject: [PATCH v8 12/12] media: hantro: Support NV12 on the G2 core
Date: Tue, 16 Nov 2021 15:38:42 +0100
Message-Id: <20211116143842.75896-13-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211116143842.75896-1-andrzej.p@collabora.com>
References: <20211116143842.75896-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_143906_803062_1711F21F 
X-CRM114-Status: GOOD (  16.08  )
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
index fc55b03a8004..e04242d10fa2 100644
--- a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
@@ -152,7 +152,7 @@ static void config_output(struct hantro_ctx *ctx,
 	hantro_reg_write(ctx->dev, &g2_out_dis, 0);
 	hantro_reg_write(ctx->dev, &g2_output_format, 0);
 
-	luma_addr = vb2_dma_contig_plane_dma_addr(&dst->base.vb.vb2_buf, 0);
+	luma_addr = hantro_get_dec_buf_addr(ctx, &dst->base.vb.vb2_buf);
 	hantro_write_addr(ctx->dev, G2_OUT_LUMA_ADDR, luma_addr);
 
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
 	hantro_write_addr(ctx->dev, G2_REF_MV_ADDR(0), mv_addr);
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index fe5b51046d33..dbe51303724b 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -310,6 +310,7 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 
 extern const struct hantro_postproc_ops hantro_g1_postproc_ops;
+extern const struct hantro_postproc_ops hantro_g2_postproc_ops;
 
 extern const u32 hantro_vp8_dec_mc_filter[8][6];
 
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 89de43021779..a7774ad4c445 100644
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
+	hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
+	hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
