From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 17/21] usb: dwc2: host: Schedule periodic right away if it's time
Date: Wed, 20 Jan 2016 21:04:28 -0800
Message-ID: <1453352672-27890-18-git-send-email-dianders@chromium.org>
References: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1453352672-27890-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In dwc2_hcd_qh_deactivate() we will put some things on the
periodic_sched_ready list.  These things won't be taken off the ready
list until the next SOF, which might be a little late.  Let's put them
on right away.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
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

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
