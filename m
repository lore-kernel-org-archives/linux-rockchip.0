Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF3AC3DA40
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 15:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3MuoDpIi/LUsdsMrzgnklvcYoKWCYAIopzRIKEag3U=; b=r9oj4A9dqzGqTb
	61FxD9Mr877p4ccEKgYs/XWVvHjuvA+zYavxCrfcYfoT3jpX/WT+vVjQcl39awS5I47XXP/HKi42t
	1jBOx+7gr97U6zaADT38Q/dn6e8FnfIqV52fQjZ93i0VOUVSgUIuLAGoNuFWHEMkEIdGWO+RgKKVo
	BYR24w8j09AJsPEJXbY2QT/+3O15pwIklCc4+X0r2GR6KHWwXkUvwohQ5aj8NuU6CgORZ1ypvq/J3
	Z2OvoAGOLx+C50W61Y3Z0rKbAU+4n3RvW4CMeiRWj/EZ41qn/PfhD3K0b41s/WGiaamrPpX5sWojf
	HTwj/d0W1xZ3sSL0qAJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOih-0000000DkbW-04Fb;
	Thu, 04 Jul 2024 15:50:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOid-0000000DkYw-40pk
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 15:50:01 +0000
Received: from pendragon.ideasonboard.com (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 582A7BC0;
	Thu,  4 Jul 2024 17:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720108169;
	bh=tppGKnwl4+n3zQ0g1VX0SKg1YeHQyOA0Z0fglFmgOuU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f5HCbjq2xCwM8tT0MSGqmnTKflYNJPWpXC29yL/lAK81NWv+2Vdg7eoI0Qkk1i9zJ
	 6vExSZL8mm/94X+nn+r+WTc5fQn/KMFIrgjN3up+yhIKOYwsaJ9MlPyXyplluYwcHC
	 cTu2oux1cjgiDqFv8spMNDFuSjRNn1lPoKIH8aAM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 5/5] media: rkisp1: Add support for the companding block
