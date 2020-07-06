From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 11/12] media: rkvdec: h264: Support High 10 and 4:2:2
 profiles
Date: Mon, 06 Jul 2020 21:54:37 +0000 (UTC)
Message-ID: <20200706215430.22859-12-jonas@kwiboo.se>
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

Add support and enable decoding of H264 High 10 and 4:2:2 profiles.

Decoded CAPTURE buffer width is aligned to 64 pixels to accommodate HW
requirement on 10-bit format buffers.

The new valid_fmt operation is implemented and return a valid pixelformat
for the provided SPS control.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Only align decoded buffer instead of using frmsize step_width
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 20 ++++++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c      | 19 +++++++++----------
 2 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 10756b9d6118..0757fc97d1ff 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1018,6 +1018,25 @@ static int rkvdec_h264_adjust_fmt(struct rkvdec_ctx *ctx,
 	return 0;
 }
 
+static u32 rkvdec_h264_valid_fmt(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
+{
+	const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p;
+
+	if (sps->bit_depth_luma_minus8 == 0) {
+		if (sps->chroma_format_idc == 2)
+			return V4L2_PIX_FMT_NV16;
+		else
+			return V4L2_PIX_FMT_NV12;
+	} else if (sps->bit_depth_luma_minus8 == 2) {
+		if (sps->chroma_format_idc == 2)
+			return V4L2_PIX_FMT_NV20;
+		else
+			return V4L2_PIX_FMT_NV15;
+	}
+
+	return 0;
+}
+
 static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
 {
 	struct rkvdec_dev *rkvdec = ctx->dev;
@@ -1125,6 +1144,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 
 const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
 	.adjust_fmt = rkvdec_h264_adjust_fmt,
+	.valid_fmt = rkvdec_h264_valid_fmt,
 	.start = rkvdec_h264_start,
 	.stop = rkvdec_h264_stop,
 	.run = rkvdec_h264_run,
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 11a88cb6407d..4faee9262392 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -31,7 +31,7 @@ static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
 				       struct v4l2_pix_format_mplane *pix_mp)
 {
 	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
-			    pix_mp->width, pix_mp->height);
+			    ALIGN(pix_mp->width, 64), pix_mp->height);
 	pix_mp->plane_fmt[0].sizeimage += 128 *
 		DIV_ROUND_UP(pix_mp->width, 16) *
 		DIV_ROUND_UP(pix_mp->height, 16);
@@ -55,19 +55,15 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 	if (ctrl->id == V4L2_CID_MPEG_VIDEO_H264_SPS) {
 		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p;
 		unsigned int width, height;
-		/*
-		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
-		 * but it's currently broken in the driver.
-		 * Reject them for now, until it's fixed.
-		 */
-		if (sps->chroma_format_idc > 1)
-			/* Only 4:0:0 and 4:2:0 are supported */
+
+		if (sps->chroma_format_idc > 2)
+			/* Only 4:0:0, 4:2:0 and 4:2:2 are supported */
 			return -EINVAL;
 		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
 			/* Luma and chroma bit depth mismatch */
 			return -EINVAL;
-		if (sps->bit_depth_luma_minus8 != 0)
-			/* Only 8-bit is supported */
+		if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
+			/* Only 8-bit and 10-bit is supported */
 			return -EINVAL;
 
 		if (ctx->valid_fmt && ctx->valid_fmt != rkvdec_valid_fmt(ctx, ctrl))
@@ -157,6 +153,9 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 
 static const u32 rkvdec_h264_decoded_fmts[] = {
 	V4L2_PIX_FMT_NV12,
+	V4L2_PIX_FMT_NV15,
+	V4L2_PIX_FMT_NV16,
+	V4L2_PIX_FMT_NV20,
 };
 
 static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
-- 
2.17.1
