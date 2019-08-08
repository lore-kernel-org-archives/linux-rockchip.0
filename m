From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v4 02/11] media: uapi: h264: Rename pixel format
Date: Thu,  8 Aug 2019 07:34:23 -0300
Message-ID: <20190808103432.12062-3-ezequiel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190808103432.12062-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
because the pixel format would represent H264 slices without any
start code.

However, as we will now introduce a start code menu control,
give the pixel format a more meaningful name, while it's
still early enough to do so.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes in v4:
* New patch.
---
 Documentation/media/uapi/v4l/pixfmt-compressed.rst | 4 ++--
 drivers/media/v4l2-core/v4l2-ioctl.c               | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_dec.c    | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_video.c  | 6 +++---
 include/media/h264-ctrls.h                         | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
index f52a7b67023d..9b65473a2288 100644
--- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
@@ -52,9 +52,9 @@ Compressed Formats
       - ``V4L2_PIX_FMT_H264_MVC``
       - 'M264'
       - H264 MVC video elementary stream.
-    * .. _V4L2-PIX-FMT-H264-SLICE-RAW:
+    * .. _V4L2-PIX-FMT-H264-SLICE:
 
-      - ``V4L2_PIX_FMT_H264_SLICE_RAW``
+      - ``V4L2_PIX_FMT_H264_SLICE``
       - 'S264'
       - H264 parsed slice data, without the start code and as
 	extracted from the H264 bitstream.  This format is adapted for
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index bb5b4926538a..39f10621c91b 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1343,7 +1343,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 		case V4L2_PIX_FMT_H264:		descr = "H.264"; break;
 		case V4L2_PIX_FMT_H264_NO_SC:	descr = "H.264 (No Start Codes)"; break;
 		case V4L2_PIX_FMT_H264_MVC:	descr = "H.264 MVC"; break;
-		case V4L2_PIX_FMT_H264_SLICE_RAW:	descr = "H.264 Parsed Slice Data"; break;
+		case V4L2_PIX_FMT_H264_SLICE:	descr = "H.264 Parsed Slice Data"; break;
 		case V4L2_PIX_FMT_H263:		descr = "H.263"; break;
 		case V4L2_PIX_FMT_MPEG1:	descr = "MPEG-1 ES"; break;
 		case V4L2_PIX_FMT_MPEG2:	descr = "MPEG-2 ES"; break;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index bdad87eb9d79..56ca4c9ad01c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -46,7 +46,7 @@ void cedrus_device_run(void *priv)
 			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
 		break;
 
-	case V4L2_PIX_FMT_H264_SLICE_RAW:
+	case V4L2_PIX_FMT_H264_SLICE:
 		run.h264.decode_params = cedrus_find_control_data(ctx,
 			V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
 		run.h264.pps = cedrus_find_control_data(ctx,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..06c695615703 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -38,7 +38,7 @@ static struct cedrus_format cedrus_formats[] = {
 		.directions	= CEDRUS_DECODE_SRC,
 	},
 	{
-		.pixelformat	= V4L2_PIX_FMT_H264_SLICE_RAW,
+		.pixelformat	= V4L2_PIX_FMT_H264_SLICE,
 		.directions	= CEDRUS_DECODE_SRC,
 	},
 	{
@@ -104,7 +104,7 @@ static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 
 	switch (pix_fmt->pixelformat) {
 	case V4L2_PIX_FMT_MPEG2_SLICE:
-	case V4L2_PIX_FMT_H264_SLICE_RAW:
+	case V4L2_PIX_FMT_H264_SLICE:
 		/* Zero bytes per line for encoded source. */
 		bytesperline = 0;
 
@@ -469,7 +469,7 @@ static int cedrus_start_streaming(struct vb2_queue *vq, unsigned int count)
 		ctx->current_codec = CEDRUS_CODEC_MPEG2;
 		break;
 
-	case V4L2_PIX_FMT_H264_SLICE_RAW:
+	case V4L2_PIX_FMT_H264_SLICE:
 		ctx->current_codec = CEDRUS_CODEC_H264;
 		break;
 
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index e1404d78d6ff..6160a69c0143 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -14,7 +14,7 @@
 #include <linux/videodev2.h>
 
 /* Our pixel format isn't stable at the moment */
-#define V4L2_PIX_FMT_H264_SLICE_RAW v4l2_fourcc('S', '2', '6', '4') /* H264 parsed slices */
+#define V4L2_PIX_FMT_H264_SLICE v4l2_fourcc('S', '2', '6', '4') /* H264 parsed slices */
 
 /*
  * This is put insanely high to avoid conflicting with controls that
-- 
2.22.0
