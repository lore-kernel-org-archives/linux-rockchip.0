From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 21/21] usb: dwc2: host: If using uframe scheduler,
 end splits better
Date: Wed, 20 Jan 2016 21:04:32 -0800
Message-ID: <1453352672-27890-22-git-send-email-dianders@chromium.org>
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

The microframe scheduler figured out exactly how many transfers we need
for a split transaction.  Let's use this knowledge to know when to end
things.

Without this I found that certain devices would just keep responding
with tons of NYET resonses on their INT_IN endpoint.  These would just
keep going and going and eventually we'd decide to terminate the
transfer (because the whole frame changed), but by that time the
scheduler would decide that we "missed" the start of the next transfer.
I can also imagine that if we blow past the end of our scheduled time we
may mess up other things that were scheduled to happen.

No known test cases are improved by this patch except that the scheduler
code doesn't yell about MISSES constantly anymore.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v4:
- If using uframe scheduler, end splits better new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd_intr.c | 48 +++++++++++++++++++++++++++++++++++++++------
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 1875e4590a3c..2519e1bdad1a 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -1353,14 +1353,50 @@ static void dwc2_hc_nyet_intr(struct dwc2_hsotg *hsotg,
 
 		if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
 		    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
-			int frnum = dwc2_hcd_get_frame_number(hsotg);
+			struct dwc2_qh *qh = chan->qh;
+			bool past_end;
+
+			if (hsotg->core_params->uframe_sched <= 0) {
+				int frnum = dwc2_hcd_get_frame_number(hsotg);
+
+				/* Don't have num_hs_transfers; simple logic */
+				past_end = dwc2_full_frame_num(frnum) !=
+				     dwc2_full_frame_num(qh->next_active_frame);
+			} else {
+				int end_frnum;
 
-			if (dwc2_full_frame_num(frnum) !=
-			    dwc2_full_frame_num(chan->qh->next_active_frame)) {
 				/*
-				 * No longer in the same full speed frame.
-				 * Treat this as a transaction error.
-				 */
+				* Figure out the end frame based on schedule.
+				*
+				* We don't want to go on trying again and again
+				* forever.  Let's stop when we've done all the
+				* transfers that were scheduled.
+				*
+				* We're going to be comparing start_active_frame
+				* and next_active_frame, both of which are 1
+				* before the time the packet goes on the wire,
+				* so that cancels out.  Basically if had 1
+				* transfer and we saw 1 NYET then we're done.
+				* We're getting a NYET here so if next >=
+				* (start + num_transfers) we're done. The
+				* complexity is that for all but ISOC_OUT we
+				* skip one slot.
+				*/
+				end_frnum = dwc2_frame_num_inc(
+					qh->start_active_frame,
+					qh->num_hs_transfers);
+
+				if (qh->ep_type != USB_ENDPOINT_XFER_ISOC ||
+				    qh->ep_is_in)
+					end_frnum =
+					       dwc2_frame_num_inc(end_frnum, 1);
+
+				past_end = dwc2_frame_num_le(
+					end_frnum, qh->next_active_frame);
+			}
+
+			if (past_end) {
+				/* Treat this as a transaction error. */
 #if 0
 				/*
 				 * Todo: Fix system performance so this can
-- 
2.7.0.rc3.207.g0ac5344
