From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 04/10] rockchip/vpu: Cleanup macroblock alignment
Date: Tue,  5 Feb 2019 17:24:11 -0300
Message-ID: <20190205202417.16555-5-ezequiel@collabora.com>
References: <20190205202417.16555-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190205202417.16555-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We need to make the macrobock alignment generic, in order
to support multiple codecs.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 .../media/rockchip/vpu/rockchip_vpu_enc.c     | 20 ++++++++-----------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index 4451bb2dc3d7..ae1ff3d9b9d2 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -203,8 +203,8 @@ vidioc_try_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 			       fmt->frmsize.min_height,
 			       fmt->frmsize.max_height);
 	/* Round up to macroblocks. */
-	pix_mp->width = round_up(pix_mp->width, JPEG_MB_DIM);
-	pix_mp->height = round_up(pix_mp->height, JPEG_MB_DIM);
+	pix_mp->width = round_up(pix_mp->width, fmt->frmsize.step_width);
+	pix_mp->height = round_up(pix_mp->height, fmt->frmsize.step_height);
 
 	/*
 	 * For compressed formats the application can specify
@@ -248,8 +248,8 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 		       ctx->vpu_dst_fmt->frmsize.min_height,
 		       ctx->vpu_dst_fmt->frmsize.max_height);
 	/* Round up to macroblocks. */
-	width = round_up(width, JPEG_MB_DIM);
-	height = round_up(height, JPEG_MB_DIM);
+	width = round_up(width, ctx->vpu_dst_fmt->frmsize.step_width);
+	height = round_up(height, ctx->vpu_dst_fmt->frmsize.step_height);
 
 	/* Fill remaining fields */
 	v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, width, height);
@@ -338,10 +338,8 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	ctx->dst_fmt.height = pix_mp->height;
 
 	vpu_debug(0, "OUTPUT codec mode: %d\n", ctx->vpu_src_fmt->codec_mode);
-	vpu_debug(0, "fmt - w: %d, h: %d, mb - w: %d, h: %d\n",
-		  pix_mp->width, pix_mp->height,
-		  JPEG_MB_WIDTH(pix_mp->width),
-		  JPEG_MB_HEIGHT(pix_mp->height));
+	vpu_debug(0, "fmt - w: %d, h: %d\n",
+		  pix_mp->width, pix_mp->height);
 	return 0;
 }
 
@@ -380,10 +378,8 @@ vidioc_s_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	ctx->dst_fmt = *pix_mp;
 
 	vpu_debug(0, "CAPTURE codec mode: %d\n", ctx->vpu_dst_fmt->codec_mode);
-	vpu_debug(0, "fmt - w: %d, h: %d, mb - w: %d, h: %d\n",
-		  pix_mp->width, pix_mp->height,
-		  JPEG_MB_WIDTH(pix_mp->width),
-		  JPEG_MB_HEIGHT(pix_mp->height));
+	vpu_debug(0, "fmt - w: %d, h: %d\n",
+		  pix_mp->width, pix_mp->height);
 
 	/*
 	 * Current raw format might have become invalid with newly
-- 
2.20.1
