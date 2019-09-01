From: Jonas Karlman <jonas@kwiboo.se>
Subject: [RFC 11/12] media: hantro: Enable H264 decoding on RK3399
Date: Sun, 1 Sep 2019 12:45:48 +0000
Message-ID: <HE1PR06MB4011DF6F06FEACAACFC164ADACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190901124531.23645-1-jonas@kwiboo.se>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Boris Brezillon <boris.brezillon@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jonas Karlman <jonas@kwiboo.se>
List-Id: linux-rockchip.vger.kernel.org

The RK3399 SoC has two VPU blocks capable of H264 decoding, VPU2 and RKVDEC,
this enables support for H264 decoding using the VPU2 block.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/rk3399_vpu_hw.c | 21 +++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
index 14d14bc6b12b..47ca51b75a0d 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
@@ -60,6 +60,19 @@ static const struct hantro_fmt rk3399_vpu_dec_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.codec_mode = HANTRO_MODE_H264_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 4096,
+			.step_width = H264_MB_DIM,
+			.min_height = 48,
+			.max_height = 2304,
+			.step_height = H264_MB_DIM,
+		},
+	},
 	{
 		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
 		.codec_mode = HANTRO_MODE_MPEG2_DEC,
@@ -161,6 +174,12 @@ static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
 		.init = hantro_jpeg_enc_init,
 		.exit = hantro_jpeg_enc_exit,
 	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = rk3399_vpu_h264_dec_run,
+		.reset = rk3399_vpu_dec_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
 	[HANTRO_MODE_MPEG2_DEC] = {
 		.run = rk3399_vpu_mpeg2_dec_run,
 		.reset = rk3399_vpu_dec_reset,
@@ -196,7 +215,7 @@ const struct hantro_variant rk3399_vpu_variant = {
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
 	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
-		 HANTRO_VP8_DECODER,
+		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
 	.codec_ops = rk3399_vpu_codec_ops,
 	.irqs = rk3399_irqs,
 	.num_irqs = ARRAY_SIZE(rk3399_irqs),
-- 
2.17.1
