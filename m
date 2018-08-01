From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 2/3] media: Add controls for jpeg quantization tables
Date: Wed,  1 Aug 2018 18:07:13 -0300
Message-ID: <20180801210714.1620-3-ezequiel@collabora.com>
References: <20180801210714.1620-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180801210714.1620-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Add V4L2_CID_JPEG_LUMA/CHROMA_QUANTIZATION controls to allow userspace
configure the JPEG quantization tables.

Signed-off-by: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 4 ++++
 include/uapi/linux/v4l2-controls.h   | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index d29e45516eb7..b06adba2c486 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -980,6 +980,8 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_JPEG_RESTART_INTERVAL:	return "Restart Interval";
 	case V4L2_CID_JPEG_COMPRESSION_QUALITY:	return "Compression Quality";
 	case V4L2_CID_JPEG_ACTIVE_MARKER:	return "Active Markers";
+	case V4L2_CID_JPEG_LUMA_QUANTIZATION:	return "Luminance Quantization Matrix";
+	case V4L2_CID_JPEG_CHROMA_QUANTIZATION:	return "Chrominance Quantization Matrix";
 
 	/* Image source controls */
 	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
@@ -1263,6 +1265,8 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 		*flags |= V4L2_CTRL_FLAG_READ_ONLY;
 		break;
 	case V4L2_CID_DETECT_MD_REGION_GRID:
+	case V4L2_CID_JPEG_LUMA_QUANTIZATION:
+	case V4L2_CID_JPEG_CHROMA_QUANTIZATION:
 		*type = V4L2_CTRL_TYPE_U8;
 		break;
 	case V4L2_CID_DETECT_MD_THRESHOLD_GRID:
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 8d473c979b61..b731fd7bc899 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -971,6 +971,9 @@ enum v4l2_jpeg_chroma_subsampling {
 #define	V4L2_JPEG_ACTIVE_MARKER_DQT		(1 << 17)
 #define	V4L2_JPEG_ACTIVE_MARKER_DHT		(1 << 18)
 
+#define V4L2_CID_JPEG_LUMA_QUANTIZATION		(V4L2_CID_JPEG_CLASS_BASE + 5)
+#define V4L2_CID_JPEG_CHROMA_QUANTIZATION	(V4L2_CID_JPEG_CLASS_BASE + 6)
+
 
 /* Image source controls */
 #define V4L2_CID_IMAGE_SOURCE_CLASS_BASE	(V4L2_CTRL_CLASS_IMAGE_SOURCE | 0x900)
-- 
2.18.0.rc2
