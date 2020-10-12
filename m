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
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A3C433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3107B2076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YZTxINlA";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="SJbkVkui"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3107B2076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HdjdR6+Y8a8d1XIJ54tucnSg9B8wiDAKKIn3n5BWqBw=; b=YZTxINlAdsaEUTijzV6alrT5B
	S1kMgm+A4xh0f2MdaBH5HinBwl/LzHAvHSMwvUdWQW+lXJTWZLAdAR/BDvWEqcUueGchwCVzzG4sT
	zo4+hhtLTvhz6dQvAfVGK0jX86tO4jIaOvxMyZvg0d3cx+8G099D5IT8/5mT5+CxDV9XKPSBrOzNa
	OdEWohmYLElJezf8ZyKX5XqRTJD4OGrGZmmjo1PEhxKzxQ+5AU2hOpSL4riwwX7w9QezxMSPMtF8P
	3d7D5Jo2g595Bg8hhDM9I/dYz3AbFZw8pZE5me0GWofeZEVGKzgOxvhr0wo2BRlfTNVyvWQ+FpE3J
	2SxXITWjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5F7-00086x-NG; Mon, 12 Oct 2020 21:20:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F5-00083L-Ld
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=PzLuTIQLb4lWkhE6OdkyKasmB+gxGeZiljTYltuFYso=; b=SJbkVkuiB1pFzl2ycqVf+6cIg3
 F2js50faWrqNE9zmtQikWZKzhUEA2sLLl9ufxBcERn0tF4uLwz1NUsZXw5O5jr1YK1SUqpLoyihZw
 svlEdxxg5BM9vDlwJOhgzAknLf+leN/7gmFl1NCqhByrqW0rpTb3HQqNc/0P526bOdnGBTi0smR2t
 Mt2dM7L/C6gkf9KulURMzt/gczaQ309rL3WDlP1jBZq2e3t7vJZQ5QBbYBHCr+vDT8E67DsJXOAVJ
 pRqcX/OsnUVFaiYf1lxaeRea2jR9lSOqdpmjdoeNefXCSydzuQV8zfeOwSICr73P4fSPKILgnPVMG
 P2bEGPmA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uO-0004ki-03
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 5BC341F44C49
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 11/18] media: hantro: convert G1 postproc to regmap
Date: Mon, 12 Oct 2020 23:59:50 +0300
Message-Id: <20201012205957.889185-12-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215904_724594_D73663C7 
X-CRM114-Status: GOOD (  18.03  )
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

Postprocessing used the custom hantro_reg structure but now we have
regmap fields which are used for reg layouts which do the same thing,
so PP can be moved to regmap. In the future all hantro_reg references
can be removed, this is just a beginnig.

This converts only the existing G1 PP support, but the fields can be
used for other core revisions like VC8000D which will be added shortly.

