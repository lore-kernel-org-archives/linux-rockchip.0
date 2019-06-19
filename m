From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 5/9] media: hantro: Add hantro_get_{src,dst}_buf() helpers
Date: Wed, 19 Jun 2019 14:15:36 +0200
Message-ID: <20190619121540.29320-6-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190619121540.29320-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Rasmus Villemoes <linux-qQsb+v5E8BnlAoU/VqSP6n9LOBIZ5rWg@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

And replace all calls to v4l2_m2m_next_{src,dst}_buf() by
hantro_get_{src,dst}_buf() one.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro.h               | 13 +++++++++++++
 drivers/staging/media/hantro/hantro_drv.c           |  4 ++--
 drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c  |  4 ++--
 drivers/staging/media/hantro/hantro_g1_vp8_dec.c    |  8 ++++----
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c   |  4 ++--
 .../staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c   |  4 ++--
 .../staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c  |  4 ++--
 7 files changed, 27 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index cff65707285d..01b5c8a9aea6 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -20,6 +20,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ioctl.h>
+#include <media/v4l2-mem2mem.h>
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-dma-contig.h>
 
@@ -351,4 +352,16 @@ bool hantro_is_encoder_ctx(const struct hantro_ctx *ctx);
 void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id);
 dma_addr_t hantro_get_ref(struct vb2_queue *q, u64 ts);
 
+static inline struct vb2_v4l2_buffer *
+hantro_get_src_buf(struct hantro_ctx *ctx)
+{
+	return v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+}
+
+static inline struct vb2_v4l2_buffer *
+hantro_get_dst_buf(struct hantro_ctx *ctx)
+{
+	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+}
+
 #endif /* HANTRO_H_ */
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 44974aaf25ca..b95f67ee3dd0 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -155,8 +155,8 @@ static void device_run(void *priv)
 	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
-	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src = hantro_get_src_buf(ctx);
+	dst = hantro_get_dst_buf(ctx);
 
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index e592c1b66375..55f861e96108 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -167,8 +167,8 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 	const struct v4l2_mpeg2_picture *picture;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
 	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index b6e1bcf4c071..f406caf589ee 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -278,7 +278,7 @@ static void cfg_parts(struct hantro_ctx *ctx,
 	u32 count = 0;
 	u32 i;
 
-	vb2_src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	vb2_src = hantro_get_src_buf(ctx);
 	src_dma = vb2_dma_contig_plane_dma_addr(&vb2_src->vb2_buf, 0);
 
 	/*
@@ -410,7 +410,7 @@ static void cfg_ref(struct hantro_ctx *ctx,
 	struct vb2_v4l2_buffer *vb2_dst;
 	u32 reg;
 
-	vb2_dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	vb2_dst = hantro_get_dst_buf(ctx);
 
 	/* set last frame address */
 	reg = hantro_get_ref(cap_q, hdr->last_frame_ts);
@@ -444,7 +444,7 @@ static void cfg_buffers(struct hantro_ctx *ctx,
 	struct vb2_v4l2_buffer *vb2_dst;
 	u32 reg;
 
-	vb2_dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	vb2_dst = hantro_get_dst_buf(ctx);
 
 	/* set probability table buffer address */
 	vdpu_write_relaxed(vpu, ctx->vp8_dec.prob_tbl.dma,
@@ -475,7 +475,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	u32 mb_width, mb_height;
 	u32 reg;
 
-	vb2_src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	vb2_src = hantro_get_src_buf(ctx);
 	v4l2_ctrl_request_setup(vb2_src->vb2_buf.req_obj.req,
 				&ctx->ctrl_handler);
 
diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 0c1e3043dc7e..f5adb5cbde50 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -84,8 +84,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 	struct hantro_jpeg_ctx jpeg_ctx;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index ae66354d2d93..82c5af822766 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -116,8 +116,8 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	struct media_request *src_req;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	src_req = src_buf->vb2_buf.req_obj.req;
 	v4l2_ctrl_request_setup(src_req, &ctx->ctrl_handler);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
index 8685bddfbcab..451bfcceadba 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
@@ -169,8 +169,8 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 	const struct v4l2_mpeg2_picture *picture;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
 	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
-- 
2.20.1