Date: Thu,  4 Jul 2024 18:49:32 +0300
Message-ID: <20240704154932.6686-6-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
References: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_085000_377197_24569962 
X-CRM114-Status: GOOD (  21.39  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

Add support to the rkisp1 driver for the companding block that exists on
the i.MX8MP version of the ISP. This requires usage of the new
extensible parameters format, and showcases how the format allows for
extensions without breaking backward compatibility.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Refactor rkisp1_compand_write_px_curve()
- Use unsigned int instead of size_t for loop indices
- Hardcode RKISP1_CIF_ISP_COMPAND_NUM_POINTS points
- Rename RKISP1_CIF_ISP_COMPAND_MAX_SAMPLES to
  RKISP1_CIF_ISP_COMPAND_NUM_POINTS
- Add comment to explain why rkisp1_ext_params_compand_curve_config is
  counted twice in RKISP1_EXT_PARAMS_MAX_SIZE
- Fix typo

Changes since v0:

- Drop RKISP1_EXT_PARAM_BUFFER_V2
- Use common structure for compression and expansion curves
- Rename config fields in rkisp1_ext_params_*_config to just config
- Mention block type in structures documentation
- Constify arguments
- Replace __uxx types with uxx
- Use rkisp1_bls_swap_regs() helper in rkisp1_compand_bls_config()
- Use generic feature handling mechanism
---
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 168 ++++++++++++++++++
 include/uapi/linux/rkisp1-config.h            |  89 +++++++++-
 2 files changed, 256 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 20bc6d582527..430d36aedd76 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
  */
 
+#include <linux/math.h>
 #include <linux/string.h>
 
 #include <media/v4l2-common.h>
@@ -57,6 +58,8 @@ union rkisp1_ext_params_config {
 	struct rkisp1_ext_params_hst_config hst;
 	struct rkisp1_ext_params_aec_config aec;
 	struct rkisp1_ext_params_afc_config afc;
+	struct rkisp1_ext_params_compand_bls_config compand_bls;
+	struct rkisp1_ext_params_compand_curve_config compand_curve;
 };
 
 enum rkisp1_params_formats {
@@ -1258,6 +1261,93 @@ rkisp1_dpf_strength_config(struct rkisp1_params *params,
 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPF_STRENGTH_R, arg->r);
 }
 
+static void rkisp1_compand_write_px_curve(struct rkisp1_params *params,
+					  unsigned int addr, const u8 *curve)
+{
+	const unsigned int points_per_reg = 6;
+	const unsigned int num_regs =
+		DIV_ROUND_UP(RKISP1_CIF_ISP_COMPAND_NUM_POINTS,
+			     points_per_reg);
+
+	/*
+	 * The compand curve is specified as a piecewise linear function with
+	 * 64 points. X coordinates are stored as a log2 of the displacement
+	 * from the previous point, in 5 bits, with 6 values per register. The
+	 * last register stores 4 values.
+	 */
+	for (unsigned int reg = 0; reg < num_regs; ++reg) {
+		unsigned int num_points =
+			min(RKISP1_CIF_ISP_COMPAND_NUM_POINTS -
+			    reg * points_per_reg, points_per_reg);
+		u32 val = 0;
+
+		for (unsigned int i = 0; i < num_points; i++)
+			val |= (*curve++ & 0x1f) << (i * 5);
+
+		rkisp1_write(params->rkisp1, addr, val);
+		addr += 4;
+	}
+}
+
+static void
+rkisp1_compand_write_curve_mem(struct rkisp1_params *params,
+			       unsigned int reg_addr, unsigned int reg_data,
+			       const u32 curve[RKISP1_CIF_ISP_COMPAND_NUM_POINTS])
+{
+	for (unsigned int i = 0; i < RKISP1_CIF_ISP_COMPAND_NUM_POINTS; i++) {
+		rkisp1_write(params->rkisp1, reg_addr, i);
+		rkisp1_write(params->rkisp1, reg_data, curve[i]);
+	}
+}
+
+static void
+rkisp1_compand_bls_config(struct rkisp1_params *params,
+			  const struct rkisp1_cif_isp_compand_bls_config *arg)
+{
+	static const u32 regs[] = {
+		RKISP1_CIF_ISP_COMPAND_BLS_A_FIXED,
+		RKISP1_CIF_ISP_COMPAND_BLS_B_FIXED,
+		RKISP1_CIF_ISP_COMPAND_BLS_C_FIXED,
+		RKISP1_CIF_ISP_COMPAND_BLS_D_FIXED,
+	};
+	u32 swapped[4];
+
+	rkisp1_bls_swap_regs(params->raw_type, regs, swapped);
+
+	rkisp1_write(params->rkisp1, swapped[0], arg->r);
+	rkisp1_write(params->rkisp1, swapped[1], arg->gr);
+	rkisp1_write(params->rkisp1, swapped[2], arg->gb);
+	rkisp1_write(params->rkisp1, swapped[3], arg->b);
+}
+
+static void
+rkisp1_compand_expand_config(struct rkisp1_params *params,
+			     const struct rkisp1_cif_isp_compand_curve_config *arg)
+{
+	rkisp1_compand_write_px_curve(params, RKISP1_CIF_ISP_COMPAND_EXPAND_PX_N(0),
+				      arg->px);
+	rkisp1_compand_write_curve_mem(params, RKISP1_CIF_ISP_COMPAND_EXPAND_Y_ADDR,
+				       RKISP1_CIF_ISP_COMPAND_EXPAND_Y_WRITE_DATA,
+				       arg->y);
+	rkisp1_compand_write_curve_mem(params, RKISP1_CIF_ISP_COMPAND_EXPAND_X_ADDR,
+				       RKISP1_CIF_ISP_COMPAND_EXPAND_X_WRITE_DATA,
+				       arg->x);
+}
+
+static void
+rkisp1_compand_compress_config(struct rkisp1_params *params,
+			       const struct rkisp1_cif_isp_compand_curve_config *arg)
+{
+	rkisp1_compand_write_px_curve(params, RKISP1_CIF_ISP_COMPAND_COMPRESS_PX_N(0),
+				      arg->px);
+	rkisp1_compand_write_curve_mem(params, RKISP1_CIF_ISP_COMPAND_COMPRESS_Y_ADDR,
+				       RKISP1_CIF_ISP_COMPAND_COMPRESS_Y_WRITE_DATA,
+				       arg->y);
+	rkisp1_compand_write_curve_mem(params, RKISP1_CIF_ISP_COMPAND_COMPRESS_X_ADDR,
+				       RKISP1_CIF_ISP_COMPAND_COMPRESS_X_WRITE_DATA,
+				       arg->x);
+}
+
 static void
 rkisp1_isp_isr_other_config(struct rkisp1_params *params,
 			    const struct rkisp1_params_cfg *new_params)
@@ -1844,6 +1934,66 @@ rkisp1_ext_params_afcm(struct rkisp1_params *params,
 				      RKISP1_CIF_ISP_AFM_ENA);
 }
 
