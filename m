From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format to XBGR32
Date: Fri, 15 May 2020 16:29:49 +0200
Message-ID: <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

According to the TRM, the YUV->RGB conversion outputs
"24 bit word". What it means is that 4 bytes are used with
24bit for the RGB and the last byte is ignored.
This matches format V4L2_PIX_FMT_XBGR32.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index f69235f82c45..61b9ebe577b2 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -276,7 +276,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	},
 	/* rgb */
 	{
-		.fourcc = V4L2_PIX_FMT_RGB24,
+		.fourcc = V4L2_PIX_FMT_XBGR32,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
 	}, {
-- 
2.17.1
