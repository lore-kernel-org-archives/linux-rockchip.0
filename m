From: Romain Perier <romain.perier@collabora.com>
Subject: [PATCH RESEND] dmaengine: pl330: Fix data race on TX transferred
 bytes reporting
Date: Thu,  2 Mar 2017 13:57:10 +0100
Message-ID: <20170302125710.14483-1-romain.perier@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Vinod Koul <vinod.koul@intel.com>, Dan Williams <dan.j.williams@intel.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Romain Perier <romain.perier@collabora.com>, linux-rockchip@lists.infradead.org, Sjoerd Simons <sjoerd.simons@collabora.co.uk>, dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

When a transfer completes there is a small window between the descriptor
being unset as the current active one in the thread and it being marked
as done. This causes the residue to be incorrectly set and the
corresponding size to be wrongly reported when pl330_tx_status is run in
that window. This can be reproduced in different ways, the main we have
found is with audio playback when the system load is high. When the
residue goes up during a transfer, it makes the audio ringbuffer wrapped
around and thus does a sudden jump forward. It can also be detected by
sudden sound disruptions.

This bug was partially solved by commit a40235a2278a ("dmaengine: pl330:
Acquire dmac's spinlock in pl330_tx_status"), as it reduces the window
where it can happen, but the issue still exists.

This patch is a re-worked version of the one wrote by Sjoerd Simons
https://patchwork.kernel.org/patch/7568251.

Original-author: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Signed-off-by: Romain Perier <romain.perier@collabora.com>
---

Note: Due to an email configuration issue, some of my patches were not
received on infradead.org or vger.kernel.org. It is now fixed, so I
resend this patch for this reason.

 drivers/dma/pl330.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 740bbb9..4046737 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -1640,6 +1640,7 @@ static int pl330_update(struct pl330_dmac *pl330)
 
 			/* Detach the req */
 			descdone = thrd->req[active].desc;
+			descdone->status = DONE;
 			thrd->req[active].desc = NULL;
 
 			thrd->req_running = -1;
@@ -1654,9 +1655,18 @@ static int pl330_update(struct pl330_dmac *pl330)
 
 	/* Now that we are in no hurry, do the callbacks */
 	list_for_each_entry_safe(descdone, tmp, &pl330->req_done, rqd) {
+		struct dma_pl330_chan *pch;
+
 		list_del(&descdone->rqd);
+
 		spin_unlock_irqrestore(&pl330->lock, flags);
-		dma_pl330_rqcb(descdone, PL330_ERR_NONE);
+		pch = descdone->pchan;
+		/* If desc aborted */
+		if (!pch) {
+			spin_lock_irqsave(&pl330->lock, flags);
+			continue;
+		}
+		tasklet_schedule(&pch->task);
 		spin_lock_irqsave(&pl330->lock, flags);
 	}
 
-- 
2.9.3
