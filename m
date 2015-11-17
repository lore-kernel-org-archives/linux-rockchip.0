From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Mon, 16 Nov 2015 16:51:22 -0800
Message-ID: <1447721484-22548-7-git-send-email-dianders@chromium.org>
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

Until we have logic to determine which devices share the same TT let's
add logic to assume that all devices on a given dwc2 controller are on
one single_tt hub.  This is better than the previous code that assumed
that all devices were on one multi_tt hub, since single_tt hubs
appear (in my experience) to be much more common and any schedule that
would work on a single_tt hub will also work on a multi_tt hub.  This
will prevent more than 8 total low/full speed devices to be on the bus
at one time, but that's a reasonable restriction until we've made things
smarter.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v3:
- Assuming single_tt is new for v3; not terribly well tested (yet).

Changes in v2: None

 drivers/usb/dwc2/core.h      |  1 +
 drivers/usb/dwc2/hcd_queue.c | 40 +++++++++++++++++++++++++++++++++++++++-
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 567ee2c9e69f..09aa2b5ae29e 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -782,6 +782,7 @@ struct dwc2_hsotg {
 	u16 periodic_usecs;
 	unsigned long periodic_bitmap[DIV_ROUND_UP(TOTAL_PERIODIC_USEC,
 						   BITS_PER_LONG)];
+	bool has_split[8];
 	u16 frame_number;
 	u16 periodic_qh_count;
 	bool bus_suspended;
diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index 4c1d9cf482d0..c5a2edb04bec 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -372,10 +372,33 @@ static int dwc2_find_single_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
  */
 static int dwc2_find_multi_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 {
+	unsigned long tmp_bmp[DIV_ROUND_UP(TOTAL_PERIODIC_USEC, BITS_PER_LONG)];
+	unsigned long *bmp;
 	unsigned short utime = qh->usecs;
 	unsigned long start;
+	int i;
+
+	if (qh->do_split) {
+		/*
+		 * Eventually we'll only want to exclude out microframes used by
+		 * other people on the same TT as us, and then only if we're on
+		 * a single_tt hub.  ...but until we have that logic, just
+		 * schedule everyone together.
+		 */
+		bmp = tmp_bmp;
+		memcpy(bmp, hsotg->periodic_bitmap, sizeof(tmp_bmp));
+		start = 0;
+
+		for (i = 0; i < ARRAY_SIZE(max_uframe_usecs); i++) {
+			if (hsotg->has_split[i])
+				bitmap_set(bmp, start, max_uframe_usecs[i]);
+			start += max_uframe_usecs[i];
+		}
+	} else {
+		bmp = hsotg->periodic_bitmap;
+	}
 
-	start = bitmap_find_next_zero_area(hsotg->periodic_bitmap,
+	start = bitmap_find_next_zero_area(bmp,
 					   TOTAL_PERIODIC_USEC, 0, utime, 0);
 	if (start >= TOTAL_PERIODIC_USEC) {
 		dwc2_sch_dbg(hsotg, "%s: failed to assign %d us\n",
@@ -386,6 +409,13 @@ static int dwc2_find_multi_uframe(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
 	bitmap_set(hsotg->periodic_bitmap, start, qh->usecs);
 	qh->start_usecs = start;
 
+	if (qh->do_split) {
+		for (i = start / EARLY_FRAME_USEC;
+		     i < DIV_ROUND_UP(start + utime - 1, EARLY_FRAME_USEC);
+		     i++)
+			hsotg->has_split[i] = true;
+	}
+
 	dwc2_sch_dbg(hsotg, "%s: assigned %d us @ %d us\n",
 		     __func__, qh->usecs, qh->start_usecs);
 
@@ -533,6 +563,7 @@ static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
 {
 	int start = qh->start_usecs;
 	int utime = qh->usecs;
+	int i;
 
 	list_del_init(&qh->qh_list_entry);
 
@@ -546,6 +577,13 @@ static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
 	}
 
 	bitmap_clear(hsotg->periodic_bitmap, start, utime);
+
+	if (qh->do_split) {
+		for (i = start / EARLY_FRAME_USEC;
+		     i < DIV_ROUND_UP(start + utime - 1, EARLY_FRAME_USEC);
+		     i++)
+			hsotg->has_split[i] = false;
+	}
 }
 
 /**
-- 
2.6.0.rc2.230.g3dd15c0
