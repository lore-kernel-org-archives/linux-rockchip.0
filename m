From: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] dmaengine: pl330: make cyclic transfer free runnable
Date: Fri, 14 Apr 2017 17:35:29 +0300
Message-ID: <1492180531-1780-2-git-send-email-al.kochet@gmail.com>
References: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1492180531-1780-1-git-send-email-al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, hhb-TNX95d0MmH7DzftRWevZcw@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, ulysses.huang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The patch solve the I2S click problem on rk3188. Actually
all the devices using pl330 should have I2S click problem
due to pl330 cyclic transfer implementation.

Current implementation depends on soft irq. If pl330 unable
to submit next transfer in time some samples could be lost.
The lost samples heard as sound click. In order to check
lost samples, I've installed I2S interrupt handler to signal
overflow/underflow conditions. Sometimes I saw overflow
or underflow events and heard clicks.

The patch setup cyclic transfer such a way, that transfer can
run infinitely without CPU intervention. As a result,
lost samples and clicks gone.

Signed-off-by: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 drivers/dma/pl330.c |  192 +++++++++++++++++++++++++--------------------------
 1 file changed, 94 insertions(+), 98 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 7539f73..56a2377 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -446,9 +446,6 @@ struct dma_pl330_chan {
 	int burst_len; /* the number of burst */
 	dma_addr_t fifo_addr;
 
-	/* for cyclic capability */
-	bool cyclic;
-
 	/* for runtime pm tracking */
 	bool active;
 };
