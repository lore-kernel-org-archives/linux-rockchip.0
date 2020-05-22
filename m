From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] media: rkvdec: Fix H264 scaling list order
Date: Fri, 22 May 2020 20:21:33 +0000 (UTC)
Message-ID: <20200522202130.13306-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Boris Brezillon <boris.brezillon@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
List-Id: linux-rockchip.vger.kernel.org

The Rockchip Video Decoder driver is expecting that the values in a
scaling list are in zig-zag order and applies the inverse scanning process
to get the values in matrix order.

Commit 0b0393d59eb4 ("media: uapi: h264: clarify expected
scaling_list_4x4/8x8 order") clarified that the values in the scaling list
should already be in matrix order.

Fix this by removing the reordering and change to use two memcpy.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 70 +++++++---------------
 1 file changed, 22 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index cd4980d06be7..2719f0c66a4a 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -18,11 +18,16 @@
 /* Size with u32 units. */
 #define RKV_CABAC_INIT_BUFFER_SIZE	(3680 + 128)
 #define RKV_RPS_SIZE			((128 + 128) / 4)
-#define RKV_SCALING_LIST_SIZE		(6 * 16 + 6 * 64 + 128)
 #define RKV_ERROR_INFO_SIZE		(256 * 144 * 4)
 
 #define RKVDEC_NUM_REFLIST		3
 
+struct rkvdec_scaling_matrix {
+	u8 scaling_list_4x4[6][16];
+	u8 scaling_list_8x8[6][64];
+	u8 padding[128];
+};
+
 struct rkvdec_sps_pps_packet {
 	u32 info[8];
 };
@@ -86,7 +91,7 @@ struct rkvdec_ps_field {
 /* Data structure describing auxiliary buffer format. */
 struct rkvdec_h264_priv_tbl {
 	s8 cabac_table[4][464][2];
-	u8 scaling_list[RKV_SCALING_LIST_SIZE];
+	struct rkvdec_scaling_matrix scaling_list;
 	u32 rps[RKV_RPS_SIZE];
 	struct rkvdec_sps_pps_packet param_set[256];
 	u8 err_info[RKV_ERROR_INFO_SIZE];
@@ -785,56 +790,25 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 	}
 }
 
-/*
- * NOTE: The values in a scaling list are in zig-zag order, apply inverse
- * scanning process to get the values in matrix order.
- */
-static const u32 zig_zag_4x4[16] = {
-	0, 1, 4, 8, 5, 2, 3, 6, 9, 12, 13, 10, 7, 11, 14, 15
-};
-
-static const u32 zig_zag_8x8[64] = {
-	0,  1,  8, 16,  9,  2,  3, 10, 17, 24, 32, 25, 18, 11,  4,  5,
-	12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13,  6,  7, 14, 21, 28,
-	35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51,
-	58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63
-};
-
-static void reorder_scaling_list(struct rkvdec_ctx *ctx,
-				 struct rkvdec_h264_run *run)
+static void assemble_hw_scaling_list(struct rkvdec_ctx *ctx,
+				     struct rkvdec_h264_run *run)
 {
 	const struct v4l2_ctrl_h264_scaling_matrix *scaling = run->scaling_matrix;
-	const size_t num_list_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4);
-	const size_t list_len_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4[0]);
-	const size_t num_list_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8);
-	const size_t list_len_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8[0]);
 	struct rkvdec_h264_ctx *h264_ctx = ctx->priv;
 	struct rkvdec_h264_priv_tbl *tbl = h264_ctx->priv_tbl.cpu;
-	u8 *dst = tbl->scaling_list;
-	const u8 *src;
-	int i, j;
-
-	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_4x4) != list_len_4x4);
-	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_8x8) != list_len_8x8);
-	BUILD_BUG_ON(ARRAY_SIZE(tbl->scaling_list) <
-		     num_list_4x4 * list_len_4x4 +
-		     num_list_8x8 * list_len_8x8);
-
-	src = &scaling->scaling_list_4x4[0][0];
-	for (i = 0; i < num_list_4x4; ++i) {
-		for (j = 0; j < list_len_4x4; ++j)
-			dst[zig_zag_4x4[j]] = src[j];
-		src += list_len_4x4;
-		dst += list_len_4x4;
-	}
 
-	src = &scaling->scaling_list_8x8[0][0];
-	for (i = 0; i < num_list_8x8; ++i) {
-		for (j = 0; j < list_len_8x8; ++j)
-			dst[zig_zag_8x8[j]] = src[j];
-		src += list_len_8x8;
-		dst += list_len_8x8;
-	}
+	BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_4x4) !=
+		     sizeof(scaling->scaling_list_4x4));
+	BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_8x8) !=
+		     sizeof(scaling->scaling_list_8x8));
+
+	memcpy(tbl->scaling_list.scaling_list_4x4,
+	       scaling->scaling_list_4x4,
+	       sizeof(scaling->scaling_list_4x4));
+
+	memcpy(tbl->scaling_list.scaling_list_8x8,
+	       scaling->scaling_list_8x8,
+	       sizeof(scaling->scaling_list_8x8));
 }
 
 /*
@@ -1126,7 +1100,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 	v4l2_h264_build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
 				    h264_ctx->reflists.b1);
 
-	reorder_scaling_list(ctx, &run);
+	assemble_hw_scaling_list(ctx, &run);
 	assemble_hw_pps(ctx, &run);
 	assemble_hw_rps(ctx, &run);
 	config_registers(ctx, &run);
-- 
2.17.1
