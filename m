From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 1/2] rkvdec: h264: Refuse to decode unsupported bitstream
Date: Fri, 26 Jun 2020 14:11:29 -0300
Message-ID: <20200626171130.27346-2-ezequiel@collabora.com>
References: <20200626171130.27346-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200626171130.27346-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

The hardware only supports 4:2:2, 4:2:0 or 4:0:0 (monochrome),
8-bit or 10-bit depth content.

Verify that the PPS refers to a supported bitstream, and refuse
unsupported bitstreams by failing at TRY_EXT_CTRLS time.

The driver is currently broken on 10-bit and 4:2:2
so disallow those as well.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 225eeca73356..0f81b47792f6 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,6 +27,32 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
+static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
+{
+	if (ctrl->id == V4L2_CID_MPEG_VIDEO_H264_SPS) {
+		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_cur.p;
+		/*
+		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
+		 * but it's currently broken in the driver.
+		 * Reject them for now, until it's fixed.
+		 */
+		if (sps->chroma_format_idc > 1)
+			/* Only 4:0:0 and 4:2:0 are supported */
+			return -EINVAL;
+		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
+			/* Luma and chroma bit depth mismatch */
+			return -EINVAL;
+		if (sps->bit_depth_luma_minus8 != 0)
+			/* Only 8-bit is supported */
+			return -EINVAL;
+	}
+	return 0;
+}
+
+static const struct v4l2_ctrl_ops rkvdec_ctrl_ops = {
+	.try_ctrl = rkvdec_try_ctrl,
+};
+
 static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 	{
 		.per_request = true,
@@ -42,6 +68,7 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 		.per_request = true,
 		.mandatory = true,
 		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_SPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
 	},
 	{
 		.per_request = true,
-- 
2.26.0.rc2
