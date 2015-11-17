From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v3 4/8] usb: dwc2: host: Rewrite the microframe scheduler
Date: Mon, 16 Nov 2015 16:51:20 -0800
Message-ID: <1447721484-22548-5-git-send-email-dianders@chromium.org>
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

The old microframe scheduler was hard to follow and had some bugs in
it.  Specifically, I made some code to visualize what was happening and
found:

Add W (280 us):
  WWWWWWWWWW|WWWWWWWWWW|WWWWWWWW  |          |          |          |   |
Add B (260 us):
  WWWWWWWWWW|WWWWWWWWWW|WWWWWWWWBB|BBBBBBBBBB|BBBBBBBBBB|BBBB      |   |
Add C ( 80 us):
  WWWWWWWWWW|WWWWWWWWWW|WWWWWWWWBB|BBBBBBBBBB|BBBBBBBBBB|BBBBCCCCCC|CC |
Add K ( 10 us):
  WWWWWWWWWW|WWWWWWWWWW|WWWWWWWWBB|BBBBBBBBBB|BBBBBBBBBB|BBBBK     |   |
Add S (170 us):
  SSSSSSSSSS|SSSSSSS   |        BB|BBBBBBBBBB|BBBBBBBBBB|BBBBK     |   |
Add L ( 60 us):
  SSSSSSSSSS|SSSSSSSLLL|LLL     BB|BBBBBBBBBB|BBBBBBBBBB|BBBBK     |   |
Add W ( 60 us):
  SSSSSSSSSS|SSSSSSSLLL|LLLWWWWWBB|BBBBBBBBBB|BBBBBBBBBB|BBBBKW    |   |

As you can see, the "W" is broken up in a bogus way.  It's in microframe
2 and microframe 5.  It's easy to find more examples of bugs with more
testing.

As a first step toward fixing things, let's first change the scheduling
functions to do what I believe was the intent of the old function.  This
new code uses the existing Linux bitmap code to avoid reinventing the
wheel.  You can see (ugly) test code for this up on pastebin:
  http://pastebin.com/PjxktNYA

Note that the frames picked by the microframe scheduler functions aren't
properly used yet elsewhere, so this patch won't really have much of an
effect.  See future patches in the series.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v3:
- The uframe scheduler patch is folded into optimization series.
- Optimize uframe scheduler "single uframe" case a little.
- uframe scheduler now atop logging patches.
- uframe scheduler now before delayed bandwidth release patches.
- Add defines like EARLY_FRAME_USEC
- Reorder dwc2_deschedule_periodic() in prep for future patches.
- uframe scheduler now shows real usefulness w/ future patches!