+static void rkisp1_ext_params_compand_bls(struct rkisp1_params *params,
+					  const union rkisp1_ext_params_config *block)
+{
+	const struct rkisp1_ext_params_compand_bls_config *bls =
+		&block->compand_bls;
+
+	if (bls->header.enable == RKISP1_EXT_PARAMS_BLOCK_DISABLE) {
+		rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_COMPAND_CTRL,
+					RKISP1_CIF_ISP_COMPAND_CTRL_BLS_ENABLE);
+		return;
+	}
+
+	rkisp1_compand_bls_config(params, &bls->config);
+
+	if (!(params->enabled_blocks &
+	      BIT(RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_BLS)))
+		rkisp1_param_set_bits(params, RKISP1_CIF_ISP_COMPAND_CTRL,
+				      RKISP1_CIF_ISP_COMPAND_CTRL_BLS_ENABLE);
+}
+
+static void rkisp1_ext_params_compand_expand(struct rkisp1_params *params,
+					     const union rkisp1_ext_params_config *block)
+{
+	const struct rkisp1_ext_params_compand_curve_config *curve =
+		&block->compand_curve;
+
+	if (curve->header.enable == RKISP1_EXT_PARAMS_BLOCK_DISABLE) {
+		rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_COMPAND_CTRL,
+					RKISP1_CIF_ISP_COMPAND_CTRL_EXPAND_ENABLE);
+		return;
+	}
+
+	rkisp1_compand_expand_config(params, &curve->config);
+
+	if (!(params->enabled_blocks &
+	      BIT(RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_EXPAND)))
+		rkisp1_param_set_bits(params, RKISP1_CIF_ISP_COMPAND_CTRL,
+				      RKISP1_CIF_ISP_COMPAND_CTRL_EXPAND_ENABLE);
+}
+
+static void rkisp1_ext_params_compand_compress(struct rkisp1_params *params,
+					       const union rkisp1_ext_params_config *block)
+{
+	const struct rkisp1_ext_params_compand_curve_config *curve =
+		&block->compand_curve;
+
+	if (curve->header.enable == RKISP1_EXT_PARAMS_BLOCK_DISABLE) {
+		rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_COMPAND_CTRL,
+					RKISP1_CIF_ISP_COMPAND_CTRL_COMPRESS_ENABLE);
+		return;
+	}
+
+	rkisp1_compand_compress_config(params, &curve->config);
+
+	if (!(params->enabled_blocks &
+	      BIT(RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_COMPRESS)))
+		rkisp1_param_set_bits(params, RKISP1_CIF_ISP_COMPAND_CTRL,
+				      RKISP1_CIF_ISP_COMPAND_CTRL_COMPRESS_ENABLE);
+}
+
 typedef void (*rkisp1_block_handler)(struct rkisp1_params *params,
 			     const union rkisp1_ext_params_config *config);
 
