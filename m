Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E3AC07E94
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 13:08:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B835613B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 13:08:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B835613B4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtBC/mr0558H5P/h1kjIuVub2lPvIgUuhVJqZmdEnrM=; b=UXAiYbl0ULXIQy
	EIm0UcgkkOoqucOxnfAjXsvTTXCcKowwZk8wXpwvo5Ahqndis9aGcZHR/mT0McLfbJEnrdvbDYnvn
	p1ahlgLC9eN9o/ZEOaBKCJID3S3Qw1YnCVWVDxweLnhokIC0Oqpuw0hHO6SYk+4B7Bp/LQpMoyKcY
	3nv2J8MGFKpK0NTisg6h5aJNmPapkBX3yMmXjKVaKQqMCSJjwvb/xiM8K6kglCMPcwwenv8+EO37p
	iBaI7YQQEReyFbB/5z6W/RisOjhqFc525QSQEnSmRSohHJmmbSLPucft7O6Bt3zuuiwHKP+ELJYnf
	FcU70kyIdDKjNIevdMwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp9YT-00Dc5d-8K; Fri, 04 Jun 2021 13:08:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp9XK-00DbZy-4Z; Fri, 04 Jun 2021 13:06:58 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:389:b21e:a7e4:8cad])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CA2FD1F439DA;
 Fri,  4 Jun 2021 14:06:51 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 3/8] media: hantro: hevc: Allow 10-bits encoded streams
Date: Fri,  4 Jun 2021 15:06:14 +0200
Message-Id: <20210604130619.491200-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
References: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_060654_470800_E81E9F3B 
X-CRM114-Status: GOOD (  16.35  )
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

Allow to use 10-bits encoded streams but force the output
to remain in 8-bits.
Add a function to get chroma offset for the output since
it may now not match with internal reference buffers chroma
offset.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c     |  5 ++--
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 29 +++++++++++++++----
 drivers/staging/media/hantro/hantro_g2_regs.h |  1 +
 drivers/staging/media/hantro/hantro_hevc.c    |  5 ++--
 4 files changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6053c86b1c3f..43feb14bbbba 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -263,8 +263,9 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
 			/* Luma and chroma bit depth mismatch */
 			return -EINVAL;
-		if (sps->bit_depth_luma_minus8 != 0)
-			/* Only 8-bit is supported */
+		if (sps->bit_depth_luma_minus8 != 0 &&
+		    sps->bit_depth_luma_minus8 != 2)
+			/* Only 8-bit or 10-bit is supported */
 			return -EINVAL;
 		if (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED)
 			/* No scaling support */
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 9a715e803037..df147b69a31f 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -133,6 +133,16 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 		vpu_debug(1, "%s: no chroma!\n", __func__);
 }
 
+static bool is_8bit_dst_format(struct hantro_ctx *ctx)
+{
+	switch (ctx->vpu_dst_fmt->fourcc) {
+	case V4L2_PIX_FMT_NV12:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static void set_params(struct hantro_ctx *ctx)
 {
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
@@ -148,7 +158,8 @@ static void set_params(struct hantro_ctx *ctx)
 	hantro_reg_write(vpu, &g2_bit_depth_y_minus8, sps->bit_depth_luma_minus8);
 	hantro_reg_write(vpu, &g2_bit_depth_c_minus8, sps->bit_depth_chroma_minus8);
 
-	hantro_reg_write(vpu, &g2_output_8_bits, 0);
+	hantro_reg_write(vpu, &g2_output_8_bits, 1);
+	hantro_reg_write(vpu, &g2_output_format, 0);
 
 	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls->hevc_hdr_skip_length);
 
@@ -511,13 +522,21 @@ static int set_ref(struct hantro_ctx *ctx)
 	return 0;
 }
 
+static size_t hantro_hevc_output_chroma_offset(struct hantro_ctx *ctx)
+{
+	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
+	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
+	int bytes_per_pixel = is_8bit_dst_format(ctx) ? 1 : 2;
+
+	return sps->pic_width_in_luma_samples *
+		sps->pic_height_in_luma_samples * bytes_per_pixel;
+}
+
 static void set_buffers(struct hantro_ctx *ctx)
 {
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct hantro_dev *vpu = ctx->dev;
-	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
-	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
-	size_t cr_offset = hantro_hevc_chroma_offset(sps);
+	size_t output_cr_offset = hantro_hevc_output_chroma_offset(ctx);
 	dma_addr_t src_dma, dst_dma;
 	u32 src_len, src_buf_len;
 
@@ -539,7 +558,7 @@ static void set_buffers(struct hantro_ctx *ctx)
 	dst_dma = hantro_get_dec_buf_addr(ctx, &dst_buf->vb2_buf);
 
 	hantro_write_addr(vpu, G2_RASTER_SCAN, dst_dma);
-	hantro_write_addr(vpu, G2_RASTER_SCAN_CHR, dst_dma + cr_offset);
+	hantro_write_addr(vpu, G2_RASTER_SCAN_CHR, dst_dma + output_cr_offset);
 	hantro_write_addr(vpu, G2_ADDR_TILE_SIZE, ctx->hevc_dec.tile_sizes.dma);
 	hantro_write_addr(vpu, G2_TILE_FILTER, ctx->hevc_dec.tile_filter.dma);
 	hantro_write_addr(vpu, G2_TILE_SAO, ctx->hevc_dec.tile_sao.dma);
diff --git a/drivers/staging/media/hantro/hantro_g2_regs.h b/drivers/staging/media/hantro/hantro_g2_regs.h
index 0414d92e3860..941e5482d27b 100644
--- a/drivers/staging/media/hantro/hantro_g2_regs.h
+++ b/drivers/staging/media/hantro/hantro_g2_regs.h
@@ -77,6 +77,7 @@
 #define g2_bit_depth_y_minus8	G2_DEC_REG(8, 6,  0x3)
 #define g2_bit_depth_c_minus8	G2_DEC_REG(8, 4,  0x3)
 #define g2_output_8_bits	G2_DEC_REG(8, 3,  0x1)
+#define g2_output_format	G2_DEC_REG(8, 0,  0x7)
 
 #define g2_refidx1_active	G2_DEC_REG(9, 19, 0x1f)
 #define g2_refidx0_active	G2_DEC_REG(9, 14, 0x1f)
diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index 1b2da990fbf0..1d44ea69c930 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -195,6 +195,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
 	unsigned int num_tile_cols = pps->num_tile_columns_minus1 + 1;
 	unsigned int height64 = (sps->pic_height_in_luma_samples + 63) & ~63;
+	unsigned int pixel_depth = sps->bit_depth_luma_minus8 == 0 ? 8 : 10;
 	unsigned int size;
 
 	if (num_tile_cols <= 1 ||
@@ -223,7 +224,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 		hevc_dec->tile_bsd.cpu = NULL;
 	}
 
-	size = VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1);
+	size = (VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1) * pixel_depth) / 8;
 	hevc_dec->tile_filter.cpu = dma_alloc_coherent(vpu->dev, size,
 						       &hevc_dec->tile_filter.dma,
 						       GFP_KERNEL);
@@ -231,7 +232,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 		goto err_free_tile_buffers;
 	hevc_dec->tile_filter.size = size;
 
-	size = VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1);
+	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * pixel_depth) / 8;
 	hevc_dec->tile_sao.cpu = dma_alloc_coherent(vpu->dev, size,
 						    &hevc_dec->tile_sao.dma,
 						    GFP_KERNEL);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
