From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 11/16] usb: dwc3: amend UTMI/UTMIW phy interface setup
Date: Tue, 26 May 2020 11:34:30 +0800
Message-ID: <20200526033435.20235-2-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200526033435.20235-1-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, marex-ynQEQJNshbs@public.gmane.org, bmeng.cn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: jianing.ren-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Let move 8/16-bit UTMI+ interface initialization into DWC3 core init
that is convenient for both DM_USB and u-boot traditional process.

Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/usb/common/common.c | 25 ++++++++++++++
 drivers/usb/dwc3/core.c     | 65 +++++++++++++++++++------------------
 drivers/usb/dwc3/core.h     |  5 +++
 include/linux/usb/phy.h     | 18 ++++++++++
 4 files changed, 82 insertions(+), 31 deletions(-)

diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
index 0db281b970..d4ae18693c 100644
--- a/drivers/usb/common/common.c
+++ b/drivers/usb/common/common.c
@@ -10,6 +10,7 @@
 #include <dm.h>
 #include <linux/usb/otg.h>
 #include <linux/usb/ch9.h>
+#include <linux/usb/phy.h>
 
 DECLARE_GLOBAL_DATA_PTR;
 
@@ -64,3 +65,27 @@ enum usb_device_speed usb_get_maximum_speed(ofnode node)
 
 	return USB_SPEED_UNKNOWN;
 }
+
+#if CONFIG_IS_ENABLED(DM_USB)
+static const char *const usbphy_modes[] = {
+	[USBPHY_INTERFACE_MODE_UNKNOWN]	= "",
+	[USBPHY_INTERFACE_MODE_UTMI]	= "utmi",
+	[USBPHY_INTERFACE_MODE_UTMIW]	= "utmi_wide",
+};
+
+enum usb_phy_interface usb_get_phy_mode(ofnode node)
+{
+	const char *phy_type;
+	int i;
+
+	phy_type = ofnode_get_property(node, "phy_type", NULL);
+	if (!phy_type)
+		return USBPHY_INTERFACE_MODE_UNKNOWN;
+
+	for (i = 0; i < ARRAY_SIZE(usbphy_modes); i++)
+		if (!strcmp(phy_type, usbphy_modes[i]))
+			return i;
+
+	return USBPHY_INTERFACE_MODE_UNKNOWN;
+}
+#endif
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index aab6c34c2d..c8cb9e13b2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -334,6 +334,34 @@ static void dwc3_cache_hwparams(struct dwc3 *dwc)
 	parms->hwparams8 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS8);
 }
 
+static void dwc3_hsphy_mode_setup(struct dwc3 *dwc)
+{
+	enum usb_phy_interface hsphy_mode = dwc->hsphy_mode;
+	u32 reg;
+
+	/* Set dwc3 usb2 phy config */
+	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+
+	switch (hsphy_mode) {
+	case USBPHY_INTERFACE_MODE_UTMI:
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_8_BIT) |
+			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_8_BIT);
+		break;
+	case USBPHY_INTERFACE_MODE_UTMIW:
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_16_BIT) |
+			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_16_BIT);
+		break;
+	default:
+		break;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+}
+
 /**
  * dwc3_phy_setup - Configure USB PHY Interface of DWC3 Core
  * @dwc: Pointer to our controller context structure
@@ -382,6 +410,8 @@ static void dwc3_phy_setup(struct dwc3 *dwc)
 
 	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
 
+	dwc3_hsphy_mode_setup(dwc);
+
 	mdelay(100);
 
 	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
@@ -626,35 +656,6 @@ static void dwc3_core_exit_mode(struct dwc3 *dwc)
 	dwc3_gadget_run(dwc);
 }
 
-static void dwc3_uboot_hsphy_mode(struct dwc3_device *dwc3_dev,
-				  struct dwc3 *dwc)
-{
-	enum usb_phy_interface hsphy_mode = dwc3_dev->hsphy_mode;
-	u32 reg;
-
-	/* Set dwc3 usb2 phy config */
-	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
-
-	switch (hsphy_mode) {
-	case USBPHY_INTERFACE_MODE_UTMI:
-		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
-			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
-		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_8_BIT) |
-			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_8_BIT);
-		break;
-	case USBPHY_INTERFACE_MODE_UTMIW:
-		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
-			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
-		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_16_BIT) |
-			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_16_BIT);
-		break;
-	default:
-		break;
-	}
-
-	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
-}
-
 #define DWC3_ALIGN_MASK		(16 - 1)
 
 /**
@@ -743,6 +744,8 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->hird_threshold = hird_threshold
 		| (dwc->is_utmi_l1_suspend << 4);
 
+	dwc->hsphy_mode = dwc3_dev->hsphy_mode;
+
 	dwc->index = dwc3_dev->index;
 
 	dwc3_cache_hwparams(dwc);
@@ -767,8 +770,6 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 		goto err0;
 	}
 
-	dwc3_uboot_hsphy_mode(dwc3_dev, dwc);
-
 	ret = dwc3_event_buffers_setup(dwc);
 	if (ret) {
 		dev_err(dwc->dev, "failed to setup event buffers\n");
@@ -901,6 +902,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 	 */
 	hird_threshold = 12;
 
