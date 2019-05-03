From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v5 13/15] rockchip/vpu: Add infra to support MPEG-2 decoding
Date: Fri,  3 May 2019 13:47:17 +0200
Message-ID: <20190503114719.28784-14-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190503114719.28784-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>

Only adds structs and helpers to allow supporting MPEG-2 decoding on
rockchip SoCs. Support for RK3399 and RK3288 will be added in separate
commits

Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
--
Changes from v4:
* Define rockchip_vpu_get_ctrl() and rockchip_vpu_get_ref() prototypes
  in rockchip_vpu.h

Changes from v3:
* Coding style improvements (Jonas)
* Move RK3399 support in a separate commit

Changes from v2:
* Remove uneeded check from rockchip_vpu_get_ctrl.
* Use user negotiated resolution when programming the hardware.
---
 drivers/staging/media/rockchip/vpu/Makefile   |  3 +-
 .../staging/media/rockchip/vpu/rockchip_vpu.h | 12 ++++
 .../media/rockchip/vpu/rockchip_vpu_drv.c     | 30 +++++++++
 .../media/rockchip/vpu/rockchip_vpu_hw.h      | 14 +++++
 .../media/rockchip/vpu/rockchip_vpu_mpeg2.c   | 61 +++++++++++++++++++
 5 files changed, 119 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c

diff --git a/drivers/staging/media/rockchip/vpu/Makefile b/drivers/staging/media/rockchip/vpu/Makefile
index ae512173e7e4..dc963936b9f9 100644
--- a/drivers/staging/media/rockchip/vpu/Makefile
+++ b/drivers/staging/media/rockchip/vpu/Makefile
@@ -7,4 +7,5 @@ rockchip-vpu-y += \
 		rk3288_vpu_hw_jpeg_enc.o \
 		rk3399_vpu_hw.o \
 		rk3399_vpu_hw_jpeg_enc.o \
-		rockchip_vpu_jpeg.o
+		rockchip_vpu_jpeg.o \
+		rockchip_vpu_mpeg2.o
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
index ec7557a98583..3093821440c0 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
@@ -27,6 +27,10 @@
 
 #define ROCKCHIP_VPU_MAX_CLOCKS		4
 
+#define MPEG2_MB_DIM			16
+#define MPEG2_MB_WIDTH(w)		DIV_ROUND_UP(w, MPEG2_MB_DIM)
+#define MPEG2_MB_HEIGHT(h)		DIV_ROUND_UP(h, MPEG2_MB_DIM)
+
 #define JPEG_MB_DIM			16
 #define JPEG_MB_WIDTH(w)		DIV_ROUND_UP(w, JPEG_MB_DIM)
 #define JPEG_MB_HEIGHT(h)		DIV_ROUND_UP(h, JPEG_MB_DIM)
@@ -37,6 +41,7 @@ struct rockchip_vpu_codec_ops;
 #define RK_VPU_JPEG_ENCODER	BIT(0)
 #define RK_VPU_ENCODERS		0x0000ffff
 
+#define RK_VPU_MPEG2_DECODER	BIT(16)
 #define RK_VPU_DECODERS		0xffff0000
 
 /**
@@ -76,10 +81,12 @@ struct rockchip_vpu_variant {
  * enum rockchip_vpu_codec_mode - codec operating mode.
  * @RK_VPU_MODE_NONE:  No operating mode. Used for RAW video formats.
  * @RK_VPU_MODE_JPEG_ENC: JPEG encoder.
+ * @RK_VPU_MODE_MPEG2_DEC: MPEG-2 decoder.
  */
 enum rockchip_vpu_codec_mode {
 	RK_VPU_MODE_NONE = -1,
 	RK_VPU_MODE_JPEG_ENC,
+	RK_VPU_MODE_MPEG2_DEC,
 };
 
 /*
@@ -190,6 +197,7 @@ struct rockchip_vpu_dev {
  *			calling v4l2_m2m_job_finish.
  * @codec_ops:		Set of operations related to codec mode.
  * @jpeg_enc:		JPEG-encoding context.
+ * @mpeg2_dec:		MPEG-2-decoding context.
  */
 struct rockchip_vpu_ctx {
 	struct rockchip_vpu_dev *dev;
@@ -215,6 +223,7 @@ struct rockchip_vpu_ctx {
 	/* Specific for particular codec modes. */
 	union {
 		struct rockchip_vpu_jpeg_enc_hw_ctx jpeg_enc;
+		struct rockchip_vpu_mpeg2_dec_hw_ctx mpeg2_dec;
 	};
 };
 
@@ -319,4 +328,7 @@ static inline u32 vdpu_read(struct rockchip_vpu_dev *vpu, u32 reg)
 
 bool rockchip_vpu_is_encoder_ctx(const struct rockchip_vpu_ctx *ctx);
 
+void *rockchip_vpu_get_ctrl(struct rockchip_vpu_ctx *ctx, u32 id);
+dma_addr_t rockchip_vpu_get_ref(struct vb2_queue *q, u64 ts);
+
 #endif /* ROCKCHIP_VPU_H_ */
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 75104174640b..b94ff97451db 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -35,6 +35,24 @@ module_param_named(debug, rockchip_vpu_debug, int, 0644);
 MODULE_PARM_DESC(debug,
 		 "Debug level - higher value produces more verbose messages");
 
+void *rockchip_vpu_get_ctrl(struct rockchip_vpu_ctx *ctx, u32 id)
+{
+	struct v4l2_ctrl *ctrl;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_handler, id);
+	return ctrl ? ctrl->p_cur.p : NULL;
+}
+
+dma_addr_t rockchip_vpu_get_ref(struct vb2_queue *q, u64 ts)
+{
+	int index;
+
+	index = vb2_find_timestamp(q, ts, 0);
+	if (index >= 0)
+		return vb2_dma_contig_plane_dma_addr(q->bufs[index], 0);
+	return 0;
+}
+
 static int
 rockchip_vpu_enc_buf_finish(struct rockchip_vpu_ctx *ctx,
 			    struct vb2_buffer *buf,
@@ -255,6 +273,18 @@ static struct rockchip_vpu_ctrl controls[] = {
 			.step = 1,
 			.def = 50,
 		},
+	}, {
+		.id = V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
+		.codec = RK_VPU_MPEG2_DECODER,
+		.cfg = {
+			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_slice_params),
+		},
+	}, {
+		.id = V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
+		.codec = RK_VPU_MPEG2_DECODER,
+		.cfg = {
+			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_quantization),
+		},
 	},
 };
 
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
index 46716d121538..1bdc5ceb956f 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
@@ -11,6 +11,7 @@
 
 #include <linux/interrupt.h>
 #include <linux/v4l2-controls.h>
