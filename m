From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [RFC v4 6/8] media: staging: rkisp1: validate quantization matching in link_validate callbacks
Date: Fri,  5 Jun 2020 19:26:23 +0200
Message-ID: <20200605172625.19777-7-dafna.hirschfeld@collabora.com>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, p.zabel@pengutronix.de
List-Id: linux-rockchip.vger.kernel.org

The quantization of the rkisp1 entities can be set by userspace
using the CSC API. Therefore we validate that the
quantization field matches on the links in the link_validate
callbacks.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c |  3 ++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 21 ++++++++++++++++++-
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 66856d5eb576..3eb2ea1a9eb1 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1263,7 +1263,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return ret;
 
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
-	    sd_fmt.format.width != cap->pix.fmt.width)
+	    sd_fmt.format.width != cap->pix.fmt.width ||
+	    sd_fmt.format.quantization != cap->pix.fmt.quantization)
 		return -EPIPE;
 
 	return 0;
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 237cce9183f7..027396b00124 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -671,6 +671,25 @@ static int rkisp1_rsz_set_selection(struct v4l2_subdev *sd,
 	return 0;
 }
 
+int rkisp1_rsz_link_validate(struct v4l2_subdev *sd, struct media_link *link,
+			     struct v4l2_subdev_format *source_fmt,
+			     struct v4l2_subdev_format *sink_fmt)
+{
+	int ret;
+
+	ret = v4l2_subdev_link_validate_default(sd, link, source_fmt, sink_fmt);
+	if (ret)
+		return ret;
+	if (source_fmt->format.quantization != sink_fmt->format.quantization) {
+		struct device *dev = link->graph_obj.mdev->dev;
+
+		dev_warn(dev, "isp->resizer link validation failed, ");
+		dev_warn(dev, "quantizations don't match\n");
+		return -EPIPE;
+	}
+	return 0;
+}
+
 static const struct media_entity_operations rkisp1_rsz_media_ops = {
 	.link_validate = v4l2_subdev_link_validate,
 };
@@ -682,7 +701,7 @@ static const struct v4l2_subdev_pad_ops rkisp1_rsz_pad_ops = {
 	.init_cfg = rkisp1_rsz_init_config,
 	.get_fmt = rkisp1_rsz_get_fmt,
 	.set_fmt = rkisp1_rsz_set_fmt,
-	.link_validate = v4l2_subdev_link_validate_default,
+	.link_validate = rkisp1_rsz_link_validate,
 };
 
 /* ----------------------------------------------------------------------------
-- 
2.17.1
