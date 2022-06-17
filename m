Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78ABEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 08:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toEFSRm4UmHKAu/2dubMgLrpHwsioAgiKIypsW9VmEw=; b=d+ro8JmyiWGfwS
	V1ODymOo4d+rBp2LE3zZ7zhrE7SClOZ5R1ersmdB2hG1OdKoUUePLY7Uez74/dIeD9kSJ3FUwfiHG
	7KoSwWmfYEC6DhFXHNMY+PVXAYr2YxN6FqX1GES50YmXw9t1LSti0t/Pq/HIELz1rmz6kAuqIa93C
	Rq/WYsk3pJtKechCyFD5HGY374MFtWZrfG2iG/1+f/MMY2SjUsR45ABmP4XtBq3z5X5Q3TPAumjGb
	0xDG4qdDuERUwJmTXwcn1pB6rIa3Og3W9Qg5+RgWLoES7W55bRR33c+BsJM892Eq5TFuH1FfzZrsJ
	lohzIfNVJvcPXmwN8jfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27dl-006Rum-IM; Fri, 17 Jun 2022 08:47:41 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Sb-006MPH-Om; Fri, 17 Jun 2022 08:36:19 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EAE806601922;
	Fri, 17 Jun 2022 09:36:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655454963;
	bh=cIvMqNOFuexjsyPmbDvn3zbmFvfzP1OXjOfdcVhVh60=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O9KjaSAs2EfboO7kWWqDLBhSjFErcKEsFMgQGWsS3nN6VrPCKXBQ3oVpBpJysQBuv
	 ZPYNVUbLh1I7pKyEwrRGKK/OWtBxNT6ZlkHMqnAVT0fJK8Xe+HRvWkJSDUmWukm2j2
	 iX9l68Iz6xNClSdqhfZuRvJe8irb/wEW6T8ooCgVM7wFlzvMDRTVzL4Mx9ZuPFPCPr
	 i32olQoNtVaxMikjcXVcNsNzIpsC6BPJ18coXJOw72r6PJDl+4Bfk6B+/i5lh0DuX/
	 Sr/f44vGYSlaO9BR1p1Mmbo+UHjGPn2PJAkKi+3gsTdoFwLbQ2/XP+YraMF5zzOgKT
	 WZqzOj/Kz9eWw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v9 14/17] media: hantro: Stop using Hantro dedicated control
Date: Fri, 17 Jun 2022 10:35:42 +0200
Message-Id: <20220617083545.133920-15-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
References: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_013610_147498_00929188 
X-CRM114-Status: GOOD (  18.66  )
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

The number of bits to skip in the slice header can be computed
in the driver by using sps, pps and decode_params information.
This makes it possible to remove Hantro dedicated control.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 9:
- Reword commit message
- Use fls()

 drivers/staging/media/hantro/hantro_drv.c     | 36 ------------------
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 37 ++++++++++++++++++-
 include/media/hevc-ctrls.h                    | 13 -------
 3 files changed, 36 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 536c8c374952..5aac3a090480 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -304,26 +304,6 @@ static int hantro_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
-static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
-{
-	struct hantro_ctx *ctx;
-
-	ctx = container_of(ctrl->handler,
-			   struct hantro_ctx, ctrl_handler);
-
-	vpu_debug(1, "s_ctrl: id = %d, val = %d\n", ctrl->id, ctrl->val);
-
-	switch (ctrl->id) {
-	case V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP:
-		ctx->hevc_dec.ctrls.hevc_hdr_skip_length = ctrl->val;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 	.try_ctrl = hantro_try_ctrl,
 };
@@ -332,10 +312,6 @@ static const struct v4l2_ctrl_ops hantro_jpeg_ctrl_ops = {
 	.s_ctrl = hantro_jpeg_s_ctrl,
 };
 
-static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
-	.s_ctrl = hantro_hevc_s_ctrl,
-};
-
 #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
 					 V4L2_JPEG_ACTIVE_MARKER_COM | \
 					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
@@ -487,18 +463,6 @@ static const struct hantro_ctrl controls[] = {
 		.cfg = {
 			.id = V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
 		},
-	}, {
-		.codec = HANTRO_HEVC_DECODER,
-		.cfg = {
-			.id = V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP,
-			.name = "Hantro HEVC slice header skip bytes",
-			.type = V4L2_CTRL_TYPE_INTEGER,
-			.min = 0,
-			.def = 0,
-			.max = 0x100,
-			.step = 1,
-			.ops = &hantro_hevc_ctrl_ops,
-		},
 	}, {
 		.codec = HANTRO_VP9_DECODER,
 		.cfg = {
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index d28653d04d20..9eac133bda68 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -117,6 +117,41 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 		vpu_debug(1, "%s: no chroma!\n", __func__);
 }
 
+static int compute_header_skip_lenght(struct hantro_ctx *ctx)
+{
+	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
+	const struct v4l2_ctrl_hevc_decode_params *decode_params = ctrls->decode_params;
+	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
+	const struct v4l2_ctrl_hevc_pps *pps = ctrls->pps;
+	int skip = 0;
+
+	if (pps->flags & V4L2_HEVC_PPS_FLAG_OUTPUT_FLAG_PRESENT)
+		/* size of pic_output_flag */
+		skip++;
+
+	if (sps->flags & V4L2_HEVC_SPS_FLAG_SEPARATE_COLOUR_PLANE)
+		/* size of pic_order_cnt_lsb */
+		skip += 2;
+
+	if (!(decode_params->flags & V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC)) {
+		/* size of pic_order_cnt_lsb */
+		skip += sps->log2_max_pic_order_cnt_lsb_minus4 + 4;
+
+		/* size of short_term_ref_pic_set_sps_flag */
+		skip++;
+
+		if (decode_params->short_term_ref_pic_set_size)
+			/* size of st_ref_pic_set( num_short_term_ref_pic_sets ) */
+			skip += decode_params->short_term_ref_pic_set_size;
+		else if (sps->num_short_term_ref_pic_sets > 1)
+			skip += fls(sps->num_short_term_ref_pic_sets - 1);
+
+		skip += decode_params->long_term_ref_pic_set_size;
+	}
+
+	return skip;
+}
+
 static void set_params(struct hantro_ctx *ctx)
 {
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
@@ -134,7 +169,7 @@ static void set_params(struct hantro_ctx *ctx)
 
 	hantro_reg_write(vpu, &g2_output_8_bits, 0);
 
-	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls->hevc_hdr_skip_length);
+	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_lenght(ctx));
 
 	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
 	max_log2_ctb_size = min_log2_cb_size + sps->log2_diff_max_min_luma_coding_block_size;
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 42d16e8a1050..9239e8b649e0 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -465,17 +465,4 @@ struct v4l2_ctrl_hevc_scaling_matrix {
 	__u8	scaling_list_dc_coef_32x32[2];
 };
 
-/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
-#define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
-/*
- * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
- * the number of data (in bits) to skip in the
- * slice segment header.
- * If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
- * to before syntax element "slice_temporal_mvp_enabled_flag".
- * If IDR, the skipped bits are just "pic_output_flag"
- * (separate_colour_plane_flag is not supported).
- */
-#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	(V4L2_CID_CODEC_HANTRO_BASE + 0)
-
 #endif
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
