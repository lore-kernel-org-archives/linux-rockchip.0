From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v4 2/2] usb: dwc2: host: Clear interrupts before handling them
Date: Thu, 19 Nov 2015 13:23:15 -0800
Message-ID: <1447968195-32097-2-git-send-email-dianders@chromium.org>
References: <1447968195-32097-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1447968195-32097-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In general it is wise to clear interrupts before processing them.  If
you don't do that, you can get:
 1. Interrupt happens
 2. You look at system state and process interrupt
 3. A new interrupt happens
 4. You clear interrupt without processing it.

This patch was actually a first attempt to fix missing device insertion=
s
as described in (usb: dwc2: host: Fix missing device insertions) and it
did solve some of the signal bouncing problems but not all of
them (which is why I submitted the other patch).  Specifically, this
patch itself would sometimes change:
 1. hardware sees connect
 2. hardware sees disconnect
 3. hardware sees connect
 4. dwc2_port_intr() - clears connect interrupt
 5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()

=2E..to:
 1. hardware sees connect
 2. hardware sees disconnect
 3. dwc2_port_intr() - clears connect interrupt
 4. hardware sees connect
 5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()

=2E..but with different timing then sometimes we'd still miss cable
insertions.

In any case, though this patch doesn't fix any (known) problems, it
still seems wise as a general policy to clear interrupt before handling
them.

Note that for dwc2_handle_usb_port_intr(), instead of moving the clear
of PRTINT to the beginning of the function we remove it completely.  Th=
e
only way to clear PRTINT is to clear the sources that set it in the
first place.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: John Youn <johnyoun@synopsys.com>
Tested-by: John Youn <johnyoun@synopsys.com>
---
Changes in v4:
- Don't replace dwc2_writel with writel (Antti Sepp=C3=A4l=C3=A4).
- Update description to explain why we remove PRTINT clear.

Changes in v3:
- Don't (uselessly) clear the PRTINT anymore (Felipe Balbi).

Changes in v2: None

 drivers/usb/dwc2/core_intr.c | 49 +++++++++++++++++++++---------------=
--------
 drivers/usb/dwc2/hcd_intr.c  | 17 ++++++++-------
 2 files changed, 31 insertions(+), 35 deletions(-)

diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.=
c
index 61601d16e233..d85c5c9f96c1 100644
--- a/drivers/usb/dwc2/core_intr.c
+++ b/drivers/usb/dwc2/core_intr.c
@@ -86,9 +86,6 @@ static void dwc2_handle_usb_port_intr(struct dwc2_hso=
tg *hsotg)
 		hprt0 &=3D ~HPRT0_ENA;
 		dwc2_writel(hprt0, hsotg->regs + HPRT0);
 	}
-
-	/* Clear interrupt */
-	dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
 }
=20
 /**
@@ -98,11 +95,11 @@ static void dwc2_handle_usb_port_intr(struct dwc2_h=
sotg *hsotg)
  */
 static void dwc2_handle_mode_mismatch_intr(struct dwc2_hsotg *hsotg)
 {
-	dev_warn(hsotg->dev, "Mode Mismatch Interrupt: currently in %s mode\n=
",
-		 dwc2_is_host_mode(hsotg) ? "Host" : "Device");
-
 	/* Clear interrupt */
 	dwc2_writel(GINTSTS_MODEMIS, hsotg->regs + GINTSTS);
+
+	dev_warn(hsotg->dev, "Mode Mismatch Interrupt: currently in %s mode\n=
",
+		 dwc2_is_host_mode(hsotg) ? "Host" : "Device");
 }
=20
 /**
@@ -276,9 +273,13 @@ static void dwc2_handle_otg_intr(struct dwc2_hsotg=
 *hsotg)
  */
 static void dwc2_handle_conn_id_status_change_intr(struct dwc2_hsotg *=
hsotg)
 {
-	u32 gintmsk =3D dwc2_readl(hsotg->regs + GINTMSK);
+	u32 gintmsk;
+
+	/* Clear interrupt */
+	dwc2_writel(GINTSTS_CONIDSTSCHNG, hsotg->regs + GINTSTS);
=20
 	/* Need to disable SOF interrupt immediately */
+	gintmsk =3D dwc2_readl(hsotg->regs + GINTMSK);
 	gintmsk &=3D ~GINTSTS_SOF;
 	dwc2_writel(gintmsk, hsotg->regs + GINTMSK);
=20
@@ -295,9 +296,6 @@ static void dwc2_handle_conn_id_status_change_intr(=
struct dwc2_hsotg *hsotg)
 		queue_work(hsotg->wq_otg, &hsotg->wf_otg);
 		spin_lock(&hsotg->lock);
 	}
