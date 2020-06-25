From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 2/3] media: staging: rkisp1: params: don't release lock in isr before buffer is done
Date: Thu, 25 Jun 2020 19:42:56 +0200
Message-ID: <20200625174257.22216-3-dafna.hirschfeld@collabora.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

In the irq handler 'rkisp1_params_isr', the lock 'config_lock'
should be held as long as the current buffer is used. Otherwise the
stop_streaming calback might remove it from the list and
pass it to userspace while it is referenced in the irq handler.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 762c2259b807..bf006dbeee2d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1210,10 +1210,11 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
 	if (!list_empty(&params->params))
 		cur_buf = list_first_entry(&params->params,
 					   struct rkisp1_buffer, queue);
-	spin_unlock(&params->config_lock);
 
-	if (!cur_buf)
+	if (!cur_buf) {
+		spin_unlock(&params->config_lock);
 		return;
+	}
 
 	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
 
@@ -1228,13 +1229,11 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
 		isp_ctrl |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD;
 		rkisp1_write(params->rkisp1, isp_ctrl, RKISP1_CIF_ISP_CTRL);
 
-		spin_lock(&params->config_lock);
 		list_del(&cur_buf->queue);
-		spin_unlock(&params->config_lock);
-
 		cur_buf->vb.sequence = frame_sequence;
 		vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
 	}
+	spin_unlock(&params->config_lock);
 }
 
 static const struct rkisp1_cif_isp_awb_meas_config rkisp1_awb_params_default_config = {
-- 
2.17.1
