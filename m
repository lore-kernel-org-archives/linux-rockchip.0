From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH] dmaengine: pl330: fix to support the brust mode
Date: Wed, 24 Feb 2016 11:52:25 +0800
Message-ID: <1456285945-19258-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: dinguyen@opensource.altera.com, vinod.koul@intel.com
Cc: dan.j.williams@intel.com, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, heiko@sntech.de, dianders@chromium.org, sonnyrao@chromium.org, al.kochet@gmail.com, shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org, boojin.kim@samsung.com, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch fixes the brust mode that will break DMA uart on SoCFPGA.

In some cases, some SoCS didn't support the multi-brust
even if the devices who use the pl330 claim support the maxbrust.

Fixes: commit 848e977
"dmaengine: pl330: support burst mode for dev-to-mem and mem-to-dev transmit"

Reported-by: Dinh Nguyen <dinguyen@opensource.altera.com>
Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 drivers/dma/pl330.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 1b0453b..372b435 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -1161,7 +1161,7 @@ static inline int _ldst_devtomem(struct pl330_dmac *pl330, unsigned dry_run,
 	if (pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
 		cond = BURST;
 	else
-		cond = (pxs->desc->rqcfg.brst_len == 1) ? SINGLE : BURST;
+		cond = SINGLE;
 
 	while (cyc--) {
 		off += _emit_WFP(dry_run, &buf[off], cond, pxs->desc->peri);
@@ -1186,8 +1186,7 @@ static inline int _ldst_memtodev(struct pl330_dmac *pl330,
 	if (pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
 		cond = BURST;
 	else
-		cond = (pxs->desc->rqcfg.brst_len == 1) ? SINGLE : BURST;
-
+		cond = SINGLE;
 
 	while (cyc--) {
 		off += _emit_WFP(dry_run, &buf[off], cond, pxs->desc->peri);
@@ -2598,7 +2597,7 @@ static struct dma_async_tx_descriptor *pl330_prep_dma_cyclic(
 
 		desc->rqtype = direction;
 		desc->rqcfg.brst_size = pch->burst_sz;
-		desc->rqcfg.brst_len = pch->burst_len;
+		desc->rqcfg.brst_len = 1;
 		desc->bytes_requested = period_len;
 		fill_px(&desc->px, dst, src, period_len);
 
@@ -2743,7 +2742,7 @@ pl330_prep_slave_sg(struct dma_chan *chan, struct scatterlist *sgl,
 		}
 
 		desc->rqcfg.brst_size = pch->burst_sz;
-		desc->rqcfg.brst_len = pch->burst_len;
+		desc->rqcfg.brst_len = 1;
 		desc->rqtype = direction;
 		desc->bytes_requested = sg_dma_len(sg);
 	}
-- 
1.9.1
