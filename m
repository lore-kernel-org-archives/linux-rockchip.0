From: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v1 1/3] usb: dwc2: reset AHB hclk domain before init
Date: Tue, 11 Aug 2015 15:56:25 +0800
Message-ID: <1439279787-26674-1-git-send-email-lyz@rock-chips.com>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

We initiate dwc2 usb controller in BIOS, when kernel driver
start-up we should reset AHB hclk domain to reset all AHB
interface registers to default. Without this the FIFO value
setting might be incorrect because calculating FIFO size need the
power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.

This patch could avoid warnning massage like in rk3288 platform:
[    2.074764] dwc2 ff580000.usb: 256 invalid for
host_perio_tx_fifo_size. Check HW configuration.

Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/usb/dwc2/platform.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 9093530..ec6bf6b 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -42,6 +42,7 @@
 #include <linux/of_device.h>
 #include <linux/mutex.h>
 #include <linux/platform_device.h>
+#include <linux/reset.h>
 
 #include <linux/usb/of.h>
 
@@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	struct resource *res;
 	struct phy *phy;
 	struct usb_phy *uphy;
+	struct reset_control *rst;
 	int retval;
 	int irq;
 
@@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_device *dev)
 
 	hsotg->dev = &dev->dev;
 
+	/* AHB hclk domain reset, set all AHB interface registers to default */
+	rst = devm_reset_control_get_optional(&dev->dev, "ahb");
+	if (IS_ERR(rst)) {
+		dev_dbg(&dev->dev, "Can't get dwc2 AHB reset\n");
+	} else {
+		reset_control_assert(rst);
+		udelay(5);
+		reset_control_deassert(rst);
+	}
+
 	/*
 	 * Use reasonable defaults so platforms don't have to provide these.
 	 */
-- 
2.0.0


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
