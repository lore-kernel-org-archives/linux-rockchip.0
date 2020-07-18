From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 5/9] media: staging: rkisp1: add a pointer to rkisp1_device from struct rkisp1_isp
Date: Sat, 18 Jul 2020 16:59:14 +0200
Message-ID: <20200718145918.17752-6-dafna.hirschfeld@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The code in rkisp1-isp.c requires access to struct 'rkisp1_device'
in several places. It access it using the 'container_of' macro.
This patch adds a pointer to 'rkisp1_device' in struct 'rkisp1_isp'
to simplify the access.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h |  1 +
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 12 +++++-------
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index e54793d13c3d..893caa9df891 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -106,6 +106,7 @@ struct rkisp1_sensor_async {
  */
 struct rkisp1_isp {
 	struct v4l2_subdev sd;
+	struct rkisp1_device *rkisp1;
 	struct media_pad pads[RKISP1_ISP_PAD_MAX];
 	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
 	const struct rkisp1_isp_mbus_info *sink_fmt;
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 6ec1e9816e9f..b2131aea5488 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -836,9 +836,8 @@ static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
 				    struct v4l2_subdev_pad_config *cfg,
 				    struct v4l2_subdev_selection *sel)
 {
-	struct rkisp1_device *rkisp1 =
-		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
 	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	int ret = 0;
 
 	if (sel->target != V4L2_SEL_TGT_CROP)
@@ -883,8 +882,7 @@ static const struct v4l2_subdev_pad_ops rkisp1_isp_pad_ops = {
 static int rkisp1_mipi_csi2_start(struct rkisp1_isp *isp,
 				  struct rkisp1_sensor_async *sensor)
 {
-	struct rkisp1_device *rkisp1 =
-		container_of(isp->sd.v4l2_dev, struct rkisp1_device, v4l2_dev);
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	union phy_configure_opts opts;
 	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
 	s64 pixel_clock;
@@ -916,9 +914,8 @@ static void rkisp1_mipi_csi2_stop(struct rkisp1_sensor_async *sensor)
 
 static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 {
-	struct rkisp1_device *rkisp1 =
-		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
-	struct rkisp1_isp *isp = &rkisp1->isp;
+	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	struct v4l2_subdev *sensor_sd;
 	int ret = 0;
 
@@ -997,6 +994,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 	struct v4l2_subdev *sd = &isp->sd;
 	int ret;
 
+	isp->rkisp1 = rkisp1;
 	v4l2_subdev_init(sd, &rkisp1_isp_ops);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
 	sd->entity.ops = &rkisp1_isp_media_ops;
-- 
2.17.1
