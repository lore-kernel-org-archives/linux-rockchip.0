From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] media: hantro: Enable VP8 decoding on RK3328
Date: Wed, 21 Aug 2019 17:27:47 +0000
Message-ID: <HE1PR06MB4011F3DB984CB3BFE210DB12ACAA0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jonas Karlman <jonas@kwiboo.se>
List-Id: linux-rockchip.vger.kernel.org

RK3328 SoC has the same decoder IP block as RK3399,
lets enable VP8 decoding on RK3328.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/rk3399_vpu_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
index 414b1d3fbb1f..14d14bc6b12b 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
@@ -213,7 +213,7 @@ const struct hantro_variant rk3328_vpu_variant = {
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-	.codec = HANTRO_MPEG2_DECODER,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
 	.codec_ops = rk3399_vpu_codec_ops,
 	.irqs = rk3328_irqs,
 	.num_irqs = ARRAY_SIZE(rk3328_irqs),
-- 
2.17.1
