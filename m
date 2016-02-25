From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2] dmaengine: pl330: fix to support the burst mode
Date: Thu, 25 Feb 2016 09:00:53 +0800
Message-ID: <1456362053-1425-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: vinod.koul@intel.com
Cc: dan.j.williams@intel.com, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, al.kochet@gmail.com, dinguyen@opensource.altera.com, b.zolnierkie@samsung.com, heiko@sntech.de, dianders@chromium.org, sonnyrao@chromium.org, linux-rockchip@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch fixes the burst mode that will break DMA uart on SoCFPGA.

In some cases, some SoCS didn't support the multi-burst
even if the devices who use the pl330 claim support the maxburst.

Fixes: commit 848e977
"dmaengine: pl330: support burst mode for dev-to-mem and mem-to-dev transmit"

Reported-by: Dinh Nguyen <dinguyen@opensource.altera.com>
Signed-off-by: Caesar Wang <wxt@rock-chips.com>
Tested-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Tested-by: Dinh Nguyen <dinguyen@opensource.altera.com>

---

Changes in v2:
- s/brust/burst
- add Dinh and Bartlomiej test tags.

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
