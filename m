From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 3/9] media: staging: rkisp1: set pads array of the resizer to size 2
Date: Sat, 18 Jul 2020 16:59:12 +0200
Message-ID: <20200718145918.17752-4-dafna.hirschfeld@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>
List-Id: linux-rockchip.vger.kernel.org

Currently the 'pads' and 'pad_cfg' arrays of the rkisp1_resizer
are of size 'RKISP1_ISP_PAD_MAX' which is 4. But the resizer
has only two pads. Change the size of the arrays to 2 by adding
and using 'RKISP1_RSZ_PAD_MAX' similar to the way it is done in
the isp entity.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
[hverkuil: fix typos in commit log]
---
 drivers/staging/media/rkisp1/rkisp1-common.h  | 5 +++--
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 2af8ffa0de52..3dc51d703f73 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -52,6 +52,7 @@
 enum rkisp1_rsz_pad {
 	RKISP1_RSZ_PAD_SINK,
 	RKISP1_RSZ_PAD_SRC,
+	RKISP1_RSZ_PAD_MAX
 };
 
 enum rkisp1_stream_id {
@@ -219,8 +220,8 @@ struct rkisp1_resizer {
 	struct v4l2_subdev sd;
 	enum rkisp1_stream_id id;
 	struct rkisp1_device *rkisp1;
-	struct media_pad pads[RKISP1_ISP_PAD_MAX];
-	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
+	struct media_pad pads[RKISP1_RSZ_PAD_MAX];
+	struct v4l2_subdev_pad_config pad_cfg[RKISP1_RSZ_PAD_MAX];
 	const struct rkisp1_rsz_config *config;
 	enum v4l2_pixel_encoding pixel_enc;
 	struct mutex ops_lock;
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 31aea7dfc976..c66d2a52fd71 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -735,7 +735,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 	rsz->pixel_enc = RKISP1_DEF_PIXEL_ENC;
 
 	mutex_init(&rsz->ops_lock);
-	ret = media_entity_pads_init(&sd->entity, 2, pads);
+	ret = media_entity_pads_init(&sd->entity, RKISP1_RSZ_PAD_MAX, pads);
 	if (ret)
 		return ret;
 
-- 
2.17.1
