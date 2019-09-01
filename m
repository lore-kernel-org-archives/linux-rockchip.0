From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 06/12] media: hantro: Set H264 FIELDPIC_FLAG_E flag correctly
Date: Sun, 1 Sep 2019 12:45:45 +0000
Message-ID: <HE1PR06MB40119475B6B31F82297BC0E1ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
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

The FIELDPIC_FLAG_E bit should be set when field_pic_flag exists in stream,
it is currently set based on field_pic_flag of current frame.
The PIC_FIELDMODE_E bit is correctly set based on the field_pic_flag.

Fix this by setting the FIELDPIC_FLAG_E bit when frame_mbs_only is not set.

Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 159bd67e0a36..16f21d258f6a 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -64,7 +64,7 @@ static void set_params(struct hantro_ctx *ctx)
 	/* always use the matrix sent from userspace */
 	reg |= G1_REG_DEC_CTRL2_TYPE1_QUANT_E;
 
-	if (slices[0].flags &  V4L2_H264_SLICE_FLAG_FIELD_PIC)
+	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
 		reg |= G1_REG_DEC_CTRL2_FIELDPIC_FLAG_E;
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL2);
 
-- 
2.17.1
