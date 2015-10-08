From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 3/5] CHROMIUM: usb: dwc2: Avoid double-reset at boot time
Date: Wed,  7 Oct 2015 17:48:39 -0700
Message-ID: <1444265321-16768-4-git-send-email-dianders@chromium.org>
References: <1444265321-16768-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1444265321-16768-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In (usb: dwc2: reset dwc2 core before dwc2_get_hwparams()) we added an
extra reset to the probe path for the dwc2 USB controllers.  This
allowed proper detection of parameters even if the firmware had already
used the USB part.

Unfortunately, this extra reset is quite slow and is affecting boot
speed.  We can avoid the double-reset by skipping the extra reset that
would happen just after the one we added.  Logic that explains why this
is safe:

* As of the CL mentioned above, we now always call dwc2_core_reset() in
  dwc2_driver_probe() before dwc2_hcd_init().

* The only caller of dwc2_hcd_init() is dwc2_driver_probe(), so we're
  guaranteed that dwc2_core_reset() was called before dwc2_hdc_init().

* dwc2_hdc_init() is the only caller that passes an irq other than -1 to
  dwc2_core_init().  Thus if dwc2_core_init() is called with an irq
  other than -1 we're guaranteed that dwc2_core_reset was called before
  dwc2_core_init().

...this allows us to remove the dwc2_core_reset() in dwc2_core_init() if
irq is not < 0.

Note that since "irq" wasn't used in the function dwc2_core_init()
anyway and since select_phy was always set at exactly the same times we
could avoid the reset, we remove "irq" and rename "select_phy" to
"initial_setup" and adjust the callers accordingly.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/dwc2/core.c | 29 ++++++++++++++++++-----------
 drivers/usb/dwc2/core.h |  2 +-
 drivers/usb/dwc2/hcd.c  |  6 +++---
 3 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index f2002d2..9f1c438 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -765,11 +765,10 @@ static void dwc2_gusbcfg_init(struct dwc2_hsotg *hsotg)
  * dwc2_core_init() - Initializes the DWC_otg controller registers and
  * prepares the core for device mode or host mode operation
  *
- * @hsotg:      Programming view of the DWC_otg controller
- * @select_phy: If true then also set the Phy type
- * @irq:        If >= 0, the irq to register
+ * @hsotg:         Programming view of the DWC_otg controller
+ * @initial_setup: If true then this is the first init for this instance.
  */
-int dwc2_core_init(struct dwc2_hsotg *hsotg, bool select_phy, int irq)
+int dwc2_core_init(struct dwc2_hsotg *hsotg, bool initial_setup)
 {
 	u32 usbcfg, otgctl;
 	int retval;
@@ -791,18 +790,26 @@ int dwc2_core_init(struct dwc2_hsotg *hsotg, bool select_phy, int irq)
 
 	dwc2_writel(usbcfg, hsotg->regs + GUSBCFG);
 
-	/* Reset the Controller */
-	retval = dwc2_core_reset(hsotg);
-	if (retval) {
-		dev_err(hsotg->dev, "%s(): Reset failed, aborting\n",
-				__func__);
-		return retval;
+	/*
+	 * Reset the Controller
+	 *
+	 * We only need to reset the controller if this is a re-init.
+	 * For the first init we know for sure that earlier code reset us (it
+	 * needed to in order to properly detect various parameters).
+	 */
+	if (!initial_setup) {
+		retval = dwc2_core_reset(hsotg);
+		if (retval) {
+			dev_err(hsotg->dev, "%s(): Reset failed, aborting\n",
+					__func__);
+			return retval;
+		}
 	}
 
 	/*
 	 * This needs to happen in FS mode before any other programming occurs
 	 */
-	retval = dwc2_phy_init(hsotg, select_phy);
+	retval = dwc2_phy_init(hsotg, initial_setup);
 	if (retval)
 		return retval;
 
diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index c258d19..d707a7b 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -900,7 +900,7 @@ extern void dwc2_read_packet(struct dwc2_hsotg *hsotg, u8 *dest, u16 bytes);
 extern void dwc2_flush_tx_fifo(struct dwc2_hsotg *hsotg, const int num);
 extern void dwc2_flush_rx_fifo(struct dwc2_hsotg *hsotg);
 
-extern int dwc2_core_init(struct dwc2_hsotg *hsotg, bool select_phy, int irq);
+extern int dwc2_core_init(struct dwc2_hsotg *hsotg, bool initial_setup);
 extern void dwc2_enable_global_interrupts(struct dwc2_hsotg *hcd);
 extern void dwc2_disable_global_interrupts(struct dwc2_hsotg *hcd);
 
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index af4e4a2..e2286cf 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -1381,7 +1381,7 @@ static void dwc2_conn_id_status_change(struct work_struct *work)
 			dev_err(hsotg->dev,
 				"Connection id status change timed out\n");
 		hsotg->op_state = OTG_STATE_B_PERIPHERAL;
-		dwc2_core_init(hsotg, false, -1);
+		dwc2_core_init(hsotg, false);
 		dwc2_enable_global_interrupts(hsotg);
 		spin_lock_irqsave(&hsotg->lock, flags);
 		dwc2_hsotg_core_init_disconnected(hsotg, false);
@@ -1404,7 +1404,7 @@ static void dwc2_conn_id_status_change(struct work_struct *work)
 		hsotg->op_state = OTG_STATE_A_HOST;
 
 		/* Initialize the Core for Host mode */
-		dwc2_core_init(hsotg, false, -1);
+		dwc2_core_init(hsotg, false);
 		dwc2_enable_global_interrupts(hsotg);
 		dwc2_hcd_start(hsotg);
 	}
@@ -3050,7 +3050,7 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 	dwc2_disable_global_interrupts(hsotg);
 
 	/* Initialize the DWC_otg core, and select the Phy type */
-	retval = dwc2_core_init(hsotg, true, irq);
+	retval = dwc2_core_init(hsotg, true);
 	if (retval)
 		goto error2;
 
-- 
2.6.0.rc2.230.g3dd15c0
