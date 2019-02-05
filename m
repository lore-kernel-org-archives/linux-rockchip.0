From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 02/10] rockchip/vpu: Use pixel format helpers
Date: Tue,  5 Feb 2019 17:24:09 -0300
Message-ID: <20190205202417.16555-3-ezequiel@collabora.com>
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

Now that we've introduced the pixel format helpers, use them
in vpu driver, and get rid of the internal helpers.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 .../media/rockchip/vpu/rockchip_vpu_enc.c     | 91 +------------------
 1 file changed, 2 insertions(+), 89 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index ab0fb2053620..4451bb2dc3d7 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -30,93 +30,6 @@
 #include "rockchip_vpu_hw.h"
 #include "rockchip_vpu_common.h"
 
-/**
- * struct v4l2_format_info - information about a V4L2 format
- * @format: 4CC format identifier (V4L2_PIX_FMT_*)
- * @header_size: Size of header, optional and used by compressed formats
- * @num_planes: Number of planes (1 to 3)
- * @cpp: Number of bytes per pixel (per plane)
- * @hsub: Horizontal chroma subsampling factor
- * @vsub: Vertical chroma subsampling factor
- * @is_compressed: Is it a compressed format?
- * @multiplanar: Is it a multiplanar variant format? (e.g. NV12M)
- */
-struct v4l2_format_info {
-	u32 format;
-	u32 header_size;
-	u8 num_planes;
-	u8 cpp[3];
-	u8 hsub;
-	u8 vsub;
-	u8 is_compressed;
-	u8 multiplanar;
-};
-
-static const struct v4l2_format_info *
-v4l2_format_info(u32 format)
-{
-	static const struct v4l2_format_info formats[] = {
-		{ .format = V4L2_PIX_FMT_YUV420M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
-		{ .format = V4L2_PIX_FMT_NV12M,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
-		{ .format = V4L2_PIX_FMT_YUYV,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
-		{ .format = V4L2_PIX_FMT_UYVY,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
-	};
-	unsigned int i;
-
-	for (i = 0; i < ARRAY_SIZE(formats); ++i) {
-		if (formats[i].format == format)
-			return &formats[i];
-	}
-
-	vpu_err("Unsupported V4L 4CC format (%08x)\n", format);
-	return NULL;
-}
-
-static void
-fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
-	       int pixelformat, int width, int height)
-{
-	const struct v4l2_format_info *info;
-	struct v4l2_plane_pix_format *plane;
-	int i;
-
-	info = v4l2_format_info(pixelformat);
-	if (!info)
-		return;
-
-	pixfmt->width = width;
-	pixfmt->height = height;
-	pixfmt->pixelformat = pixelformat;
-
-	if (!info->multiplanar) {
-		pixfmt->num_planes = 1;
-		plane = &pixfmt->plane_fmt[0];
-		plane->bytesperline = info->is_compressed ?
-					0 : width * info->cpp[0];
-		plane->sizeimage = info->header_size;
-		for (i = 0; i < info->num_planes; i++) {
-			unsigned int hsub = (i == 0) ? 1 : info->hsub;
-			unsigned int vsub = (i == 0) ? 1 : info->vsub;
-
-			plane->sizeimage += info->cpp[i] *
-				DIV_ROUND_UP(width, hsub) *
-				DIV_ROUND_UP(height, vsub);
-		}
-	} else {
-		pixfmt->num_planes = info->num_planes;
-		for (i = 0; i < info->num_planes; i++) {
-			unsigned int hsub = (i == 0) ? 1 : info->hsub;
-			unsigned int vsub = (i == 0) ? 1 : info->vsub;
-
-			plane = &pixfmt->plane_fmt[i];
-			plane->bytesperline =
-				info->cpp[i] * DIV_ROUND_UP(width, hsub);
-			plane->sizeimage =
-				plane->bytesperline * DIV_ROUND_UP(height, vsub);
-		}
-	}
-}
-
 static const struct rockchip_vpu_fmt *
 rockchip_vpu_find_format(struct rockchip_vpu_ctx *ctx, u32 fourcc)
 {
@@ -339,7 +252,7 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	height = round_up(height, JPEG_MB_DIM);
 
 	/* Fill remaining fields */
-	fill_pixfmt_mp(pix_mp, fmt->fourcc, width, height);
+	v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, width, height);
 
 	for (i = 0; i < pix_mp->num_planes; i++) {
 		memset(pix_mp->plane_fmt[i].reserved, 0,
@@ -393,7 +306,7 @@ void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 	fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 
-	fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, width, height);
+	v4l2_fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, width, height);
 }
 
 static int
-- 
2.20.1
