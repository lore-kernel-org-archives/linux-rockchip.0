From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 03/12] media: hantro: Fix H264 motion vector buffer offset
Date: Sun, 1 Sep 2019 12:45:43 +0000
Message-ID: <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190901124531.23645-1-jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

A decoded 8-bit 4:2:0 frame need memory for up to 448 macroblocks
and is laid out in memory as follow:

+-------------------+
| Y-plane   256 MBs |
+-------------------+
| UV-plane  128 MBs |
+-------------------+
| MV buffer  64 MBs |
+-------------------+

The motion vector buffer offset is currently correct for 4:2:0 because
the extra space for motion vectors is overallocated with an extra 64 MBs.

Wrong offset for both destination and motion vector buffer are used
for the bottom field of field encoded content, wrong offset is
also used for 4:0:0 (monochrome) content.

Fix this by always setting the motion vector address to the expected
384 MBs offset for 4:2:0 and 256 MBs offset for 4:0:0 content.

Also use correct destination and motion vector buffer offset
for the bottom field of field encoded content.

While at it also extend the check for 4:0:0 (monochrome) to include an
additional check for High Profile (100).

Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
---
 .../staging/media/hantro/hantro_g1_h264_dec.c | 33 +++++++++++--------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 7ab534936843..159bd67e0a36 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -19,6 +19,9 @@
 #include "hantro_hw.h"
 #include "hantro_v4l2.h"
 
+#define MV_OFFSET_420	384
+#define MV_OFFSET_400	256
+
 static void set_params(struct hantro_ctx *ctx)
 {
 	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
@@ -49,8 +52,8 @@ static void set_params(struct hantro_ctx *ctx)
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
 
 	/* Decoder control register 1. */
-	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(sps->pic_width_in_mbs_minus1 + 1) |
-	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(sps->pic_height_in_map_units_minus1 + 1) |
+	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(H264_MB_WIDTH(ctx->dst_fmt.width)) |
+	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(H264_MB_HEIGHT(ctx->dst_fmt.height)) |
 	      G1_REG_DEC_CTRL1_REF_FRAMES(sps->max_num_ref_frames);
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL1);
 
@@ -79,7 +82,7 @@ static void set_params(struct hantro_ctx *ctx)
 		reg |= G1_REG_DEC_CTRL4_CABAC_E;
 	if (sps->flags & V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE)
 		reg |= G1_REG_DEC_CTRL4_DIR_8X8_INFER_E;
-	if (sps->chroma_format_idc == 0)
+	if (sps->profile_idc >= 100 && sps->chroma_format_idc == 0)
 		reg |= G1_REG_DEC_CTRL4_BLACKWHITE_E;
 	if (pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED)
 		reg |= G1_REG_DEC_CTRL4_WEIGHT_PRED_E;
@@ -233,6 +236,7 @@ static void set_buffers(struct hantro_ctx *ctx)
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct hantro_dev *vpu = ctx->dev;
 	dma_addr_t src_dma, dst_dma;
+	unsigned int offset = MV_OFFSET_420;
 
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
@@ -243,19 +247,20 @@ static void set_buffers(struct hantro_ctx *ctx)
 
 	/* Destination (decoded frame) buffer. */
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	if (ctrls->slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
+		dst_dma += ALIGN(ctx->dst_fmt.width, H264_MB_DIM);
 	vdpu_write_relaxed(vpu, dst_dma, G1_REG_ADDR_DST);
 
-	/* Higher profiles require DMV buffer appended to reference frames. */
-	if (ctrls->sps->profile_idc > 66) {
-		size_t pic_size = ctx->h264_dec.pic_size;
-		size_t mv_offset = round_up(pic_size, 8);
-
-		if (ctrls->slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
-			mv_offset += 32 * H264_MB_WIDTH(ctx->dst_fmt.width);
-
-		vdpu_write_relaxed(vpu, dst_dma + mv_offset,
-				   G1_REG_ADDR_DIR_MV);
-	}
+	/* Motion vector buffer is located after the decoded frame. */
+	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	if (ctrls->sps->profile_idc >= 100 && ctrls->sps->chroma_format_idc == 0)
+		offset = MV_OFFSET_400;
+	dst_dma += offset * H264_MB_WIDTH(ctx->dst_fmt.width) *
+		   H264_MB_HEIGHT(ctx->dst_fmt.height);
+	if (ctrls->slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
+		dst_dma += 32 * H264_MB_WIDTH(ctx->dst_fmt.width) *
+			   H264_MB_HEIGHT(ctx->dst_fmt.height);
+	vdpu_write_relaxed(vpu, dst_dma, G1_REG_ADDR_DIR_MV);
 
 	/* Auxiliary buffer prepared in hantro_g1_h264_dec_prepare_table(). */
 	vdpu_write_relaxed(vpu, ctx->h264_dec.priv.dma, G1_REG_ADDR_QTABLE);
-- 
2.17.1
