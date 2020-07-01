From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 7/9] media: rkvdec: h264: Use bytesperline and buffer height
 to calculate stride
Date: Wed, 01 Jul 2020 21:56:23 +0000 (UTC)
Message-ID: <20200701215616.30874-8-jonas@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200701215616.30874-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Use bytesperline and buffer height to calculate the strides configured.

This does not really change anything other than ensuring the bytesperline
that is signaled to userspace matches was is configured in HW.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 27 +++++++++++++---------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 9c8e49642cd9..1cb6af590138 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -891,10 +891,11 @@ static void config_registers(struct rkvdec_ctx *ctx,
 	dma_addr_t rlc_addr;
 	dma_addr_t refer_addr;
 	u32 rlc_len;
-	u32 hor_virstride = 0;
-	u32 ver_virstride = 0;
-	u32 y_virstride = 0;
-	u32 yuv_virstride = 0;
+	u32 hor_virstride;
+	u32 ver_virstride;
+	u32 y_virstride;
+	u32 uv_virstride;
+	u32 yuv_virstride;
 	u32 offset;
 	dma_addr_t dst_addr;
 	u32 reg, i;
@@ -904,16 +905,20 @@ static void config_registers(struct rkvdec_ctx *ctx,
 
 	f = &ctx->decoded_fmt;
 	dst_fmt = &f->fmt.pix_mp;
-	hor_virstride = (sps->bit_depth_luma_minus8 + 8) * dst_fmt->width / 8;
-	ver_virstride = round_up(dst_fmt->height, 16);
+	hor_virstride = dst_fmt->plane_fmt[0].bytesperline;
+	ver_virstride = dst_fmt->height;
 	y_virstride = hor_virstride * ver_virstride;
 
-	if (sps->chroma_format_idc == 0)
-		yuv_virstride = y_virstride;
-	else if (sps->chroma_format_idc == 1)
-		yuv_virstride += y_virstride + y_virstride / 2;
+	if (sps->chroma_format_idc == 1)
+		uv_virstride = y_virstride / 2;
 	else if (sps->chroma_format_idc == 2)
-		yuv_virstride += 2 * y_virstride;
+		uv_virstride = y_virstride;
+	else if (sps->chroma_format_idc == 3)
+		uv_virstride = 2 * y_virstride;
+	else
+		uv_virstride = 0;
+
+	yuv_virstride = y_virstride + uv_virstride;
 
 	reg = RKVDEC_Y_HOR_VIRSTRIDE(hor_virstride / 16) |
 	      RKVDEC_UV_HOR_VIRSTRIDE(hor_virstride / 16) |
-- 
2.17.1