@@ -1939,6 +2089,24 @@ static const struct rkisp1_ext_params_handler {
 		.handler	= rkisp1_ext_params_afcm,
 		.group		= RKISP1_EXT_PARAMS_BLOCK_GROUP_OTHERS,
 	},
+	[RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_BLS] = {
+		.size		= sizeof(struct rkisp1_ext_params_compand_bls_config),
+		.handler	= rkisp1_ext_params_compand_bls,
+		.group		= RKISP1_EXT_PARAMS_BLOCK_GROUP_OTHERS,
+		.features	= RKISP1_FEATURE_COMPAND,
+	},
+	[RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_EXPAND] = {
+		.size		= sizeof(struct rkisp1_ext_params_compand_curve_config),
+		.handler	= rkisp1_ext_params_compand_expand,
+		.group		= RKISP1_EXT_PARAMS_BLOCK_GROUP_OTHERS,
+		.features	= RKISP1_FEATURE_COMPAND,
+	},
+	[RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_COMPRESS] = {
+		.size		= sizeof(struct rkisp1_ext_params_compand_curve_config),
+		.handler	= rkisp1_ext_params_compand_compress,
+		.group		= RKISP1_EXT_PARAMS_BLOCK_GROUP_OTHERS,
+		.features	= RKISP1_FEATURE_COMPAND,
+	},
 };
 
 static void rkisp1_ext_params_config(struct rkisp1_params *params,
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 00b09c92cca7..c645db36f2f6 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -164,6 +164,11 @@
 #define RKISP1_CIF_ISP_DPF_MAX_NLF_COEFFS      17
 #define RKISP1_CIF_ISP_DPF_MAX_SPATIAL_COEFFS  6
 
+/*
+ * Compand
+ */
+#define RKISP1_CIF_ISP_COMPAND_NUM_POINTS	64
+
 /*
  * Measurement types
  */
@@ -851,6 +856,39 @@ struct rkisp1_params_cfg {
 	struct rkisp1_cif_isp_isp_other_cfg others;
 };
 
+/**
+ * struct rkisp1_cif_isp_compand_bls_config - Rockchip ISP1 Companding parameters (BLS)
+ * @r: Fixed subtraction value for Bayer pattern R
+ * @gr: Fixed subtraction value for Bayer pattern Gr
+ * @gb: Fixed subtraction value for Bayer pattern Gb
+ * @b: Fixed subtraction value for Bayer pattern B
+ *
+ * The values will be subtracted from the sensor values. Note that unlike the
+ * dedicated BLS block, the BLS values in the compander are 20-bit unsigned.
+ */
+struct rkisp1_cif_isp_compand_bls_config {
+	__u32 r;
+	__u32 gr;
+	__u32 gb;
+	__u32 b;
+};
+
+/**
+ * struct rkisp1_cif_isp_compand_curve_config - Rockchip ISP1 Companding
+ * parameters (expand and compression curves)
+ * @px: Compand curve x-values. Each value stores the distance from the
+ *      previous x-value, expressed as log2 of the distance on 5 bits.
+ * @x: Compand curve x-values. The functionality of these parameters are
+ *     unknown due to do a lack of hardware documentation, but these are left
+ *     here for future compatibility purposes.
+ * @y: Compand curve y-values
+ */
+struct rkisp1_cif_isp_compand_curve_config {
+	__u8 px[RKISP1_CIF_ISP_COMPAND_NUM_POINTS];
+	__u32 x[RKISP1_CIF_ISP_COMPAND_NUM_POINTS];
+	__u32 y[RKISP1_CIF_ISP_COMPAND_NUM_POINTS];
+};
+
 /*---------- PART2: Measurement Statistics ------------*/
 
 /**
@@ -1018,6 +1056,9 @@ struct rkisp1_stat_buffer {
  * @RKISP1_EXT_PARAMS_BLOCK_TYPE_HST_MEAS: Histogram statistics
  * @RKISP1_EXT_PARAMS_BLOCK_TYPE_AEC_MEAS: Auto exposure statistics
  * @RKISP1_EXT_PARAMS_BLOCK_TYPE_AFC_MEAS: Auto-focus statistics
+ * @RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_BLS: BLS in the compand block
+ * @RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_EXPAND: Companding expand curve
+ * @RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_COMPRESS: Companding compress curve
  */
 enum rkisp1_ext_params_block_type {
 	RKISP1_EXT_PARAMS_BLOCK_TYPE_BLS,
@@ -1037,6 +1078,9 @@ enum rkisp1_ext_params_block_type {
 	RKISP1_EXT_PARAMS_BLOCK_TYPE_HST_MEAS,
 	RKISP1_EXT_PARAMS_BLOCK_TYPE_AEC_MEAS,
 	RKISP1_EXT_PARAMS_BLOCK_TYPE_AFC_MEAS,
+	RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_BLS,
+	RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_EXPAND,
+	RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_COMPRESS,
 };
 
 /**
@@ -1384,6 +1428,46 @@ struct rkisp1_ext_params_afc_config {
 	struct rkisp1_cif_isp_afc_config config;
 } __attribute__((aligned(8)));
 
+/**
+ * struct rkisp1_ext_params_compand_bls_config - RkISP1 extensible params
+ * Compand BLS config
+ *
+ * RkISP1 extensible parameters Companding configuration block (black level
+ * subtraction). Identified by :c:type:`RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_BLS`.
+ *
+ * @header: The RkISP1 extensible parameters header, see
+ *	    :c:type:`rkisp1_ext_params_block_header`
+ * @config: Companding BLS configuration, see
+ *	    :c:type:`rkisp1_cif_isp_compand_bls_config`
+ */
+struct rkisp1_ext_params_compand_bls_config {
+	struct rkisp1_ext_params_block_header header;
+	struct rkisp1_cif_isp_compand_bls_config config;
+} __attribute__((aligned(8)));
+
+/**
+ * struct rkisp1_ext_params_compand_curve_config - RkISP1 extensible params
+ * Compand curve config
+ *
+ * RkISP1 extensible parameters Companding configuration block (expand and
+ * compression curves). Identified by
+ * :c:type:`RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_EXPAND`or
+ * :c:type:`RKISP1_EXT_PARAMS_BLOCK_TYPE_COMPAND_COMPRESS`.
+ *
+ * @header: The RkISP1 extensible parameters header, see
+ *	    :c:type:`rkisp1_ext_params_block_header`
+ * @config: Companding curve configuration, see
+ *	    :c:type:`rkisp1_cif_isp_compand_curve_config`
+ */
+struct rkisp1_ext_params_compand_curve_config {
+	struct rkisp1_ext_params_block_header header;
+	struct rkisp1_cif_isp_compand_curve_config config;
+} __attribute__((aligned(8)));
+
+/*
+ * The rkisp1_ext_params_compand_curve_config structure is counted twice as it
+ * is used for both the COMPAND_EXPAND and COMPAND_COMPRESS block types.
+ */
 #define RKISP1_EXT_PARAMS_MAX_SIZE					\
 	(sizeof(struct rkisp1_ext_params_bls_config)			+\
 	sizeof(struct rkisp1_ext_params_dpcc_config)			+\
@@ -1401,7 +1485,10 @@ struct rkisp1_ext_params_afc_config {
 	sizeof(struct rkisp1_ext_params_awb_meas_config)		+\
 	sizeof(struct rkisp1_ext_params_hst_config)			+\
 	sizeof(struct rkisp1_ext_params_aec_config)			+\
-	sizeof(struct rkisp1_ext_params_afc_config))
+	sizeof(struct rkisp1_ext_params_afc_config)			+\
+	sizeof(struct rkisp1_ext_params_compand_bls_config)		+\
+	sizeof(struct rkisp1_ext_params_compand_curve_config)		+\
+	sizeof(struct rkisp1_ext_params_compand_curve_config))
 
 /**
  * enum rksip1_ext_param_buffer_version - RkISP1 extensible parameters version
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
