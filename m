From: Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v1 01/13] dmaengine: pl330: Remove the burst limit for quirk 'NO-FLUSHP'
Date: Mon,  8 Jun 2020 15:49:15 +0800
Message-ID: <1591602567-43788-2-git-send-email-sugar.zhang@rock-chips.com>
References: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Sugar Zhang <sugar.zhang@rock-chips.com>, Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

There is no reason to limit the performance on the 'NO-FLUSHP' SoCs,
cuz these platforms are just that the 'FLUSHP' instruction is broken.
so, remove the limit to improve the efficiency.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 drivers/dma/pl330.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 6a158ee..ff0a91f 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -1183,9 +1183,6 @@ static inline int _ldst_peripheral(struct pl330_dmac *pl330,
 {
 	int off = 0;
 
-	if (pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
-		cond = BURST;
-
 	/*
 	 * do FLUSHP at beginning to clear any stale dma requests before the
 	 * first WFP.
@@ -1231,8 +1228,9 @@ static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 }
 
 /*
- * transfer dregs with single transfers to peripheral, or a reduced size burst
- * for mem-to-mem.
+ * only the unaligned bursts transfers have the dregs.
+ * transfer dregs with a reduced size burst to peripheral,
+ * or a reduced size burst for mem-to-mem.
  */
 static int _dregs(struct pl330_dmac *pl330, unsigned int dry_run, u8 buf[],
 		const struct _xfer_spec *pxs, int transfer_length)
@@ -1247,8 +1245,23 @@ static int _dregs(struct pl330_dmac *pl330, unsigned int dry_run, u8 buf[],
 	case DMA_MEM_TO_DEV:
 		/* fall through */
 	case DMA_DEV_TO_MEM:
-		off += _ldst_peripheral(pl330, dry_run, &buf[off], pxs,
-			transfer_length, SINGLE);
+		/*
+		 * dregs_len = (total bytes - BURST_TO_BYTE(bursts, ccr)) /
+		 *             BRST_SIZE(ccr)
+		 * the dregs len must be smaller than burst len,
+		 * so, for higher efficiency, we can modify CCR
+		 * to use a reduced size burst len for the dregs.
+		 */
+		dregs_ccr = pxs->ccr;
+		dregs_ccr &= ~((0xf << CC_SRCBRSTLEN_SHFT) |
+			(0xf << CC_DSTBRSTLEN_SHFT));
+		dregs_ccr |= (((transfer_length - 1) & 0xf) <<
+			CC_SRCBRSTLEN_SHFT);
+		dregs_ccr |= (((transfer_length - 1) & 0xf) <<
+			CC_DSTBRSTLEN_SHFT);
+		off += _emit_MOV(dry_run, &buf[off], CCR, dregs_ccr);
+		off += _ldst_peripheral(pl330, dry_run, &buf[off], pxs, 1,
+					BURST);
 		break;
 
 	case DMA_MEM_TO_MEM:
@@ -2221,9 +2234,7 @@ static bool pl330_prep_slave_fifo(struct dma_pl330_chan *pch,
 
 static int fixup_burst_len(int max_burst_len, int quirks)
 {
-	if (quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
-		return 1;
-	else if (max_burst_len > PL330_MAX_BURST)
+	if (max_burst_len > PL330_MAX_BURST)
 		return PL330_MAX_BURST;
 	else if (max_burst_len < 1)
 		return 1;
@@ -3128,8 +3139,7 @@ pl330_probe(struct amba_device *adev, const struct amba_id *id)
 	pd->dst_addr_widths = PL330_DMA_BUSWIDTHS;
 	pd->directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV);
 	pd->residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
-	pd->max_burst = ((pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP) ?
-			 1 : PL330_MAX_BURST);
+	pd->max_burst = PL330_MAX_BURST;
 
 	ret = dma_async_device_register(pd);
 	if (ret) {
-- 
2.7.4