-
-	/* Clear interrupt */
-	dwc2_writel(GINTSTS_CONIDSTSCHNG, hsotg->regs + GINTSTS);
 }
=20
 /**
@@ -315,12 +313,12 @@ static void dwc2_handle_session_req_intr(struct d=
wc2_hsotg *hsotg)
 {
 	int ret;
=20
-	dev_dbg(hsotg->dev, "Session request interrupt - lx_state=3D%d\n",
-							hsotg->lx_state);
-
 	/* Clear interrupt */
 	dwc2_writel(GINTSTS_SESSREQINT, hsotg->regs + GINTSTS);
=20
+	dev_dbg(hsotg->dev, "Session request interrupt - lx_state=3D%d\n",
+							hsotg->lx_state);
+
 	if (dwc2_is_device_mode(hsotg)) {
 		if (hsotg->lx_state =3D=3D DWC2_L2) {
 			ret =3D dwc2_exit_hibernation(hsotg, true);
@@ -347,6 +345,10 @@ static void dwc2_handle_session_req_intr(struct dw=
c2_hsotg *hsotg)
 static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
 {
 	int ret;
+
+	/* Clear interrupt */
+	dwc2_writel(GINTSTS_WKUPINT, hsotg->regs + GINTSTS);
+
 	dev_dbg(hsotg->dev, "++Resume or Remote Wakeup Detected Interrupt++\n=
");
 	dev_dbg(hsotg->dev, "%s lxstate =3D %d\n", __func__, hsotg->lx_state)=
;
=20
@@ -368,10 +370,9 @@ static void dwc2_handle_wakeup_detected_intr(struc=
t dwc2_hsotg *hsotg)
 		/* Change to L0 state */
 		hsotg->lx_state =3D DWC2_L0;
 	} else {
-		if (hsotg->core_params->hibernation) {
-			dwc2_writel(GINTSTS_WKUPINT, hsotg->regs + GINTSTS);
+		if (hsotg->core_params->hibernation)
 			return;
-		}
+
 		if (hsotg->lx_state !=3D DWC2_L1) {
 			u32 pcgcctl =3D dwc2_readl(hsotg->regs + PCGCTL);
=20
@@ -385,9 +386,6 @@ static void dwc2_handle_wakeup_detected_intr(struct=
 dwc2_hsotg *hsotg)
 			hsotg->lx_state =3D DWC2_L0;
 		}
 	}
-
-	/* Clear interrupt */
-	dwc2_writel(GINTSTS_WKUPINT, hsotg->regs + GINTSTS);
 }
=20
 /*
@@ -396,14 +394,14 @@ static void dwc2_handle_wakeup_detected_intr(stru=
ct dwc2_hsotg *hsotg)
  */
 static void dwc2_handle_disconnect_intr(struct dwc2_hsotg *hsotg)
 {
+	dwc2_writel(GINTSTS_DISCONNINT, hsotg->regs + GINTSTS);
+
 	dev_dbg(hsotg->dev, "++Disconnect Detected Interrupt++ (%s) %s\n",
 		dwc2_is_host_mode(hsotg) ? "Host" : "Device",
 		dwc2_op_state_str(hsotg));
=20
 	if (hsotg->op_state =3D=3D OTG_STATE_A_HOST)
 		dwc2_hcd_disconnect(hsotg, false);
-
-	dwc2_writel(GINTSTS_DISCONNINT, hsotg->regs + GINTSTS);
 }
=20
 /*
@@ -419,6 +417,9 @@ static void dwc2_handle_usb_suspend_intr(struct dwc=
2_hsotg *hsotg)
 	u32 dsts;
 	int ret;
=20
+	/* Clear interrupt */
+	dwc2_writel(GINTSTS_USBSUSP, hsotg->regs + GINTSTS);
+
 	dev_dbg(hsotg->dev, "USB SUSPEND\n");
=20
 	if (dwc2_is_device_mode(hsotg)) {
@@ -437,7 +438,7 @@ static void dwc2_handle_usb_suspend_intr(struct dwc=
2_hsotg *hsotg)
 			if (!dwc2_is_device_connected(hsotg)) {
 				dev_dbg(hsotg->dev,
 						"ignore suspend request before enumeration\n");
-				goto clear_int;
+				return;
 			}
=20
 			ret =3D dwc2_enter_hibernation(hsotg);
@@ -476,10 +477,6 @@ skip_power_saving:
 			hsotg->op_state =3D OTG_STATE_A_HOST;
 		}
 	}
-
-clear_int:
-	/* Clear interrupt */
-	dwc2_writel(GINTSTS_USBSUSP, hsotg->regs + GINTSTS);
 }
