From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v6 05/22] usb: dwc2: host: Always add to the tail of queues
Date: Thu, 28 Jan 2016 18:19:56 -0800
Message-ID: <1454034013-24657-6-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The queues the the dwc2 host controller used are truly queues.  That
means FIFO or first in first out.

Unfortunately though the code was iterating through these queues
starting from the head, some places in the code was adding things to the
queue by adding at the head instead of the tail.  That means last in
first out.  Doh.

Go through and just always add to the tail.

Doing this makes things much happier when I've got:
* 7-port USB 2.0 Single-TT hub
* - Microsoft 2.4 GHz Transceiver v7.0 dongle
* - Jabra speakerphone playing music

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
---
Changes in v6:
- Add Kever's Reviewed-by.
- Add Heiko's Tested-by.
- Add Stefan's Tested-by.

Changes in v5: None
Changes in v4:
- Always add to the tail of queues new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd.c       | 11 ++++++-----
 drivers/usb/dwc2/hcd_ddma.c  |  4 ++--
 drivers/usb/dwc2/hcd_intr.c  |  4 ++--
 drivers/usb/dwc2/hcd_queue.c |  6 ++++--
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index e2d2e9be366e..349194342c90 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -969,7 +969,8 @@ enum dwc2_transaction_type dwc2_hcd_select_transactions(
 		 * periodic assigned schedule
 		 */
 		qh_ptr = qh_ptr->next;
-		list_move(&qh->qh_list_entry, &hsotg->periodic_sched_assigned);
+		list_move_tail(&qh->qh_list_entry,
+			       &hsotg->periodic_sched_assigned);
 		ret_val = DWC2_TRANSACTION_PERIODIC;
 	}
 
@@ -1002,8 +1003,8 @@ enum dwc2_transaction_type dwc2_hcd_select_transactions(
 		 * non-periodic active schedule
 		 */
 		qh_ptr = qh_ptr->next;
-		list_move(&qh->qh_list_entry,
-			  &hsotg->non_periodic_sched_active);
+		list_move_tail(&qh->qh_list_entry,
+			       &hsotg->non_periodic_sched_active);
 
 		if (ret_val == DWC2_TRANSACTION_NONE)
 			ret_val = DWC2_TRANSACTION_NON_PERIODIC;
@@ -1176,8 +1177,8 @@ static void dwc2_process_periodic_channels(struct dwc2_hsotg *hsotg)
 			 * Move the QH from the periodic assigned schedule to
 			 * the periodic queued schedule
 			 */
-			list_move(&qh->qh_list_entry,
-				  &hsotg->periodic_sched_queued);
+			list_move_tail(&qh->qh_list_entry,
+				       &hsotg->periodic_sched_queued);
 
 			/* done queuing high bandwidth */
 			hsotg->queuing_high_bandwidth = 0;
diff --git a/drivers/usb/dwc2/hcd_ddma.c b/drivers/usb/dwc2/hcd_ddma.c
index 36606fc33c0d..16b261cfa92d 100644
--- a/drivers/usb/dwc2/hcd_ddma.c
+++ b/drivers/usb/dwc2/hcd_ddma.c
@@ -1327,8 +1327,8 @@ void dwc2_hcd_complete_xfer_ddma(struct dwc2_hsotg *hsotg,
 			dwc2_hcd_qh_unlink(hsotg, qh);
 		} else {
 			/* Keep in assigned schedule to continue transfer */
-			list_move(&qh->qh_list_entry,
-				  &hsotg->periodic_sched_assigned);
+			list_move_tail(&qh->qh_list_entry,
+				       &hsotg->periodic_sched_assigned);
 			/*
 			 * If channel has been halted during giveback of urb
 			 * then prevent any new scheduling.
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 99efc2bd1617..2c521c00e5e0 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -143,7 +143,7 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
 			 * Move QH to the ready list to be executed next
 			 * (micro)frame
 			 */
-			list_move(&qh->qh_list_entry,
+			list_move_tail(&qh->qh_list_entry,
 				  &hsotg->periodic_sched_ready);
 	}
 	tr_type = dwc2_hcd_select_transactions(hsotg);
@@ -794,7 +794,7 @@ static void dwc2_halt_channel(struct dwc2_hsotg *hsotg,
 			 * halt to be queued when the periodic schedule is
 			 * processed.
 			 */
-			list_move(&chan->qh->qh_list_entry,
+			list_move_tail(&chan->qh->qh_list_entry,
 				  &hsotg->periodic_sched_assigned);
 
 			/*
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index e0933a9dfad7..bc632a72f611 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -732,9 +732,11 @@ void dwc2_hcd_qh_deactivate(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 	     dwc2_frame_num_le(qh->sched_frame, frame_number)) ||
 	    (hsotg->core_params->uframe_sched <= 0 &&
 	     qh->sched_frame == frame_number))
-		list_move(&qh->qh_list_entry, &hsotg->periodic_sched_ready);
+		list_move_tail(&qh->qh_list_entry,
+			       &hsotg->periodic_sched_ready);
 	else
-		list_move(&qh->qh_list_entry, &hsotg->periodic_sched_inactive);
+		list_move_tail(&qh->qh_list_entry,
+			       &hsotg->periodic_sched_inactive);
 }
 
 /**
-- 
2.7.0.rc3.207.g0ac5344
