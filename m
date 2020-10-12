Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AC0C43457
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F10B20790
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="F2QpsT21";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="fxktmgSb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F10B20790
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f/Zajw518nvhHvMY7+s7si4oGiozQeBVhHGn+4IltRo=; b=F2QpsT21QU41h5tJjR5IbO9Yb
	zUrKcEQDCPhfm/2GyFFoC+oJVacXxRlfyJRZvZ2APpz0Jwftzyq1lwD4h94zVNEh/N2LHx5lROugf
	qwsfZ/brqaNLCoO5ghQixiHeWf6D6MgoMO4s68Xs5HNVjTfSAPH/JjoPo4d6AnAa572U4CANEb4VX
	Jhi4qWLsuk9ShrlCIps2pFBuNQPFO/nrOOMCxYEfyFnTl2OMyVl1tLeXgXU9UHBH/4V/X4sRUhqJG
	sDXBmot3ojXkKOu/ZvAppiO9gs+ptEdfF7eJc2/HAQQPLTQqDjGToQTmaT/VENcklTxaKH9hb9Uav
	Mpg7h4TtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5F9-00087i-HO; Mon, 12 Oct 2020 21:20:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F6-00083L-TE
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=c6WLZS3ityj6Ljtc3Ig25nka3U7CekhE2w5tSZIsRVw=; b=fxktmgSbYk2pozbjwkpMZmRlLY
 YaWKAj75D3SjRZT5HhKoKq7JLwtpeNqRCjJDdIno+IYhXkk097D/dzfyuPwvyj1FMNL18bKt53ePy
 QZ/2w1XoZiVSLSo3ZOEVQITeMw1eNEUZPWKtsVfGY+nu1Kp1VS961gauJDLQD3nKVekrl/34GADnG
 SDFp1nOYvGzxZI743MlA1vks4DAAlwoPIKhtV6I7yGAFE/jHpA4E9uk6kBw9L0sp/V9l8rvx1Pzbp
 /G2itnyI2kOOdXnGPKi0Dz/d8iTqIQSoT0/NkTUET2G8F0SYn2PfPbCw/9eRErf3UvWd6DJV5Amtb
 hrvDNI2Q==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uM-0004jt-KR
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id BE02C1F44C2F
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 10/18] media: hantro: convert G1 h264 decoder to regmap fields
Date: Mon, 12 Oct 2020 23:59:49 +0300
Message-Id: <20201012205957.889185-11-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215903_149689_D38D3F16 
X-CRM114-Status: GOOD (  19.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Populate the regmap field API for G1 h264 decoding and convert the
G1 h264 decoder source to use the new API. This is done because we
will add support for the newer VC8000D core which will configure
the regmap API fields differently to match its own hwreg layout.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 .../staging/media/hantro/hantro_g1_h264_dec.c | 71 ++++++++++-------
 drivers/staging/media/hantro/hantro_regmap.c  | 79 ++++++++++++++++++-
 drivers/staging/media/hantro/hantro_regmap.h  | 26 +++++-
 3 files changed, 145 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 845bef73d218..8592dfabbc5e 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -18,6 +18,9 @@
 #include "hantro_g1_regs.h"
 #include "hantro_hw.h"
 #include "hantro_v4l2.h"
+#include "hantro_regmap.h"
+
+extern struct regmap_config hantro_regmap_dec;
 
 static void set_params(struct hantro_ctx *ctx)
 {
@@ -27,10 +30,15 @@ static void set_params(struct hantro_ctx *ctx)
 	const struct v4l2_ctrl_h264_pps *pps = ctrls->pps;
 	struct vb2_v4l2_buffer *src_buf = hantro_get_src_buf(ctx);
 	struct hantro_dev *vpu = ctx->dev;
+	struct hantro_regmap_fields_dec *fields = vpu->reg_fields_dec;
+	u32 width = MB_WIDTH(ctx->src_fmt.width);
+	u32 height = MB_HEIGHT(ctx->src_fmt.height);
 	u32 reg;
 
+	regmap_field_write(fields->dec_axi_wr_id, 0x0);
+
 	/* Decoder control register 0. */
-	reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0x0);
+	reg = 0;
 	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
 		reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
 	if (sps->profile_idc > 66) {
@@ -50,10 +58,11 @@ static void set_params(struct hantro_ctx *ctx)
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
 
 	/* Decoder control register 1. */
-	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(MB_WIDTH(ctx->src_fmt.width)) |
-	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(MB_HEIGHT(ctx->src_fmt.height)) |
-	      G1_REG_DEC_CTRL1_REF_FRAMES(sps->max_num_ref_frames);
-	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL1);
+	regmap_field_write(fields->dec_pic_width, width);
+	regmap_field_write(fields->dec_pic_height, height);
+
+	regmap_field_write(fields->dec_num_ref_frames,
+			   sps->max_num_ref_frames);
 
 	/* Decoder control register 2. */
 	reg = G1_REG_DEC_CTRL2_CH_QP_OFFSET(pps->chroma_qp_index_offset) |
@@ -66,10 +75,11 @@ static void set_params(struct hantro_ctx *ctx)
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL2);
 
 	/* Decoder control register 3. */
