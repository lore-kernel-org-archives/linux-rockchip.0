From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 10/15] rockchip/vpu: Provide a helper to reset both src and
 dst formats
Date: Mon, 22 Apr 2019 10:08:13 +0200
Message-ID: <20190422080818.29130-11-boris.brezillon@collabora.com>
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

When initializing a context, the core wants to reset both src and dst
formats. Right now the order doesn't matter, but if we want to have a
valid default width/height on the non-coded/raw format side (src in
case of encoders, dst in case of decoders), we need to reset those
formats in the right order: first the coded-format side, then the other,
such that width and height on the raw format side can be taken from
the coded format.

Let's provide a helper that will reset both formats and make sure this
is done in the right order.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes from v2:
* New patch
---
 .../staging/media/rockchip/vpu/rockchip_vpu_drv.c  |  3 +--
 .../staging/media/rockchip/vpu/rockchip_vpu_v4l2.c | 14 ++++++++++----
 .../staging/media/rockchip/vpu/rockchip_vpu_v4l2.h |  5 +----
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index d729b27c95db..8c02a7a2e65f 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -272,8 +272,7 @@ static int rockchip_vpu_open(struct file *filp)
 	filp->private_data = &ctx->fh;
 	v4l2_fh_add(&ctx->fh);
 
-	rockchip_vpu_reset_dst_fmt(vpu, ctx);
-	rockchip_vpu_reset_src_fmt(vpu, ctx);
+	rockchip_vpu_reset_fmts(ctx);
 
 	ret = rockchip_vpu_ctrls_setup(vpu, ctx);
 	if (ret) {
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
index 7a03bf0a6359..832f3b015f1d 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
@@ -261,8 +261,8 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	return 0;
 }
 
-void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx)
+static void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
+				       struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->dst_fmt;
 
@@ -286,8 +286,8 @@ void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 		fmt->width * fmt->height * ctx->vpu_dst_fmt->max_depth;
 }
 
-void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx)
+static void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
+				       struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->src_fmt;
 	unsigned int width, height;
@@ -309,6 +309,12 @@ void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 	v4l2_fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, width, height);
 }
 
+void rockchip_vpu_reset_fmts(struct rockchip_vpu_ctx *ctx)
+{
+	rockchip_vpu_reset_dst_fmt(ctx->dev, ctx);
+	rockchip_vpu_reset_src_fmt(ctx->dev, ctx);
+}
+
 static int
 vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 {
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
index 816bd3988218..493e8751d22d 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
@@ -21,9 +21,6 @@
 extern const struct v4l2_ioctl_ops rockchip_vpu_ioctl_ops;
 extern const struct vb2_ops rockchip_vpu_queue_ops;
 
-void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx);
-void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_reset_fmts(struct rockchip_vpu_ctx *ctx);
 
 #endif /* ROCKCHIP_VPU_V4L2_H_ */
-- 
2.20.1
