From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 1/2] media: staging: rkisp1 stats: set a measure flag with '|=' instead of '='
Date: Sat,  9 May 2020 17:29:03 +0200
Message-ID: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: helen.koike@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, hverkuil@xs4all.nl, sakari.ailus@linux.intel.com, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

The flag RKISP1_CIF_ISP_STAT_AFM_FIN that indicates a type of
statistics is mistakenly set with '=' instead of '|='
this might set off previous flags.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 6dfcbdc3deb8..8351bda0be03 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -253,7 +253,7 @@ static void rkisp1_stats_get_afc_meas(struct rkisp1_stats *stats,
 	struct rkisp1_device *rkisp1 = stats->rkisp1;
 	struct rkisp1_cif_isp_af_stat *af;
 
-	pbuf->meas_type = RKISP1_CIF_ISP_STAT_AFM_FIN;
+	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
 
 	af = &pbuf->params.af;
 	af->window[0].sum = rkisp1_read(rkisp1, RKISP1_CIF_ISP_AFM_SUM_A);
-- 
2.17.1
