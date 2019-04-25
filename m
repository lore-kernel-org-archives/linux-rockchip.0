From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v4 12/21] rockchip/vpu: Support the Request API
Date: Thu, 25 Apr 2019 09:12:33 +0200
Message-ID: <20190425071242.18315-13-boris.brezillon@collabora.com>
References: <20190425071242.18315-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190425071242.18315-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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

From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

Introduce support for the Request API. Although the JPEG encoder
does not mandate using the Request API, it's perfectly possible to
use it, if the application wants to.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
--
Changes from v3:
* None

Changes from v2:
* Drop unrelated mdev.bus_info changes.
* Remove the get_ref and get_ctrl helpers as they are not used yet.
---
 .../rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c     |  6 ++++++
 .../media/rockchip/vpu/rockchip_vpu_drv.c     |  7 +++++++
 .../media/rockchip/vpu/rockchip_vpu_enc.c     | 19 +++++++++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
index 6f9f5158d193..74823d25cd8d 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
@@ -113,11 +113,15 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 	struct rockchip_vpu_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct rockchip_vpu_jpeg_ctx jpeg_ctx;
+	struct media_request *src_req;
 	u32 reg;
 
 	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
+	src_req = src_buf->vb2_buf.req_obj.req;
+	v4l2_ctrl_request_setup(src_req, &ctx->ctrl_handler);
+
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
 	jpeg_ctx.width = ctx->dst_fmt.width;
@@ -153,6 +157,8 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 		| VEPU_REG_ENCODE_FORMAT_JPEG
 		| VEPU_REG_ENCODE_ENABLE;
 
+	v4l2_ctrl_request_complete(src_req, &ctx->ctrl_handler);
+
 	/* Kick the watchdog and start encoding */
 	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
 	vepu_write(vpu, reg, VEPU_REG_ENCODE_START);
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index fa02354a0f8a..f47fbd0f9545 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -162,6 +162,7 @@ enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 	src_vq->lock = &ctx->dev->vpu_mutex;
 	src_vq->dev = ctx->dev->v4l2_dev.dev;
+	src_vq->supports_requests = true;
 
 	ret = vb2_queue_init(src_vq);
 	if (ret)
@@ -525,6 +526,11 @@ static void rockchip_vpu_remove_enc_func(struct rockchip_vpu_dev *vpu)
 	video_unregister_device(&func->vdev);
 }
 
+static const struct media_device_ops rockchip_m2m_media_ops = {
+	.req_validate = vb2_request_validate,
+	.req_queue = v4l2_m2m_request_queue,
+};
+
 static int rockchip_vpu_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -617,6 +623,7 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
 	strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
 		sizeof(vpu->mdev.model));
 	media_device_init(&vpu->mdev);
+	vpu->mdev.ops = &rockchip_m2m_media_ops;
 	vpu->v4l2_dev.mdev = &vpu->mdev;
 
 	ret = rockchip_vpu_add_enc_func(vpu);
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index 7c7c20ab2733..ddcc06254ded 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -556,14 +556,33 @@ static void rockchip_vpu_stop_streaming(struct vb2_queue *q)
 			vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 		if (!vbuf)
 			break;
+		v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
+					   &ctx->ctrl_handler);
 		v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
 	}
 }
 
+static void rockchip_vpu_buf_request_complete(struct vb2_buffer *vb)
+{
+	struct rockchip_vpu_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+	v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->ctrl_handler);
+}
+
+static int rockchip_vpu_buf_out_validate(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+
+	vbuf->field = V4L2_FIELD_NONE;
+	return 0;
+}
+
 const struct vb2_ops rockchip_vpu_enc_queue_ops = {
 	.queue_setup = rockchip_vpu_queue_setup,
 	.buf_prepare = rockchip_vpu_buf_prepare,
 	.buf_queue = rockchip_vpu_buf_queue,
+	.buf_out_validate = rockchip_vpu_buf_out_validate,
+	.buf_request_complete = rockchip_vpu_buf_request_complete,
 	.start_streaming = rockchip_vpu_start_streaming,
 	.stop_streaming = rockchip_vpu_stop_streaming,
 	.wait_prepare = vb2_ops_wait_prepare,
-- 
2.20.1
