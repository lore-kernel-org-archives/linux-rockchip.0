From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v3 3/8] usb: dwc2: host: Add scheduler tracing
Date: Mon, 16 Nov 2015 16:51:19 -0800
Message-ID: <1447721484-22548-4-git-send-email-dianders@chromium.org>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447721484-22548-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In preparation for future changes to the scheduler let's add some
tracing that makes it easy for us to see what's happening.  By default
this tracing will be off.

Note that I've chosen to point tracing at ftrace rather than the console
since performance is pretty critical for these traces and ftrace is more
appropriate for performance-critical traces.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v3:
- scheduler tracing new for v3.

Changes in v2: None

 drivers/usb/dwc2/core.h      |  9 +++++++++
 drivers/usb/dwc2/hcd.h       |  5 +++++
 drivers/usb/dwc2/hcd_intr.c  |  7 ++++++-
 drivers/usb/dwc2/hcd_queue.c | 24 +++++++++++++++++++++++-
 4 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index a66d3cb62b65..8224a1c21ac3 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -44,6 +44,15 @@
 #include <linux/usb/phy.h>
 #include "hw.h"
 
+#ifdef DWC2_TRACE_SCHEDULER
+#define dwc2_scheduler_printk trace_printk
+#else
+#define dwc2_scheduler_printk no_printk
+#endif
+#define dwc2_sch_dbg(hsotg, fmt, ...)					\
+	dwc2_scheduler_printk(pr_fmt("%s: SCH: " fmt),			\
+			      dev_name(hsotg->dev), ##__VA_ARGS__)
+
 static inline u32 dwc2_readl(const void __iomem *addr)
 {
 	u32 value = __raw_readl(addr);
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index 8a4486e1a542..de8c0b0937e6 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -554,6 +554,11 @@ static inline u16 dwc2_frame_num_inc(u16 frame, u16 inc)
 	return (frame + inc) & HFNUM_MAX_FRNUM;
 }
 
+static inline u16 dwc2_frame_num_dec(u16 frame, u16 dec)
+{
+	return (frame + HFNUM_MAX_FRNUM + 1 - dec) & HFNUM_MAX_FRNUM;
+}
+
 static inline u16 dwc2_full_frame_num(u16 frame)
 {
 	return (frame & HFNUM_MAX_FRNUM) >> 3;
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 84190243b8be..c3f6200bc630 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -135,13 +135,18 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
 	while (qh_entry != &hsotg->periodic_sched_inactive) {
 		qh = list_entry(qh_entry, struct dwc2_qh, qh_list_entry);
 		qh_entry = qh_entry->next;
-		if (dwc2_frame_num_le(qh->sched_frame, hsotg->frame_number))
+		if (dwc2_frame_num_le(qh->sched_frame, hsotg->frame_number)) {
+			dwc2_sch_dbg(hsotg,
+				     "ready %p fn=%04x, sch=%04x\n",
+				     qh, hsotg->frame_number, qh->sched_frame);
+
 			/*
 			 * Move QH to the ready list to be executed next
 			 * (micro)frame
 			 */
 			list_move(&qh->qh_list_entry,
 				  &hsotg->periodic_sched_ready);
+		}
 	}
 	tr_type = dwc2_hcd_select_transactions(hsotg);
 	if (tr_type != DWC2_TRANSACTION_NONE)
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 3e1edafc593c..93b26c8fef88 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -113,6 +113,9 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 		qh->sched_frame = dwc2_frame_num_inc(hsotg->frame_number,
 						     SCHEDULE_SLOP);
 		qh->interval = urb->interval;
+		dwc2_sch_dbg(hsotg, "init %p sch=%04x, fn=%04x, int=%#x\n",
+			     qh, qh->sched_frame, hsotg->frame_number,
+			     qh->interval);
 #if 0
 		/* Increase interrupt polling rate for debugging */
 		if (qh->ep_type == USB_ENDPOINT_XFER_INT)
@@ -126,6 +129,11 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 			qh->interval *= 8;
 			qh->sched_frame |= 0x7;
 			qh->start_split_frame = qh->sched_frame;
+			dwc2_sch_dbg(hsotg,
+				     "init*8 %p sch=%04x, fn=%04x, int=%#x\n",
+				     qh, qh->sched_frame, hsotg->frame_number,
+				     qh->interval);
+
 		}
 		dev_dbg(hsotg->dev, "interval=%d\n", qh->interval);
 	}
@@ -482,6 +490,8 @@ static int dwc2_schedule_periodic(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 		if (frame >= 0) {
 			qh->sched_frame &= ~0x7;
 			qh->sched_frame |= (frame & 7);
+			dwc2_sch_dbg(hsotg, "sched_p %p sch=%04x, uf=%d\n",
+				     qh, qh->sched_frame, frame);
 		}
 
 		if (status > 0)
@@ -583,10 +593,16 @@ int dwc2_hcd_qh_add(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 
 	if (!dwc2_frame_num_le(qh->sched_frame, hsotg->frame_number) &&
 			!hsotg->frame_number) {
+		u16 new_frame;
+
 		dev_dbg(hsotg->dev,
 				"reset frame number counter\n");
-		qh->sched_frame = dwc2_frame_num_inc(hsotg->frame_number,
+		new_frame = dwc2_frame_num_inc(hsotg->frame_number,
 				SCHEDULE_SLOP);
+
+		dwc2_sch_dbg(hsotg, "reset %p sch=%04x=>%04x\n",
+			     qh, qh->sched_frame, new_frame);
+		qh->sched_frame = new_frame;
 	}
 
 	/* Add the new QH to the appropriate schedule */
@@ -652,6 +668,7 @@ static void dwc2_sched_periodic_split(struct dwc2_hsotg *hsotg,
 				      int sched_next_periodic_split)
 {
 	u16 incr;
+	u16 old_frame = qh->sched_frame;
 
 	if (sched_next_periodic_split) {
 		qh->sched_frame = frame_number;
@@ -677,6 +694,11 @@ static void dwc2_sched_periodic_split(struct dwc2_hsotg *hsotg,
 		qh->sched_frame |= 0x7;
 		qh->start_split_frame = qh->sched_frame;
 	}
+
+	dwc2_sch_dbg(hsotg, "next(%d) %p fn=%04x, sch=%04x=>%04x (%+d)\n",
+		     sched_next_periodic_split, qh, frame_number, old_frame,
+		     qh->sched_frame,
+		     dwc2_frame_num_dec(qh->sched_frame, old_frame));
 }
 
 /*
-- 
2.6.0.rc2.230.g3dd15c0
