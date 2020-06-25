From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming' don't release the lock while returning buffers
Date: Thu, 25 Jun 2020 19:42:57 +0200
Message-ID: <20200625174257.22216-4-dafna.hirschfeld@collabora.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

In the stop_streaming callback 'rkisp1_params_vb2_stop_streaming'
there is no need to release the lock 'config_lock' and then acquire
it again at each iteration when returning all buffers.
This is because the stream is about to end and there is no need
to let the isr access a buffer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index bf006dbeee2d..5169b02731f1 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1488,19 +1488,13 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 	/* stop params input firstly */
 	spin_lock_irqsave(&params->config_lock, flags);
 	params->is_streaming = false;
-	spin_unlock_irqrestore(&params->config_lock, flags);
 
 	for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
-		spin_lock_irqsave(&params->config_lock, flags);
 		if (!list_empty(&params->params)) {
 			buf = list_first_entry(&params->params,
 					       struct rkisp1_buffer, queue);
 			list_del(&buf->queue);
-			spin_unlock_irqrestore(&params->config_lock,
-					       flags);
 		} else {
-			spin_unlock_irqrestore(&params->config_lock,
-					       flags);
 			break;
 		}
 
@@ -1508,6 +1502,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 		buf = NULL;
 	}
+	spin_unlock_irqrestore(&params->config_lock, flags);
 }
 
 static int
-- 
2.17.1
