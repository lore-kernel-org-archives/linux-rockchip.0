From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 2/4] media: staging: rkisp1: set "*_data_tbl" fields in rkisp1_cif_isp_lsc_config as 2D arries
Date: Thu, 25 Jun 2020 20:50:15 +0200
Message-ID: <20200625185017.16493-3-dafna.hirschfeld@collabora.com>
References: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Currently the fields '*_data_tbl' in the struct
'rkisp1_cif_isp_lsc_config' are one dimensional arries
of size 290. The entries are accessed in a nested
loop by summing two indexes for the rows and columns.
Therefore it fits better to define the arries as two
dimensional arries of size 17x17.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c  | 30 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-regs.h    |  1 -
 .../staging/media/rkisp1/uapi/rkisp1-config.h | 11 ++++---
 3 files changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 5169b02731f1..5be57426d940 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -206,47 +206,45 @@ rkisp1_lsc_correct_matrix_config(struct rkisp1_params *params,
 		     RKISP1_CIF_ISP_LSC_B_TABLE_ADDR);
 
 	/* program data tables (table size is 9 * 17 = 153) */
-	for (i = 0;
-	     i < RKISP1_CIF_ISP_LSC_SECTORS_MAX * RKISP1_CIF_ISP_LSC_SECTORS_MAX;
-	     i += RKISP1_CIF_ISP_LSC_SECTORS_MAX) {
+	for (i = 0; i < RKISP1_CIF_ISP_LSC_SAMPLES_MAX; i++) {
 		/*
 		 * 17 sectors with 2 values in one DWORD = 9
 		 * DWORDs (2nd value of last DWORD unused)
 		 */
-		for (j = 0; j < RKISP1_CIF_ISP_LSC_SECTORS_MAX - 1; j += 2) {
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->r_data_tbl[i + j],
-							     pconfig->r_data_tbl[i + j + 1]);
+		for (j = 0; j < RKISP1_CIF_ISP_LSC_SAMPLES_MAX - 1; j += 2) {
+			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->r_data_tbl[i][j],
+							     pconfig->r_data_tbl[i][j + 1]);
 			rkisp1_write(params->rkisp1, data,
 				     RKISP1_CIF_ISP_LSC_R_TABLE_DATA);
 
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gr_data_tbl[i + j],
-							     pconfig->gr_data_tbl[i + j + 1]);
+			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gr_data_tbl[i][j],
+							     pconfig->gr_data_tbl[i][j + 1]);
 			rkisp1_write(params->rkisp1, data,
 				     RKISP1_CIF_ISP_LSC_GR_TABLE_DATA);
 
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gb_data_tbl[i + j],
-							     pconfig->gb_data_tbl[i + j + 1]);
+			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gb_data_tbl[i][j],
+							     pconfig->gb_data_tbl[i][j + 1]);
 			rkisp1_write(params->rkisp1, data,
 				     RKISP1_CIF_ISP_LSC_GB_TABLE_DATA);
 
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->b_data_tbl[i + j],
-							     pconfig->b_data_tbl[i + j + 1]);
+			data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->b_data_tbl[i][j],
+							     pconfig->b_data_tbl[i][j + 1]);
 			rkisp1_write(params->rkisp1, data,
 				     RKISP1_CIF_ISP_LSC_B_TABLE_DATA);
 		}
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->r_data_tbl[i + j], 0);
+		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->r_data_tbl[i][j], 0);
 		rkisp1_write(params->rkisp1, data,
 			     RKISP1_CIF_ISP_LSC_R_TABLE_DATA);
 
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gr_data_tbl[i + j], 0);
+		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gr_data_tbl[i][j], 0);
 		rkisp1_write(params->rkisp1, data,
 			     RKISP1_CIF_ISP_LSC_GR_TABLE_DATA);
 
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gb_data_tbl[i + j], 0);
+		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->gb_data_tbl[i][j], 0);
 		rkisp1_write(params->rkisp1, data,
 			     RKISP1_CIF_ISP_LSC_GB_TABLE_DATA);
 
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->b_data_tbl[i + j], 0);
+		data = RKISP1_CIF_ISP_LSC_TABLE_DATA(pconfig->b_data_tbl[i][j], 0);
 		rkisp1_write(params->rkisp1, data,
 			     RKISP1_CIF_ISP_LSC_B_TABLE_DATA);
 	}
diff --git a/drivers/staging/media/rkisp1/rkisp1-regs.h b/drivers/staging/media/rkisp1/rkisp1-regs.h
index 46018f435b6f..6667147149be 100644
--- a/drivers/staging/media/rkisp1/rkisp1-regs.h
+++ b/drivers/staging/media/rkisp1/rkisp1-regs.h
@@ -476,7 +476,6 @@
 #define RKISP1_CIF_ISP_LSC_SECT_SIZE_RESERVED		0xFC00FC00
 #define RKISP1_CIF_ISP_LSC_GRAD_RESERVED		0xF000F000
 #define RKISP1_CIF_ISP_LSC_SAMPLE_RESERVED		0xF000F000
-#define RKISP1_CIF_ISP_LSC_SECTORS_MAX			17
 #define RKISP1_CIF_ISP_LSC_TABLE_DATA(v0, v1)     \
 	(((v0) & 0xFFF) | (((v1) & 0xFFF) << 12))
 #define RKISP1_CIF_ISP_LSC_SECT_SIZE(v0, v1)      \
diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
index 7331bacf7dfd..d8a8e4457aa4 100644
--- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
+++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
@@ -87,9 +87,8 @@
 /*
  * The following matches the tuning process,
  * not the max capabilities of the chip.
- * Last value unused.
  */
-#define	RKISP1_CIF_ISP_LSC_DATA_TBL_SIZE           290
+#define RKISP1_CIF_ISP_LSC_SAMPLES_MAX             17
 
 /*
  * Histogram calculation
@@ -275,10 +274,10 @@ struct rkisp1_cif_isp_sdg_config {
  * refer to REF_01 for details
  */
 struct rkisp1_cif_isp_lsc_config {
-	__u32 r_data_tbl[RKISP1_CIF_ISP_LSC_DATA_TBL_SIZE];
-	__u32 gr_data_tbl[RKISP1_CIF_ISP_LSC_DATA_TBL_SIZE];
-	__u32 gb_data_tbl[RKISP1_CIF_ISP_LSC_DATA_TBL_SIZE];
-	__u32 b_data_tbl[RKISP1_CIF_ISP_LSC_DATA_TBL_SIZE];
+	__u32 r_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
+	__u32 gr_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
+	__u32 gb_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
+	__u32 b_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
 
 	__u32 x_grad_tbl[RKISP1_CIF_ISP_LSC_GRAD_TBL_SIZE];
 	__u32 y_grad_tbl[RKISP1_CIF_ISP_LSC_GRAD_TBL_SIZE];
-- 
2.17.1
