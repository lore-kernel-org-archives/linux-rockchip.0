From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 0/9] rockchip: rk3399: Add fastboot support
Date: Tue, 22 Oct 2019 23:24:49 +0530
Message-ID: <20191022175458.22604-1-jagan@amarulasolutions.com>
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

This patchset add fastboot support on RK3399 and also
rework of CONFIG items related to fastboot support.

patch 0001 - 0005: existing gadget, fastboot config move

patch 0006: add phy interface for dwc3_uboot

patch 0007: 0008: dwc3 setup for rk3399

patch 0009: enable fastboot, nanopc-t4, roc-pc

SD card work fine, but eMMC seems unstable when partitioning
with gpt like below but it can be problem with fastboot though.

=> gpt write mmc 0 $partitions
Writing GPT: mmc write failed
** Can't write to device 0 **
** Can't write to device 0 **
error!
=> gpt verify mmc 0 $partitions
GUID Partition Table Header signature is wrong: 0x0 != 0x5452415020494645
gpt_verify_headers: *** ERROR: Invalid GPT ***
Verify GPT: error!

Any inputs?
Jagan.

Jagan Teki (9):
  gadget: Select USB_GADGET_MANUFACTURER for rockchip
  gadget: Select USB_GADGET_VENDOR_NUM for rockchip
  gadget: rockchip: USB_GADGET_PRODUCT_NUM
  gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
  fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
  usb: dwc3: Add phy interface for dwc3_uboot
  gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
  rockchip: Setup dwc3_device (for non-dm gadgets)
  [DO NOT MERGE] rockchip: rk3399: Enable fastboot

 arch/arm/mach-rockchip/board.c     | 32 ++++++++++++++++++++++++++++--
 configs/elgin-rv1108_defconfig     |  2 --
 configs/evb-rk3036_defconfig       |  5 -----
 configs/evb-rk3128_defconfig       |  2 --
 configs/evb-rk3229_defconfig       |  5 -----
 configs/evb-rk3288_defconfig       |  5 -----
 configs/evb-rk3328_defconfig       |  5 -----
 configs/evb-rv1108_defconfig       |  2 --
 configs/firefly-rk3288_defconfig   |  5 -----
 configs/kylin-rk3036_defconfig     |  5 -----
 configs/miqi-rk3288_defconfig      |  5 -----
 configs/nanopc-t4-rk3399_defconfig |  3 +++
 configs/phycore-rk3288_defconfig   |  5 -----
 configs/popmetal-rk3288_defconfig  |  5 -----
 configs/roc-rk3399-pc_defconfig    |  3 +++
 configs/rock2_defconfig            |  2 --
 configs/rock64-rk3328_defconfig    |  5 -----
 configs/tinker-rk3288_defconfig    |  5 -----
 configs/vyasa-rk3288_defconfig     |  3 ---
 drivers/fastboot/Kconfig           |  4 +++-
 drivers/usb/dwc3/core.c            | 26 ++++++++++++++++++++++++
 drivers/usb/dwc3/core.h            | 12 +++++++++++
 drivers/usb/gadget/Kconfig         |  6 ++++++
 include/dwc3-uboot.h               |  2 ++
 include/linux/usb/phy.h            | 19 ++++++++++++++++++
 25 files changed, 104 insertions(+), 69 deletions(-)
 create mode 100644 include/linux/usb/phy.h

-- 
2.18.0.321.gffc6fa0e3
