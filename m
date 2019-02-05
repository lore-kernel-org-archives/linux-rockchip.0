From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 01/10] media: Introduce helpers to fill pixel format structs
Date: Tue,  5 Feb 2019 17:24:08 -0300
Message-ID: <20190205202417.16555-2-ezequiel@collabora.com>
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

Add two new API helpers, v4l2_fill_pixfmt and v4l2_fill_pixfmt_mp,
to be used by drivers to calculate plane sizes and bytes per lines.

Note that driver-specific paddig and alignment are not
taken into account, and must be done by drivers using this API.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/media/v4l2-core/Makefile      |   2 +-
 drivers/media/v4l2-core/v4l2-common.c |  71 +++++++++++++++++
 drivers/media/v4l2-core/v4l2-fourcc.c | 109 ++++++++++++++++++++++++++
 include/media/v4l2-common.h           |   5 ++
 include/media/v4l2-fourcc.h           |  53 +++++++++++++
 5 files changed, 239 insertions(+), 1 deletion(-)
 create mode 100644 drivers/media/v4l2-core/v4l2-fourcc.c
 create mode 100644 include/media/v4l2-fourcc.h

diff --git a/drivers/media/v4l2-core/Makefile b/drivers/media/v4l2-core/Makefile
index 9ee57e1efefe..bc23c3407c17 100644
--- a/drivers/media/v4l2-core/Makefile
+++ b/drivers/media/v4l2-core/Makefile
@@ -7,7 +7,7 @@ tuner-objs	:=	tuner-core.o
 
 videodev-objs	:=	v4l2-dev.o v4l2-ioctl.o v4l2-device.o v4l2-fh.o \
 			v4l2-event.o v4l2-ctrls.o v4l2-subdev.o v4l2-clk.o \
-			v4l2-async.o
+			v4l2-async.o v4l2-fourcc.o
 ifeq ($(CONFIG_COMPAT),y)
   videodev-objs += v4l2-compat-ioctl32.o
 endif
diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 50763fb42a1b..39d86a389cae 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -61,6 +61,7 @@
 #include <media/v4l2-common.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
+#include <media/v4l2-fourcc.h>
 
 #include <linux/videodev2.h>
 
