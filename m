From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v3 5/8] usb: dwc2: host: Keep track of and use our scheduled
 microframe
Date: Mon, 16 Nov 2015 16:51:21 -0800
Message-ID: <1447721484-22548-6-git-send-email-dianders@chromium.org>
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

The microframe scheduler did a lot of work to pick the proper
microframe.  Then dwc2_sched_periodic_split() went ahead and ignored
which microframe we picked if it ever needed to re-assign things.

Let's keep track of the uframe and then we'll always use it.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v3:
- Keep track and use our uframe new for v3.

Changes in v2: None

 drivers/usb/dwc2/hcd.h       |  4 ++++
 drivers/usb/dwc2/hcd_queue.c | 16 +++++++++++++---
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index a3dbc561fe3f..ff99cb44c89d 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -231,6 +231,9 @@ enum dwc2_transaction_type {
  * @do_split:           Full/low speed endpoint on high-speed hub requires split
  * @td_first:           Index of first activated isochronous transfer descriptor
  * @td_last:            Index of last activated isochronous transfer descriptor
+ * @sched_uframe:       The microframe that we're scheduled to be in (0 - 7).
+ *                      Whenever we start a new split this is expected to be the
+ *                      lower 3 bits of sched_frame.
  * @usecs:              Bandwidth in microseconds per (micro)frame
  * @interval:           Interval between transfers in (micro)frames
  * @sched_frame:        (Micro)frame to initialize a periodic transfer.
@@ -263,6 +266,7 @@ struct dwc2_qh {
 	u8 do_split;
 	u8 td_first;
 	u8 td_last;
+	u8 sched_uframe;
 	u16 usecs;
 	u16 interval;
 	u16 sched_frame;
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 64b779a5c93f..4c1d9cf482d0 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -464,8 +464,10 @@ static int dwc2_schedule_periodic(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 
 		/* Set the new frame up */
 		if (frame >= 0) {
-			qh->sched_frame &= ~0x7;
-			qh->sched_frame |= (frame & 7);
+			qh->sched_uframe = frame;
+
+			/* The next frame that matches our scheduled uframe */
+			qh->sched_frame = ((qh->sched_frame + 7) & ~7) | frame;
 			dwc2_sch_dbg(hsotg,
 				     "sched_p %p sch=%04x, uf=%d, us=%d\n",
 				     qh, qh->sched_frame, frame,
@@ -668,7 +670,15 @@ static void dwc2_sched_periodic_split(struct dwc2_hsotg *hsotg,
 						     qh->interval);
 		if (dwc2_frame_num_le(qh->sched_frame, frame_number))
 			qh->sched_frame = frame_number;
-		qh->sched_frame |= 0x7;
+
+		if (hsotg->core_params->uframe_sched > 0)
+			/* The next frame that matches our scheduled uframe */
+			qh->sched_frame = ((qh->sched_frame + 7) & ~7) |
+					  qh->sched_uframe;
+		else
+			/* The beginning of the next full frame */
+			qh->sched_frame |= 0x7;
+
 		qh->start_split_frame = qh->sched_frame;
 	}
 
-- 
2.6.0.rc2.230.g3dd15c0
