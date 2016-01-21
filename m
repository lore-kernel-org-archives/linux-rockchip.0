From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 14/21] usb: dwc2: host: Split code out to make
 dwc2_do_reserve()
Date: Wed, 20 Jan 2016 21:04:25 -0800
Message-ID: <1453352672-27890-15-git-send-email-dianders@chromium.org>
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

This no-op change splits code out of dwc2_schedule_periodic() into a
dwc2_do_reserve() function.  This makes it a little easier to follow the
logic.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v4:
- Split code out to make dwc2_do_reserve() new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd_queue.c | 112 ++++++++++++++++++++++++++-----------------
 1 file changed, 67 insertions(+), 45 deletions(-)

diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 8a2067bc1e62..9ce407e5017d 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -245,6 +245,70 @@ static int dwc2_find_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 }
 
 /**
+ * dwc2_do_reserve() - Make a periodic reservation
+ *
+ * Try to allocate space in the periodic schedule.  Depending on parameters
+ * this might use the microframe scheduler or the dumb scheduler.
+ *
+ * @hsotg: The HCD state structure for the DWC OTG controller
+ * @qh:    QH for the periodic transfer.
+ *
+ * Returns: 0 upon success; error upon failure.
+ */
+static int dwc2_do_reserve(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
+{
+	int status;
+
+	if (hsotg->core_params->uframe_sched > 0) {
+		int frame = -1;
+
+		status = dwc2_find_uframe(hsotg, qh);
+		if (status == 0)
+			frame = 7;
+		else if (status > 0)
+			frame = status - 1;
+
+		/* Set the new frame up */
+		if (frame >= 0) {
+			qh->next_active_frame &= ~0x7;
+			qh->next_active_frame |= (frame & 7);
+			dwc2_sch_dbg(hsotg,
+				     "QH=%p sched_p nxt=%04x, uf=%d\n",
+				     qh, qh->next_active_frame, frame);
+		}
+
+		if (status > 0)
+			status = 0;
+	} else {
+		status = dwc2_periodic_channel_available(hsotg);
+		if (status) {
+			dev_info(hsotg->dev,
+				 "%s: No host channel available for periodic transfer\n",
+				 __func__);
+			return status;
+		}
+
+		status = dwc2_check_periodic_bandwidth(hsotg, qh);
+	}
+
+	if (status) {
+		dev_dbg(hsotg->dev,
+			"%s: Insufficient periodic bandwidth for periodic transfer\n",
+			__func__);
+		return status;
+	}
+
+	if (hsotg->core_params->uframe_sched <= 0)
+		/* Reserve periodic channel */
+		hsotg->periodic_channels++;
+
+	/* Update claimed usecs per (micro)frame */
+	hsotg->periodic_usecs += qh->host_us;
+
+	return 0;
+}
+
+/**
  * dwc2_do_unreserve() - Actually release the periodic reservation
  *
  * This function actually releases the periodic bandwidth that was reserved
@@ -393,51 +457,9 @@ static int dwc2_schedule_periodic(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 	 * that case.
 	 */
 	if (!qh->unreserve_pending) {
-		if (hsotg->core_params->uframe_sched > 0) {
-			int frame = -1;
-
-			status = dwc2_find_uframe(hsotg, qh);
-			if (status == 0)
-				frame = 7;
-			else if (status > 0)
-				frame = status - 1;
-
-			/* Set the new frame up */
-			if (frame >= 0) {
-				qh->next_active_frame &= ~0x7;
-				qh->next_active_frame |= (frame & 7);
-				dwc2_sch_dbg(hsotg,
-					     "QH=%p sched_p nxt=%04x, uf=%d\n",
-					     qh, qh->next_active_frame, frame);
-			}
-
-			if (status > 0)
-				status = 0;
-		} else {
-			status = dwc2_periodic_channel_available(hsotg);
-			if (status) {
-				dev_info(hsotg->dev,
-					"%s: No host channel available for periodic transfer\n",
-					__func__);
-				return status;
-			}
-
-			status = dwc2_check_periodic_bandwidth(hsotg, qh);
-		}
-
-		if (status) {
-			dev_dbg(hsotg->dev,
-				"%s: Insufficient periodic bandwidth for periodic transfer\n",
-				__func__);
+		status = dwc2_do_reserve(hsotg, qh);
+		if (status)
 			return status;
-		}
-
-		if (hsotg->core_params->uframe_sched <= 0)
-			/* Reserve periodic channel */
-			hsotg->periodic_channels++;
-
-		/* Update claimed usecs per (micro)frame */
-		hsotg->periodic_usecs += qh->host_us;
 	}
 
 	qh->unreserve_pending = 0;
@@ -450,7 +472,7 @@ static int dwc2_schedule_periodic(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 		list_add_tail(&qh->qh_list_entry,
 			      &hsotg->periodic_sched_inactive);
 
-	return status;
+	return 0;
 }
 
 /**
-- 
2.7.0.rc3.207.g0ac5344
