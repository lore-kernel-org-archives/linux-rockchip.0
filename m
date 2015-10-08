From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] usb: dwc2: Avoid more calls to dwc2_core_reset()
Date: Thu,  8 Oct 2015 13:34:18 -0700
Message-ID: <1444336458-29630-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Calls to dwc2_core_reset() are currently very slow, taking at least
150ms (possibly more).  It behooves us to take as many of these calls
out as possible.

It turns out that the calls in dwc2_fs_phy_init() and dwc2_hs_phy_init()
should (as documented in the code) only be needed if we need to do a PHY
SELECT.  That means that if we see that we can avoid the PHY SELECT then
we can avoid the reset.

This patch appears to successfully bypass two resets (one per USB
device) on rk3288-based ARM Chromebooks.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
This patch should really be appended to the end of the 5-part series
ending at <https://patchwork.kernel.org/patch/7348201/> (making it a
6-part series).  I realized this additional speedup last night upon
thinking more about the series and tested it today.

 drivers/usb/dwc2/core.c | 40 +++++++++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index bf5e951..ec459e5 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -553,16 +553,20 @@ static int dwc2_fs_phy_init(struct dwc2_hsotg *hsotg, bool select_phy)
 	 */
 	if (select_phy) {
 		dev_dbg(hsotg->dev, "FS PHY selected\n");
+
 		usbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
-		usbcfg |= GUSBCFG_PHYSEL;
-		dwc2_writel(usbcfg, hsotg->regs + GUSBCFG);
+		if (!(usbcfg & GUSBCFG_PHYSEL)) {
+			usbcfg |= GUSBCFG_PHYSEL;
+			dwc2_writel(usbcfg, hsotg->regs + GUSBCFG);
 
-		/* Reset after a PHY select */
-		retval = dwc2_core_reset(hsotg);
-		if (retval) {
-			dev_err(hsotg->dev, "%s() Reset failed, aborting",
-					__func__);
-			return retval;
+			/* Reset after a PHY select */
+			retval = dwc2_core_reset(hsotg);
+
+			if (retval) {
+				dev_err(hsotg->dev,
+					"%s: Reset failed, aborting", __func__);
+				return retval;
+			}
 		}
 	}
 
@@ -597,13 +601,13 @@ static int dwc2_fs_phy_init(struct dwc2_hsotg *hsotg, bool select_phy)
 
 static int dwc2_hs_phy_init(struct dwc2_hsotg *hsotg, bool select_phy)
 {
-	u32 usbcfg;
+	u32 usbcfg, usbcfg_old;
 	int retval = 0;
 
 	if (!select_phy)
 		return 0;
 
-	usbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
+	usbcfg = usbcfg_old = dwc2_readl(hsotg->regs + GUSBCFG);
 
 	/*
 	 * HS PHY parameters. These parameters are preserved during soft reset
@@ -631,14 +635,16 @@ static int dwc2_hs_phy_init(struct dwc2_hsotg *hsotg, bool select_phy)
 		break;
 	}
 
-	dwc2_writel(usbcfg, hsotg->regs + GUSBCFG);
+	if (usbcfg != usbcfg_old) {
+		dwc2_writel(usbcfg, hsotg->regs + GUSBCFG);
 
-	/* Reset after setting the PHY parameters */
-	retval = dwc2_core_reset(hsotg);
-	if (retval) {
-		dev_err(hsotg->dev, "%s() Reset failed, aborting",
-				__func__);
-		return retval;
+		/* Reset after setting the PHY parameters */
+		retval = dwc2_core_reset(hsotg);
+		if (retval) {
+			dev_err(hsotg->dev,
+				"%s: Reset failed, aborting", __func__);
+			return retval;
+		}
 	}
 
 	return retval;
-- 
2.6.0.rc2.230.g3dd15c0
