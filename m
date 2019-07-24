From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 5/7] media: hantro: Add helpers to prepare/finish a run
Date: Wed, 24 Jul 2019 14:17:00 -0300
Message-ID: <20190724171702.9449-6-ezequiel@collabora.com>
References: <20190724171702.9449-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190724171702.9449-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

And use them where appropriate.

We might want to move hantro_{prepare,finish}_run() calls to
device_run() and have a 2-step approach similar to cedrus (prepare +
trigger) at some point, but let's keep that for later.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro_drv.c     | 22 +++++++++++++++++++
 .../media/hantro/hantro_g1_mpeg2_dec.c        | 10 ++-------
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  9 ++------
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |  7 ++++--
 drivers/staging/media/hantro/hantro_hw.h      |  2 ++
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  8 ++-----
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    | 10 ++-------
 7 files changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 398618b0d586..4af6ee80229e 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -153,6 +153,28 @@ void hantro_watchdog(struct work_struct *work)
 	}
 }
 
+void hantro_prepare_run(struct hantro_ctx *ctx)
+{
+	struct vb2_v4l2_buffer *src_buf;
+
+	src_buf = hantro_get_src_buf(ctx);
+	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
+				&ctx->ctrl_handler);
+}
+
+void hantro_finish_run(struct hantro_ctx *ctx)
+{
+	struct vb2_v4l2_buffer *src_buf;
+
+	src_buf = hantro_get_src_buf(ctx);
+	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
+				   &ctx->ctrl_handler);
+
+	/* Kick the watchdog. */
+	schedule_delayed_work(&ctx->dev->watchdog_work,
+			      msecs_to_jiffies(2000));
+}
+
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index 55f861e96108..80f0e94f8afa 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -171,8 +171,7 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
-	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
-				&ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	slice_params = hantro_get_ctrl(ctx,
 				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
@@ -248,12 +247,7 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 					&dst_buf->vb2_buf,
 					sequence, picture, slice_params);
 
-	/* Controls no longer in-use, we can complete them */
-	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
-
-	/* Kick the watchdog and start decoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 
 	reg = G1_REG_DEC_E(1);
 	vdpu_write(vpu, reg, G1_SWREG(1));
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index 6032cbbecb06..21b132b2ed04 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -454,8 +454,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	u32 reg;
 
 	vb2_src = hantro_get_src_buf(ctx);
-	v4l2_ctrl_request_setup(vb2_src->vb2_buf.req_obj.req,
-				&ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	hdr = hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER);
 	if (WARN_ON(!hdr))
@@ -516,11 +515,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	cfg_ref(ctx, hdr);
 	cfg_buffers(ctx, hdr);
 
-	/* Controls no longer in-use, we can complete them */
-	v4l2_ctrl_request_complete(vb2_src->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
-
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 
 	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
 }
diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index f5adb5cbde50..ecd34a7db190 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -87,6 +87,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
+	hantro_prepare_run(ctx);
+
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
 	jpeg_ctx.width = ctx->dst_fmt.width;
@@ -119,7 +121,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 		| H1_REG_ENC_CTRL_ENC_MODE_JPEG
 		| H1_REG_ENC_PIC_INTRA
 		| H1_REG_ENC_CTRL_EN_BIT;
-	/* Kick the watchdog and start encoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+
+	hantro_finish_run(ctx);
+
 	vepu_write(vpu, reg, H1_REG_ENC_CTRL);
 }
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 7849852affde..34ef24e3a9ef 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -97,6 +97,8 @@ void hantro_watchdog(struct work_struct *work);
 void hantro_run(struct hantro_ctx *ctx);
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
 		     enum vb2_buffer_state result);
+void hantro_prepare_run(struct hantro_ctx *ctx);
+void hantro_finish_run(struct hantro_ctx *ctx);
 
 void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx);
 void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index 82c5af822766..06162f569b5e 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -113,14 +113,12 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct hantro_jpeg_ctx jpeg_ctx;
-	struct media_request *src_req;
 	u32 reg;
 
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	src_req = src_buf->vb2_buf.req_obj.req;
-	v4l2_ctrl_request_setup(src_req, &ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
@@ -157,9 +155,7 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 		| VEPU_REG_ENCODE_FORMAT_JPEG
 		| VEPU_REG_ENCODE_ENABLE;
 
-	v4l2_ctrl_request_complete(src_req, &ctx->ctrl_handler);
-
 	/* Kick the watchdog and start encoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 	vepu_write(vpu, reg, VEPU_REG_ENCODE_START);
 }
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
index 451bfcceadba..e7ba5c0441cc 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
@@ -172,9 +172,7 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	/* Apply request controls if any */
-	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
-				&ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	slice_params = hantro_get_ctrl(ctx,
 				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
@@ -254,12 +252,8 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 					 &dst_buf->vb2_buf,
 					 sequence, picture, slice_params);
 
-	/* Controls no longer in-use, we can complete them */
-	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
-
 	/* Kick the watchdog and start decoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 
 	reg = vdpu_read(vpu, VDPU_SWREG(57)) | VDPU_REG_DEC_E(1);
 	vdpu_write(vpu, reg, VDPU_SWREG(57));
-- 
2.22.0
