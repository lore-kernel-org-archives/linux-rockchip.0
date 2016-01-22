From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v5 17/21] usb: dwc2: host: Schedule periodic right away if it's time
Date: Fri, 22 Jan 2016 10:18:52 -0800
Message-ID: <1453486736-15358-18-git-send-email-dianders@chromium.org>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1453486736-15358-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com, kever.yang@rock-chips.com
Cc: william.wu@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In dwc2_hcd_qh_deactivate() we will put some things on the
periodic_sched_ready list.  These things won't be taken off the ready
list until the next SOF, which might be a little late.  Let's put them
on right away.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Changes in v5: None
Changes in v4:
- Schedule periodic right away if it's time new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd_queue.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index f235402dfc5e..2b6e57ad2661 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -1078,12 +1078,26 @@ void dwc2_hcd_qh_deactivate(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 	 * Note: we purposely use the frame_number from the "hsotg" structure
 	 * since we know SOF interrupt will handle future frames.
 	 */
-	if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number))
+	if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number)) {
+		enum dwc2_transaction_type tr_type;
+
+		/*
+		 * We're bypassing the SOF handler which is normally what puts
+		 * us on the ready list because we're in a hurry and need to
+		 * try to catch up.
+		 */
+		dwc2_sch_vdbg(hsotg, "QH=%p IMM ready fn=%04x, nxt=%04x\n",
+			      qh, frame_number, qh->next_active_frame);
 		list_move_tail(&qh->qh_list_entry,
 			       &hsotg->periodic_sched_ready);
-	else
+
+		tr_type = dwc2_hcd_select_transactions(hsotg);
+		if (tr_type != DWC2_TRANSACTION_NONE)
+			dwc2_hcd_queue_transactions(hsotg, tr_type);
+	} else {
 		list_move_tail(&qh->qh_list_entry,
 			       &hsotg->periodic_sched_inactive);
+	}
 }
 
 /**
-- 
2.7.0.rc3.207.g0ac5344
