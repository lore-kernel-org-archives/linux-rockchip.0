From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 01/10] gadget: Select USB_GADGET_MANUFACTURER for rockchip
Date: Tue, 19 Nov 2019 13:56:14 +0530
Message-ID: <20191119082623.6165-2-jagan@amarulasolutions.com>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Select the gadget manufacturer as 'Rockchip' for
all rockchip platform SoC's.

This eventually drop the explicit defined added
on supported board defconfig files.

Tested-by: Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
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
 configs/tinker-s-rk3288_defconfig | 1 -
 configs/vyasa-rk3288_defconfig    | 1 -
 drivers/usb/gadget/Kconfig        | 1 +
 17 files changed, 1 insertion(+), 16 deletions(-)

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
index 5dd5f43f7c..c9882ded98 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -52,7 +52,6 @@ CONFIG_SYSRESET=y
 # CONFIG_SPL_SYSRESET is not set
 CONFIG_USB=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index 745fdd1c0f..38b2660fb3 100644
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
index c2a78bd065..12d454b410 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index a59dab4853..8f97ef2c34 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -86,7 +86,6 @@ CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 # CONFIG_USB_DWC3_GADGET is not set
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rv1108_defconfig b/configs/evb-rv1108_defconfig
index 037715cbc0..18bc6529ac 100644
--- a/configs/evb-rv1108_defconfig
+++ b/configs/evb-rv1108_defconfig
@@ -44,7 +44,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x110a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 65e839214c..fa3715cf7e 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -75,7 +75,6 @@ CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index 1906d1d93f..4fc0c3e491 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -56,7 +56,6 @@ CONFIG_SYSRESET=y
 CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index 30b05ecf44..c007c90a90 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index d33f079dac..0329a8aa55 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -75,7 +75,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 7642ea38b1..95a0a4b4d1 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock2_defconfig b/configs/rock2_defconfig
index 3723a7e0dd..b7f6646381 100644
--- a/configs/rock2_defconfig
+++ b/configs/rock2_defconfig
@@ -72,7 +72,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 021f982e68..d9a170ba26 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -87,7 +87,6 @@ CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 # CONFIG_USB_DWC3_GADGET is not set
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 0fd1612f87..bb561fac23 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -77,7 +77,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/tinker-s-rk3288_defconfig b/configs/tinker-s-rk3288_defconfig
index c851a93f31..38cb1984d8 100644
--- a/configs/tinker-s-rk3288_defconfig
+++ b/configs/tinker-s-rk3288_defconfig
@@ -83,7 +83,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/vyasa-rk3288_defconfig b/configs/vyasa-rk3288_defconfig
index 6611080784..081e32d67d 100644
--- a/configs/vyasa-rk3288_defconfig
+++ b/configs/vyasa-rk3288_defconfig
@@ -69,7 +69,6 @@ CONFIG_USB_DWC2=y
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
