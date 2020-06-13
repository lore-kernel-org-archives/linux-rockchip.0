From: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [RESEND PATCH v3 4/6] media: staging: rkisp1: rename macros
 'RKISP1_DIR_*' to 'RKISP1_ISP_SD_*'
Date: Sat, 13 Jun 2020 11:13:51 +0200
Message-ID: <20200613091353.12689-5-dafna.hirschfeld@collabora.com>
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200613091353.12689-1-dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org
Cc: mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna3-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The macros 'RKISP1_DIR_*' are flags that indicate on which
pads of the isp subdevice the media bus code is supported. so the
prefix RKISP1_ISP_SD_ is better.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/rkisp1/rkisp1-common.h  |  4 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 0ec8718037a4..12bd9d05050d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -22,8 +22,8 @@
 #include "rkisp1-regs.h"
 #include "uapi/rkisp1-config.h"
 
-#define RKISP1_DIR_SRC BIT(0)
-#define RKISP1_DIR_SINK BIT(1)
+#define RKISP1_ISP_SD_SRC BIT(0)
+#define RKISP1_ISP_SD_SINK BIT(1)
 
 #define RKISP1_ISP_MAX_WIDTH		4032
 #define RKISP1_ISP_MAX_HEIGHT		3024
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 157ac58c2efc..b21a67aea433 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -58,119 +58,119 @@ static const struct rkisp1_isp_mbus_info rkisp1_isp_formats[] = {
 	{
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
 		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
-		.direction	= RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 10,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 10,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 10,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 10,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 12,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 12,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 12,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 12,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 8,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 8,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 8,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
 		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 8,
-		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
+		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
 		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCBYCR,
 		.bus_width	= 16,
-		.direction	= RKISP1_DIR_SINK,
+		.direction	= RKISP1_ISP_SD_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
 		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCRYCB,
 		.bus_width	= 16,
-		.direction	= RKISP1_DIR_SINK,
+		.direction	= RKISP1_ISP_SD_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
 		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CBYCRY,
 		.bus_width	= 16,
-		.direction	= RKISP1_DIR_SINK,
+		.direction	= RKISP1_ISP_SD_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
 		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CRYCBY,
 		.bus_width	= 16,
-		.direction	= RKISP1_DIR_SINK,
+		.direction	= RKISP1_ISP_SD_SINK,
 	},
 };
 
@@ -570,9 +570,9 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
 	int pos = 0;
 
 	if (code->pad == RKISP1_ISP_PAD_SINK_VIDEO) {
-		dir = RKISP1_DIR_SINK;
+		dir = RKISP1_ISP_SD_SINK;
 	} else if (code->pad == RKISP1_ISP_PAD_SOURCE_VIDEO) {
-		dir = RKISP1_DIR_SRC;
+		dir = RKISP1_ISP_SD_SRC;
 	} else {
 		if (code->index > 0)
 			return -EINVAL;
@@ -657,7 +657,7 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 
 	src_fmt->code = format->code;
 	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
-	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
+	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
 		src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
 		mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
 	}
@@ -741,7 +741,7 @@ static void rkisp1_isp_set_sink_fmt(struct rkisp1_isp *isp,
 					  which);
 	sink_fmt->code = format->code;
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
-	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SINK)) {
+	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SINK)) {
 		sink_fmt->code = RKISP1_DEF_SINK_PAD_FMT;
 		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 	}
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index fa28f4bd65c0..137298b77341 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 					    which);
 	sink_fmt->code = format->code;
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
-	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
+	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
 		sink_fmt->code = RKISP1_DEF_FMT;
 		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 	}
-- 
2.17.1
