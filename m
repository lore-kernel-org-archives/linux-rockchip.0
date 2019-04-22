From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 09/15] rockchip/vpu: Move encoder logic to a common place
Date: Mon, 22 Apr 2019 10:08:12 +0200
Message-ID: <20190422080818.29130-10-boris.brezillon@collabora.com>
References: <20190422080818.29130-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190422080818.29130-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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

The V4L2/VB2 implementation for the encoder and decoder logic are very
similar, so let's rename rockchip_vpu_enc.c file into
rockchip_vpu_v4l2.c and remove the _enc_ part in objects/functions
exposed in rockchip_vpu_v4l2.h. We also rename the enc_queue_init()
function (in rockchip_vpu_drv.c) queue_init() since it will be used
to initialize both type of queues.

The implementation itself will be patched to support the decoding case
when decoder support is added.

Suggested-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes from v2:
* New patch
---
 drivers/staging/media/rockchip/vpu/Makefile        |  2 +-
 .../staging/media/rockchip/vpu/rockchip_vpu_drv.c  | 14 +++++++-------
 .../{rockchip_vpu_enc.c => rockchip_vpu_v4l2.c}    | 14 +++++++-------
 .../staging/media/rockchip/vpu/rockchip_vpu_v4l2.h | 12 ++++++------
 4 files changed, 21 insertions(+), 21 deletions(-)
 rename drivers/staging/media/rockchip/vpu/{rockchip_vpu_enc.c => rockchip_vpu_v4l2.c} (97%)

diff --git a/drivers/staging/media/rockchip/vpu/Makefile b/drivers/staging/media/rockchip/vpu/Makefile
index e9d733bb7632..ae512173e7e4 100644
--- a/drivers/staging/media/rockchip/vpu/Makefile
+++ b/drivers/staging/media/rockchip/vpu/Makefile
@@ -2,7 +2,7 @@ obj-$(CONFIG_VIDEO_ROCKCHIP_VPU) += rockchip-vpu.o
 
 rockchip-vpu-y += \
 		rockchip_vpu_drv.o \
-		rockchip_vpu_enc.o \
+		rockchip_vpu_v4l2.o \
 		rk3288_vpu_hw.o \
 		rk3288_vpu_hw_jpeg_enc.o \
 		rk3399_vpu_hw.o \
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 041116855bab..d729b27c95db 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -140,7 +140,7 @@ static struct v4l2_m2m_ops vpu_m2m_ops = {
 };
 
 static int
-enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
+queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 {
 	struct rockchip_vpu_ctx *ctx = priv;
 	int ret;
@@ -148,7 +148,7 @@ enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	src_vq->drv_priv = ctx;
-	src_vq->ops = &rockchip_vpu_enc_queue_ops;
+	src_vq->ops = &rockchip_vpu_queue_ops;
 	src_vq->mem_ops = &vb2_dma_contig_memops;
 
 	/*
@@ -179,7 +179,7 @@ enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	dst_vq->drv_priv = ctx;
-	dst_vq->ops = &rockchip_vpu_enc_queue_ops;
+	dst_vq->ops = &rockchip_vpu_queue_ops;
 	dst_vq->mem_ops = &vb2_vmalloc_memops;
 	dst_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
 	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
@@ -259,7 +259,7 @@ static int rockchip_vpu_open(struct file *filp)
 	ctx->dev = vpu;
 	if (vdev == vpu->vfd_enc)
 		ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
-						    &enc_queue_init);
+						    queue_init);
 	else
 		ctx->fh.m2m_ctx = ERR_PTR(-ENODEV);
 	if (IS_ERR(ctx->fh.m2m_ctx)) {
@@ -272,8 +272,8 @@ static int rockchip_vpu_open(struct file *filp)
 	filp->private_data = &ctx->fh;
 	v4l2_fh_add(&ctx->fh);
 
-	rockchip_vpu_enc_reset_dst_fmt(vpu, ctx);
-	rockchip_vpu_enc_reset_src_fmt(vpu, ctx);
+	rockchip_vpu_reset_dst_fmt(vpu, ctx);
+	rockchip_vpu_reset_src_fmt(vpu, ctx);
 
 	ret = rockchip_vpu_ctrls_setup(vpu, ctx);
 	if (ret) {
@@ -349,7 +349,7 @@ static int rockchip_vpu_video_device_register(struct rockchip_vpu_dev *vpu)
 	vfd->v4l2_dev = &vpu->v4l2_dev;
 	vfd->vfl_dir = VFL_DIR_M2M;
 	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
-	vfd->ioctl_ops = &rockchip_vpu_enc_ioctl_ops;
+	vfd->ioctl_ops = &rockchip_vpu_ioctl_ops;
 	snprintf(vfd->name, sizeof(vfd->name), "%s-enc", match->compatible);
 	vpu->vfd_enc = vfd;
 	video_set_drvdata(vfd, vpu);
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
similarity index 97%
rename from drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
rename to drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
index 09ebc3934389..7a03bf0a6359 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
@@ -261,8 +261,8 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	return 0;
 }
 
-void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx)
+void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->dst_fmt;
 
@@ -286,8 +286,8 @@ void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 		fmt->width * fmt->height * ctx->vpu_dst_fmt->max_depth;
 }
 
-void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx)
+void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->src_fmt;
 	unsigned int width, height;
@@ -388,11 +388,11 @@ vidioc_s_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	 * the raw format again after we return, so we don't need
 	 * anything smarter.
 	 */
-	rockchip_vpu_enc_reset_src_fmt(vpu, ctx);
+	rockchip_vpu_reset_src_fmt(vpu, ctx);
 	return 0;
 }
 
-const struct v4l2_ioctl_ops rockchip_vpu_enc_ioctl_ops = {
+const struct v4l2_ioctl_ops rockchip_vpu_ioctl_ops = {
 	.vidioc_querycap = vidioc_querycap,
 	.vidioc_enum_framesizes = vidioc_enum_framesizes,
 
@@ -576,7 +576,7 @@ static int rockchip_vpu_buf_out_validate(struct vb2_buffer *vb)
 	return 0;
 }
 
-const struct vb2_ops rockchip_vpu_enc_queue_ops = {
+const struct vb2_ops rockchip_vpu_queue_ops = {
 	.queue_setup = rockchip_vpu_queue_setup,
 	.buf_prepare = rockchip_vpu_buf_prepare,
 	.buf_queue = rockchip_vpu_buf_queue,
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
index 50ad40dfb4f4..816bd3988218 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
@@ -18,12 +18,12 @@
 
 #include "rockchip_vpu.h"
 
-extern const struct v4l2_ioctl_ops rockchip_vpu_enc_ioctl_ops;
-extern const struct vb2_ops rockchip_vpu_enc_queue_ops;
+extern const struct v4l2_ioctl_ops rockchip_vpu_ioctl_ops;
+extern const struct vb2_ops rockchip_vpu_queue_ops;
 
-void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx);
-void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx);
 
 #endif /* ROCKCHIP_VPU_V4L2_H_ */
-- 
2.20.1