Changes in v2:
- Totally rewrote uframe scheduler again after writing test code.
- uframe scheduler atop delayed bandwidth release patches.

 drivers/usb/dwc2/core.h      |  10 +++-
 drivers/usb/dwc2/hcd.c       |   3 -
 drivers/usb/dwc2/hcd.h       |   5 +-
 drivers/usb/dwc2/hcd_intr.c  |   5 +-
 drivers/usb/dwc2/hcd_queue.c | 134 ++++++++++++++++++-------------------------
 5 files changed, 69 insertions(+), 88 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 8224a1c21ac3..567ee2c9e69f 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -658,7 +658,7 @@ struct dwc2_hregs_backup {
  *                      This value is in microseconds per (micro)frame. The
  *                      assumption is that all periodic transfers may occur in
  *                      the same (micro)frame.
- * @frame_usecs:        Internal variable used by the microframe scheduler
+ * @periodic_bitmap:    Bitmap used by the microframe scheduler
  * @frame_number:       Frame number read from the core at SOF. The value ranges
  *                      from 0 to HFNUM_MAX_FRNUM.
  * @periodic_qh_count:  Count of periodic QHs, if using several eps. Used for
@@ -753,6 +753,11 @@ struct dwc2_hsotg {
 #define DWC2_CORE_REV_3_00a	0x4f54300a
 
 #if IS_ENABLED(CONFIG_USB_DWC2_HOST) || IS_ENABLED(CONFIG_USB_DWC2_DUAL_ROLE)
+
+/* Total number of microseconds for scheduling */
+#define EARLY_FRAME_USEC		100
+#define TOTAL_PERIODIC_USEC		(6 * EARLY_FRAME_USEC + 30)
+
 	union dwc2_hcd_internal_flags {
 		u32 d32;
 		struct {
@@ -775,7 +780,8 @@ struct dwc2_hsotg {
 	struct list_head periodic_sched_assigned;
 	struct list_head periodic_sched_queued;
 	u16 periodic_usecs;
-	u16 frame_usecs[8];
+	unsigned long periodic_bitmap[DIV_ROUND_UP(TOTAL_PERIODIC_USEC,
+						   BITS_PER_LONG)];
 	u16 frame_number;
 	u16 periodic_qh_count;
 	bool bus_suspended;
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 33495b235b3c..803992985935 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -3091,9 +3091,6 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 		hsotg->hc_ptr_array[i] = channel;
 	}
 
-	if (hsotg->core_params->uframe_sched > 0)
-		dwc2_hcd_init_usecs(hsotg);
-
 	/* Initialize hsotg start work */
 	INIT_DELAYED_WORK(&hsotg->start_work, dwc2_hcd_start_func);
 
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index de8c0b0937e6..a3dbc561fe3f 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -235,7 +235,7 @@ enum dwc2_transaction_type {
  * @interval:           Interval between transfers in (micro)frames
  * @sched_frame:        (Micro)frame to initialize a periodic transfer.
  *                      The transfer executes in the following (micro)frame.
- * @frame_usecs:        Internal variable used by the microframe scheduler
+ * @start_usecs:        Exact start microsecond value.
  * @start_split_frame:  (Micro)frame at which last start split was initialized
  * @ntd:                Actual number of transfer descriptors in a list
  * @qtd_list:           List of QTDs for this QH
@@ -266,7 +266,7 @@ struct dwc2_qh {
 	u16 usecs;
 	u16 interval;
 	u16 sched_frame;
-	u16 frame_usecs[8];
+	u16 start_usecs;
 	u16 start_split_frame;
 	u16 ntd;
 	struct list_head qtd_list;
@@ -452,7 +452,6 @@ extern void dwc2_hcd_queue_transactions(struct dwc2_hsotg *hsotg,
 
 /* Schedule Queue Functions */
 /* Implemented in hcd_queue.c */
-extern void dwc2_hcd_init_usecs(struct dwc2_hsotg *hsotg);
 extern struct dwc2_qh *dwc2_hcd_qh_create(struct dwc2_hsotg *hsotg,
 					  struct dwc2_hcd_urb *urb,
 					  gfp_t mem_flags);
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index c3f6200bc630..6071b8ba1ee7 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -137,8 +137,9 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
 		qh_entry = qh_entry->next;
 		if (dwc2_frame_num_le(qh->sched_frame, hsotg->frame_number)) {
 			dwc2_sch_dbg(hsotg,
-				     "ready %p fn=%04x, sch=%04x\n",
-				     qh, hsotg->frame_number, qh->sched_frame);
+				     "ready %p fn=%04x, sch=%04x, us=%d\n",
+				     qh, hsotg->frame_number, qh->sched_frame,
+				     qh->start_usecs);
 
 			/*
 			 * Move QH to the ready list to be executed next
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 93b26c8fef88..64b779a5c93f 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -325,35 +325,45 @@ static int dwc2_check_periodic_bandwidth(struct dwc2_hsotg *hsotg,
 
 /**
  * Microframe scheduler
- * track the total use in hsotg->frame_usecs
- * keep each qh use in qh->frame_usecs
+ * track the total use in hsotg->periodic_bitmap
+ * keep each qh use in qh->start_usecs
  * when surrendering the qh then donate the time back
  */
 static const unsigned short max_uframe_usecs[] = {
-	100, 100, 100, 100, 100, 100, 30, 0
+	EARLY_FRAME_USEC, EARLY_FRAME_USEC, EARLY_FRAME_USEC,
+	EARLY_FRAME_USEC, EARLY_FRAME_USEC, EARLY_FRAME_USEC,
+	30, 0
 };
 
-void dwc2_hcd_init_usecs(struct dwc2_hsotg *hsotg)
-{
-	int i;
-
-	for (i = 0; i < 8; i++)
-		hsotg->frame_usecs[i] = max_uframe_usecs[i];
-}
-
 static int dwc2_find_single_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 {
+	unsigned short frame_start = 0;
 	unsigned short utime = qh->usecs;
 	int i;
 
-	for (i = 0; i < 8; i++) {
-		/* At the start hsotg->frame_usecs[i] = max_uframe_usecs[i] */
-		if (utime <= hsotg->frame_usecs[i]) {
-			hsotg->frame_usecs[i] -= utime;
-			qh->frame_usecs[i] += utime;
+	for (i = 0; i < ARRAY_SIZE(max_uframe_usecs); i++) {
+		unsigned short frame_time = max_uframe_usecs[i];
+		unsigned long start;
+
+		/* Look for a chunk starting at begin of this frame */
+		start = bitmap_find_next_zero_area(hsotg->periodic_bitmap,
+						   frame_start + frame_time,
+						   frame_start, utime, 0);
+
+		/* The chunk has to totally fit in this frame */
+		if (start < frame_start + frame_time) {
+			bitmap_set(hsotg->periodic_bitmap, start, utime);
+			qh->start_usecs = start;
+			dwc2_sch_dbg(hsotg, "%s: assigned %d us @ %d us\n",
+				     __func__, qh->usecs, qh->start_usecs);
 			return i;
 		}
+
+		frame_start += frame_time;
 	}
+
+	dwc2_sch_dbg(hsotg, "%s: failed to assign %d us\n",
+		     __func__, qh->usecs);
 	return -ENOSPC;
 }
 
@@ -363,57 +373,23 @@ static int dwc2_find_single_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 static int dwc2_find_multi_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 {
 	unsigned short utime = qh->usecs;
-	unsigned short xtime;
-	int t_left;
-	int i;
-	int j;
-	int k;
+	unsigned long start;
+
+	start = bitmap_find_next_zero_area(hsotg->periodic_bitmap,
+					   TOTAL_PERIODIC_USEC, 0, utime, 0);
+	if (start >= TOTAL_PERIODIC_USEC) {
+		dwc2_sch_dbg(hsotg, "%s: failed to assign %d us\n",
+			     __func__, qh->usecs);
+		return -ENOSPC;
+	}
 
-	for (i = 0; i < 8; i++) {
-		if (hsotg->frame_usecs[i] <= 0)
-			continue;
+	bitmap_set(hsotg->periodic_bitmap, start, qh->usecs);
+	qh->start_usecs = start;
 
-		/*
-		 * we need n consecutive slots so use j as a start slot
-		 * j plus j+1 must be enough time (for now)
-		 */
-		xtime = hsotg->frame_usecs[i];
-		for (j = i + 1; j < 8; j++) {
-			/*
-			 * if we add this frame remaining time to xtime we may
-			 * be OK, if not we need to test j for a complete frame
-			 */
-			if (xtime + hsotg->frame_usecs[j] < utime) {
-				if (hsotg->frame_usecs[j] <
-							max_uframe_usecs[j])
-					continue;
-			}
-			if (xtime >= utime) {
-				t_left = utime;
-				for (k = i; k < 8; k++) {
-					t_left -= hsotg->frame_usecs[k];
-					if (t_left <= 0) {
-						qh->frame_usecs[k] +=
-							hsotg->frame_usecs[k]
-								+ t_left;
-						hsotg->frame_usecs[k] = -t_left;
-						return i;
-					} else {
-						qh->frame_usecs[k] +=
-							hsotg->frame_usecs[k];
-						hsotg->frame_usecs[k] = 0;
-					}
-				}
-			}
-			/* add the frame time to x time */
-			xtime += hsotg->frame_usecs[j];
-			/* we must have a fully available next frame or break */
-			if (xtime < utime &&
-			   hsotg->frame_usecs[j] == max_uframe_usecs[j])
-				continue;
-		}
-	}
-	return -ENOSPC;
+	dwc2_sch_dbg(hsotg, "%s: assigned %d us @ %d us\n",
+		     __func__, qh->usecs, qh->start_usecs);
+
+	return start / EARLY_FRAME_USEC;
 }
 
 static int dwc2_find_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
@@ -490,8 +466,10 @@ static int dwc2_schedule_periodic(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 		if (frame >= 0) {
 			qh->sched_frame &= ~0x7;
 			qh->sched_frame |= (frame & 7);
-			dwc2_sch_dbg(hsotg, "sched_p %p sch=%04x, uf=%d\n",
-				     qh, qh->sched_frame, frame);
+			dwc2_sch_dbg(hsotg,
+				     "sched_p %p sch=%04x, uf=%d, us=%d\n",
+				     qh, qh->sched_frame, frame,
+				     qh->start_usecs);
 		}
 
 		if (status > 0)
@@ -551,22 +529,21 @@ static int dwc2_schedule_periodic(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
 				     struct dwc2_qh *qh)
 {
-	int i;
+	int start = qh->start_usecs;
+	int utime = qh->usecs;
 
 	list_del_init(&qh->qh_list_entry);
 
 	/* Update claimed usecs per (micro)frame */
 	hsotg->periodic_usecs -= qh->usecs;
 
-	if (hsotg->core_params->uframe_sched > 0) {
-		for (i = 0; i < 8; i++) {
-			hsotg->frame_usecs[i] += qh->frame_usecs[i];
-			qh->frame_usecs[i] = 0;
-		}
-	} else {
+	if (hsotg->core_params->uframe_sched <= 0) {
 		/* Release periodic channel reservation */
 		hsotg->periodic_channels--;
+		return;
 	}
+
+	bitmap_clear(hsotg->periodic_bitmap, start, utime);
 }
 
 /**
@@ -600,8 +577,8 @@ int dwc2_hcd_qh_add(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 		new_frame = dwc2_frame_num_inc(hsotg->frame_number,
 				SCHEDULE_SLOP);
 
-		dwc2_sch_dbg(hsotg, "reset %p sch=%04x=>%04x\n",
-			     qh, qh->sched_frame, new_frame);
+		dwc2_sch_dbg(hsotg, "reset %p sch=%04x=>%04x, us=%d\n",
+			     qh, qh->sched_frame, new_frame, qh->start_usecs);
 		qh->sched_frame = new_frame;
 	}
 
@@ -695,10 +672,11 @@ static void dwc2_sched_periodic_split(struct dwc2_hsotg *hsotg,
 		qh->start_split_frame = qh->sched_frame;
 	}
 
-	dwc2_sch_dbg(hsotg, "next(%d) %p fn=%04x, sch=%04x=>%04x (%+d)\n",
+	dwc2_sch_dbg(hsotg, "next(%d) %p fn=%04x, sch=%04x=>%04x (%+d) us=%d\n",
 		     sched_next_periodic_split, qh, frame_number, old_frame,
 		     qh->sched_frame,
-		     dwc2_frame_num_dec(qh->sched_frame, old_frame));
+		     dwc2_frame_num_dec(qh->sched_frame, old_frame),
+		     qh->start_usecs);
 }
 
 /*
-- 
2.6.0.rc2.230.g3dd15c0
