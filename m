From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 1/2] rockchip/rga: Fix broken .start_streaming
Date: Fri,  1 Jun 2018 16:49:51 -0300
Message-ID: <20180601194952.17440-2-ezequiel@collabora.com>
References: <20180601194952.17440-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180601194952.17440-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Jacob chen <jacob2.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Currently, rga_buf_start_streaming() is expecting
pm_runtime_get_sync to return zero on success, which
is wrong.

As per the documentation, pm_runtime_get_sync increments
the device's usage counter and return its result.
This means it will typically return a positive integer
on success and a negative error code.

Therefore, rockchip-rga driver is currently unusable
failing to start_streaming in most cases. Fix it and
while here, cleanup the buffer return-to-core logic.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index fa1ba98c96dc..c7c5a371b11e 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -64,43 +64,43 @@ static void rga_buf_queue(struct vb2_buffer *vb)
 	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
 }
 
+static void rga_buf_return_buffers(struct vb2_queue *q, enum vb2_buffer_state state)
+{
+	struct rga_ctx *ctx = vb2_get_drv_priv(q);
+	struct vb2_v4l2_buffer *vbuf;
+
+	for (;;) {
+		if (V4L2_TYPE_IS_OUTPUT(q->type))
+			vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
+		else
+			vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+		if (!vbuf)
+			break;
+		v4l2_m2m_buf_done(vbuf, state);
+	}
+}
+
 static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 {
 	struct rga_ctx *ctx = vb2_get_drv_priv(q);
 	struct rockchip_rga *rga = ctx->rga;
-	int ret, i;
+	int ret;
 
 	ret = pm_runtime_get_sync(rga->dev);
-
-	if (!ret)
-		return 0;
-
-	for (i = 0; i < q->num_buffers; ++i) {
-		if (q->bufs[i]->state == VB2_BUF_STATE_ACTIVE) {
-			v4l2_m2m_buf_done(to_vb2_v4l2_buffer(q->bufs[i]),
-					  VB2_BUF_STATE_QUEUED);
-		}
+	if (ret < 0) {
+		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
+		return ret;
 	}
 
-	return ret;
+	return 0;
 }
 
 static void rga_buf_stop_streaming(struct vb2_queue *q)
 {
 	struct rga_ctx *ctx = vb2_get_drv_priv(q);
 	struct rockchip_rga *rga = ctx->rga;
-	struct vb2_v4l2_buffer *vbuf;
-
-	for (;;) {
-		if (V4L2_TYPE_IS_OUTPUT(q->type))
-			vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
-		else
-			vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
-		if (!vbuf)
-			break;
-		v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
-	}
 
+	rga_buf_return_buffers(q, VB2_BUF_STATE_ERROR);
 	pm_runtime_put(rga->dev);
 }
 
-- 
2.17.1
