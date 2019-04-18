From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with DWC2_POWER_DOWN_PARAM_NONE
Date: Wed, 17 Apr 2019 17:13:52 -0700
Message-ID: <20190418001356.124334-2-dianders@chromium.org>
References: <20190418001356.124334-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190418001356.124334-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Cc: Alan Stern <stern@rowland.harvard.edu>, Artur Petrosyan <Arthur.Petrosyan@synopsys.com>, amstan@chromium.org, linux-rockchip@lists.infradead.org, William Wu <william.wu@rock-chips.com>, linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, zyw@rock-chips.com, mka@chromium.org, ryandcase@chromium.org, Amelie Delaunay <amelie.delaunay@st.com>, jwerner@chromium.org, dinguyen@opensource.altera.com, Elaine Zhang <zhangqing@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
suspend/resume for dwc2") on ToT.  That commit was reverted in commit
b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
because apparently it broke the Altera SOCFPGA.

With all the changes that have happened to dwc2 in the meantime, it's
possible that the Altera SOCFPGA will just magically work with this
change now.  ...and it would be good to get bus suspend/resume
implemented.

This change is a forward port of one that's been living in the Chrome
OS 3.14 kernel tree.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
This patch was last posted at:

https://lkml.kernel.org/r/1446237173-15263-1-git-send-email-dianders@chromium.org

...and appears to have died the death of silence.  Maybe it could get
some bake time in linuxnext if we can't find any proactive testing?

I will also freely admit that I don't know tons about the theory
behind this patch.  I'm mostly just re-hashing the original commit
from Kever that was reverted since:
* Turning on partial power down on rk3288 doesn't "just work".  I
  don't get hotplug events.  This is despite dwc2 auto-detecting that
  we are power optimized.
* If we don't do something like this commit we don't get into as low
  of a power mode.

Changes in v2: None

 drivers/usb/dwc2/hcd.c | 84 ++++++++++++++++++++++++++----------------
 1 file changed, 53 insertions(+), 31 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index e272d020012e..978232a9e4a8 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -4482,6 +4482,7 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
 	unsigned long flags;
 	int ret = 0;
 	u32 hprt0;
+	u32 pcgctl;
 
 	spin_lock_irqsave(&hsotg->lock, flags);
 
@@ -4497,7 +4498,7 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
 	if (hsotg->op_state == OTG_STATE_B_PERIPHERAL)
 		goto unlock;
 
-	if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
+	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL)
 		goto skip_power_saving;
 
 	/*
@@ -4506,21 +4507,35 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
 	 */
 	if (!hsotg->bus_suspended) {
 		hprt0 = dwc2_read_hprt0(hsotg);
-		hprt0 |= HPRT0_SUSP;
-		hprt0 &= ~HPRT0_PWR;
-		dwc2_writel(hsotg, hprt0, HPRT0);
-		spin_unlock_irqrestore(&hsotg->lock, flags);
-		dwc2_vbus_supply_exit(hsotg);
-		spin_lock_irqsave(&hsotg->lock, flags);
+		if (hprt0 & HPRT0_CONNSTS) {
+			hprt0 |= HPRT0_SUSP;
+			if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL)
+				hprt0 &= ~HPRT0_PWR;
+			dwc2_writel(hsotg, hprt0, HPRT0);
+		}
+		if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
+			spin_unlock_irqrestore(&hsotg->lock, flags);
+			dwc2_vbus_supply_exit(hsotg);
+			spin_lock_irqsave(&hsotg->lock, flags);
+		} else {
+			pcgctl = readl(hsotg->regs + PCGCTL);
+			pcgctl |= PCGCTL_STOPPCLK;
+			writel(pcgctl, hsotg->regs + PCGCTL);
+		}
 	}
 
-	/* Enter partial_power_down */
-	ret = dwc2_enter_partial_power_down(hsotg);
-	if (ret) {
-		if (ret != -ENOTSUPP)
-			dev_err(hsotg->dev,
-				"enter partial_power_down failed\n");
-		goto skip_power_saving;
+	if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
+		/* Enter partial_power_down */
+		ret = dwc2_enter_partial_power_down(hsotg);
+		if (ret) {
+			if (ret != -ENOTSUPP)
+				dev_err(hsotg->dev,
+					"enter partial_power_down failed\n");
+			goto skip_power_saving;
+		}
+
+		/* After entering partial_power_down, hardware is no more accessible */
+		clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
 	}
 
 	/* Ask phy to be suspended */
@@ -4530,9 +4545,6 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
 		spin_lock_irqsave(&hsotg->lock, flags);
 	}
 
-	/* After entering partial_power_down, hardware is no more accessible */
-	clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
-
 skip_power_saving:
 	hsotg->lx_state = DWC2_L2;
 unlock:
@@ -4545,6 +4557,7 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
 {
 	struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
 	unsigned long flags;
+	u32 pcgctl;
 	int ret = 0;
 
 	spin_lock_irqsave(&hsotg->lock, flags);
@@ -4555,17 +4568,11 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
 	if (hsotg->lx_state != DWC2_L2)
 		goto unlock;
 
-	if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL) {
+	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL) {
 		hsotg->lx_state = DWC2_L0;
 		goto unlock;
 	}
 
-	/*
-	 * Set HW accessible bit before powering on the controller
-	 * since an interrupt may rise.
-	 */
-	set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
-
 	/*
 	 * Enable power if not already done.
 	 * This must not be spinlocked since duration
@@ -4577,10 +4584,23 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
 		spin_lock_irqsave(&hsotg->lock, flags);
 	}
 
-	/* Exit partial_power_down */
-	ret = dwc2_exit_partial_power_down(hsotg, true);
-	if (ret && (ret != -ENOTSUPP))
-		dev_err(hsotg->dev, "exit partial_power_down failed\n");
+	if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
+		/*
+		 * Set HW accessible bit before powering on the controller
+		 * since an interrupt may rise.
+		 */
+		set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
+
+
+		/* Exit partial_power_down */
+		ret = dwc2_exit_partial_power_down(hsotg, true);
+		if (ret && (ret != -ENOTSUPP))
+			dev_err(hsotg->dev, "exit partial_power_down failed\n");
+	} else {
+		pcgctl = readl(hsotg->regs + PCGCTL);
+		pcgctl &= ~PCGCTL_STOPPCLK;
+		writel(pcgctl, hsotg->regs + PCGCTL);
+	}
 
 	hsotg->lx_state = DWC2_L0;
 
@@ -4592,10 +4612,12 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
 		spin_unlock_irqrestore(&hsotg->lock, flags);
 		dwc2_port_resume(hsotg);
 	} else {
-		dwc2_vbus_supply_init(hsotg);
+		if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
+			dwc2_vbus_supply_init(hsotg);
 
-		/* Wait for controller to correctly update D+/D- level */
-		usleep_range(3000, 5000);
+			/* Wait for controller to correctly update D+/D- level */
+			usleep_range(3000, 5000);
+		}
 
 		/*
 		 * Clear Port Enable and Port Status changes.
-- 
2.21.0.593.g511ec345e18-goog
