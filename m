From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 2/4] media: staging: rkisp1: stats: replace spin_lock_irqsave with spin_lock_irq
Date: Fri, 26 Jun 2020 10:51:39 +0200
Message-ID: <20200626085141.7646-3-dafna.hirschfeld@collabora.com>
References: <20200626085141.7646-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200626085141.7646-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The function 'rkisp1_stats_vb2_stop_streaming' runs in user context
therefore it is enough to use spin_lock_irq

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index b19a6d9cdd4d..d4f0df4342e0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -152,13 +152,12 @@ static void rkisp1_stats_vb2_stop_streaming(struct vb2_queue *vq)
 {
 	struct rkisp1_stats *stats = vq->drv_priv;
 	struct rkisp1_buffer *buf;
-	unsigned long flags;
 	unsigned int i;
 
 	/* Make sure no new work queued in isr before draining wq */
-	spin_lock_irqsave(&stats->irq_lock, flags);
+	spin_lock_irq(&stats->irq_lock);
 	stats->is_streaming = false;
-	spin_unlock_irqrestore(&stats->irq_lock, flags);
+	spin_unlock_irq(&stats->irq_lock);
 
 	drain_workqueue(stats->readout_wq);
 
-- 
2.17.1
