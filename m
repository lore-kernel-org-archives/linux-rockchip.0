From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 08/21] usb: dwc2: host: Add scheduler tracing
Date: Wed, 20 Jan 2016 21:04:19 -0800
Message-ID: <1453352672-27890-9-git-send-email-dianders@chromium.org>
References: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1453352672-27890-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In preparation for future changes to the scheduler let's add some
tracing that makes it easy for us to see what's happening.  By default
this tracing will be off.

By changing "core.h" you can easily trace to ftrace, the console, or
nowhere.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v4:
- Retooled scheduler tracing a bit, so left off John's Ack from v3.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/core.h      | 20 ++++++++++++++++++++
 drivers/usb/dwc2/hcd.h       |  5 +++++
 drivers/usb/dwc2/hcd_intr.c  |  6 +++++-
 drivers/usb/dwc2/hcd_queue.c | 24 +++++++++++++++++++++++-
 4 files changed, 53 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 538cf38af0e4..18f9e4045643 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -44,6 +44,26 @@
 #include <linux/usb/phy.h>
 #include "hw.h"
 
+/*
+ * Suggested defines for tracers:
+ * - no_printk:    Disable tracing
+ * - pr_info:      Print this info to the console
+ * - trace_printk: Print this info to trace buffer (good for verbose logging)
+ */
+
+#define DWC2_TRACE_SCHEDULER		no_printk
+#define DWC2_TRACE_SCHEDULER_VB		no_printk
+
+/* Detailed scheduler tracing, but won't overwhelm console */
+#define dwc2_sch_dbg(hsotg, fmt, ...)					\
+	DWC2_TRACE_SCHEDULER(pr_fmt("%s: SCH: " fmt),			\
+			     dev_name(hsotg->dev), ##__VA_ARGS__)
+
+/* Verbose scheduler tracing */
+#define dwc2_sch_vdbg(hsotg, fmt, ...)					\
+	DWC2_TRACE_SCHEDULER_VB(pr_fmt("%s: SCH: " fmt),		\
+				dev_name(hsotg->dev), ##__VA_ARGS__)
+
 static inline u32 dwc2_readl(const void __iomem *addr)
 {
 	u32 value = __raw_readl(addr);
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index 1b46e2e617cc..809bc4ff9116 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -563,6 +563,11 @@ static inline u16 dwc2_frame_num_inc(u16 frame, u16 inc)
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
index 577c91096a51..5d25a5ec9736 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -138,13 +138,17 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
 	while (qh_entry != &hsotg->periodic_sched_inactive) {
 		qh = list_entry(qh_entry, struct dwc2_qh, qh_list_entry);
 		qh_entry = qh_entry->next;
-		if (dwc2_frame_num_le(qh->sched_frame, hsotg->frame_number))
+		if (dwc2_frame_num_le(qh->sched_frame, hsotg->frame_number)) {
+			dwc2_sch_vdbg(hsotg, "QH=%p ready fn=%04x, sch=%04x\n",
+				      qh, hsotg->frame_number, qh->sched_frame);
+
 			/*
 			 * Move QH to the ready list to be executed next
 			 * (micro)frame
 			 */
 			list_move_tail(&qh->qh_list_entry,
 				  &hsotg->periodic_sched_ready);
+		}
 	}
 	tr_type = dwc2_hcd_select_transactions(hsotg);
 	if (tr_type != DWC2_TRANSACTION_NONE)
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index bc632a72f611..0e9faa75593c 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -113,6 +113,9 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 		qh->sched_frame = dwc2_frame_num_inc(hsotg->frame_number,
 						     SCHEDULE_SLOP);
 		qh->interval = urb->interval;
+		dwc2_sch_dbg(hsotg, "QH=%p init sch=%04x, fn=%04x, int=%#x\n",
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
+				     "QH=%p init*8 sch=%04x, fn=%04x, int=%#x\n",
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
+			dwc2_sch_dbg(hsotg, "QH=%p sched_p sch=%04x, uf=%d\n",
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
+		dwc2_sch_vdbg(hsotg, "QH=%p reset sch=%04x=>%04x\n",
+			      qh, qh->sched_frame, new_frame);
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
+	dwc2_sch_vdbg(hsotg, "QH=%p next(%d) fn=%04x, sch=%04x=>%04x (%+d)\n",
+		      qh, sched_next_periodic_split, frame_number, old_frame,
+		      qh->sched_frame,
+		      dwc2_frame_num_dec(qh->sched_frame, old_frame));
 }
 
 /*
-- 
2.7.0.rc3.207.g0ac5344
