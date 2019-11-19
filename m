From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 07/10] usb: dwc3: Add phy interface for dwc3_uboot
Date: Tue, 19 Nov 2019 13:56:20 +0530
Message-ID: <20191119082623.6165-8-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191119082623.6165-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

U-Boot has two different variants of dwc3 initializations,
- with dm variant gadget, so the respective dm driver would
  call the dwc3_init in core.
- with non-dm variant gadget, so the usage board file would
  call dwc3_uboot_init in core.

The driver probe would handle all respective gadget properties
including phy interface via phy_type property and then trigger
dwc3_init for dm-variant gadgets.

So, to support the phy interface for non-dm variant gadgets,
the better option is dwc3_uboot_init since there is no
dedicated controller for non-dm variant gadgets.

This patch support for adding phy interface like 8/16-bit UTMI+
code for dwc3_uboot.

This change used Linux phy.h enum list, to make proper code
compatibility.

Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>
Tested-by: Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/usb/dwc3/core.c | 27 +++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h | 12 ++++++++++++
 include/dwc3-uboot.h    |  2 ++
 include/linux/usb/phy.h | 19 +++++++++++++++++++
 4 files changed, 60 insertions(+)
 create mode 100644 include/linux/usb/phy.h

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 23af60c98d..f779562de2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -613,6 +613,31 @@ static void dwc3_core_exit_mode(struct dwc3 *dwc)
 	dwc3_gadget_run(dwc);
 }
 
+static void dwc3_uboot_hsphy_mode(struct dwc3_device *dwc3_dev,
+				  struct dwc3 *dwc)
+{
+	enum usb_phy_interface hsphy_mode = dwc3_dev->hsphy_mode;
+	u32 reg;
+
+	/* Set dwc3 usb2 phy config */
+	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+	reg |= DWC3_GUSB2PHYCFG_PHYIF;
+	reg &= ~DWC3_GUSB2PHYCFG_USBTRDTIM_MASK;
+
+	switch (hsphy_mode) {
+	case USBPHY_INTERFACE_MODE_UTMI:
+		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_8BIT;
+		break;
+	case USBPHY_INTERFACE_MODE_UTMIW:
+		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_16BIT;
+		break;
+	default:
+		break;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+}
+
 #define DWC3_ALIGN_MASK		(16 - 1)
 
 /**
@@ -721,6 +746,8 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 		goto err0;
 	}
 
+	dwc3_uboot_hsphy_mode(dwc3_dev, dwc);
+
 	ret = dwc3_event_buffers_setup(dwc);
 	if (ret) {
 		dev_err(dwc->dev, "failed to setup event buffers\n");
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index be9672266a..bff53e072b 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -162,6 +162,18 @@
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
+#define DWC3_GUSB2PHYCFG_PHYIF		BIT(3)
+
+/* Global USB2 PHY Configuration Mask */
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_MASK		(0xf << 10)
+
+/* Global USB2 PHY Configuration Offset */
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_OFFSET	10
+
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_16BIT	(0x5 << \
+		DWC3_GUSB2PHYCFG_USBTRDTIM_OFFSET)
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_8BIT		(0x9 << \
+		DWC3_GUSB2PHYCFG_USBTRDTIM_OFFSET)
 
 /* Global USB3 PIPE Control Register */
 #define DWC3_GUSB3PIPECTL_PHYSOFTRST	(1 << 31)
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 9941cc37a3..3c9e204cf0 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -10,10 +10,12 @@
 #define __DWC3_UBOOT_H_
 
 #include <linux/usb/otg.h>
+#include <linux/usb/phy.h>
 
 struct dwc3_device {
 	unsigned long base;
 	enum usb_dr_mode dr_mode;
+	enum usb_phy_interface hsphy_mode;
 	u32 maximum_speed;
 	unsigned tx_fifo_resize:1;
 	unsigned has_lpm_erratum;
diff --git a/include/linux/usb/phy.h b/include/linux/usb/phy.h
new file mode 100644
index 0000000000..158ca9cd85
--- /dev/null
+++ b/include/linux/usb/phy.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * USB PHY defines
+ *
+ * These APIs may be used between USB controllers.  USB device drivers
+ * (for either host or peripheral roles) don't use these calls; they
+ * continue to use just usb_device and usb_gadget.
+ */
+
+#ifndef __LINUX_USB_PHY_H
+#define __LINUX_USB_PHY_H
+
+enum usb_phy_interface {
+	USBPHY_INTERFACE_MODE_UNKNOWN,
+	USBPHY_INTERFACE_MODE_UTMI,
+	USBPHY_INTERFACE_MODE_UTMIW,
+};
+
+#endif /* __LINUX_USB_PHY_H */
-- 
2.18.0.321.gffc6fa0e3
