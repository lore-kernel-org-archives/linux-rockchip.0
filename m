From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 00/10] rockchip: rk3399: Add fastboot support
Date: Tue, 19 Nov 2019 13:56:13 +0530
Message-ID: <20191119082623.6165-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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

This is v2 set for fastboot support on rk3399, tested on
rock960 and rebased on u-boot-rockchip/master

Changes for v2:
- collect Levin Du Tested-by
- fix rk3399 product number (Thanks to Levin Du)
- add patch to fix fastboot flash device num for rk3328
- add patch to enable gadget on rock960
- rebased on u-boot-rockchip/master

[1] https://patchwork.ozlabs.org/cover/1181569/

Any inputs?
Jagan.

Jagan Teki (10):
  gadget: Select USB_GADGET_MANUFACTURER for rockchip
  gadget: Select USB_GADGET_VENDOR_NUM for rockchip
  gadget: rockchip: USB_GADGET_PRODUCT_NUM
  gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
  fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
  fastboot: rockchip: Fix rk3328 default mmc device
  usb: dwc3: Add phy interface for dwc3_uboot
  gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
  rockchip: Setup dwc3_device (for non-dm gadgets)
  rock960: Enable USB Gadget

 arch/arm/mach-rockchip/board.c    | 32 +++++++++++++++++++++++++++++--
 configs/elgin-rv1108_defconfig    |  2 --
 configs/evb-rk3036_defconfig      |  5 -----
 configs/evb-rk3128_defconfig      |  2 --
 configs/evb-rk3229_defconfig      |  5 -----
 configs/evb-rk3288_defconfig      |  5 -----
 configs/evb-rk3328_defconfig      |  5 -----
 configs/evb-rv1108_defconfig      |  2 --
 configs/firefly-rk3288_defconfig  |  5 -----
 configs/kylin-rk3036_defconfig    |  5 -----
 configs/miqi-rk3288_defconfig     |  5 -----
 configs/phycore-rk3288_defconfig  |  5 -----
 configs/popmetal-rk3288_defconfig |  5 -----
 configs/rock2_defconfig           |  2 --
 configs/rock64-rk3328_defconfig   |  5 -----
 configs/rock960-rk3399_defconfig  |  2 ++
 configs/tinker-rk3288_defconfig   |  5 -----
 configs/tinker-s-rk3288_defconfig |  5 -----
 configs/vyasa-rk3288_defconfig    |  3 ---
 drivers/fastboot/Kconfig          |  3 ++-
 drivers/usb/dwc3/core.c           | 27 ++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h           | 12 ++++++++++++
 drivers/usb/gadget/Kconfig        |  7 +++++++
 include/dwc3-uboot.h              |  2 ++
 include/linux/usb/phy.h           | 19 ++++++++++++++++++
 25 files changed, 101 insertions(+), 74 deletions(-)
 create mode 100644 include/linux/usb/phy.h

-- 
2.18.0.321.gffc6fa0e3
