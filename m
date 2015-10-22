From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH] usb: dwc2: host: Fix remote wakeup when not in DWC2_L2
Date: Thu, 22 Oct 2015 13:05:03 -0700
Message-ID: <1445544303-24202-1-git-send-email-dianders@chromium.org>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, r.baldyga-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In commit 734643dfbdde ("usb: dwc2: host: add flag to reflect bus
state") we changed dwc2_port_suspend() not to set the lx_state
anymore (instead it sets the new bus_suspended variable).  This
introduced a bug where we would fail to detect device insertions if:

1. Plug empty hub into dwc2
2. Plug USB flash drive into the empty hub.
3. Wait a few seconds
4. Unplug USB flash drive
5. Less than 2 seconds after step 4, plug the USB flash drive in again.

The dwc2_hcd_rem_wakeup() function should have been changed to look at
the new bus_suspended variable.

Let's fix it.  Since commit b46146d59fda ("usb: dwc2: host: resume root
hub on remote wakeup") talks about needing the root hub resumed if the
bus was suspended, we'll include it in our test.

It appears that the "port_l1_change" should only be set to 1 if we were
in DWC2_L1 (the driver currently never sets this), so we'll update the
former "else" case based on this test.

Fixes: 734643dfbdde ("usb: dwc2: host: add flag to reflect bus state")
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/dwc2/hcd.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index e79baf73c234..571c21727ff9 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -324,12 +324,13 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
  */
 static void dwc2_hcd_rem_wakeup(struct dwc2_hsotg *hsotg)
 {
-	if (hsotg->lx_state == DWC2_L2) {
+	if (hsotg->bus_suspended) {
 		hsotg->flags.b.port_suspend_change = 1;
 		usb_hcd_resume_root_hub(hsotg->priv);
-	} else {
-		hsotg->flags.b.port_l1_change = 1;
 	}
+
+	if (hsotg->lx_state == DWC2_L1)
+		hsotg->flags.b.port_l1_change = 1;
 }
 
 /**
@@ -1428,8 +1429,8 @@ static void dwc2_wakeup_detected(unsigned long data)
 	dev_dbg(hsotg->dev, "Clear Resume: HPRT0=%0x\n",
 		dwc2_readl(hsotg->regs + HPRT0));
 
-	hsotg->bus_suspended = 0;
 	dwc2_hcd_rem_wakeup(hsotg);
+	hsotg->bus_suspended = 0;
 
 	/* Change to L0 state */
 	hsotg->lx_state = DWC2_L0;
-- 
2.6.0.rc2.230.g3dd15c0

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
