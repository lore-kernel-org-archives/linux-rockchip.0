Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B384C43457
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5D1F20790
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UTKvc6Nl";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="YtE417rq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5D1F20790
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1yshmbZpxBV+pUfATLZOflB9OxVnoOjRpSfcBQLfH+0=; b=UTKvc6Nleh+KcKWdamG0PwILn
	w36G5qxGjjtymBHmQwbVbN8m6GuN4mbanwWWn69QrUg7Rr+gz3ztCFG/PsMTQCTgJ9pIzqCXLpFs3
	62MkDRFksS5LZFrqda8uoz9lB02q6eg5Q2OcqwUjI3E8NnyocdDgWgRVBFtt7zjEOtDFTxiRiES8X
	e32nUGUUlllBNxlr6hqQpNMypN2RurZqyjqCCXtg8KY1rpLlqTa20y7cCUr6Ls/j70I2xA8MYDsmI
	5+9QHqdCZZ0q7NSF1MoN/1iqJUKozGlSl7gudgI3Esmx+VQvJYcdy+AaF9t/QFXJhJ+W+oPJzIyRI
	UHfKpFz1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5F4-00085S-UP; Mon, 12 Oct 2020 21:20:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F2-00083L-Lt
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GSvWDXqvIyhILmgSlEBRux0x/gef8yUhKcRUCKysqRE=; b=YtE417rqqIZRRoeFXm6J490jsf
 TtBgKXdhUbdOaP3KUVj0Elw478vDj0NoH8xkzqEPoAF4cGK5et+l4SleV737Fzn+rgVPH655aMSng
 XgDVusu20fjLlIztuJHmo9mtlMZVfi4vP4Gqt4aTK9qLNEuQOD6ZZc6F2B5xf5k3KzF0/xpL5KMDY
 9lbdqAp/afprc2eiGT/KrqPKBktz/2IdLwwfoq9ZgdrHevpXXCgtxJx9wjdAlcpyKfJ+xYVxpX9CV
 6/tFEYSw+23Z+4r+GScmQ+pd+Vgg5un2RZ9EMAm4OiRIsZHNVUTZ/jwIyTCYGdOe1B/kGyE4MfjhB
 SFCunoRA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uR-0004lX-1g
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 88D491F44C50
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 13/18] media: hantro: add VC8000D postproc support
Date: Mon, 12 Oct 2020 23:59:52 +0300
Message-Id: <20201012205957.889185-14-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215908_293883_FBBA3FC1 
X-CRM114-Status: GOOD (  16.66  )
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

VC8000D decodes only to 4x4 tiled NV12 format and the attached PP
can be used to de-tile its output. This can bo done in two modes:

1. Pipeline mode, using the same decoder "done" irq
2. External mode, with a separate irq and input setup.

This adds the relevant postprocessor fields and support for pipeline
mode de-tiling.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../staging/media/hantro/hantro_postproc.c    | 58 ++++++++++++++++---
 drivers/staging/media/hantro/hantro_regmap.c  | 41 +++++++++++++
 drivers/staging/media/hantro/hantro_regmap.h  |  8 +++
 3 files changed, 98 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 6d1705a60d36..a6b3e243dc39 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -20,22 +20,35 @@
 #define VPU_PP_OUT_RGB			0x0
 #define VPU_PP_OUT_YUYV			0x3
 
+#define VC8000D_PP_OUT_NV12		0x0
+
 void hantro_postproc_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_regmap_fields_dec *fields = ctx->dev->reg_fields_dec;
 	struct vb2_v4l2_buffer *dst_buf;
-	u32 src_pp_fmt, dst_pp_fmt;
+	u32 src_pp_fmt, dst_pp_fmt, in_width, in_height;
 	dma_addr_t dst_dma;
 
 	/* Turn on pipeline mode. Must be done first. */
 	regmap_field_write(fields->pp_pipeline_en, 1);
 
