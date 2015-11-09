From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v2] usb: dwc2: host: Rewrite the microframe scheduler
Date: Mon,  9 Nov 2015 14:42:01 -0800
Message-ID: <1447108921-19795-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
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

This new code uses the existing Linux bitmap code to avoid reinventing
the wheel.  You can see (ugly) test code for this up on pastebin:
  http://pastebin.com/GwMuz5HT

Note: no known problems are fixed by this patch, and in fact I can see
very little impact of the microframe scheduler overall.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Since no known bugs are fixed by this code and my current setup hardly
stress the microframe scheduler at all, please give extra eyes and extra
testing to this patch.  Thanks!

Changes in v2:
- Totally rewrote again after writing test code.
- Now needs to be atop my recent series delaying bandwidth release

 drivers/usb/dwc2/core.h      |   9 +++-
 drivers/usb/dwc2/hcd.c       |   3 --
 drivers/usb/dwc2/hcd.h       |   5 +-
 drivers/usb/dwc2/hcd_queue.c | 117 ++++++++++++++++---------------------------
 4 files changed, 52 insertions(+), 82 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index a66d3cb62b65..df123de98903 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -649,7 +649,7 @@ struct dwc2_hregs_backup {
  *                      This value is in microseconds per (micro)frame. The
  *                      assumption is that all periodic transfers may occur in
  *                      the same (micro)frame.
- * @frame_usecs:        Internal variable used by the microframe scheduler
+ * @periodic_bitmap:    Bitmap used by the microframe scheduler
  * @frame_number:       Frame number read from the core at SOF. The value ranges
  *                      from 0 to HFNUM_MAX_FRNUM.
  * @periodic_qh_count:  Count of periodic QHs, if using several eps. Used for
@@ -744,6 +744,10 @@ struct dwc2_hsotg {
 #define DWC2_CORE_REV_3_00a	0x4f54300a
 
 #if IS_ENABLED(CONFIG_USB_DWC2_HOST) || IS_ENABLED(CONFIG_USB_DWC2_DUAL_ROLE)
+
+/* Total number of microseconds for scheduling */
+#define	TOTAL_PERIODIC_USEC		630
+
 	union dwc2_hcd_internal_flags {
 		u32 d32;
 		struct {
@@ -766,7 +770,8 @@ struct dwc2_hsotg {
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
index b899b06b41cc..5fc86aad542e 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -3089,9 +3089,6 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 		hsotg->hc_ptr_array[i] = channel;
 	}
 
-	if (hsotg->core_params->uframe_sched > 0)
-		dwc2_hcd_init_usecs(hsotg);
-
 	/* Initialize hsotg start work */
 	INIT_DELAYED_WORK(&hsotg->start_work, dwc2_hcd_start_func);
 
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index b75a8b116f6e..051e8b3bf582 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -236,7 +236,7 @@ enum dwc2_transaction_type {
  * @interval:           Interval between transfers in (micro)frames
  * @sched_frame:        (Micro)frame to initialize a periodic transfer.
  *                      The transfer executes in the following (micro)frame.
- * @frame_usecs:        Internal variable used by the microframe scheduler
+ * @start_usecs:        Exact start microsecond value.
  * @start_split_frame:  (Micro)frame at which last start split was initialized
  * @ntd:                Actual number of transfer descriptors in a list
  * @qtd_list:           List of QTDs for this QH
@@ -270,7 +270,7 @@ struct dwc2_qh {
 	u16 usecs;
 	u16 interval;
 	u16 sched_frame;
-	u16 frame_usecs[8];
+	u16 start_usecs;
 	u16 start_split_frame;
 	u16 ntd;
 	struct list_head qtd_list;
@@ -458,7 +458,6 @@ extern void dwc2_hcd_queue_transactions(struct dwc2_hsotg *hsotg,
 
 /* Schedule Queue Functions */
 /* Implemented in hcd_queue.c */
-extern void dwc2_hcd_init_usecs(struct dwc2_hsotg *hsotg);
 extern struct dwc2_qh *dwc2_hcd_qh_create(struct dwc2_hsotg *hsotg,
 					  struct dwc2_hcd_urb *urb,
 					  gfp_t mem_flags);
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 10f27b594e92..c93be0a22369 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -77,17 +77,12 @@ static void dwc2_do_unreserve(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 	/* Update claimed usecs per (micro)frame */
 	hsotg->periodic_usecs -= qh->usecs;
 
-	if (hsotg->core_params->uframe_sched > 0) {
-		int i;
-
-		for (i = 0; i < 8; i++) {
-			hsotg->frame_usecs[i] += qh->frame_usecs[i];
-			qh->frame_usecs[i] = 0;
-		}
-	} else {
-		/* Release periodic channel reservation */
+	/* Release periodic channel reservation */
+	if (hsotg->core_params->uframe_sched > 0)
+		bitmap_clear(hsotg->periodic_bitmap,
+			     qh->start_usecs, qh->usecs);
+	else
 		hsotg->periodic_channels--;
-	}
 
 	/* No more unreserve pending--we're did it */
 	qh->unreserve_pending = false;
@@ -417,35 +412,42 @@ static int dwc2_check_periodic_bandwidth(struct dwc2_hsotg *hsotg,
 
 /**
  * Microframe scheduler
- * track the total use in hsotg->frame_usecs
- * keep each qh use in qh->frame_usecs
+ * track the total use in hsotg->periodic_bitmap
+ * keep each qh use in qh->start_usecs
  * when surrendering the qh then donate the time back
  */
 static const unsigned short max_uframe_usecs[] = {
 	100, 100, 100, 100, 100, 100, 30, 0
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
+						   TOTAL_PERIODIC_USEC,
+						   frame_start, utime, 0);
+
+		/* The chunk has to totally fit in this frame */
+		if (start - frame_start + utime <= frame_time) {
+			bitmap_set(hsotg->periodic_bitmap, start, utime);
+			qh->start_usecs = start;
+			dev_dbg(hsotg->dev, "%s: assigned %d us @ %d us\n",
+				__func__, qh->usecs, qh->start_usecs);
 			return i;
 		}
+
+		frame_start += frame_time;
 	}
+	dev_dbg(hsotg->dev, "%s: failed to assign %d us\n",
+		__func__, qh->usecs);
 	return -ENOSPC;
 }
 
@@ -455,57 +457,24 @@ static int dwc2_find_single_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
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
+		dev_dbg(hsotg->dev, "%s: failed to assign %d us\n",
+			__func__, qh->usecs);
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
+	dev_dbg(hsotg->dev, "%s: assigned %d us @ %d us\n",
+		__func__, qh->usecs, qh->start_usecs);
+
+	/* Cheat instead of using max_uframe_usecs */
+	return start / 100;
 }
 
 static int dwc2_find_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
-- 
2.6.0.rc2.230.g3dd15c0

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