-	reg = G1_REG_DEC_CTRL3_START_CODE_E |
-	      G1_REG_DEC_CTRL3_INIT_QP(pps->pic_init_qp_minus26 + 26) |
-	      G1_REG_DEC_CTRL3_STREAM_LEN(vb2_get_plane_payload(&src_buf->vb2_buf, 0));
-	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL3);
+	regmap_field_write(fields->dec_start_code_e, 1);
+	regmap_field_write(fields->dec_init_qp,
+			   pps->pic_init_qp_minus26 + 26);
+	regmap_field_write(fields->dec_stream_len,
+			   vb2_get_plane_payload(&src_buf->vb2_buf, 0));
 
 	/* Decoder control register 4. */
 	reg = G1_REG_DEC_CTRL4_FRAMENUM_LEN(sps->log2_max_frame_num_minus4 + 4) |
@@ -121,8 +131,7 @@ static void set_params(struct hantro_ctx *ctx)
 	vdpu_write_relaxed(vpu, 0, G1_REG_REF_BUF_CTRL);
 
 	/* Reference picture buffer control register 2. */
-	vdpu_write_relaxed(vpu, G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(8),
-			   G1_REG_REF_BUF_CTRL2);
+	regmap_field_write(fields->dec_apf_threshold, 8);
 }
 
 static void set_ref(struct hantro_ctx *ctx)
@@ -221,7 +230,6 @@ static void set_ref(struct hantro_ctx *ctx)
 	/* Set up addresses of DPB buffers. */
 	for (i = 0; i < HANTRO_H264_DPB_SIZE; i++) {
 		dma_addr_t dma_addr = hantro_h264_get_ref_buf(ctx, i);
-
 		vdpu_write_relaxed(vpu, dma_addr, G1_REG_ADDR_REF(i));
 	}
 }
@@ -231,6 +239,7 @@ static void set_buffers(struct hantro_ctx *ctx)
 	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct hantro_dev *vpu = ctx->dev;
+	struct hantro_regmap_fields_dec *fields = vpu->reg_fields_dec;
 	dma_addr_t src_dma, dst_dma;
 	size_t offset = 0;
 
@@ -239,14 +248,14 @@ static void set_buffers(struct hantro_ctx *ctx)
 
 	/* Source (stream) buffer. */
 	src_dma = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
-	vdpu_write_relaxed(vpu, src_dma, G1_REG_ADDR_STR);
+	regmap_field_write(fields->dec_addr_str, src_dma);
 
 	/* Destination (decoded frame) buffer. */
 	dst_dma = hantro_get_dec_buf_addr(ctx, &dst_buf->vb2_buf);
 	/* Adjust dma addr to start at second line for bottom field */
 	if (ctrls->decode->flags & V4L2_H264_DECODE_PARAM_FLAG_BOTTOM_FIELD)
 		offset = ALIGN(ctx->src_fmt.width, MB_DIM);
