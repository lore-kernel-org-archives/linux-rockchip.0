From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/2] usb: dwc2: host: Fix missing device insertions
Date: Fri, 16 Oct 2015 15:10:23 -0700
Message-ID: <1445033424-21933-1-git-send-email-dianders@chromium.org>
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
 drivers/usb/dwc2/core.h     |  2 ++
 drivers/usb/dwc2/hcd.c      | 33 +++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/hcd_intr.c |  6 +-----
 3 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index ebf2504..30748be 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -1151,11 +1151,13 @@ static inline int dwc2_hsotg_set_test_mode(struct dwc2_hsotg *hsotg,
 
 #if IS_ENABLED(CONFIG_USB_DWC2_HOST) || IS_ENABLED(CONFIG_USB_DWC2_DUAL_ROLE)
 extern int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg);
+extern void dwc2_hcd_connect(struct dwc2_hsotg *hsotg);
 extern void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg);
 extern void dwc2_hcd_start(struct dwc2_hsotg *hsotg);
 #else
 static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
 { return 0; }
+static inline void dwc2_hcd_connect(struct dwc2_hsotg *hsotg) {}
 static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg) {}
 static inline void dwc2_hcd_start(struct dwc2_hsotg *hsotg) {}
 static inline void dwc2_hcd_remove(struct dwc2_hsotg *hsotg) {}
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index af4e4a2..4d2bc50 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -268,6 +268,22 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_hsotg *hsotg)
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
@@ -277,6 +293,7 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_hsotg *hsotg)
 void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
 {
 	u32 intr;
+	u32 hprt0;
 
 	/* Set status flags for the hub driver */
 	hsotg->flags.b.port_connect_status_change = 1;
@@ -315,6 +332,22 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
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
+	hprt0 = dwc2_readl(hsotg->regs + HPRT0);
+	if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
+		dwc2_hcd_connect(hsotg);
 }
 
 /**
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index f70c970..d965e87 100644
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
