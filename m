From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 9/9] media: rkvdec: h264: Support High 10 and 4:2:2 profiles
Date: Wed, 01 Jul 2020 21:56:24 +0000 (UTC)
Message-ID: <20200701215616.30874-10-jonas@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200701215616.30874-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Add support and enable decoding of H264 High 10 and 4:2:2 profiles.

H264 frmsize step_width/height is changed to 64 pixels in order to ensure
proper align for 10-bit formats. Incompatible pixelformats gets rejected in
s_fmt/try_fmt ioctl call.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 31 ++++++++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c      | 24 ++++++++---------
 2 files changed, 42 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 1cb6af590138..73767e5c752f 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1022,6 +1022,36 @@ static int rkvdec_h264_adjust_fmt(struct rkvdec_ctx *ctx,
 	return 0;
 }
 
+static int rkvdec_h264_validate_fmt(struct rkvdec_ctx *ctx, u32 pixelformat)
+{
+	struct v4l2_ctrl *ctrl;
+	const struct v4l2_ctrl_h264_sps *sps;
+	u32 valid_format = 0;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
+			      V4L2_CID_MPEG_VIDEO_H264_SPS);
+	sps = ctrl ? ctrl->p_cur.p : NULL;
+	if (!sps)
+		return 0;
+
+	if (sps->bit_depth_luma_minus8 == 0) {
+		if (sps->chroma_format_idc == 2)
+			valid_format = V4L2_PIX_FMT_NV16;
+		else
+			valid_format = V4L2_PIX_FMT_NV12;
+	} else if (sps->bit_depth_luma_minus8 == 2) {
+		if (sps->chroma_format_idc == 2)
+			valid_format = V4L2_PIX_FMT_NV20;
+		else
+			valid_format = V4L2_PIX_FMT_NV15;
+	}
+
+	if (valid_format == pixelformat)
+		return 0;
+
+	return -EINVAL;
+}
+
 static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
 {
 	struct rkvdec_dev *rkvdec = ctx->dev;
@@ -1163,6 +1193,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 
 const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
 	.adjust_fmt = rkvdec_h264_adjust_fmt,
+	.validate_fmt = rkvdec_h264_validate_fmt,
 	.start = rkvdec_h264_start,
 	.stop = rkvdec_h264_stop,
 	.run = rkvdec_h264_run,
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 465444c58f13..8d88fa8c4d4e 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -31,19 +31,14 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	if (ctrl->id == V4L2_CID_MPEG_VIDEO_H264_SPS) {
 		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_cur.p;
-		/*
-		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
-		 * but it's currently broken in the driver.
-		 * Reject them for now, until it's fixed.
-		 */
-		if (sps->chroma_format_idc > 1)
-			/* Only 4:0:0 and 4:2:0 are supported */
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
 	}
 	return 0;
@@ -97,7 +92,7 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
 		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
-		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422,
 		.cfg.menu_skip_mask =
 			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
 		.cfg.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
@@ -116,16 +111,19 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 
 static const u32 rkvdec_h264_decoded_fmts[] = {
 	V4L2_PIX_FMT_NV12,
+	V4L2_PIX_FMT_NV15,
+	V4L2_PIX_FMT_NV16,
+	V4L2_PIX_FMT_NV20,
 };
 
 static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264_SLICE,
 		.frmsize = {
-			.min_width = 48,
+			.min_width = 64,
 			.max_width = 4096,
-			.step_width = 16,
-			.min_height = 48,
+			.step_width = 64,
+			.min_height = 64,
 			.max_height = 2304,
 			.step_height = 16,
 		},
-- 
2.17.1