@@ -455,3 +456,73 @@ int v4l2_s_parm_cap(struct video_device *vdev,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(v4l2_s_parm_cap);
+
+void v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
+			 int pixelformat, int width, int height)
+{
+	const struct v4l2_format_info *info;
+	struct v4l2_plane_pix_format *plane;
+	int i;
+
+	info = v4l2_format_info(pixelformat);
+	if (!info)
+		return;
+
+	pixfmt->width = width;
+	pixfmt->height = height;
+	pixfmt->pixelformat = pixelformat;
+
+	if (!info->multiplanar) {
+		pixfmt->num_planes = 1;
+		plane = &pixfmt->plane_fmt[0];
+		plane->bytesperline = width * info->cpp[0];
+		plane->sizeimage = 0;
+		for (i = 0; i < info->num_planes; i++) {
+			unsigned int hsub = (i == 0) ? 1 : info->hsub;
+			unsigned int vsub = (i == 0) ? 1 : info->vsub;
+
+			plane->sizeimage += info->cpp[i] *
+				DIV_ROUND_UP(width, hsub) *
+				DIV_ROUND_UP(height, vsub);
+		}
+	} else {
+		pixfmt->num_planes = info->num_planes;
+		for (i = 0; i < info->num_planes; i++) {
+			unsigned int hsub = (i == 0) ? 1 : info->hsub;
+			unsigned int vsub = (i == 0) ? 1 : info->vsub;
+
+			plane = &pixfmt->plane_fmt[i];
+			plane->bytesperline =
+				info->cpp[i] * DIV_ROUND_UP(width, hsub);
+			plane->sizeimage =
+				plane->bytesperline * DIV_ROUND_UP(height, vsub);
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt_mp);
+
+void v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, int pixelformat, int width, int height)
+{
+	const struct v4l2_format_info *info;
+	int i;
+
+	info = v4l2_format_info(pixelformat);
+	if (!info)
+		return;
+
+	pixfmt->width = width;
+	pixfmt->height = height;
+	pixfmt->pixelformat = pixelformat;
+	pixfmt->bytesperline = width * info->cpp[0];
+	pixfmt->sizeimage = 0;
+
+	for (i = 0; i < info->num_planes; i++) {
+		unsigned int hsub = (i == 0) ? 1 : info->hsub;
+		unsigned int vsub = (i == 0) ? 1 : info->vsub;
+
+		pixfmt->sizeimage += info->cpp[i] *
+			DIV_ROUND_UP(width, hsub) *
+			DIV_ROUND_UP(height, vsub);
+	}
+}
+EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
diff --git a/drivers/media/v4l2-core/v4l2-fourcc.c b/drivers/media/v4l2-core/v4l2-fourcc.c
new file mode 100644
index 000000000000..982c0ffa1a66
--- /dev/null
+++ b/drivers/media/v4l2-core/v4l2-fourcc.c
@@ -0,0 +1,109 @@
+/*
+ * Copyright (c) 2018 Collabora, Ltd.
+ *
+ * Based on drm-fourcc:
+ * Copyright (c) 2016 Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that copyright
+ * notice and this permission notice appear in supporting documentation, and
+ * that the name of the copyright holders not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  The copyright holders make no representations
+ * about the suitability of this software for any purpose.  It is provided "as
+ * is" without express or implied warranty.
+ *
+ * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
+ * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
+ * EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR
+ * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
+ * DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
+ * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
+ * OF THIS SOFTWARE.
+ */
+
+#include <linux/ctype.h>
+#include <linux/videodev2.h>
+#include <media/v4l2-fourcc.h>
+
+static char printable_char(int c)
+{
+	return isascii(c) && isprint(c) ? c : '?';
+}
+
+const char *v4l2_get_format_name(uint32_t format)
+{
+	static char buf[4];
+
+	snprintf(buf, 4,
+		 "%c%c%c%c",
+		 printable_char(format & 0xff),
+		 printable_char((format >> 8) & 0xff),
+		 printable_char((format >> 16) & 0xff),
+		 printable_char((format >> 24) & 0x7f));
+
+	return buf;
+}
+EXPORT_SYMBOL(v4l2_get_format_name);
+
+const struct v4l2_format_info *v4l2_format_info(u32 format)
+{
+	static const struct v4l2_format_info formats[] = {
+		/* RGB formats */
+		{ .format = V4L2_PIX_FMT_BGR24,		.num_planes = 1, .cpp = { 3, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_RGB24,		.num_planes = 1, .cpp = { 3, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_HSV24,		.num_planes = 1, .cpp = { 3, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_BGR32,		.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_XBGR32,	.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_RGB32,		.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_XRGB32,	.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_HSV32,		.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_ARGB32,	.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_ABGR32,	.num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_GREY,		.num_planes = 1, .cpp = { 1, 0, 0 }, .hsub = 1, .vsub = 1 },
+
+		/* YUV formats */
+		{ .format = V4L2_PIX_FMT_YUYV,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_YVYU,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_UYVY,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_VYUY,		.num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1 },
+
+		{ .format = V4L2_PIX_FMT_NV12,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2 },
+		{ .format = V4L2_PIX_FMT_NV21,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2 },
+		{ .format = V4L2_PIX_FMT_NV16,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_NV61,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_NV24,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 1, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_NV42,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 1, .vsub = 1 },
+
+		{ .format = V4L2_PIX_FMT_YUV410,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 4 },
+		{ .format = V4L2_PIX_FMT_YVU410,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 4 },
+		{ .format = V4L2_PIX_FMT_YUV411P,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 1 },
+		{ .format = V4L2_PIX_FMT_YUV420,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2 },
+		{ .format = V4L2_PIX_FMT_YVU420,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2 },
+		{ .format = V4L2_PIX_FMT_YUV422P,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 1 },
+
+		{ .format = V4L2_PIX_FMT_YUV420M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_YVU420M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_YUV422M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 1, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_YVU422M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 1, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_YUV444M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 1, .vsub = 1, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_YVU444M,	.num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 1, .vsub = 1, .multiplanar = 1 },
+
+		{ .format = V4L2_PIX_FMT_NV12M,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_NV21M,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_NV16M,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 1, .multiplanar = 1 },
+		{ .format = V4L2_PIX_FMT_NV61M,		.num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 1, .multiplanar = 1 },
+
+	};
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(formats); ++i) {
+		if (formats[i].format == format)
+			return &formats[i];
+	}
+
+	pr_warn("Unsupported V4L 4CC format %s (%08x)\n", v4l2_get_format_name(format), format);
+	return NULL;
+}
+EXPORT_SYMBOL(v4l2_format_info);
diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
index 0c511ed8ffb0..6461ce747d90 100644
--- a/include/media/v4l2-common.h
+++ b/include/media/v4l2-common.h
@@ -327,6 +327,11 @@ void v4l_bound_align_image(unsigned int *width, unsigned int wmin,
 			   unsigned int hmax, unsigned int halign,
 			   unsigned int salign);
 
+void v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, int pixelformat,
+		      int width, int height);
+void v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, int pixelformat,
+			 int width, int height);
+
 /**
  * v4l2_find_nearest_size - Find the nearest size among a discrete
  *	set of resolutions contained in an array of a driver specific struct.
diff --git a/include/media/v4l2-fourcc.h b/include/media/v4l2-fourcc.h
new file mode 100644
index 000000000000..3d24f442aaf5
--- /dev/null
+++ b/include/media/v4l2-fourcc.h
@@ -0,0 +1,53 @@
+/*
+ * Copyright (c) 2018 Collabora, Ltd.
+ *
+ * Based on drm-fourcc:
+ * Copyright (c) 2016 Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that copyright
+ * notice and this permission notice appear in supporting documentation, and
+ * that the name of the copyright holders not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  The copyright holders make no representations
+ * about the suitability of this software for any purpose.  It is provided "as
+ * is" without express or implied warranty.
+ *
+ * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
+ * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
+ * EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR
+ * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
+ * DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
+ * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
+ * OF THIS SOFTWARE.
+ */
+#ifndef __V4L2_FOURCC_H__
+#define __V4L2_FOURCC_H__
+
+#include <linux/types.h>
+
+/**
+ * struct v4l2_format_info - information about a V4L2 format
+ * @format: 4CC format identifier (V4L2_PIX_FMT_*)
+ * @header_size: Size of header, optional and used by compressed formats
+ * @num_planes: Number of planes (1 to 3)
+ * @cpp: Number of bytes per pixel (per plane)
+ * @hsub: Horizontal chroma subsampling factor
+ * @vsub: Vertical chroma subsampling factor
+ * @multiplanar: Is it a multiplanar variant format? (e.g. NV12M)
+ */
+struct v4l2_format_info {
+	u32 format;
+	u32 header_size;
+	u8 num_planes;
+	u8 cpp[3];
+	u8 hsub;
+	u8 vsub;
+	u8 multiplanar;
+};
+
+const struct v4l2_format_info *v4l2_format_info(u32 format);
+const char *v4l2_get_format_name(u32 format);
+
+#endif
-- 
2.20.1
