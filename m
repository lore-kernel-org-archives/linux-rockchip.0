From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v4 3/6] media: staging: rkisp1: cap: change the logic for writing to uv swap register
Date: Sat, 11 Apr 2020 18:05:59 +0200
Message-ID: <20200411160602.14637-4-dafna.hirschfeld@collabora.com>
References: <20200411160602.14637-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200411160602.14637-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

The register RKISP1_CIF_MI_XTD_FORMAT_CTRL is currently written
with "on" only if the u,v streams need to be swapped. This patch
also write to it with "off" if they don't need to be swapped.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 5d0e489505f0..4830083c33fd 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -383,12 +383,12 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 		     cap->config->mi.cr_size_init);
 
 	rkisp1_irq_frame_end_enable(cap);
-	if (cap->pix.cfg->uv_swap) {
-		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
-
+	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
+	if (cap->pix.cfg->uv_swap)
 		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
-		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
-	}
+	else
+		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
+	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 
 	rkisp1_mi_config_ctrl(cap);
 
@@ -406,7 +406,7 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 {
 	const struct v4l2_pix_format_mplane *pixm = &cap->pix.fmt;
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
-	u32 mi_ctrl;
+	u32 mi_ctrl, reg;
 
 	rkisp1_write(rkisp1, rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_Y),
 		     cap->config->mi.y_size_init);
@@ -420,12 +420,13 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->sp_y_stride, RKISP1_CIF_MI_SP_Y_LLENGTH);
 
 	rkisp1_irq_frame_end_enable(cap);
-	if (cap->pix.cfg->uv_swap) {
-		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 
+	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
+	if (cap->pix.cfg->uv_swap)
 		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
-		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
-	}
+	else
+		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
+	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 
 	rkisp1_mi_config_ctrl(cap);
 
-- 
2.20.1
