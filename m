From: Douglas Anderson <dianders@chromium.org>
Subject: [RFC PATCH] usb: dwc2: host: Rewrite the microframe scheduler
Date: Fri,  6 Nov 2015 17:50:51 -0800
Message-ID: <1446861051-20135-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The old microframe scheduler was terribly hard to follow and (it seemed
to me) that it had some bugs in it.

Let's re-write it in a simpler, easier-to-read way.  Hopefully this will
work better.

Note: no known problems are fixed by this patch, and in fact I can see
very little impact of the microframe scheduler overall.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
 drivers/usb/dwc2/hcd_queue.c | 72 ++++++++++++++++++++------------------------
 1 file changed, 32 insertions(+), 40 deletions(-)

diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 7d8d06cfe3c1..d6c24decee08 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -359,57 +359,49 @@ static int dwc2_find_single_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
  */
 static int dwc2_find_multi_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 {
-	unsigned short utime = qh->usecs;
-	unsigned short xtime;
-	int t_left;
+	int utime;
 	int i;
 	int j;
-	int k;
 
 	for (i = 0; i < 8; i++) {
 		if (hsotg->frame_usecs[i] <= 0)
 			continue;
 
-		/*
-		 * we need n consecutive slots so use j as a start slot
-		 * j plus j+1 must be enough time (for now)
-		 */
-		xtime = hsotg->frame_usecs[i];
-		for (j = i + 1; j < 8; j++) {
+		for (utime = qh->usecs, j = i; utime > 0 && j < 8; j++) {
+			/* Give the available time from this uframe */
+			utime -= hsotg->frame_usecs[j];
+
 			/*
-			 * if we add this frame remaining time to xtime we may
-			 * be OK, if not we need to test j for a complete frame
+			 * Except for first frame, we can't continue past this
+			 * frame if it wasn't full, so bail now.  We might still
+			 * be successful the above subtract made utime <= 0.
 			 */
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
+			if ((i != j) &&
+			    (hsotg->frame_usecs[j] < max_uframe_usecs[j]))
+				break;
+		}
+
+		/* If utime > 0 after above loop, try a different start (i) */
+		if (utime > 0)
+			continue;
+
+		dev_dbg(hsotg->dev, "Assigned %d us starting at i=%d + %d us\n",
+			qh->usecs, i,
+			max_uframe_usecs[i] - hsotg->frame_usecs[i]);
+
+		/* We've got success, so allocate */
+		for (utime = qh->usecs, j = i; utime > 0 && j < 8; j++) {
+			qh->frame_usecs[i] = min_t(u16, utime,
+						   hsotg->frame_usecs[j]);
+			utime -= qh->frame_usecs[i];
+			hsotg->frame_usecs[j] -= qh->frame_usecs[i];
 		}
+
+		return i;
 	}
+
+	dev_dbg(hsotg->dev, "Failed to assign %d us\n", qh->usecs);
+
 	return -ENOSPC;
 }
 
-- 
2.6.0.rc2.230.g3dd15c0
