From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 2/9] media: staging: rkisp1: remove unused field alloc_ctx from struct rkisp1_device
Date: Sat, 18 Jul 2020 16:59:11 +0200
Message-ID: <20200718145918.17752-3-dafna.hirschfeld@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>
List-Id: linux-rockchip.vger.kernel.org

The field alloc_ctx in struct rkisp1_device is not used.
This patch removes it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/rkisp1/rkisp1-common.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 3f0621814696..2af8ffa0de52 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -264,7 +264,6 @@ struct rkisp1_device {
 	struct rkisp1_stats stats;
 	struct rkisp1_params params;
 	struct media_pipeline pipe;
-	struct vb2_alloc_ctx *alloc_ctx;
 	struct mutex stream_lock;
 	struct rkisp1_debug debug;
 };
-- 
2.17.1