-	vdpu_write_relaxed(vpu, dst_dma + offset, G1_REG_ADDR_DST);
+	regmap_field_write(fields->dec_addr_dst, dst_dma + offset);
 
 	/* Higher profiles require DMV buffer appended to reference frames. */
 	if (ctrls->sps->profile_idc > 66 && ctrls->decode->nal_ref_idc) {
@@ -266,16 +275,18 @@ static void set_buffers(struct hantro_ctx *ctx)
 		if (ctrls->decode->flags & V4L2_H264_DECODE_PARAM_FLAG_BOTTOM_FIELD)
 			offset += 32 * MB_WIDTH(ctx->src_fmt.width) *
 				  MB_HEIGHT(ctx->src_fmt.height);
-		vdpu_write_relaxed(vpu, dst_dma + offset, G1_REG_ADDR_DIR_MV);
+		regmap_field_write(fields->dec_addr_dir_mv, dst_dma + offset);
 	}
 
 	/* Auxiliary buffer prepared in hantro_g1_h264_dec_prepare_table(). */
-	vdpu_write_relaxed(vpu, ctx->h264_dec.priv.dma, G1_REG_ADDR_QTABLE);
+	regmap_field_write(fields->dec_addr_qtable, ctx->h264_dec.priv.dma);
 }
 
 void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
+	struct hantro_regmap_fields_dec *fields = vpu->reg_fields_dec;
+	int reg;
 
 	/* Prepare the H264 decoder context. */
 	if (hantro_h264_dec_prepare_run(ctx))
@@ -288,17 +299,23 @@ void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 
 	hantro_end_prepare_run(ctx);
 
+	switch (vpu->core_hw_dec_rev) {
+	case HANTRO_G1_REV:
+		reg = G1_REG_CONFIG_DEC_TIMEOUT_E	|
+			G1_REG_CONFIG_DEC_OUT_ENDIAN	|
+			G1_REG_CONFIG_DEC_STRENDIAN_E	|
+			G1_REG_CONFIG_DEC_OUTSWAP32_E	|
+			G1_REG_CONFIG_DEC_INSWAP32_E	|
+			G1_REG_CONFIG_DEC_STRSWAP32_E;
+		vdpu_write_relaxed(vpu, reg, G1_REG_CONFIG);
+		break;
+	/* TODO: add VC8000 support */
+	}
+
+	regmap_field_write(fields->dec_clk_gate_e, 1);
+	regmap_field_write(fields->dec_max_burst, 16);
+	regmap_field_write(fields->dec_axi_rd_id, 16);
+
 	/* Start decoding! */
-	vdpu_write_relaxed(vpu,
-			   G1_REG_CONFIG_DEC_AXI_RD_ID(0xffu) |
-			   G1_REG_CONFIG_DEC_TIMEOUT_E |
-			   G1_REG_CONFIG_DEC_OUT_ENDIAN |
-			   G1_REG_CONFIG_DEC_STRENDIAN_E |
-			   G1_REG_CONFIG_DEC_MAX_BURST(16) |
-			   G1_REG_CONFIG_DEC_OUTSWAP32_E |
-			   G1_REG_CONFIG_DEC_INSWAP32_E |
-			   G1_REG_CONFIG_DEC_STRSWAP32_E |
-			   G1_REG_CONFIG_DEC_CLK_GATE_E,
-			   G1_REG_CONFIG);
 	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
 }
diff --git a/drivers/staging/media/hantro/hantro_regmap.c b/drivers/staging/media/hantro/hantro_regmap.c
index 2fc409cbd797..fbc39abedc7d 100644
--- a/drivers/staging/media/hantro/hantro_regmap.c
+++ b/drivers/staging/media/hantro/hantro_regmap.c
@@ -33,12 +33,54 @@ struct regmap_config hantro_regmap_enc = {
 	.name = "hantro_regmap_enc",
 };
 
