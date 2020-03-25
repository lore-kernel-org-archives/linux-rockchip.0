From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 5/7] hantro: Move H264 motion vector calculation to a helper
Date: Wed, 25 Mar 2020 18:34:36 -0300
Message-ID: <20200325213439.16509-6-ezequiel@collabora.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200325213439.16509-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Move the extra bytes calculation that are needed for H264
motion vector to a helper. This is just a cosmetic cleanup.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro.h      |  4 ---
 drivers/staging/media/hantro/hantro_hw.h   | 31 ++++++++++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c | 25 ++---------------
 3 files changed, 33 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 327ddef45345..2089f88a44a2 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -26,10 +26,6 @@
 
 #include "hantro_hw.h"
 
-#define MB_DIM			16
-#define MB_WIDTH(w)		DIV_ROUND_UP(w, MB_DIM)
-#define MB_HEIGHT(h)		DIV_ROUND_UP(h, MB_DIM)
-
 struct hantro_ctx;
 struct hantro_codec_ops;
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 7dfc9bad7297..4053d8710e04 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -18,6 +18,10 @@
 
 #define DEC_8190_ALIGN_MASK	0x07U
 
+#define MB_DIM			16
+#define MB_WIDTH(w)		DIV_ROUND_UP(w, MB_DIM)
+#define MB_HEIGHT(h)		DIV_ROUND_UP(h, MB_DIM)
+
 struct hantro_dev;
 struct hantro_ctx;
 struct hantro_buf;
@@ -176,6 +180,33 @@ void hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
 int hantro_h264_dec_init(struct hantro_ctx *ctx);
 void hantro_h264_dec_exit(struct hantro_ctx *ctx);
 
+static inline size_t
+hantro_h264_mv_size(unsigned int width, unsigned int height)
+{
+	/*
+	 * A decoded 8-bit 4:2:0 NV12 frame may need memory for up to
+	 * 448 bytes per macroblock with additional 32 bytes on
+	 * multi-core variants.
+	 *
+	 * The H264 decoder needs extra space on the output buffers
+	 * to store motion vectors. This is needed for reference
+	 * frames and only if the format is non-post-processed NV12.
+	 *
+	 * Memory layout is as follow:
+	 *
+	 * +---------------------------+
+	 * | Y-plane   256 bytes x MBs |
+	 * +---------------------------+
+	 * | UV-plane  128 bytes x MBs |
+	 * +---------------------------+
+	 * | MV buffer  64 bytes x MBs |
+	 * +---------------------------+
+	 * | MC sync          32 bytes |
+	 * +---------------------------+
+	 */
+	return 64 * MB_WIDTH(width) * MB_WIDTH(height) + 32;
+}
+
 void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 3142ab6697d5..458b502ff01b 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -273,32 +273,11 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		/* Fill remaining fields */
 		v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
 				    pix_mp->height);
-		/*
-		 * A decoded 8-bit 4:2:0 NV12 frame may need memory for up to
-		 * 448 bytes per macroblock with additional 32 bytes on
-		 * multi-core variants.
-		 *
-		 * The H264 decoder needs extra space on the output buffers
-		 * to store motion vectors. This is needed for reference
-		 * frames and only if the format is non-post-processed NV12.
-		 *
-		 * Memory layout is as follow:
-		 *
-		 * +---------------------------+
-		 * | Y-plane   256 bytes x MBs |
-		 * +---------------------------+
-		 * | UV-plane  128 bytes x MBs |
-		 * +---------------------------+
-		 * | MV buffer  64 bytes x MBs |
-		 * +---------------------------+
-		 * | MC sync          32 bytes |
-		 * +---------------------------+
-		 */
 		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
 		    !hantro_needs_postproc(ctx, fmt))
 			pix_mp->plane_fmt[0].sizeimage +=
-				64 * MB_WIDTH(pix_mp->width) *
-				     MB_WIDTH(pix_mp->height) + 32;
+				hantro_h264_mv_size(pix_mp->width,
+						    pix_mp->height);
 	} else if (!pix_mp->plane_fmt[0].sizeimage) {
 		/*
 		 * For coded formats the application can specify
-- 
2.26.0.rc2
