Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D35BC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:16:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1608761948
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:16:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1608761948
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZwUzB3rb1zprgqnhkQiEym09gyH+0Pi7dPsxgyz03c=; b=qz8mRJo0H/UQNQ
	cQTsEqD1ctcCFpbweO1ATtRaC+CN1zuB7tyneHGnCwADS4E50PEtvbKI/k4VAYib0AqnlcS4Ec4QA
	i3o2gkxvju1EFkDpWMWDgf/ocS8me9przvzvdrtgkx8nZOjcxc77fwSq//FkydilveRhSwWEldn/T
	DWquT7Dslt4YDceHFSVE6jwEjYXUYmcB1pwdXbXxwQBUYkZt/FOJH85YpRfQ6QPcfalxXjM41Veqt
	aaDfngATJ2iqjsVG025MF5ljkNK1B5Mrm3kcNdrVqVvDhPpV3VE2S92L75SNqtomhGoqrHk1h6OJ4
	MVszERLWlhNYf3pDuUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmct-001s7f-Kk; Fri, 25 Jun 2021 14:16:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmZB-001pym-HH; Fri, 25 Jun 2021 14:12:23 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:42b6:51ca:7d52:50ad])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BFCC21F4474C;
 Fri, 25 Jun 2021 15:12:18 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com, nicolas@ndufresne.ca, cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 9/9] media: hantro: Add scaling lists feature
Date: Fri, 25 Jun 2021 16:11:43 +0200
Message-Id: <20210625141143.577998-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
References: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_071221_871422_0F7B928E 
X-CRM114-Status: GOOD (  20.31  )
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

If the bitstream embedded scaling lists allow the driver to use
them for decode the frames.
The scaling lists are expected to be in raster scan order (i.e. not up
right diagonal scan order)
Allocate the memory needed to store lists.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c     |  8 +--
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 52 +++++++++++++++++++
 drivers/staging/media/hantro/hantro_hevc.c    | 21 ++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  3 ++
 4 files changed, 81 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 8ad074a464fe..5610b7821a54 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -267,9 +267,6 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		    sps->bit_depth_luma_minus8 != 2)
 			/* Only 8-bit or 10-bit is supported */
 			return -EINVAL;
-		if (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED)
-			/* No scaling support */
-			return -EINVAL;
 	}
 	return 0;
 }
@@ -451,6 +448,11 @@ static const struct hantro_ctrl controls[] = {
 		.cfg = {
 			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS,
 		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX,
+		},
 	}, {
 		.codec = HANTRO_HEVC_DECODER,
 		.cfg = {
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 90de74aa6b13..f95135ad553c 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -608,6 +608,56 @@ static void set_buffers(struct hantro_ctx *ctx)
 	hantro_write_addr(vpu, G2_TILE_BSD, ctx->hevc_dec.tile_bsd.dma);
 }
 
+static void prepare_scaling_list_buffer(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
+	const struct v4l2_ctrl_hevc_scaling_matrix *sc = ctrls->scaling;
+	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
+	u8 *p = ((u8 *)ctx->hevc_dec.scaling_lists.cpu);
+	unsigned int scaling_list_enabled;
+	unsigned int i, j, k;
+
+	scaling_list_enabled = !!(sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED);
+	hantro_reg_write(vpu, &g2_scaling_list_e, scaling_list_enabled);
+
+	if (!scaling_list_enabled)
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(sc->scaling_list_dc_coef_16x16); i++)
+		*p++ = sc->scaling_list_dc_coef_16x16[i];
+
+	for (i = 0; i < ARRAY_SIZE(sc->scaling_list_dc_coef_32x32); i++)
+		*p++ = sc->scaling_list_dc_coef_32x32[i];
+
+	/* 128-bit boundary */
+	p += 8;
+
+	/* write scaling lists column by column */
+
+	for (i = 0; i < 6; i++)
+		for (j = 0; j < 4; j++)
+			for (k = 0; k < 4; k++)
+				*p++ = sc->scaling_list_4x4[i][4 * k + j];
+
+	for (i = 0; i < 6; i++)
+		for (j = 0; j < 8; j++)
+			for (k = 0; k < 8; k++)
+				*p++ = sc->scaling_list_8x8[i][8 * k + j];
+
+	for (i = 0; i < 6; i++)
+		for (j = 0; j < 8; j++)
+			for (k = 0; k < 8; k++)
+				*p++ = sc->scaling_list_16x16[i][8 * k + j];
+
+	for (i = 0; i < 2; i++)
+		for (j = 0; j < 8; j++)
+			for (k = 0; k < 8; k++)
+				*p++ = sc->scaling_list_32x32[i][8 * k + j];
+
+	hantro_write_addr(vpu, HEVC_SCALING_LIST, ctx->hevc_dec.scaling_lists.dma);
+}
+
 static void hantro_g2_check_idle(struct hantro_dev *vpu)
 {
 	int i;
@@ -668,6 +718,8 @@ int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx)
 	set_buffers(ctx);
 	prepare_tile_info_buffer(ctx);
 