@@ -532,6 +529,10 @@ struct dma_pl330_desc {
 	unsigned peri:5;
 	/* Hook to attach to DMAC's list of reqs with due callback */
 	struct list_head rqd;
+
+	/* For cyclic capability */
+	bool cyclic;
+	size_t num_periods;
 };
 
 struct _xfer_spec {
@@ -1333,16 +1334,19 @@ static inline int _setup_loops(struct pl330_dmac *pl330,
 }
 
 static inline int _setup_xfer(struct pl330_dmac *pl330,
-			      unsigned dry_run, u8 buf[],
+			      unsigned dry_run, u8 buf[], u32 period,
 			      const struct _xfer_spec *pxs)
 {
 	struct pl330_xfer *x = &pxs->desc->px;
+	struct pl330_reqcfg *rqcfg = &pxs->desc->rqcfg;
 	int off = 0;
 
 	/* DMAMOV SAR, x->src_addr */
-	off += _emit_MOV(dry_run, &buf[off], SAR, x->src_addr);
+	off += _emit_MOV(dry_run, &buf[off], SAR,
+		x->src_addr + rqcfg->src_inc * period * x->bytes);
 	/* DMAMOV DAR, x->dst_addr */
-	off += _emit_MOV(dry_run, &buf[off], DAR, x->dst_addr);
+	off += _emit_MOV(dry_run, &buf[off], DAR,
+		x->dst_addr + rqcfg->dst_inc * period * x->bytes);
 
 	/* Setup Loop(s) */
 	off += _setup_loops(pl330, dry_run, &buf[off], pxs);
@@ -1362,23 +1366,41 @@ static int _setup_req(struct pl330_dmac *pl330, unsigned dry_run,
 	struct pl330_xfer *x;
 	u8 *buf = req->mc_cpu;
 	int off = 0;
+	int period;
+	int again_off;
 
 	PL330_DBGMC_START(req->mc_bus);
 
 	/* DMAMOV CCR, ccr */
 	off += _emit_MOV(dry_run, &buf[off], CCR, pxs->ccr);
+	again_off = off;
 
 	x = &pxs->desc->px;
 	/* Error if xfer length is not aligned at burst size */
 	if (x->bytes % (BRST_SIZE(pxs->ccr) * BRST_LEN(pxs->ccr)))
 		return -EINVAL;
 
-	off += _setup_xfer(pl330, dry_run, &buf[off], pxs);
+	for (period = 0; period < pxs->desc->num_periods; period++) {
+		off += _setup_xfer(pl330, dry_run, &buf[off], period, pxs);
 
-	/* DMASEV peripheral/event */
-	off += _emit_SEV(dry_run, &buf[off], thrd->ev);
-	/* DMAEND */
-	off += _emit_END(dry_run, &buf[off]);
+		/* DMASEV peripheral/event */
+		off += _emit_SEV(dry_run, &buf[off], thrd->ev);
+	}
+
+	if (!pxs->desc->cyclic) {
+		/* DMAEND */
+		off += _emit_END(dry_run, &buf[off]);
+	} else {
+		struct _arg_LPEND lpend;
+		/* LP */
+		off += _emit_LP(dry_run, &buf[off], 0, 255);
+		/* LPEND */
+		lpend.cond = ALWAYS;
+		lpend.forever = false;
+		lpend.loop = 0;
+		lpend.bjump = off - again_off;
+		off += _emit_LPEND(dry_run, &buf[off], &lpend);
+	}
 
 	return off;
 }
@@ -1640,12 +1662,13 @@ static int pl330_update(struct pl330_dmac *pl330)
 
 			/* Detach the req */
 			descdone = thrd->req[active].desc;
-			thrd->req[active].desc = NULL;
-
-			thrd->req_running = -1;
 
-			/* Get going again ASAP */
-			_start(thrd);
+			if (!descdone->cyclic) {
+				thrd->req[active].desc = NULL;
+				thrd->req_running = -1;
+				/* Get going again ASAP */
+				_start(thrd);
+			}
 
 			/* For now, just make a list of callbacks to be done */
 			list_add_tail(&descdone->rqd, &pl330->req_done);
@@ -2013,12 +2036,28 @@ static void pl330_tasklet(unsigned long data)
 	spin_lock_irqsave(&pch->lock, flags);
 
 	/* Pick up ripe tomatoes */
-	list_for_each_entry_safe(desc, _dt, &pch->work_list, node)
+	list_for_each_entry_safe(desc, _dt, &pch->work_list, node) {
 		if (desc->status == DONE) {
-			if (!pch->cyclic)
+			if (!desc->cyclic) {
 				dma_cookie_complete(&desc->txd);
-			list_move_tail(&desc->node, &pch->completed_list);
+				list_move_tail(&desc->node,
+					&pch->completed_list);
+			} else {
+				struct dmaengine_desc_callback cb;
+
+				desc->status = BUSY;
+				dmaengine_desc_get_callback(&desc->txd, &cb);
+
+				if (dmaengine_desc_callback_valid(&cb)) {
+					spin_unlock_irqrestore(&pch->lock,
+								flags);
+					dmaengine_desc_callback_invoke(&cb,
+								NULL);
+					spin_lock_irqsave(&pch->lock, flags);
+				}
+			}
 		}
+	}
 
 	/* Try to submit a req imm. next to the last completed cookie */
 	fill_queue(pch);
@@ -2044,20 +2083,8 @@ static void pl330_tasklet(unsigned long data)
 
 		dmaengine_desc_get_callback(&desc->txd, &cb);
 
-		if (pch->cyclic) {
-			desc->status = PREP;
-			list_move_tail(&desc->node, &pch->work_list);
-			if (power_down) {
-				pch->active = true;
-				spin_lock(&pch->thread->dmac->lock);
-				_start(pch->thread);
-				spin_unlock(&pch->thread->dmac->lock);
-				power_down = false;
-			}
-		} else {
-			desc->status = FREE;
-			list_move_tail(&desc->node, &pch->dmac->desc_pool);
-		}
+		desc->status = FREE;
+		list_move_tail(&desc->node, &pch->dmac->desc_pool);
 
 		dma_descriptor_unmap(&desc->txd);
 
@@ -2117,7 +2144,6 @@ static int pl330_alloc_chan_resources(struct dma_chan *chan)
 	spin_lock_irqsave(&pl330->lock, flags);
 
 	dma_cookie_init(chan);
-	pch->cyclic = false;
 
 	pch->thread = pl330_request_channel(pl330);
 	if (!pch->thread) {
@@ -2241,8 +2267,7 @@ static void pl330_free_chan_resources(struct dma_chan *chan)
 	pl330_release_channel(pch->thread);
 	pch->thread = NULL;
 
-	if (pch->cyclic)
-		list_splice_tail_init(&pch->work_list, &pch->dmac->desc_pool);
+	list_splice_tail_init(&pch->work_list, &pch->dmac->desc_pool);
 
 	spin_unlock_irqrestore(&pl330->lock, flags);
 	pm_runtime_mark_last_busy(pch->dmac->ddma.dev);
@@ -2304,7 +2329,7 @@ static int pl330_get_current_xferred_count(struct dma_pl330_chan *pch,
 
 	/* Check in pending list */
 	list_for_each_entry(desc, &pch->work_list, node) {
-		if (desc->status == DONE)
+		if (desc->status == DONE && !desc->cyclic)
 			transferred = desc->bytes_requested;
 		else if (running && desc == running)
 			transferred =
@@ -2386,12 +2411,8 @@ static dma_cookie_t pl330_tx_submit(struct dma_async_tx_descriptor *tx)
 	/* Assign cookies to all nodes */
 	while (!list_empty(&last->node)) {
 		desc = list_entry(last->node.next, struct dma_pl330_desc, node);
-		if (pch->cyclic) {
-			desc->txd.callback = last->txd.callback;
-			desc->txd.callback_param = last->txd.callback_param;
-		}
-		desc->last = false;
 
+		desc->last = false;
 		dma_cookie_assign(&desc->txd);
 
 		list_move_tail(&desc->node, &pch->submitted_list);
@@ -2491,6 +2512,9 @@ static struct dma_pl330_desc *pl330_get_desc(struct dma_pl330_chan *pch)
 	desc->peri = peri_id ? pch->chan.chan_id : 0;
 	desc->rqcfg.pcfg = &pch->dmac->pcfg;
 
+	desc->cyclic = false;
+	desc->num_periods = 1;
+
 	dma_async_tx_descriptor_init(&desc->txd, &pch->chan);
 
 	return desc;
@@ -2560,10 +2584,8 @@ static struct dma_async_tx_descriptor *pl330_prep_dma_cyclic(
 		size_t period_len, enum dma_transfer_direction direction,
 		unsigned long flags)
 {
-	struct dma_pl330_desc *desc = NULL, *first = NULL;
+	struct dma_pl330_desc *desc = NULL;
 	struct dma_pl330_chan *pch = to_pchan(chan);
-	struct pl330_dmac *pl330 = pch->dmac;
-	unsigned int i;
 	dma_addr_t dst;
 	dma_addr_t src;
 
@@ -2576,65 +2598,39 @@ static struct dma_async_tx_descriptor *pl330_prep_dma_cyclic(
 		return NULL;
 	}
 
-	for (i = 0; i < len / period_len; i++) {
-		desc = pl330_get_desc(pch);
-		if (!desc) {
-			dev_err(pch->dmac->ddma.dev, "%s:%d Unable to fetch desc\n",
-				__func__, __LINE__);
-
-			if (!first)
-				return NULL;
-
-			spin_lock_irqsave(&pl330->pool_lock, flags);
-
-			while (!list_empty(&first->node)) {
-				desc = list_entry(first->node.next,
-						struct dma_pl330_desc, node);
-				list_move_tail(&desc->node, &pl330->desc_pool);
-			}
-
-			list_move_tail(&first->node, &pl330->desc_pool);
-
-			spin_unlock_irqrestore(&pl330->pool_lock, flags);
+	desc = pl330_get_desc(pch);
+	if (!desc) {
+		dev_err(pch->dmac->ddma.dev, "%s:%d Unable to fetch desc\n",
+			__func__, __LINE__);
 
 			return NULL;
-		}
-
-		switch (direction) {
-		case DMA_MEM_TO_DEV:
-			desc->rqcfg.src_inc = 1;
-			desc->rqcfg.dst_inc = 0;
-			src = dma_addr;
-			dst = pch->fifo_addr;
-			break;
-		case DMA_DEV_TO_MEM:
-			desc->rqcfg.src_inc = 0;
-			desc->rqcfg.dst_inc = 1;
-			src = pch->fifo_addr;
-			dst = dma_addr;
-			break;
-		default:
-			break;
-		}
-
-		desc->rqtype = direction;
-		desc->rqcfg.brst_size = pch->burst_sz;
-		desc->rqcfg.brst_len = 1;
-		desc->bytes_requested = period_len;
-		fill_px(&desc->px, dst, src, period_len);
-
-		if (!first)
-			first = desc;
-		else
-			list_add_tail(&desc->node, &first->node);
+	}
 
-		dma_addr += period_len;
+	switch (direction) {
+	case DMA_MEM_TO_DEV:
+		desc->rqcfg.src_inc = 1;
+		desc->rqcfg.dst_inc = 0;
+		src = dma_addr;
+		dst = pch->fifo_addr;
+		break;
+	case DMA_DEV_TO_MEM:
+		desc->rqcfg.src_inc = 0;
+		desc->rqcfg.dst_inc = 1;
+		src = pch->fifo_addr;
+		dst = dma_addr;
+		break;
+	default:
+		break;
 	}
 
-	if (!desc)
-		return NULL;
+	desc->rqtype = direction;
+	desc->rqcfg.brst_size = pch->burst_sz;
+	desc->rqcfg.brst_len = 1;
+	desc->bytes_requested = len;
+	fill_px(&desc->px, dst, src, period_len);
 
-	pch->cyclic = true;
+	desc->cyclic = true;
+	desc->num_periods = len / period_len;
 	desc->txd.flags = flags;
 
 	return &desc->txd;
-- 
1.7.9.5
