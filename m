Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6ADAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkQSRtKVLZVAlL/NBrvikIqpXnIVxvM4XXyV/3guDGA=; b=5AsTUDckTR2sbq
	vfwuY5gJicf/wez2QqPojwM8PzbhbcOYhMM8WJy+Jiu9emQvk5Pk6gcbyxVajpYgdbZFjvpddf0cI
	hMli2S1LWDqnCyIT3pkXKP25qUNaPqU+UGMUUIsjWDThxH4jfia0Hj6avfYwo9XG6WTJA+5Ta6YyU
	B83B5H5eSj4L9eEfehQmQdVjiZYcJmuwyX/jePukPuinjehQztAtVMETxIESupPuvchM7vqc9+4Q0
	TNY5G7TmCRWEyvHCMFwMI5bch1ORbeSRPVmGLrsfFHxc99U/Hzm/izPMz1u4PFYfzoyrivrwUg4SB
	GRpCXHcSbVhwinyv+Njg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub8Z-000KC8-AJ; Fri, 27 May 2022 14:40:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0x-000GDQ-6W; Fri, 27 May 2022 14:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bTxTqzWr35iqAL6lxjfkVF4oBweh3rmMe3tvBYqKpcM=; b=OJPJcB9AHfyV0giIGVPMuXcn2C
	TBG/jLO1uhCiAiGE8XqSbF/NEeBXmtAqHxrIlxD17FG/4l1a6nzDMirtcnwZre5C0A4khR42bmS5Y
	pxngrGK5vwj51sycZ9qwGNPiu3Y4x9mkgEySE240Ho2peyFsiEA35r0pj4DMMKBFBgmOdgknop/FV
	epHhnRtcwBSzoFmASQ6pzoBWaQY+YOjio3DgV58+OZTIzV55ikyZmjEjvnt2QEJ6DrnbR3vJmwHYA
	VAcBo8uoDjY2Xx5OuDXpzGCl94Vqgc9sVWnrBQ6mNxSJjkKQLBTnZwJ+QB1XkfY00ESlEccpk0wCZ
	8BYLutaQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0U-002D0h-Hq; Fri, 27 May 2022 14:32:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id 705371F462C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653661920;
	bh=VxFUVU598sPR+2ba2pJaipyY91RQ+APtAi220RV7Y1c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SSCsL8a3+8+dGcc0Qoyn1ugO8gopvhTyrJmxjVt4QOrA1GzZ0CkebfBG16oDQkSuh
	 lW1/2ev608XnzkxBnk6D2c3x5zMmVb6iWxHD8L2Bb7gw6Ig0fZXO8f1ilYtnSG5xOr
	 6SdCu3l+jhAgEH6KxK9yDfMXrk1c4IwcW/amH2GnLBxxBS1hqmfpT2POh5CV8wDRt3
	 QAkGDhjUzhYYNn4XE4dUvCSUd1JEQONShuW0qFf6/vBbZgxioY9AQZJbs0HKtlsRW/
	 AKVqQZWwYr7DZujMBZqej1iYmF92h++erDqV0gQreLVFdVKaUO2tYBfIMIEYPAjRjp
	 oooFSJb+FB8WQ==
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
Subject: [PATCH v6 14/17] media: hantro: Stop using Hantro dedicated control
Date: Fri, 27 May 2022 16:31:31 +0200
Message-Id: <20220527143134.3360174-15-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_153203_525791_263EF154 
X-CRM114-Status: GOOD (  19.05  )
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
This allow to remove Hantro dedicated control.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c     | 36 -----------
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 62 ++++++++++++++++++-
 include/media/hevc-ctrls.h                    | 13 ----
 3 files changed, 61 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index b38d9b3ab2ed..377dcc1d19de 100644
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
index d28653d04d20..3be8d6e60bf0 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -117,6 +117,66 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 		vpu_debug(1, "%s: no chroma!\n", __func__);
 }
 
+static unsigned int ceil_log2(unsigned int v)
+{
+	/* Compute Ceil(Log2(v))
+	 * Derived from branchless code for integer log2(v) from:
+	 * <http://graphics.stanford.edu/~seander/bithacks.html#IntegerLog>
+	 */
+	unsigned int r, shift;
+
+	v--;
+	r = (v > 0xFFFF) << 4;
+	v >>= r;
+	shift = (v > 0xFF) << 3;
+	v >>= shift;
+	r |= shift;
+	shift = (v > 0xF) << 2;
+	v >>= shift;
+	r |= shift;
+	shift = (v > 0x3) << 1;
+	v >>= shift;
+	r |= shift;
+	r |= (v >> 1);
+
+	return r + 1;
+}
+
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
+			skip += ceil_log2(sps->num_short_term_ref_pic_sets);
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
@@ -134,7 +194,7 @@ static void set_params(struct hantro_ctx *ctx)
 
 	hantro_reg_write(vpu, &g2_output_8_bits, 0);
 
-	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls->hevc_hdr_skip_length);
+	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_lenght(ctx));
 
 	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
 	max_log2_ctb_size = min_log2_cb_size + sps->log2_diff_max_min_luma_coding_block_size;
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index d6cb3779d190..efc0412ac41e 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -467,17 +467,4 @@ struct v4l2_ctrl_hevc_scaling_matrix {
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