+struct hantro_field_dec {
+	struct reg_field cfg_dec_axi_rd_id;
+	struct reg_field cfg_dec_axi_wr_id;
+	struct reg_field cfg_dec_rlc_mode_e;
+	struct reg_field cfg_dec_mode;
+	struct reg_field cfg_dec_max_burst;
+	struct reg_field cfg_dec_apf_threshold;
+	struct reg_field cfg_dec_stream_len;
+	struct reg_field cfg_dec_init_qp;
+	struct reg_field cfg_dec_start_code_e;
+	struct reg_field cfg_dec_pic_width;
+	struct reg_field cfg_dec_pic_height;
+	struct reg_field cfg_dec_num_ref_frames;
+	struct reg_field cfg_dec_scaling_list_e;
+	struct reg_field cfg_dec_addr_str;
+	struct reg_field cfg_dec_addr_dst;
+	struct reg_field cfg_dec_ilace_mode;
+	struct reg_field cfg_dec_addr_qtable;
+	struct reg_field cfg_dec_addr_dir_mv;
+	struct reg_field cfg_dec_tiled_mode_lsb;
+	struct reg_field cfg_dec_clk_gate_e;
+};
+
 struct hantro_field_enc {
 	/* TODO: populate encoder fields */
 };
 
-struct hantro_field_dec {
-	/* TODO: populate decoder fields */
+static const struct hantro_field_dec g1_field = {
+	.cfg_dec_tiled_mode_lsb	=	REG_FIELD(SWREG(2), 7, 7),
+	.cfg_dec_clk_gate_e =		REG_FIELD(SWREG(2), 10, 10),
+	.cfg_dec_axi_rd_id =		REG_FIELD(SWREG(2), 24, 31),
+	.cfg_dec_axi_wr_id =		REG_FIELD(SWREG(3), 0, 7),
+	.cfg_dec_rlc_mode_e =		REG_FIELD(SWREG(3), 27, 27),
+	.cfg_dec_mode =			REG_FIELD(SWREG(3), 28, 31),
+	.cfg_dec_max_burst =		REG_FIELD(SWREG(2), 0, 4),
+	.cfg_dec_apf_threshold =	REG_FIELD(SWREG(55), 0, 13),
+	.cfg_dec_stream_len =		REG_FIELD(SWREG(6), 0, 23),
+	.cfg_dec_init_qp =		REG_FIELD(SWREG(6), 25, 30),
+	.cfg_dec_start_code_e =		REG_FIELD(SWREG(6), 31, 31),
+	.cfg_dec_pic_width =		REG_FIELD(SWREG(4), 23, 31),
+	.cfg_dec_pic_height =		REG_FIELD(SWREG(4), 11, 18),
+	.cfg_dec_num_ref_frames =	REG_FIELD(SWREG(4), 0, 4),
+	.cfg_dec_scaling_list_e =	REG_FIELD(SWREG(5), 24, 24),
+	.cfg_dec_addr_str =		REG_FIELD(SWREG(12), 0, 31),
+	.cfg_dec_addr_dst =		REG_FIELD(SWREG(13), 0, 31),
+	.cfg_dec_ilace_mode =		REG_FIELD(SWREG(13), 1, 1),
+	.cfg_dec_addr_qtable =		REG_FIELD(SWREG(40), 0, 31),
+	.cfg_dec_addr_dir_mv =		REG_FIELD(SWREG(41), 0, 31),
 };
 
 #define INIT_FIELD_CFG(f, codec, conf) ({					\
@@ -61,7 +103,27 @@ static int hantro_regmap_fields_init_dec(struct hantro_dev *vpu,
 	if (!vpu->reg_fields_dec)
 		return -ENOMEM;
 
-	/* TODO: add decoder fields */
+	/* Decoder */
+	INIT_DEC_FIELD(dec_axi_wr_id);
+	INIT_DEC_FIELD(dec_axi_rd_id);
+	INIT_DEC_FIELD(dec_rlc_mode_e);
+	INIT_DEC_FIELD(dec_mode);
+	INIT_DEC_FIELD(dec_max_burst);
+	INIT_DEC_FIELD(dec_apf_threshold);
+	INIT_DEC_FIELD(dec_stream_len);
+	INIT_DEC_FIELD(dec_init_qp);
+	INIT_DEC_FIELD(dec_start_code_e);
+	INIT_DEC_FIELD(dec_pic_width);
+	INIT_DEC_FIELD(dec_pic_height);
+	INIT_DEC_FIELD(dec_num_ref_frames);
+	INIT_DEC_FIELD(dec_scaling_list_e);
+	INIT_DEC_FIELD(dec_addr_str);
+	INIT_DEC_FIELD(dec_addr_dst);
+	INIT_DEC_FIELD(dec_ilace_mode);
+	INIT_DEC_FIELD(dec_addr_qtable);
+	INIT_DEC_FIELD(dec_addr_dir_mv);
+	INIT_DEC_FIELD(dec_tiled_mode_lsb);
+	INIT_DEC_FIELD(dec_clk_gate_e);
 
 	return 0;
 }
@@ -133,6 +195,17 @@ int hantro_regmap_init_dec(struct hantro_dev *vpu)
 
 	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
 
+	switch (vpu->core_hw_dec_rev) {
+	case HANTRO_G1_REV:
+		hantro_regmap_dec.max_register = 0x1D8;
+		field = &g1_field;
+		break;
+	default:
+		dev_err(vpu->dev, "Decoder revision 0x%x not supported by driver.\n",
+			vpu->core_hw_dec_rev);
+		return -ENODEV;
+	}
+
 	vpu->regs_dec = devm_regmap_init_mmio(vpu->dev, dec_base,
 					      &hantro_regmap_dec);
 	if (IS_ERR(vpu->regs_dec)) {
diff --git a/drivers/staging/media/hantro/hantro_regmap.h b/drivers/staging/media/hantro/hantro_regmap.h
index 52668a8bafb9..e94fdc055784 100644
--- a/drivers/staging/media/hantro/hantro_regmap.h
+++ b/drivers/staging/media/hantro/hantro_regmap.h
@@ -9,8 +9,32 @@
 #ifndef HANTRO_REGMAP_H_
 #define HANTRO_REGMAP_H_
 
+#define HANTRO_G1_REV		0x6731
+
+#define SWREG(nr)		((nr) << 2)
+
 struct hantro_regmap_fields_dec {
-	/* TODO: populate decoder fields */
+	/* Decoder */
+	struct regmap_field *dec_axi_rd_id;
+	struct regmap_field *dec_axi_wr_id;
+	struct regmap_field *dec_max_burst;
+	struct regmap_field *dec_rlc_mode_e;
+	struct regmap_field *dec_mode;
+	struct regmap_field *dec_apf_threshold;
+	struct regmap_field *dec_stream_len;
+	struct regmap_field *dec_init_qp;
+	struct regmap_field *dec_start_code_e;
+	struct regmap_field *dec_pic_width;
+	struct regmap_field *dec_pic_height;
+	struct regmap_field *dec_num_ref_frames;
+	struct regmap_field *dec_scaling_list_e;
+	struct regmap_field *dec_addr_str;
+	struct regmap_field *dec_addr_dst;
+	struct regmap_field *dec_ilace_mode;
+	struct regmap_field *dec_addr_qtable;
+	struct regmap_field *dec_addr_dir_mv;
+	struct regmap_field *dec_tiled_mode_lsb;
+	struct regmap_field *dec_clk_gate_e;
 };
 
 struct hantro_regmap_fields_enc {
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
