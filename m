From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 4/4] media: staging: rkisp1: cap: remove support of BGR666 format
Date: Fri, 15 May 2020 16:29:52 +0200
Message-ID: <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

The rkisp1 supports RGB encoding with 6 bits per
color with the following format:
- - b5 b4 b3 b2 b1 b0 - - g5 g4 g3 g2 g1 g0 - - r5 r4 r3 r2 r1 r0 - - - - - - - -

This is not how V4L2_PIX_FMT_BGR666 is defined, so remove
this format from the driver's formats list.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 61b9ebe577b2..2660e44eda88 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -283,10 +283,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_RGB565,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
-	}, {
-		.fourcc = V4L2_PIX_FMT_BGR666,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
 	},
 };
 
-- 
2.17.1