+	/*
+	 * use NV12 as input format for pipeline mode as that's what decoder
+	 * outputs, on VC8000D it is 4x4 tiled NV12.
+	 */
 	src_pp_fmt = VPU_PP_IN_NV12;
 
 	switch (ctx->vpu_dst_fmt->fourcc) {
 	case V4L2_PIX_FMT_YUYV:
 		dst_pp_fmt = VPU_PP_OUT_YUYV;
 		break;
+	case V4L2_PIX_FMT_NV12:
+		/* src == dst == NV12 only makes sense to de-tile on VC8000D */
+		if (ctx->dev->core_hw_dec_rev == HANTRO_VC8000_REV) {
+			dst_pp_fmt = VC8000D_PP_OUT_NV12;
+			break;
+		}
+		fallthrough;
 	default:
 		WARN(1, "output format %d not supported by the post-processor, this wasn't expected.",
 		     ctx->vpu_dst_fmt->fourcc);
@@ -46,19 +59,46 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
-	regmap_field_write(fields->pp_clk_gate, 1);
-	regmap_field_write(fields->pp_out_endian, 1);
-	regmap_field_write(fields->pp_out_swap32, 1);
-	regmap_field_write(fields->pp_max_burst, 16);
+	switch (ctx->dev->core_hw_dec_rev) {
+	case HANTRO_G1_REV:
+		regmap_field_write(fields->pp_clk_gate, 1);
+		regmap_field_write(fields->pp_out_endian, 1);
+		regmap_field_write(fields->pp_out_swap32, 1);
+		regmap_field_write(fields->pp_max_burst, 16);
+		regmap_field_write(fields->pp_orig_width, MB_WIDTH(ctx->dst_fmt.width));
+		regmap_field_write(fields->pp_display_width, ctx->dst_fmt.width);
+		in_width = MB_WIDTH(ctx->src_fmt.width);
+		in_height = MB_WIDTH(ctx->src_fmt.height);
+		break;
+	case HANTRO_VC8000_REV:
+		/* on VC8000D the PP is used to de-tile decoder output */
+		regmap_field_write(fields->pp_out_tile_e, 0);
+
+		regmap_field_write(fields->pp_out_y_stride, ctx->dst_fmt.width);
+		regmap_field_write(fields->pp_out_c_stride, ctx->dst_fmt.width);
+
+		regmap_field_write(fields->pp_out_chroma_base, dst_dma +
+				   ctx->dst_fmt.width * ctx->dst_fmt.height);
+
+		/* VC8000D input resolution is a 2-pixels length. */
+		in_width = ctx->src_fmt.width / 2;
+		in_height = ctx->src_fmt.height / 2;
+
+		break;
+	default:
+		vpu_err("PP does not recognize HW revision: %x, disabling\n",
+			ctx->dev->core_hw_dec_rev);
+		hantro_postproc_disable(ctx);
+		return;
+	}
+
 	regmap_field_write(fields->pp_out_luma_base, dst_dma);
-	regmap_field_write(fields->pp_input_width, MB_WIDTH(ctx->dst_fmt.width));
-	regmap_field_write(fields->pp_input_height, MB_HEIGHT(ctx->dst_fmt.height));
+	regmap_field_write(fields->pp_input_width, in_width);
+	regmap_field_write(fields->pp_input_height, in_height);
 	regmap_field_write(fields->pp_input_fmt, src_pp_fmt);
 	regmap_field_write(fields->pp_output_fmt, dst_pp_fmt);
 	regmap_field_write(fields->pp_output_width, ctx->dst_fmt.width);
 	regmap_field_write(fields->pp_output_height, ctx->dst_fmt.height);
-	regmap_field_write(fields->pp_orig_width, MB_WIDTH(ctx->dst_fmt.width));
-	regmap_field_write(fields->pp_display_width, ctx->dst_fmt.width);
 }
 
 void hantro_postproc_free(struct hantro_ctx *ctx)
