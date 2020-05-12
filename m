From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 3/5] media: staging: rkisp1: stats: use spin_lock_irqsave for irq_lock
Date: Tue, 12 May 2020 14:05:20 +0200
Message-ID: <20200512120522.25960-4-dafna.hirschfeld@collabora.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Currently 'spin_lock' is used in order to lock the 'irq_lock'.
This should be replaced with 'spin_lock_irqsave' since it is
used in the irq handler.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 12998db955e6..5578fdeb8a18 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -403,9 +403,10 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
 	struct rkisp1_device *rkisp1 = stats->rkisp1;
 	struct rkisp1_isp_readout_work *work;
 	unsigned int isp_mis_tmp = 0;
+	unsigned long flags;
 	u32 val;
 
-	spin_lock(&stats->irq_lock);
+	spin_lock_irqsave(&stats->irq_lock, flags);
 
 	val = RKISP1_STATS_MEAS_MASK;
 	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
@@ -435,7 +436,7 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
 	}
 
 unlock:
-	spin_unlock(&stats->irq_lock);
+	spin_unlock_irqrestore(&stats->irq_lock, flags);
 }
 
 static void rkisp1_init_stats(struct rkisp1_stats *stats)
-- 
2.17.1