=20
 #define GINTMSK_COMMON	(GINTSTS_WKUPINT | GINTSTS_SESSREQINT |		\
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 03504ac2fecc..bc3452355cfd 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -122,6 +122,9 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
 	struct dwc2_qh *qh;
 	enum dwc2_transaction_type tr_type;
=20
+	/* Clear interrupt */
+	dwc2_writel(GINTSTS_SOF, hsotg->regs + GINTSTS);
+
 #ifdef DEBUG_SOF
 	dev_vdbg(hsotg->dev, "--Start of Frame Interrupt--\n");
 #endif
@@ -146,9 +149,6 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
 	tr_type =3D dwc2_hcd_select_transactions(hsotg);
 	if (tr_type !=3D DWC2_TRANSACTION_NONE)
 		dwc2_hcd_queue_transactions(hsotg, tr_type);
-
-	/* Clear interrupt */
-	dwc2_writel(GINTSTS_SOF, hsotg->regs + GINTSTS);
 }
=20
 /*
@@ -347,11 +347,12 @@ static void dwc2_port_intr(struct dwc2_hsotg *hso=
tg)
 	 * Set flag and clear if detected
 	 */
 	if (hprt0 & HPRT0_CONNDET) {
+		dwc2_writel(hprt0_modify | HPRT0_CONNDET, hsotg->regs + HPRT0);
+
 		dev_vdbg(hsotg->dev,
 			 "--Port Interrupt HPRT0=3D0x%08x Port Connect Detected--\n",
 			 hprt0);
 		dwc2_hcd_connect(hsotg);
-		hprt0_modify |=3D HPRT0_CONNDET;
=20
 		/*
 		 * The Hub driver asserts a reset when it sees port connect
@@ -364,10 +365,10 @@ static void dwc2_port_intr(struct dwc2_hsotg *hso=
tg)
 	 * Clear if detected - Set internal flag if disabled
 	 */
 	if (hprt0 & HPRT0_ENACHG) {
+		dwc2_writel(hprt0_modify | HPRT0_ENACHG, hsotg->regs + HPRT0);
 		dev_vdbg(hsotg->dev,
 			 "  --Port Interrupt HPRT0=3D0x%08x Port Enable Changed (now %d)--\=
n",
 			 hprt0, !!(hprt0 & HPRT0_ENA));
-		hprt0_modify |=3D HPRT0_ENACHG;
 		if (hprt0 & HPRT0_ENA)
 			dwc2_hprt0_enable(hsotg, hprt0, &hprt0_modify);
 		else
@@ -376,15 +377,13 @@ static void dwc2_port_intr(struct dwc2_hsotg *hso=
tg)
=20
 	/* Overcurrent Change Interrupt */
 	if (hprt0 & HPRT0_OVRCURRCHG) {
+		dwc2_writel(hprt0_modify | HPRT0_OVRCURRCHG,
+			    hsotg->regs + HPRT0);
 		dev_vdbg(hsotg->dev,
 			 "  --Port Interrupt HPRT0=3D0x%08x Port Overcurrent Changed--\n",
 			 hprt0);
 		hsotg->flags.b.port_over_current_change =3D 1;
-		hprt0_modify |=3D HPRT0_OVRCURRCHG;
 	}
-
-	/* Clear Port Interrupts */
-	dwc2_writel(hprt0_modify, hsotg->regs + HPRT0);
 }
=20
 /*
--=20
2.6.0.rc2.230.g3dd15c0