diff --git a/drivers/staging/media/hantro/hantro_regmap.c b/drivers/staging/media/hantro/hantro_regmap.c
index 0e74ba69034f..b87fe809f2f7 100644
--- a/drivers/staging/media/hantro/hantro_regmap.c
+++ b/drivers/staging/media/hantro/hantro_regmap.c
@@ -75,6 +75,10 @@ struct hantro_field_dec {
 	struct reg_field cfg_pp_out_swap32;
 	struct reg_field cfg_pp_out_endian;
 	struct reg_field cfg_pp_out_luma_base;
+	struct reg_field cfg_pp_out_chroma_base;
+	struct reg_field cfg_pp_in_luma_base;
+	struct reg_field cfg_pp_in_chroma_base;
+	struct reg_field cfg_pp_out_tile_e;
 	struct reg_field cfg_pp_input_width;
 	struct reg_field cfg_pp_input_height;
 	struct reg_field cfg_pp_output_width;
@@ -93,6 +97,10 @@ struct hantro_field_dec {
 	struct reg_field cfg_pp_scale_hratio;
 	struct reg_field cfg_pp_scale_inv_wratio;
 	struct reg_field cfg_pp_scale_inv_hratio;
+	struct reg_field cfg_pp_out_c_stride;
+	struct reg_field cfg_pp_out_y_stride;
+	struct reg_field cfg_pp_in_c_stride;
+	struct reg_field cfg_pp_in_y_stride;
 };
 
 struct hantro_field_enc {
@@ -181,6 +189,31 @@ static const struct hantro_field_dec vc8000d_field = {
 	.cfg_dec_ext_timeout_e =	REG_FIELD(SWREG(318), 31, 31),
 	.cfg_dec_timeout_cycles =	REG_FIELD(SWREG(319), 0, 30),
 	.cfg_dec_timeout_e =		REG_FIELD(SWREG(319), 31, 31),
+	.cfg_pp_pipeline_en =		REG_FIELD(SWREG(320), 0, 0),
+	.cfg_pp_out_tile_e =		REG_FIELD(SWREG(320), 3, 3),
+	.cfg_pp_output_fmt =		REG_FIELD(SWREG(322), 18, 22),
+	.cfg_pp_input_fmt =		REG_FIELD(SWREG(322), 27, 31),
+	.cfg_pp_out_luma_base =		REG_FIELD(SWREG(326), 0, 31),
+	.cfg_pp_out_chroma_base =	REG_FIELD(SWREG(328), 0, 31),
+	.cfg_pp_in_luma_base =		REG_FIELD(SWREG(339), 0, 31),
+	.cfg_pp_in_chroma_base =	REG_FIELD(SWREG(341), 0, 31),
+	.cfg_pp_input_height =		REG_FIELD(SWREG(331), 0, 15),
+	.cfg_pp_input_width =		REG_FIELD(SWREG(331), 16, 31),
+	.cfg_pp_output_height =		REG_FIELD(SWREG(332), 0, 15),
+	.cfg_pp_output_width =		REG_FIELD(SWREG(332), 16, 31),
+	.cfg_pp_crop_starty =		REG_FIELD(SWREG(330), 0, 12),
+	.cfg_pp_rotation_mode =		REG_FIELD(SWREG(330), 13, 14),
+	.cfg_pp_crop_startx =		REG_FIELD(SWREG(330), 16, 28),
+	.cfg_pp_vscale_mode =		REG_FIELD(SWREG(322), 23, 24),
+	.cfg_pp_hscale_mode =		REG_FIELD(SWREG(322), 25, 26),
+	.cfg_pp_scale_wratio =		REG_FIELD(SWREG(323), 0, 17),
+	.cfg_pp_scale_hratio =		REG_FIELD(SWREG(322), 0, 17),
+	.cfg_pp_scale_inv_wratio =	REG_FIELD(SWREG(324), 16, 31),
+	.cfg_pp_scale_inv_hratio =	REG_FIELD(SWREG(324), 0, 15),
+	.cfg_pp_out_c_stride =		REG_FIELD(SWREG(329), 0, 15),
+	.cfg_pp_out_y_stride =		REG_FIELD(SWREG(329), 16, 31),
+	.cfg_pp_in_c_stride =		REG_FIELD(SWREG(337), 0, 15),
+	.cfg_pp_in_y_stride =		REG_FIELD(SWREG(337), 16, 31),
 };
 
 #define INIT_FIELD_CFG(f, codec, conf) ({					\
@@ -246,6 +279,14 @@ static int hantro_regmap_fields_init_dec(struct hantro_dev *vpu,
 	INIT_DEC_FIELD(pp_out_swap32);
 	INIT_DEC_FIELD(pp_out_endian);
 	INIT_DEC_FIELD(pp_out_luma_base);
+	INIT_DEC_FIELD(pp_out_chroma_base);
+	INIT_DEC_FIELD(pp_out_tile_e);
+	INIT_DEC_FIELD(pp_out_c_stride);
+	INIT_DEC_FIELD(pp_out_y_stride);
+	INIT_DEC_FIELD(pp_in_c_stride);
+	INIT_DEC_FIELD(pp_in_y_stride);
+	INIT_DEC_FIELD(pp_in_luma_base);
+	INIT_DEC_FIELD(pp_in_chroma_base);
 	INIT_DEC_FIELD(pp_input_width);
 	INIT_DEC_FIELD(pp_input_height);
 	INIT_DEC_FIELD(pp_output_width);
diff --git a/drivers/staging/media/hantro/hantro_regmap.h b/drivers/staging/media/hantro/hantro_regmap.h
index 8ec0020f40c3..0a39bae83f85 100644
--- a/drivers/staging/media/hantro/hantro_regmap.h
+++ b/drivers/staging/media/hantro/hantro_regmap.h
@@ -65,6 +65,10 @@ struct hantro_regmap_fields_dec {
 	struct regmap_field *pp_out_swap32;
 	struct regmap_field *pp_out_endian;
 	struct regmap_field *pp_out_luma_base;
+	struct regmap_field *pp_out_chroma_base;
+	struct regmap_field *pp_in_luma_base;
+	struct regmap_field *pp_in_chroma_base;
+	struct regmap_field *pp_out_tile_e;
 	struct regmap_field *pp_input_width;
 	struct regmap_field *pp_input_height;
 	struct regmap_field *pp_output_width;
@@ -83,6 +87,10 @@ struct hantro_regmap_fields_dec {
 	struct regmap_field *pp_scale_hratio;
 	struct regmap_field *pp_scale_inv_wratio;
 	struct regmap_field *pp_scale_inv_hratio;
+	struct regmap_field *pp_out_y_stride;
+	struct regmap_field *pp_out_c_stride;
+	struct regmap_field *pp_in_y_stride;
+	struct regmap_field *pp_in_c_stride;
 };
 
 struct hantro_regmap_fields_enc {
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
