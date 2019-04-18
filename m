From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 4/5] USB: dwc2: Don't turn off the usbphy in suspend if wakeup is enabled
Date: Wed, 17 Apr 2019 17:13:55 -0700
Message-ID: <20190418001356.124334-5-dianders@chromium.org>
References: <20190418001356.124334-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190418001356.124334-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Cc: Alan Stern <stern@rowland.harvard.edu>, Artur Petrosyan <Arthur.Petrosyan@synopsys.com>, amstan@chromium.org, linux-rockchip@lists.infradead.org, William Wu <william.wu@rock-chips.com>, linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, zyw@rock-chips.com, mka@chromium.org, ryandcase@chromium.org, Amelie Delaunay <amelie.delaunay@st.com>, jwerner@chromium.org, dinguyen@opensource.altera.com, Elaine Zhang <zhangqing@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

If the 'snps,need-phy-for-wake' is set in the device tree then:

- We know that we can wakeup, so call device_set_wakeup_capable().
  The USB core will use this knowledge to enable wakeup by default.
- We know that we should keep the PHY on during suspend if something
  on our root hub needs remote wakeup.  This requires the patch (USB:
  Export usb_wakeup_enabled_descendants()).  Note that we don't keep
  the PHY on at suspend time if it's not needed because it would be a
  power draw.

If we later find some users of dwc2 that can support wakeup without
keeping the PHY on we may want to add a way to call
device_set_wakeup_capable() without keeping the PHY on at suspend
time.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---
For relevant prior discussion of this idea, see:

https://lkml.kernel.org/r/1436207224-21849-4-git-send-email-dianders@chromium.org

If I'm reading all the responses correctly folks were of the opinion
that this patch is still the right way to go.

Changes in v2:
- Rebased to mainline atop rk3288 remote wake quirk series.

 drivers/usb/dwc2/core.h     |  5 +++++
 drivers/usb/dwc2/platform.c | 43 +++++++++++++++++++++++++++++++++++--
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index f30748f4fe7e..a99fe7851352 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -861,6 +861,9 @@ struct dwc2_hregs_backup {
  * @hibernated:		True if core is hibernated
  * @reset_phy_on_wake:	Quirk saying that we should assert PHY reset on a
  *			remote wakeup.
+ * @phy_off_for_suspend: Status of whether we turned the PHY off at suspend.
+ * @need_phy_for_wake:	Quirk saying that we should keep the PHY on at
+ *			suspend if we need USB to wake us up.
  * @frame_number:       Frame number read from the core. For both device
  *			and host modes. The value ranges are from 0
  *			to HFNUM_MAX_FRNUM.
@@ -1049,6 +1052,8 @@ struct dwc2_hsotg {
 	unsigned int ll_hw_enabled:1;
 	unsigned int hibernated:1;
 	unsigned int reset_phy_on_wake:1;
+	unsigned int need_phy_for_wake:1;
+	unsigned int phy_off_for_suspend:1;
 	u16 frame_number;
 
 	struct phy *phy;
diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 9b65b766e0b9..6f0271c5d163 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -47,7 +47,9 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_data/s3c-hsotg.h>
 #include <linux/reset.h>
+#include <linux/usb.h>
 
+#include <linux/usb/hcd.h>
 #include <linux/usb/of.h>
 
 #include "core.h"
@@ -450,6 +452,10 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	if (retval)
 		goto error;
 
+	hsotg->need_phy_for_wake =
+		of_property_read_bool(dev->dev.of_node,
+				      "snps,need-phy-for-wake");
+
 	/*
 	 * Reset before dwc2_get_hwparams() then it could get power-on real
 	 * reset value form registers.
@@ -481,6 +487,14 @@ static int dwc2_driver_probe(struct platform_device *dev)
 		hsotg->gadget_enabled = 1;
 	}
 
+	/*
+	 * If we need PHY for wakeup we must be wakeup capable.
+	 * When we have a device that can wake without the PHY we
+	 * can adjust this condition.
+	 */
+	if (hsotg->need_phy_for_wake)
+		device_set_wakeup_capable(&dev->dev, true);
+
 	hsotg->reset_phy_on_wake =
 		of_property_read_bool(dev->dev.of_node,
 				      "snps,reset-phy-on-wake");
@@ -516,6 +530,28 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	return retval;
 }
 
+static bool __maybe_unused dwc2_can_poweroff_phy(struct dwc2_hsotg *dwc2)
+{
+	struct usb_device *root_hub = dwc2_hsotg_to_hcd(dwc2)->self.root_hub;
+
+	if (!dwc2->ll_hw_enabled)
+		return false;
+
+	/* If the controller isn't allowed to wakeup then we can power off. */
+	if (!device_may_wakeup(dwc2->dev))
+		return true;
+
+	/*
+	 * We don't want to power off the PHY if something under the
+	 * root hub has wakeup enabled.
+	 */
+	if (usb_wakeup_enabled_descendants(root_hub))
+		return false;
+
+	/* No reason to keep the PHY powered, so allow poweroff */
+	return true;
+}
+
 static int __maybe_unused dwc2_suspend(struct device *dev)
 {
 	struct dwc2_hsotg *dwc2 = dev_get_drvdata(dev);
@@ -524,8 +560,10 @@ static int __maybe_unused dwc2_suspend(struct device *dev)
 	if (dwc2_is_device_mode(dwc2))
 		dwc2_hsotg_suspend(dwc2);
 
-	if (dwc2->ll_hw_enabled)
+	if (dwc2_can_poweroff_phy(dwc2)) {
 		ret = __dwc2_lowlevel_hw_disable(dwc2);
+		dwc2->phy_off_for_suspend = true;
+	}
 
 	return ret;
 }
@@ -535,11 +573,12 @@ static int __maybe_unused dwc2_resume(struct device *dev)
 	struct dwc2_hsotg *dwc2 = dev_get_drvdata(dev);
 	int ret = 0;
 
-	if (dwc2->ll_hw_enabled) {
+	if (dwc2->phy_off_for_suspend && dwc2->ll_hw_enabled) {
 		ret = __dwc2_lowlevel_hw_enable(dwc2);
 		if (ret)
 			return ret;
 	}
+	dwc2->phy_off_for_suspend = false;
 
 	if (dwc2_is_device_mode(dwc2))
 		ret = dwc2_hsotg_resume(dwc2);
-- 
2.21.0.593.g511ec345e18-goog
