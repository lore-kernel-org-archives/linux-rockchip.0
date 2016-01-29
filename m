From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v6 12/22] usb: dwc2: host: Use periodic interrupt even with DMA
Date: Thu, 28 Jan 2016 18:20:03 -0800
Message-ID: <1454034013-24657-13-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The old code in dwc2_process_periodic_channels() would only enable the
"periodic empty" interrupt if we weren't using DMA.  That wasn't right
since we can still get into cases where we have small FIFOs even on
systems that have DMA (the rk3288 is a prime example).

Let's always enable/disable the "periodic empty" when appropriate.  As
part of this:

* Always call dwc2_process_periodic_channels() even if there's nothing
  in periodic_sched_assigned (we move the queue empty check so we still
  avoid the extra work).  That will make extra certain that we will
  properly disable the "periodic empty" interrupt even if there's
  nothing queued up.

* Move the enable of "periodic empty" due to non-empty
  periodic_sched_assigned to be for slave mode (non-DMA mode) only.
  Presumably this was the original intention of the check for DMA since
  it seems to match the comments above where in slave mode we leave
  things on the assigned queue.

Note that even before this change slave mode didn't work for me, so I
can't say for sure that my understanding of slave mode is correct.
However, this shouldn't change anything for slave mode so if slave mode
worked for someone in the past it ought to still work.

With this change, I no longer get constant misses reported by my other
debugging code (and with future patches) when I've got:
* Rockchip rk3288 Chromebook, using port ff540000
  -> Pluggable 7-port Hub with Charging (powered)
     -> Microsoft Wireless Keyboard 2000 in port 1.
     -> Das Keyboard in port 2.
     -> Jabra Speaker in port 3
     -> Logitech, Inc. Webcam C600 in port 4
     -> Microsoft Sidewinder X6 Keyboard in port 5

...and I'm playing music on the USB speaker and capturing video from the
webcam.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
---
Changes in v6:
- Add Heiko's Tested-by.
- Add Stefan's Tested-by.

Changes in v5: None
Changes in v4:
- Use periodic interrupt even with DMA new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd.c | 71 +++++++++++++++++++++++---------------------------
 1 file changed, 32 insertions(+), 39 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 40558478a192..fd731347daf7 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -1109,10 +1109,14 @@ static void dwc2_process_periodic_channels(struct dwc2_hsotg *hsotg)
 	u32 fspcavail;
 	u32 gintmsk;
 	int status;
-	int no_queue_space = 0;
-	int no_fifo_space = 0;
+	bool no_queue_space = false;
+	bool no_fifo_space = false;
 	u32 qspcavail;
 
+	/* If empty list then just adjust interrupt enables */
+	if (list_empty(&hsotg->periodic_sched_assigned))
+		goto exit;
+
 	if (dbg_perio())
 		dev_vdbg(hsotg->dev, "Queue periodic transactions\n");
 
@@ -1190,42 +1194,32 @@ static void dwc2_process_periodic_channels(struct dwc2_hsotg *hsotg)
 		}
 	}
 
-	if (hsotg->core_params->dma_enable <= 0) {
-		tx_status = dwc2_readl(hsotg->regs + HPTXSTS);
-		qspcavail = (tx_status & TXSTS_QSPCAVAIL_MASK) >>
-			    TXSTS_QSPCAVAIL_SHIFT;
-		fspcavail = (tx_status & TXSTS_FSPCAVAIL_MASK) >>
-			    TXSTS_FSPCAVAIL_SHIFT;
-		if (dbg_perio()) {
-			dev_vdbg(hsotg->dev,
-				 "  P Tx Req Queue Space Avail (after queue): %d\n",
-				 qspcavail);
-			dev_vdbg(hsotg->dev,
-				 "  P Tx FIFO Space Avail (after queue): %d\n",
-				 fspcavail);
-		}
-
-		if (!list_empty(&hsotg->periodic_sched_assigned) ||
-		    no_queue_space || no_fifo_space) {
-			/*
-			 * May need to queue more transactions as the request
-			 * queue or Tx FIFO empties. Enable the periodic Tx
-			 * FIFO empty interrupt. (Always use the half-empty
-			 * level to ensure that new requests are loaded as
-			 * soon as possible.)
-			 */
-			gintmsk = dwc2_readl(hsotg->regs + GINTMSK);
+exit:
+	if (no_queue_space || no_fifo_space ||
+	    (hsotg->core_params->dma_enable <= 0 &&
+	     !list_empty(&hsotg->periodic_sched_assigned))) {
+		/*
+		 * May need to queue more transactions as the request
+		 * queue or Tx FIFO empties. Enable the periodic Tx
+		 * FIFO empty interrupt. (Always use the half-empty
+		 * level to ensure that new requests are loaded as
+		 * soon as possible.)
+		 */
+		gintmsk = dwc2_readl(hsotg->regs + GINTMSK);
+		if (!(gintmsk & GINTSTS_PTXFEMP)) {
 			gintmsk |= GINTSTS_PTXFEMP;
 			dwc2_writel(gintmsk, hsotg->regs + GINTMSK);
-		} else {
-			/*
-			 * Disable the Tx FIFO empty interrupt since there are
-			 * no more transactions that need to be queued right
-			 * now. This function is called from interrupt
-			 * handlers to queue more transactions as transfer
-			 * states change.
-			 */
-			gintmsk = dwc2_readl(hsotg->regs + GINTMSK);
+		}
+	} else {
+		/*
+		 * Disable the Tx FIFO empty interrupt since there are
+		 * no more transactions that need to be queued right
+		 * now. This function is called from interrupt
+		 * handlers to queue more transactions as transfer
+		 * states change.
+		*/
+		gintmsk = dwc2_readl(hsotg->regs + GINTMSK);
+		if (gintmsk & GINTSTS_PTXFEMP) {
 			gintmsk &= ~GINTSTS_PTXFEMP;
 			dwc2_writel(gintmsk, hsotg->regs + GINTMSK);
 		}
@@ -1372,9 +1366,8 @@ void dwc2_hcd_queue_transactions(struct dwc2_hsotg *hsotg,
 	dev_vdbg(hsotg->dev, "Queue Transactions\n");
 #endif
 	/* Process host channels associated with periodic transfers */
-	if ((tr_type == DWC2_TRANSACTION_PERIODIC ||
-	     tr_type == DWC2_TRANSACTION_ALL) &&
-	    !list_empty(&hsotg->periodic_sched_assigned))
+	if (tr_type == DWC2_TRANSACTION_PERIODIC ||
+	    tr_type == DWC2_TRANSACTION_ALL)
 		dwc2_process_periodic_channels(hsotg);
 
 	/* Process host channels associated with non-periodic transfers */
-- 
2.7.0.rc3.207.g0ac5344

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