While we're at it also document a few more important PP registers for
eg scaling, cropping and rotation.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h         | 19 -----
 drivers/staging/media/hantro/hantro_hw.h      |  2 -
 .../staging/media/hantro/hantro_postproc.c    | 72 +++++-------------
 drivers/staging/media/hantro/hantro_regmap.c  | 75 +++++++++++++++++++
 drivers/staging/media/hantro/hantro_regmap.h  | 26 +++++++
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  1 -
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  1 -
 7 files changed, 119 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 5b7fbdc3779d..2d507f8d3a1d 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -71,7 +71,6 @@ struct hantro_irq {
  * @num_clocks:			number of clocks in the array
  * @reg_names:			array of register range names
  * @num_regs:			number of register range names in the array
- * @postproc_regs:		&struct hantro_postproc_regs pointer
  */
 struct hantro_variant {
 	unsigned int enc_offset;
@@ -92,7 +91,6 @@ struct hantro_variant {
 	int num_clocks;
 	const char * const *reg_names;
 	int num_regs;
-	const struct hantro_postproc_regs *postproc_regs;
 };
 
 /**
@@ -283,23 +281,6 @@ struct hantro_reg {
 	u32 mask;
 };
 
-struct hantro_postproc_regs {
-	struct hantro_reg pipeline_en;
-	struct hantro_reg max_burst;
-	struct hantro_reg clk_gate;
-	struct hantro_reg out_swap32;
-	struct hantro_reg out_endian;
-	struct hantro_reg out_luma_base;
-	struct hantro_reg input_width;
-	struct hantro_reg input_height;
-	struct hantro_reg output_width;
-	struct hantro_reg output_height;
-	struct hantro_reg input_fmt;
-	struct hantro_reg output_fmt;
-	struct hantro_reg orig_width;
-	struct hantro_reg display_width;
-};
-
 /* Logging helpers */
 
 /**
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 219283a06f52..e0039a15fe85 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -155,8 +155,6 @@ extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
 
-extern const struct hantro_postproc_regs hantro_g1_postproc_regs;
-
 extern const u32 hantro_vp8_dec_mc_filter[8][6];
 
 void hantro_watchdog(struct work_struct *work);
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 6d2a8f2a8f0b..6d1705a60d36 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -11,20 +11,7 @@
 #include "hantro.h"
 #include "hantro_hw.h"
 #include "hantro_g1_regs.h"
-
-#define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
-{ \
-	hantro_reg_write(vpu, \
-			 &(vpu)->variant->postproc_regs->reg_name, \
-			 val); \
-}
-
-#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
-{ \
-	hantro_reg_write_s(vpu, \
-			   &(vpu)->variant->postproc_regs->reg_name, \
-			   val); \
-}
+#include "hantro_regmap.h"
 
 #define VPU_PP_IN_YUYV			0x0
 #define VPU_PP_IN_NV12			0x1
@@ -33,35 +20,15 @@
 #define VPU_PP_OUT_RGB			0x0
 #define VPU_PP_OUT_YUYV			0x3
 
-const struct hantro_postproc_regs hantro_g1_postproc_regs = {
-	.pipeline_en = {G1_REG_PP_INTERRUPT, 1, 0x1},
-	.max_burst = {G1_REG_PP_DEV_CONFIG, 0, 0x1f},
-	.clk_gate = {G1_REG_PP_DEV_CONFIG, 1, 0x1},
-	.out_swap32 = {G1_REG_PP_DEV_CONFIG, 5, 0x1},
-	.out_endian = {G1_REG_PP_DEV_CONFIG, 6, 0x1},
-	.out_luma_base = {G1_REG_PP_OUT_LUMA_BASE, 0, 0xffffffff},
-	.input_width = {G1_REG_PP_INPUT_SIZE, 0, 0x1ff},
-	.input_height = {G1_REG_PP_INPUT_SIZE, 9, 0x1ff},
-	.output_width = {G1_REG_PP_CONTROL, 4, 0x7ff},
-	.output_height = {G1_REG_PP_CONTROL, 15, 0x7ff},
-	.input_fmt = {G1_REG_PP_CONTROL, 29, 0x7},
-	.output_fmt = {G1_REG_PP_CONTROL, 26, 0x7},
-	.orig_width = {G1_REG_PP_MASK1_ORIG_WIDTH, 23, 0x1ff},
-	.display_width = {G1_REG_PP_DISPLAY_WIDTH, 0, 0xfff},
-};
-
 void hantro_postproc_enable(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
+	struct hantro_regmap_fields_dec *fields = ctx->dev->reg_fields_dec;
 	struct vb2_v4l2_buffer *dst_buf;
 	u32 src_pp_fmt, dst_pp_fmt;
 	dma_addr_t dst_dma;
 
-	if (!vpu->variant->postproc_regs)
-		return;
-
 	/* Turn on pipeline mode. Must be done first. */
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
+	regmap_field_write(fields->pp_pipeline_en, 1);
 
 	src_pp_fmt = VPU_PP_IN_NV12;
 
@@ -79,19 +46,19 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
-	HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
-	HANTRO_PP_REG_WRITE(vpu, out_luma_base, dst_dma);
-	HANTRO_PP_REG_WRITE(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
-	HANTRO_PP_REG_WRITE(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
-	HANTRO_PP_REG_WRITE(vpu, input_fmt, src_pp_fmt);
-	HANTRO_PP_REG_WRITE(vpu, output_fmt, dst_pp_fmt);
-	HANTRO_PP_REG_WRITE(vpu, output_width, ctx->dst_fmt.width);
-	HANTRO_PP_REG_WRITE(vpu, output_height, ctx->dst_fmt.height);
-	HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
-	HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
+	regmap_field_write(fields->pp_clk_gate, 1);
+	regmap_field_write(fields->pp_out_endian, 1);
+	regmap_field_write(fields->pp_out_swap32, 1);
+	regmap_field_write(fields->pp_max_burst, 16);
+	regmap_field_write(fields->pp_out_luma_base, dst_dma);
+	regmap_field_write(fields->pp_input_width, MB_WIDTH(ctx->dst_fmt.width));
+	regmap_field_write(fields->pp_input_height, MB_HEIGHT(ctx->dst_fmt.height));
+	regmap_field_write(fields->pp_input_fmt, src_pp_fmt);
+	regmap_field_write(fields->pp_output_fmt, dst_pp_fmt);
+	regmap_field_write(fields->pp_output_width, ctx->dst_fmt.width);
+	regmap_field_write(fields->pp_output_height, ctx->dst_fmt.height);
+	regmap_field_write(fields->pp_orig_width, MB_WIDTH(ctx->dst_fmt.width));
+	regmap_field_write(fields->pp_display_width, ctx->dst_fmt.width);
 }
 
 void hantro_postproc_free(struct hantro_ctx *ctx)
@@ -141,10 +108,7 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 
 void hantro_postproc_disable(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
-
-	if (!vpu->variant->postproc_regs)
-		return;
+	struct hantro_regmap_fields_dec *fields = ctx->dev->reg_fields_dec;
 
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x0);
+	regmap_field_write(fields->pp_pipeline_en, 0);
 }
diff --git a/drivers/staging/media/hantro/hantro_regmap.c b/drivers/staging/media/hantro/hantro_regmap.c
index fbc39abedc7d..c0344b0ec8de 100644
--- a/drivers/staging/media/hantro/hantro_regmap.c
+++ b/drivers/staging/media/hantro/hantro_regmap.c
@@ -54,6 +54,31 @@ struct hantro_field_dec {
 	struct reg_field cfg_dec_addr_dir_mv;
 	struct reg_field cfg_dec_tiled_mode_lsb;
 	struct reg_field cfg_dec_clk_gate_e;
+
+	struct reg_field cfg_pp_pipeline_en;
+	struct reg_field cfg_pp_max_burst;
+	struct reg_field cfg_pp_clk_gate;
+	struct reg_field cfg_pp_out_swap32;
+	struct reg_field cfg_pp_out_endian;
+	struct reg_field cfg_pp_out_luma_base;
+	struct reg_field cfg_pp_input_width;
+	struct reg_field cfg_pp_input_height;
+	struct reg_field cfg_pp_output_width;
+	struct reg_field cfg_pp_output_height;
+	struct reg_field cfg_pp_input_fmt;
+	struct reg_field cfg_pp_output_fmt;
+	struct reg_field cfg_pp_orig_width;
+	struct reg_field cfg_pp_display_width;
+	struct reg_field cfg_pp_crop_startx;
+	struct reg_field cfg_pp_crop_starty;
+	struct reg_field cfg_pp_rotation_mode;
+	struct reg_field cfg_pp_fast_scale_e;
+	struct reg_field cfg_pp_vscale_mode;
+	struct reg_field cfg_pp_hscale_mode;
+	struct reg_field cfg_pp_scale_wratio;
+	struct reg_field cfg_pp_scale_hratio;
+	struct reg_field cfg_pp_scale_inv_wratio;
+	struct reg_field cfg_pp_scale_inv_hratio;
 };
 
 struct hantro_field_enc {
@@ -81,6 +106,30 @@ static const struct hantro_field_dec g1_field = {
 	.cfg_dec_ilace_mode =		REG_FIELD(SWREG(13), 1, 1),
 	.cfg_dec_addr_qtable =		REG_FIELD(SWREG(40), 0, 31),
 	.cfg_dec_addr_dir_mv =		REG_FIELD(SWREG(41), 0, 31),
+	.cfg_pp_pipeline_en =		REG_FIELD(SWREG(60), 1, 1),
+	.cfg_pp_max_burst =		REG_FIELD(SWREG(61), 0, 4),
+	.cfg_pp_out_swap32 =		REG_FIELD(SWREG(61), 5, 5),
+	.cfg_pp_out_endian =		REG_FIELD(SWREG(61), 6, 6),
+	.cfg_pp_clk_gate =		REG_FIELD(SWREG(61), 8, 8),
+	.cfg_pp_out_luma_base =		REG_FIELD(SWREG(66), 0, 31),
+	.cfg_pp_input_width =		REG_FIELD(SWREG(72), 0, 8),
+	.cfg_pp_input_height =		REG_FIELD(SWREG(72), 9, 16),
+	.cfg_pp_output_width =		REG_FIELD(SWREG(85), 4, 14),
+	.cfg_pp_output_height =		REG_FIELD(SWREG(85), 15, 25),
+	.cfg_pp_output_fmt =		REG_FIELD(SWREG(85), 26, 28),
+	.cfg_pp_input_fmt =		REG_FIELD(SWREG(85), 29, 31),
+	.cfg_pp_orig_width =		REG_FIELD(SWREG(88), 23, 31),
+	.cfg_pp_display_width =		REG_FIELD(SWREG(92), 0, 12),
+	.cfg_pp_crop_startx =		REG_FIELD(SWREG(71), 21, 29),
+	.cfg_pp_crop_starty =		REG_FIELD(SWREG(72), 24, 31),
+	.cfg_pp_rotation_mode =		REG_FIELD(SWREG(71), 18, 20),
+	.cfg_pp_fast_scale_e =		REG_FIELD(SWREG(80), 30, 30),
+	.cfg_pp_vscale_mode =		REG_FIELD(SWREG(80), 23, 24),
+	.cfg_pp_hscale_mode =		REG_FIELD(SWREG(80), 25, 26),
+	.cfg_pp_scale_wratio =		REG_FIELD(SWREG(79), 0, 17),
+	.cfg_pp_scale_hratio =		REG_FIELD(SWREG(80), 0, 17),
+	.cfg_pp_scale_inv_wratio =	REG_FIELD(SWREG(81), 16, 31),
+	.cfg_pp_scale_inv_hratio =	REG_FIELD(SWREG(81), 0, 15),
 };
 
 #define INIT_FIELD_CFG(f, codec, conf) ({					\
@@ -125,6 +174,32 @@ static int hantro_regmap_fields_init_dec(struct hantro_dev *vpu,
 	INIT_DEC_FIELD(dec_tiled_mode_lsb);
 	INIT_DEC_FIELD(dec_clk_gate_e);
 
+	/* Post-processor */
+	INIT_DEC_FIELD(pp_pipeline_en);
+	INIT_DEC_FIELD(pp_max_burst);
+	INIT_DEC_FIELD(pp_clk_gate);
+	INIT_DEC_FIELD(pp_out_swap32);
+	INIT_DEC_FIELD(pp_out_endian);
+	INIT_DEC_FIELD(pp_out_luma_base);
+	INIT_DEC_FIELD(pp_input_width);
+	INIT_DEC_FIELD(pp_input_height);
+	INIT_DEC_FIELD(pp_output_width);
+	INIT_DEC_FIELD(pp_output_height);
+	INIT_DEC_FIELD(pp_input_fmt);
+	INIT_DEC_FIELD(pp_output_fmt);
+	INIT_DEC_FIELD(pp_orig_width);
+	INIT_DEC_FIELD(pp_display_width);
+	INIT_DEC_FIELD(pp_crop_startx);
+	INIT_DEC_FIELD(pp_crop_starty);
+	INIT_DEC_FIELD(pp_rotation_mode);
+	INIT_DEC_FIELD(pp_fast_scale_e);
+	INIT_DEC_FIELD(pp_vscale_mode);
+	INIT_DEC_FIELD(pp_hscale_mode);
+	INIT_DEC_FIELD(pp_scale_wratio);
+	INIT_DEC_FIELD(pp_scale_hratio);
+	INIT_DEC_FIELD(pp_scale_inv_wratio);
+	INIT_DEC_FIELD(pp_scale_inv_hratio);
+
 	return 0;
 }
 
diff --git a/drivers/staging/media/hantro/hantro_regmap.h b/drivers/staging/media/hantro/hantro_regmap.h
index e94fdc055784..1e6e3b2478ae 100644
--- a/drivers/staging/media/hantro/hantro_regmap.h
+++ b/drivers/staging/media/hantro/hantro_regmap.h
@@ -35,6 +35,32 @@ struct hantro_regmap_fields_dec {
 	struct regmap_field *dec_addr_dir_mv;
 	struct regmap_field *dec_tiled_mode_lsb;
 	struct regmap_field *dec_clk_gate_e;
+
+	/* Post-processor */
+	struct regmap_field *pp_pipeline_en;
+	struct regmap_field *pp_max_burst;
+	struct regmap_field *pp_clk_gate;
+	struct regmap_field *pp_out_swap32;
+	struct regmap_field *pp_out_endian;
+	struct regmap_field *pp_out_luma_base;
+	struct regmap_field *pp_input_width;
+	struct regmap_field *pp_input_height;
+	struct regmap_field *pp_output_width;
+	struct regmap_field *pp_output_height;
+	struct regmap_field *pp_input_fmt;
+	struct regmap_field *pp_output_fmt;
+	struct regmap_field *pp_orig_width;
+	struct regmap_field *pp_display_width;
+	struct regmap_field *pp_crop_startx;
+	struct regmap_field *pp_crop_starty;
+	struct regmap_field *pp_rotation_mode;
+	struct regmap_field *pp_fast_scale_e;
+	struct regmap_field *pp_vscale_mode;
+	struct regmap_field *pp_hscale_mode;
+	struct regmap_field *pp_scale_wratio;
+	struct regmap_field *pp_scale_hratio;
+	struct regmap_field *pp_scale_inv_wratio;
+	struct regmap_field *pp_scale_inv_hratio;
 };
 
 struct hantro_regmap_fields_enc {
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index b2a401a33992..20394a568f65 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -179,7 +179,6 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
 	.postproc_fmts = imx8m_vpu_postproc_fmts,
 	.num_postproc_fmts = ARRAY_SIZE(imx8m_vpu_postproc_fmts),
-	.postproc_regs = &hantro_g1_postproc_regs,
 	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
 		 HANTRO_H264_DECODER,
 	.codec_ops = imx8mq_vpu_codec_ops,
diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 4ad578b1236e..48dea5756098 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -226,7 +226,6 @@ const struct hantro_variant rk3288_vpu_variant = {
 	.num_dec_fmts = ARRAY_SIZE(rk3288_vpu_dec_fmts),
 	.postproc_fmts = rk3288_vpu_postproc_fmts,
 	.num_postproc_fmts = ARRAY_SIZE(rk3288_vpu_postproc_fmts),
-	.postproc_regs = &hantro_g1_postproc_regs,
 	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
 		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
 	.codec_ops = rk3288_vpu_codec_ops,
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
