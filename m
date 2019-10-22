From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 1/9] gadget: Select USB_GADGET_MANUFACTURER for rockchip
Date: Tue, 22 Oct 2019 23:24:50 +0530
Message-ID: <20191022175458.22604-2-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191022175458.22604-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Select the gadget manufacturer as 'Rockchip' for
all rockchip platform SoC's.

This eventually drop the explicit defined added
on supported board defconfig files.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 configs/elgin-rv1108_defconfig    | 1 -
 configs/evb-rk3036_defconfig      | 1 -
 configs/evb-rk3229_defconfig      | 1 -
 configs/evb-rk3288_defconfig      | 1 -
 configs/evb-rk3328_defconfig      | 1 -
 configs/evb-rv1108_defconfig      | 1 -
 configs/firefly-rk3288_defconfig  | 1 -
 configs/kylin-rk3036_defconfig    | 1 -
 configs/miqi-rk3288_defconfig     | 1 -
 configs/phycore-rk3288_defconfig  | 1 -
 configs/popmetal-rk3288_defconfig | 1 -
 configs/rock2_defconfig           | 1 -
 configs/rock64-rk3328_defconfig   | 1 -
 configs/tinker-rk3288_defconfig   | 1 -
 configs/vyasa-rk3288_defconfig    | 1 -
 drivers/usb/gadget/Kconfig        | 1 +
 16 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/configs/elgin-rv1108_defconfig b/configs/elgin-rv1108_defconfig
index b3d8d28bea..c9d703a0f5 100644
--- a/configs/elgin-rv1108_defconfig
+++ b/configs/elgin-rv1108_defconfig
@@ -49,7 +49,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x110a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3036_defconfig b/configs/evb-rk3036_defconfig
index 2e7f57ae95..4df2a90b92 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -54,7 +54,6 @@ CONFIG_SYSRESET=y
 # CONFIG_SPL_SYSRESET is not set
 CONFIG_USB=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index 9c8c084178..be91ba1e0c 100644
--- a/configs/evb-rk3229_defconfig
+++ b/configs/evb-rk3229_defconfig
@@ -64,7 +64,6 @@ CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
 CONFIG_USB=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index 043ee32bb4..a52e0af79d 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -73,7 +73,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index 37610774c1..6f9a3a3e72 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -87,7 +87,6 @@ CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rv1108_defconfig b/configs/evb-rv1108_defconfig
index 2e28871f37..36bd7eb0f1 100644
--- a/configs/evb-rv1108_defconfig
+++ b/configs/evb-rv1108_defconfig
@@ -46,7 +46,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x110a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 29935d869c..4a1d7a6648 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -78,7 +78,6 @@ CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index dc587070d3..41ad46f12a 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -58,7 +58,6 @@ CONFIG_SYSRESET=y
 CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index 7b4e3f7f3a..3e761e9983 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -73,7 +73,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 2914ede36c..ce8a0e5268 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -77,7 +77,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 67dd3f3f2d..89400dd5de 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -73,7 +73,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock2_defconfig b/configs/rock2_defconfig
index 80d6db5d83..953d760155 100644
--- a/configs/rock2_defconfig
+++ b/configs/rock2_defconfig
@@ -74,7 +74,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 3ab0af1158..d86456e363 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -89,7 +89,6 @@ CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index eff3b06b5c..aa9f86d6f8 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -79,7 +79,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/vyasa-rk3288_defconfig b/configs/vyasa-rk3288_defconfig
index 89921e6836..3a8cc9e722 100644
--- a/configs/vyasa-rk3288_defconfig
+++ b/configs/vyasa-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 26b4d12a09..1959a390f3 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -39,6 +39,7 @@ if USB_GADGET
 config USB_GADGET_MANUFACTURER
 	string "Vendor name of the USB device"
 	default "Allwinner Technology" if ARCH_SUNXI
+	default "Rockchip" if ARCH_ROCKCHIP
 	default "U-Boot"
 	help
 	  Vendor name of the USB device emulated, reported to the host device.
-- 
2.18.0.321.gffc6fa0e3
