From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 03/12] media: rkvdec: h264: Validate and use pic width and
 height in mbs
Date: Mon, 06 Jul 2020 21:54:34 +0000 (UTC)
Message-ID: <20200706215430.22859-4-jonas@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
 <20200706215430.22859-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200706215430.22859-1-jonas@kwiboo.se>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

The width and height in mbs is currently configured based on OUTPUT buffer
resolution, this works for frame pictures but can cause issues for field
pictures.

When frame_mbs_only_flag is 0 the height in mbs should be height of
the field instead of height of frame.

Validate pic_width_in_mbs_minus1 and pic_height_in_map_units_minus1
against OUTPUT buffer resolution and use these values to configure HW.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Validate against coded_fmt instead of decoded_fmt
- Validation moved to rkvdec_try_ctrl
---
 drivers/staging/media/rkvdec/rkvdec-h264.c |  4 ++--
 drivers/staging/media/rkvdec/rkvdec.c      | 10 ++++++++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index f0cfed84d60d..3498e9eec3d8 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -672,8 +672,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 		  LOG2_MAX_PIC_ORDER_CNT_LSB_MINUS4);
 	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_DELTA_PIC_ORDER_ALWAYS_ZERO),
 		  DELTA_PIC_ORDER_ALWAYS_ZERO_FLAG);
-	WRITE_PPS(DIV_ROUND_UP(ctx->coded_fmt.fmt.pix_mp.width, 16), PIC_WIDTH_IN_MBS);
-	WRITE_PPS(DIV_ROUND_UP(ctx->coded_fmt.fmt.pix_mp.height, 16), PIC_HEIGHT_IN_MBS);
+	WRITE_PPS(sps->pic_width_in_mbs_minus1 + 1, PIC_WIDTH_IN_MBS);
+	WRITE_PPS(sps->pic_height_in_map_units_minus1 + 1, PIC_HEIGHT_IN_MBS);
 	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY),
 		  FRAME_MBS_ONLY_FLAG);
 	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD),
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 4ab8f7e0566b..7a9f78bc0a55 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -29,8 +29,11 @@
 
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+
 	if (ctrl->id == V4L2_CID_MPEG_VIDEO_H264_SPS) {
 		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p;
+		unsigned int width, height;
 		/*
 		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
 		 * but it's currently broken in the driver.
@@ -45,6 +48,13 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != 0)
 			/* Only 8-bit is supported */
 			return -EINVAL;
+
+		width = (sps->pic_width_in_mbs_minus1 + 1) * 16;
+		height = (sps->pic_height_in_map_units_minus1 + 1) * 16;
+
+		if (width > ctx->coded_fmt.fmt.pix_mp.width ||
+		    height > ctx->coded_fmt.fmt.pix_mp.height)
+			return -EINVAL;
 	}
 	return 0;
 }
-- 
2.17.1
