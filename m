From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: remove duplicate macro definition
Date: Tue,  7 Jul 2020 20:10:53 +0200
Message-ID: <20200707181053.24134-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The macro RKISP1_CIF_ISP_AWB_MODE_YCBCR_EN is defined twice.
Remove the second define.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-regs.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-regs.h b/drivers/staging/media/rkisp1/rkisp1-regs.h
index 46018f435b6f..9b8e616ea24c 100644
--- a/drivers/staging/media/rkisp1/rkisp1-regs.h
+++ b/drivers/staging/media/rkisp1/rkisp1-regs.h
@@ -398,7 +398,6 @@
 #define RKISP1_CIF_ISP_AWB_YMAX_READ(x)			(((x) >> 2) & 1)
 #define RKISP1_CIF_ISP_AWB_MODE_RGB_EN			((1 << 31) | (0x2 << 0))
 #define RKISP1_CIF_ISP_AWB_MODE_YCBCR_EN		((0 << 31) | (0x2 << 0))
-#define RKISP1_CIF_ISP_AWB_MODE_YCBCR_EN		((0 << 31) | (0x2 << 0))
 #define RKISP1_CIF_ISP_AWB_MODE_MASK_NONE		0xFFFFFFFC
 #define RKISP1_CIF_ISP_AWB_MODE_READ(x)			((x) & 3)
 /* ISP_AWB_GAIN_RB, ISP_AWB_GAIN_G  */
-- 
2.17.1
