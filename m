From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH 9/9] media: hantro: Enable H264 decoding on rk3288
Date: Wed, 19 Jun 2019 14:15:40 +0200
Message-ID: <20190619121540.29320-10-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190619121540.29320-1-boris.brezillon@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Ezequiel Garcia <ezequiel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>, Boris Brezillon <boris.brezillon@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: Hertz Wong <hertz.wong@rock-chips.com>

Now that the generic bits have been added, we can activate H264 decoding
on rk3288.

Signed-off-by: Hertz Wong <hertz.wong@rock-chips.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/staging/media/hantro/rk3288_vpu_hw.c | 21 +++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 470e803e25a6..82a7b82f725a 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -61,6 +61,19 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE_RAW,
+		.codec_mode = HANTRO_MODE_H264_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 3840,
+			.step_width = H264_MB_DIM,
+			.min_height = 48,
+			.max_height = 2160,
+			.step_height = H264_MB_DIM,
+		},
+	},
 	{
 		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
 		.codec_mode = HANTRO_MODE_MPEG2_DEC,
@@ -162,6 +175,12 @@ static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
 		.init = hantro_jpeg_enc_init,
 		.exit = hantro_jpeg_enc_exit,
 	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.reset = rk3288_vpu_dec_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
 	[HANTRO_MODE_MPEG2_DEC] = {
 		.run = hantro_g1_mpeg2_dec_run,
 		.reset = rk3288_vpu_dec_reset,
@@ -197,7 +216,7 @@ const struct hantro_variant rk3288_vpu_variant = {
 	.dec_fmts = rk3288_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3288_vpu_dec_fmts),
 	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
-		 HANTRO_VP8_DECODER,
+		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
 	.codec_ops = rk3288_vpu_codec_ops,
 	.irqs = rk3288_irqs,
 	.num_irqs = ARRAY_SIZE(rk3288_irqs),
-- 
2.20.1
