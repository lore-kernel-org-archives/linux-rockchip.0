From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 09/10] rockchip: Setup dwc3_device (for non-dm gadgets)
Date: Tue, 19 Nov 2019 13:56:22 +0530
Message-ID: <20191119082623.6165-10-jagan@amarulasolutions.com>
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

Setup dwc3_device structure for non-dm gadgets, which is used
in rk3399 platforms.

dwc3_device would have basic regbase, dr_mode, high speed
and 16-bit UTMI+ etc.

Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>
Tested-by: Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/mach-rockchip/board.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/board.c b/arch/arm/mach-rockchip/board.c
index c90eb976d0..542823b8cd 100644
--- a/arch/arm/mach-rockchip/board.c
+++ b/arch/arm/mach-rockchip/board.c
@@ -49,8 +49,10 @@ void enable_caches(void)
 }
 #endif
 
-#if defined(CONFIG_USB_GADGET) && defined(CONFIG_USB_GADGET_DWC2_OTG)
+#if defined(CONFIG_USB_GADGET)
 #include <usb.h>
+
+#if defined(CONFIG_USB_GADGET_DWC2_OTG)
 #include <usb/dwc2_udc.h>
 
 static struct dwc2_plat_otg_data otg_data = {
@@ -117,7 +119,33 @@ int board_usb_cleanup(int index, enum usb_init_type init)
 {
 	return 0;
 }
-#endif
+#endif /* CONFIG_USB_GADGET_DWC2_OTG */
+
+#if defined(CONFIG_USB_DWC3) && !defined(CONFIG_DM_USB_GADGET)
+#include <dwc3-uboot.h>
+
+static struct dwc3_device dwc3_device_data = {
+	.maximum_speed = USB_SPEED_HIGH,
+	.base = 0xfe800000,
+	.dr_mode = USB_DR_MODE_PERIPHERAL,
+	.index = 0,
+	.dis_u2_susphy_quirk = 1,
+	.hsphy_mode = USBPHY_INTERFACE_MODE_UTMIW,
+};
+
+int usb_gadget_handle_interrupts(void)
+{
+	dwc3_uboot_handle_interrupt(0);
+	return 0;
+}
+
+int board_usb_init(int index, enum usb_init_type init)
+{
+	return dwc3_uboot_init(&dwc3_device_data);
+}
+#endif /* CONFIG_USB_DWC3 */
+
+#endif /* CONFIG_USB_GADGET */
 
 #if CONFIG_IS_ENABLED(FASTBOOT)
 int fastboot_set_reboot_flag(void)
-- 
2.18.0.321.gffc6fa0e3
