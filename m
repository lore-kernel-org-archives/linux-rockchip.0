From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 2/4] media: staging: rkisp1: isp: check for dphy bus before initializations in s_stream
Date: Fri,  7 Feb 2020 09:59:49 +0100
Message-ID: <20200207085951.5226-3-dafna.hirschfeld@collabora.com>
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

In rkisp1_isp_s_stream it is better to return error in case the
bus type is not dphy before initializing the registers.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 56bd95d01f65..c98e3c16f520 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -963,14 +963,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	rkisp1->active_sensor = container_of(sensor_sd->asd,
 					     struct rkisp1_sensor_async, asd);
 
+	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
+		return -EINVAL;
+
 	atomic_set(&rkisp1->isp.frame_sequence, -1);
 	ret = rkisp1_config_cif(rkisp1);
 	if (ret)
 		return ret;
 
-	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
-		return -EINVAL;
-
 	ret = rkisp1_mipi_csi2_start(&rkisp1->isp, rkisp1->active_sensor);
 	if (ret)
 		return ret;
-- 
2.17.1
