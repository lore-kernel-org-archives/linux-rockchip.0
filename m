From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v3 2/2] usb: dwc2: host: Convert hcd_queue to timer_setup
Date: Mon, 30 Oct 2017 10:08:01 -0700
Message-ID: <20171030170802.14489-2-dianders@chromium.org>
References: <20171030170802.14489-1-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171030170802.14489-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: balbi@kernel.org, johnyoun@synopsys.com
Cc: stefan.wahren@i2se.com, amstan@chromium.org, linux-rockchip@lists.infradead.org, gregkh@linuxfoundation.org, johan@kernel.org, eric@anholt.net, mka@chromium.org, john.stultz@linaro.org, linux-rpi-kernel@lists.infradead.org, jwerner@chromium.org, Douglas Anderson <dianders@chromium.org>, Kees Cook <keescook@chromium.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Convert the timers in hcd_queue to use the new timer_setup() call
introduced in commit 686fef928bba ("timer: Prepare to change timer
callback argument type").

Suggested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Cc: Kees Cook <keescook@chromium.org>
---

Changes in v3:
- Convert hcd_queue to timer_setup new for v3

 drivers/usb/dwc2/hcd_queue.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index bea0aadd756e..6f5b5c8b0467 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -1275,11 +1275,11 @@ static void dwc2_do_unreserve(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
  * release the reservation.  This worker is called after the appropriate
  * delay.
  *
- * @work: Pointer to a qh unreserve_work.
+ * @t: Pointer to unreserve_timer in a qh.
  */
-static void dwc2_unreserve_timer_fn(unsigned long data)
+static void dwc2_unreserve_timer_fn(struct timer_list *t)
 {
-	struct dwc2_qh *qh = (struct dwc2_qh *)data;
+	struct dwc2_qh *qh = from_timer(qh, t, unreserve_timer);
 	struct dwc2_hsotg *hsotg = qh->hsotg;
 	unsigned long flags;
 
@@ -1461,11 +1461,11 @@ static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
  * to retry some time later.  This function handles that timer and moves the
  * qh back to the "inactive" list, then queues transactions.
  *
- * @data: Pointer to a qh to re-schedule.
+ * @t: Pointer to wait_timer in a qh.
  */
-static void dwc2_wait_timer_fn(unsigned long data)
+static void dwc2_wait_timer_fn(struct timer_list *t)
 {
-	struct dwc2_qh *qh = (struct dwc2_qh *)data;
+	struct dwc2_qh *qh = from_timer(qh, t, wait_timer);
 	struct dwc2_hsotg *hsotg = qh->hsotg;
 	unsigned long flags;
 
@@ -1518,9 +1518,8 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
 
 	/* Initialize QH */
 	qh->hsotg = hsotg;
-	setup_timer(&qh->unreserve_timer, dwc2_unreserve_timer_fn,
-		    (unsigned long)qh);
-	setup_timer(&qh->wait_timer, dwc2_wait_timer_fn, (unsigned long)qh);
+	timer_setup(&qh->unreserve_timer, dwc2_unreserve_timer_fn, 0);
+	timer_setup(&qh->wait_timer, dwc2_wait_timer_fn, 0);
 	qh->ep_type = ep_type;
 	qh->ep_is_in = ep_is_in;
 
-- 
2.15.0.rc2.357.g7e34df9404-goog
