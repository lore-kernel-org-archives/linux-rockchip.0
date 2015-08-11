From: Yunzhi Li <lyz@rock-chips.com>
Subject: [PATCH v1] usb: dwc2: reset AHB hclk domain before init
Date: Tue, 11 Aug 2015 10:27:42 +0800
Message-ID: <1439260062-12049-1-git-send-email-lyz@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: jwerner@chromium.org, dianders@chromium.org
Cc: huangtao@rock-chips.com, cf@rock-chips.com, hl@rock-chips.com, linux-rockchip@lists.infradead.org, Yunzhi Li <lyz@rock-chips.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

We initiate dwc2 usb controller in BIOS, when kernel driver
start-up we should reset AHB hclk domain to reset all AHB
interface registers to default. Without this the FIFO value
setting might be incorrect because calculating FIFO size need the
power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.

This patch could avoid warnning massage like in rk3288 platform:
[    2.074764] dwc2 ff580000.usb: 256 invalid for
host_perio_tx_fifo_size. Check HW configuration.

Signed-off-by: Yunzhi Li <lyz@rock-chips.com>

---

 drivers/usb/dwc2/platform.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 9093530..3da21ab 100644
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
+	rst = devm_reset_control_get_optional(&dev->dev, "ahb_reset");
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
