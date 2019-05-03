From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v5 04/15] rockchip/vpu: Use v4l2_apply_frmsize_constraints()
 where appropriate
Date: Fri,  3 May 2019 13:47:08 +0200
Message-ID: <20190503114719.28784-5-boris.brezillon@collabora.com>
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

Use the v4l2_apply_frmsize_constraints() helper instead of open-coding
it.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes in v5:
* New patch
---
 .../media/rockchip/vpu/rockchip_vpu_enc.c     | 44 ++++++-------------
 1 file changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index 7c7c20ab2733..aa00df9a7ecb 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -197,15 +197,9 @@ vidioc_try_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 
 	pix_mp->num_planes = 1;
 	pix_mp->field = V4L2_FIELD_NONE;
-	pix_mp->width = clamp(pix_mp->width,
-			      fmt->frmsize.min_width,
-			      fmt->frmsize.max_width);
-	pix_mp->height = clamp(pix_mp->height,
-			       fmt->frmsize.min_height,
-			       fmt->frmsize.max_height);
-	/* Round up to macroblocks. */
-	pix_mp->width = round_up(pix_mp->width, fmt->frmsize.step_width);
-	pix_mp->height = round_up(pix_mp->height, fmt->frmsize.step_height);
+
+	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
+				       &fmt->frmsize);
 
 	/*
 	 * For compressed formats the application can specify
@@ -226,7 +220,6 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	struct rockchip_vpu_ctx *ctx = fh_to_ctx(priv);
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	const struct rockchip_vpu_fmt *fmt;
-	unsigned int width, height;
 	int i;
 
 	vpu_debug(4, "%c%c%c%c\n",
@@ -242,18 +235,13 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	}
 
 	pix_mp->field = V4L2_FIELD_NONE;
-	width = clamp(pix_mp->width,
-		      ctx->vpu_dst_fmt->frmsize.min_width,
-		      ctx->vpu_dst_fmt->frmsize.max_width);
-	height = clamp(pix_mp->height,
-		       ctx->vpu_dst_fmt->frmsize.min_height,
-		       ctx->vpu_dst_fmt->frmsize.max_height);
-	/* Round up to macroblocks. */
-	width = round_up(width, ctx->vpu_dst_fmt->frmsize.step_width);
-	height = round_up(height, ctx->vpu_dst_fmt->frmsize.step_height);
+
+	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
+				       &ctx->vpu_dst_fmt->frmsize);
 
 	/* Fill remaining fields */
-	v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, width, height);
+	v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
+			    pix_mp->height);
 
 	for (i = 0; i < pix_mp->num_planes; i++) {
 		memset(pix_mp->plane_fmt[i].reserved, 0,
@@ -272,10 +260,8 @@ void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 	memset(fmt, 0, sizeof(*fmt));
 
 	fmt->num_planes = 1;
-	fmt->width = clamp(fmt->width, ctx->vpu_dst_fmt->frmsize.min_width,
-			   ctx->vpu_dst_fmt->frmsize.max_width);
-	fmt->height = clamp(fmt->height, ctx->vpu_dst_fmt->frmsize.min_height,
-			    ctx->vpu_dst_fmt->frmsize.max_height);
+	v4l2_apply_frmsize_constraints(&fmt->width, &fmt->height,
+				       &ctx->vpu_dst_fmt->frmsize);
 	fmt->pixelformat = ctx->vpu_dst_fmt->fourcc;
 	fmt->field = V4L2_FIELD_NONE;
 	fmt->colorspace = V4L2_COLORSPACE_JPEG,
@@ -291,23 +277,21 @@ void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 				    struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->src_fmt;
-	unsigned int width, height;
 
 	ctx->vpu_src_fmt = rockchip_vpu_get_default_fmt(ctx, false);
 
 	memset(fmt, 0, sizeof(*fmt));
 
-	width = clamp(fmt->width, ctx->vpu_dst_fmt->frmsize.min_width,
-		      ctx->vpu_dst_fmt->frmsize.max_width);
-	height = clamp(fmt->height, ctx->vpu_dst_fmt->frmsize.min_height,
-		       ctx->vpu_dst_fmt->frmsize.max_height);
+	v4l2_apply_frmsize_constraints(&fmt->width, &fmt->height,
+				       &ctx->vpu_src_fmt->frmsize);
 	fmt->field = V4L2_FIELD_NONE;
 	fmt->colorspace = V4L2_COLORSPACE_JPEG,
 	fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 	fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 
-	v4l2_fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, width, height);
+	v4l2_fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, fmt->width,
+			    fmt->height);
 }
 
 static int
-- 
2.20.1
