From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: destroy subdevs' mutexes when unregistering
Date: Mon, 17 Feb 2020 18:51:13 +0100
Message-ID: <20200217175113.8216-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

call 'mutex_destroy' on the locks of the subdevices 'isp' and 'resizer'
when unregistering and when failing to register.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
This patch is a follow-up patch for the patchset:
'media: staging: rkisp1: add serialization to the isp and resizer ops'

 drivers/staging/media/rkisp1/rkisp1-isp.c     | 5 ++++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index aa7a842f97f8..36c0251911c9 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1051,7 +1051,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 	mutex_init(&isp->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
 	if (ret)
-		return ret;
+		goto err_destroy_mutex;
 
 	ret = v4l2_device_register_subdev(v4l2_dev, sd);
 	if (ret) {
@@ -1064,6 +1064,8 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 
 err_cleanup_media_entity:
 	media_entity_cleanup(&sd->entity);
+err_destroy_mutex:
+	mutex_destroy(&isp->ops_lock);
 
 	return ret;
 }
@@ -1074,6 +1076,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
 
 	v4l2_device_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
+	mutex_destroy(&rkisp1->isp.ops_lock);
 }
 
 /* ----------------------------------------------------------------------------
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 87799fbf0363..0b4385153920 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -695,6 +695,7 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
 {
 	v4l2_device_unregister_subdev(&rsz->sd);
 	media_entity_cleanup(&rsz->sd.entity);
+	mutex_destroy(&rsz->ops_lock);
 }
 
 static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
@@ -727,7 +728,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 	mutex_init(&rsz->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, 2, pads);
 	if (ret)
-		return ret;
+		goto err_destroy_mutex;
 
 	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
 	if (ret) {
@@ -740,6 +741,8 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 
 err_cleanup_media_entity:
 	media_entity_cleanup(&sd->entity);
+err_destroy_mutex:
+	mutex_destroy(&rsz->ops_lock);
 
 	return ret;
 }
-- 
2.17.1