+	dwc->hsphy_mode = usb_get_phy_mode(dev->node);
+
 	dwc->has_lpm_erratum = dev_read_bool(dev,
 				"snps,has-lpm-erratum");
 	tmp = dev_read_u8_array_ptr(dev, "snps,lpm-nyet-threshold", 1);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 2adcaf0029..8e562ae6c4 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -21,6 +21,7 @@
 
 #include <linux/usb/ch9.h>
 #include <linux/usb/otg.h>
+#include <linux/usb/phy.h>
 
 #define DWC3_MSG_MAX	500
 
@@ -658,6 +659,9 @@ struct dwc3_scratchpad_array {
  * @maximum_speed: maximum speed requested (mainly for testing purposes)
  * @revision: revision register contents
  * @dr_mode: requested mode of operation
+ * @hsphy_mode: UTMI phy mode, one of following:
+ *		- USBPHY_INTERFACE_MODE_UTMI
+ *		- USBPHY_INTERFACE_MODE_UTMIW
  * @dcfg: saved contents of DCFG register
  * @gctl: saved contents of GCTL register
  * @isoch_delay: wValue from Set Isochronous Delay request;
@@ -749,6 +753,7 @@ struct dwc3 {
 	size_t			regs_size;
 
 	enum usb_dr_mode	dr_mode;
+	enum usb_phy_interface	hsphy_mode;
 
 	/* used for suspend/resume */
 	u32			dcfg;
diff --git a/include/linux/usb/phy.h b/include/linux/usb/phy.h
index 158ca9cd85..1e1217a958 100644
--- a/include/linux/usb/phy.h
+++ b/include/linux/usb/phy.h
@@ -10,10 +10,28 @@
 #ifndef __LINUX_USB_PHY_H
 #define __LINUX_USB_PHY_H
 
+#include <dm/ofnode.h>
+
 enum usb_phy_interface {
 	USBPHY_INTERFACE_MODE_UNKNOWN,
 	USBPHY_INTERFACE_MODE_UTMI,
 	USBPHY_INTERFACE_MODE_UTMIW,
 };
 
+#if CONFIG_IS_ENABLED(DM_USB)
+/**
+ * usb_get_phy_mode - Get phy mode for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets phy interface string from property 'phy_type',
+ * and returns the corresponding enum usb_phy_interface
+ */
+enum usb_phy_interface usb_get_phy_mode(ofnode node);
+#else
+static inline enum usb_phy_interface usb_get_phy_mode(ofnode node)
+{
+	return USBPHY_INTERFACE_MODE_UNKNOWN;
+}
+#endif
+
 #endif /* __LINUX_USB_PHY_H */
-- 
2.17.1