+	prepare_scaling_list_buffer(ctx);
+
 	hantro_end_prepare_run(ctx);
 
 	hantro_reg_write(vpu, &g2_mode, HEVC_DEC_MODE);
diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index 4e816ea73018..95f765d9ff4e 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -20,6 +20,8 @@
 /* tile border coefficients of filter */
 #define VERT_SAO_RAM_SIZE 48 /* bytes per pixel */
 
+#define SCALING_LIST_SIZE (16 * 64)
+
 #define MAX_TILE_COLS 20
 #define MAX_TILE_ROWS 22
 
@@ -296,6 +298,11 @@ int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx)
 	if (WARN_ON(!ctrls->decode_params))
 		return -EINVAL;
 
+	ctrls->scaling =
+		hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX);
+	if (WARN_ON(!ctrls->scaling))
+		return -EINVAL;
+
 	ctrls->sps =
 		hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_HEVC_SPS);
 	if (WARN_ON(!ctrls->sps))
@@ -324,6 +331,12 @@ void hantro_hevc_dec_exit(struct hantro_ctx *ctx)
 				  hevc_dec->tile_sizes.dma);
 	hevc_dec->tile_sizes.cpu = NULL;
 
+	if (hevc_dec->scaling_lists.cpu)
+		dma_free_coherent(vpu->dev, hevc_dec->scaling_lists.size,
+				  hevc_dec->scaling_lists.cpu,
+				  hevc_dec->scaling_lists.dma);
+	hevc_dec->scaling_lists.cpu = NULL;
+
 	if (hevc_dec->tile_filter.cpu)
 		dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
 				  hevc_dec->tile_filter.cpu,
@@ -367,6 +380,14 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
 
 	hevc_dec->tile_sizes.size = size;
 
+	hevc_dec->scaling_lists.cpu = dma_alloc_coherent(vpu->dev, SCALING_LIST_SIZE,
+							 &hevc_dec->scaling_lists.dma,
+							 GFP_KERNEL);
+	if (!hevc_dec->scaling_lists.cpu)
+		return -ENOMEM;
+
+	hevc_dec->scaling_lists.size = SCALING_LIST_SIZE;
+
 	hantro_hevc_ref_init(ctx);
 
 	return 0;
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index d8126f8178f5..1becc22af0f9 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -108,6 +108,7 @@ struct hantro_h264_dec_hw_ctx {
  */
 struct hantro_hevc_dec_ctrls {
 	const struct v4l2_ctrl_hevc_decode_params *decode_params;
+	const struct v4l2_ctrl_hevc_scaling_matrix *scaling;
 	const struct v4l2_ctrl_hevc_sps *sps;
 	const struct v4l2_ctrl_hevc_pps *pps;
 	u32 hevc_hdr_skip_length;
@@ -120,6 +121,7 @@ struct hantro_hevc_dec_ctrls {
  * @tile_sao:		Tile SAO buffer
  * @tile_bsd:		Tile BSD control buffer
  * @ref_bufs:		Internal reference buffers
+ * @scaling_lists:	Scaling lists buffer
  * @ref_bufs_poc:	Internal reference buffers picture order count
  * @ref_bufs_used:	Bitfield of used reference buffers
  * @ctrls:		V4L2 controls attached to a run
@@ -131,6 +133,7 @@ struct hantro_hevc_dec_hw_ctx {
 	struct hantro_aux_buf tile_sao;
 	struct hantro_aux_buf tile_bsd;
 	struct hantro_aux_buf ref_bufs[NUM_REF_PICTURES];
+	struct hantro_aux_buf scaling_lists;
 	int ref_bufs_poc[NUM_REF_PICTURES];
 	u32 ref_bufs_used;
 	struct hantro_hevc_dec_ctrls ctrls;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