+#include <media/mpeg2-ctrls.h>
 #include <media/videobuf2-core.h>
 
 struct rockchip_vpu_dev;
@@ -38,6 +39,14 @@ struct rockchip_vpu_jpeg_enc_hw_ctx {
 	struct rockchip_vpu_aux_buf bounce_buffer;
 };
 
+/**
+ * struct rockchip_vpu_mpeg2_dec_hw_ctx
+ * @qtable:		Quantization table
+ */
+struct rockchip_vpu_mpeg2_dec_hw_ctx {
+	struct rockchip_vpu_aux_buf qtable;
+};
+
 /**
  * struct rockchip_vpu_codec_ops - codec mode specific operations
  *
@@ -83,4 +92,9 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx);
 int rockchip_vpu_jpeg_enc_init(struct rockchip_vpu_ctx *ctx);
 void rockchip_vpu_jpeg_enc_exit(struct rockchip_vpu_ctx *ctx);
 
+void rockchip_vpu_mpeg2_dec_copy_qtable(u8 *qtable,
+	const struct v4l2_ctrl_mpeg2_quantization *ctrl);
+int rockchip_vpu_mpeg2_dec_init(struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_mpeg2_dec_exit(struct rockchip_vpu_ctx *ctx);
+
 #endif /* ROCKCHIP_VPU_HW_H_ */
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c
new file mode 100644
index 000000000000..5a5b9ea1f6b5
--- /dev/null
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip VPU codec driver
+ *
+ * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
+ */
+
+#include "rockchip_vpu.h"
+
+static const u8 zigzag[64] = {
+	0,   1,  8, 16,  9,  2,  3, 10,
+	17, 24, 32, 25, 18, 11,  4,  5,
+	12, 19, 26, 33, 40, 48, 41, 34,
+	27, 20, 13,  6,  7, 14, 21, 28,
+	35, 42, 49, 56, 57, 50, 43, 36,
+	29, 22, 15, 23, 30, 37, 44, 51,
+	58, 59, 52, 45, 38, 31, 39, 46,
+	53, 60, 61, 54, 47, 55, 62, 63
+};
+
+void rockchip_vpu_mpeg2_dec_copy_qtable(u8 *qtable,
+	const struct v4l2_ctrl_mpeg2_quantization *ctrl)
+{
+	int i, n;
+
+	if (!qtable || !ctrl)
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(zigzag); i++) {
+		n = zigzag[i];
+		qtable[n + 0] = ctrl->intra_quantiser_matrix[i];
+		qtable[n + 64] = ctrl->non_intra_quantiser_matrix[i];
+		qtable[n + 128] = ctrl->chroma_intra_quantiser_matrix[i];
+		qtable[n + 192] = ctrl->chroma_non_intra_quantiser_matrix[i];
+	}
+}
+
+int rockchip_vpu_mpeg2_dec_init(struct rockchip_vpu_ctx *ctx)
+{
+	struct rockchip_vpu_dev *vpu = ctx->dev;
+
+	ctx->mpeg2_dec.qtable.size = ARRAY_SIZE(zigzag) * 4;
+	ctx->mpeg2_dec.qtable.cpu =
+		dma_alloc_coherent(vpu->dev,
+				   ctx->mpeg2_dec.qtable.size,
+				   &ctx->mpeg2_dec.qtable.dma,
+				   GFP_KERNEL);
+	if (!ctx->mpeg2_dec.qtable.cpu)
+		return -ENOMEM;
+	return 0;
+}
+
+void rockchip_vpu_mpeg2_dec_exit(struct rockchip_vpu_ctx *ctx)
+{
+	struct rockchip_vpu_dev *vpu = ctx->dev;
+
+	dma_free_coherent(vpu->dev,
+			  ctx->mpeg2_dec.qtable.size,
+			  ctx->mpeg2_dec.qtable.cpu,
+			  ctx->mpeg2_dec.qtable.dma);
+}
-- 
2.20.1
