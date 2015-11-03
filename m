From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Tue,  3 Nov 2015 12:30:28 -0800
Message-ID: <1446582629-30091-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

If you've got your interrupt signals bouncing a bit as you insert your
USB device, you might end up in a state when the device is connected but
the driver doesn't know it.

Specifically, the observed order is:
 1. hardware sees connect
 2. hardware sees disconnect
 3. hardware sees connect
 4. dwc2_port_intr() - clears connect interrupt
 5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()

Now you'll be stuck with the cable plugged in and no further interrupts
coming in but the driver will think we're disconnected.

We'll fix this by checking for the missing connect interrupt and
re-connecting after the disconnect is posted.  We don't skip the
disconnect because if there is a transitory disconnect we really want to
de-enumerate and re-enumerate.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Changes in v2:
- Don't reconnect when called from _dwc2_hcd_stop() (John Youn)

 drivers/usb/dwc2/core.h      |  6 ++++--
 drivers/usb/dwc2/core_intr.c |  4 ++--
 drivers/usb/dwc2/hcd.c       | 40 ++++++++++++++++++++++++++++++++++++++--
 drivers/usb/dwc2/hcd_intr.c  |  6 +-----
 4 files changed, 45 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index a66d3cb62b65..daa1c342cdac 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -1154,12 +1154,14 @@ static inline int dwc2_hsotg_set_test_mode(struct dwc2_hsotg *hsotg,
 
 #if IS_ENABLED(CONFIG_USB_DWC2_HOST) || IS_ENABLED(CONFIG_USB_DWC2_DUAL_ROLE)
 extern int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg);
-extern void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg);
+extern void dwc2_hcd_connect(struct dwc2_hsotg *hsotg);
+extern void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force);
 extern void dwc2_hcd_start(struct dwc2_hsotg *hsotg);
 #else
 static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
 { return 0; }
-static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg) {}
+static inline void dwc2_hcd_connect(struct dwc2_hsotg *hsotg) {}
+static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force) {}
 static inline void dwc2_hcd_start(struct dwc2_hsotg *hsotg) {}
 static inline void dwc2_hcd_remove(struct dwc2_hsotg *hsotg) {}
 static inline int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
index 27daa42788b1..61601d16e233 100644
--- a/drivers/usb/dwc2/core_intr.c
+++ b/drivers/usb/dwc2/core_intr.c
@@ -239,7 +239,7 @@ static void dwc2_handle_otg_intr(struct dwc2_hsotg *hsotg)
 			dev_dbg(hsotg->dev, "a_suspend->a_peripheral (%d)\n",
 				hsotg->op_state);
 			spin_unlock(&hsotg->lock);
-			dwc2_hcd_disconnect(hsotg);
+			dwc2_hcd_disconnect(hsotg, false);
 			spin_lock(&hsotg->lock);
 			hsotg->op_state = OTG_STATE_A_PERIPHERAL;
 		} else {
@@ -401,7 +401,7 @@ static void dwc2_handle_disconnect_intr(struct dwc2_hsotg *hsotg)
 		dwc2_op_state_str(hsotg));
 
 	if (hsotg->op_state == OTG_STATE_A_HOST)
-		dwc2_hcd_disconnect(hsotg);
+		dwc2_hcd_disconnect(hsotg, false);
 
 	dwc2_writel(GINTSTS_DISCONNINT, hsotg->regs + GINTSTS);
 }
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index e79baf73c234..e208eac7ff57 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -268,15 +268,33 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_hsotg *hsotg)
 }
 
 /**
+ * dwc2_hcd_connect() - Handles connect of the HCD
+ *
+ * @hsotg: Pointer to struct dwc2_hsotg
+ *
+ * Must be called with interrupt disabled and spinlock held
+ */
+void dwc2_hcd_connect(struct dwc2_hsotg *hsotg)
+{
+	if (hsotg->lx_state != DWC2_L0)
+		usb_hcd_resume_root_hub(hsotg->priv);
+
+	hsotg->flags.b.port_connect_status_change = 1;
+	hsotg->flags.b.port_connect_status = 1;
+}
+
+/**
  * dwc2_hcd_disconnect() - Handles disconnect of the HCD
  *
  * @hsotg: Pointer to struct dwc2_hsotg
+ * @force: If true, we won't try to reconnect even if we see device connected.
  *
  * Must be called with interrupt disabled and spinlock held
  */
-void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
+void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force)
 {
 	u32 intr;
+	u32 hprt0;
 
 	/* Set status flags for the hub driver */
 	hsotg->flags.b.port_connect_status_change = 1;
@@ -315,6 +333,24 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
 		dwc2_hcd_cleanup_channels(hsotg);
 
 	dwc2_host_disconnect(hsotg);
+
+	/*
+	 * Add an extra check here to see if we're actually connected but
+	 * we don't have a detection interrupt pending.  This can happen if:
+	 *   1. hardware sees connect
+	 *   2. hardware sees disconnect
+	 *   3. hardware sees connect
+	 *   4. dwc2_port_intr() - clears connect interrupt
+	 *   5. dwc2_handle_common_intr() - calls here
+	 *
+	 * Without the extra check here we will end calling disconnect
+	 * and won't get any future interrupts to handle the connect.
+	 */
+	if (!force) {
+		hprt0 = dwc2_readl(hsotg->regs + HPRT0);
+		if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
+			dwc2_hcd_connect(hsotg);
+	}
 }
 
 /**
@@ -2365,7 +2401,7 @@ static void _dwc2_hcd_stop(struct usb_hcd *hcd)
 
 	spin_lock_irqsave(&hsotg->lock, flags);
 	/* Ensure hcd is disconnected */
-	dwc2_hcd_disconnect(hsotg);
+	dwc2_hcd_disconnect(hsotg, true);
 	dwc2_hcd_stop(hsotg);
 	hsotg->lx_state = DWC2_L3;
 	hcd->state = HC_STATE_HALT;
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index bda0b21b850f..03504ac2fecc 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -350,11 +350,7 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsotg)
 		dev_vdbg(hsotg->dev,
 			 "--Port Interrupt HPRT0=0x%08x Port Connect Detected--\n",
 			 hprt0);
-		if (hsotg->lx_state != DWC2_L0)
-			usb_hcd_resume_root_hub(hsotg->priv);
-
-		hsotg->flags.b.port_connect_status_change = 1;
-		hsotg->flags.b.port_connect_status = 1;
+		dwc2_hcd_connect(hsotg);
 		hprt0_modify |= HPRT0_CONNDET;
 
 		/*
-- 
2.6.0.rc2.230.g3dd15c0
