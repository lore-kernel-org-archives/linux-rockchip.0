From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 00/16] Add Rockchip RK3399 USB3.0 Host support
Date: Tue, 26 May 2020 11:32:04 +0800
Message-ID: <20200526033220.20047-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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

This series add quirks for DWC3 and add Rockchip RK3399 USB3.0 host support.

The function has been tested pass on rk3399-evb and roc-rk3399-pc board.

For V6 update:
 - Use [PATCH v6 04/16] instead of [PATCH v5 05/16] to fix that the current
   Generic PHY subsystem is unable to find PHY if the PHY node is not part of
   the root structure.
 - Add 'Reviewed-by' tag for all patches except [PATCH v6 04/16].

For V5 update:
 - Fix dwc3-generic driver followed Marek's comments for [PATCH v4 12/16].
 - Add 'Reviewed-by' and 'Tested-by' tag for [PATCH v4 07/16] and [PATCH v4 08/16].

For V4 update:
 - Collect Jagan's all fixed patches [1].
 - Amend specific u-boot changes from dts to dtsi for [PATCH v3 6/7].

For V3 update:
 - Fix compile error for [PATCH v2 1/9].
 - Use Jagan's Type-C driver instead of [PATCH v2 5/9].
 - Cleanup dts changes for [PATCH v2 7/9].
 - Cleanup config changes for [PATCH v2 8/9] and [PATCH v2 9/9].

For V2 update:
 - Amend type-c driver followed Jagan's comments for [PATCH 5/8].
 - Fix dts commit for [PATCH 7/8].
 - Split RK3399 default config for [PATCH 8/8].
 - Add 'Reviewed-by' tag for [PATCH 1/8], [PATCH 2/8] and [PATCH 3/8].

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200506075025.1677-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org

BR,
Frank

Frank Wang (8):
  arm: mach-rockchip: bind sub-nodes for rk3399_syscon
  usb: dwc3: add dis_enblslpm_quirk
  usb: dwc3: add dis_u2_freeclk_exists_quirk
  usb: dwc3: amend UTMI/UTMIW phy interface setup
  usb: dwc3: add make compatible for rockchip platform
  driver: usb: drop legacy rockchip xhci driver
  ARM: dts: rk3399-evb: usb3.0 host support
  configs: evb-rk3399: update support usb3.0 host

Jagan Teki (8):
  clk: rk3399: Enable/Disable the USB2PHY clk
  clk: rk3399: Set empty for TCPHY assigned-clocks
  clk: rk3399: Enable/Disable TCPHY clocks
  phy: rockchip: Add Rockchip USB2PHY driver
  phy: rockchip: Add Rockchip USB TypeC PHY driver
  usb: dwc3: Add disable u2mac linestate check quirk
  usb: dwc3: Enable AutoRetry feature in the controller
  roc-rk3399-pc: Enable USB3.0 Host

 arch/arm/dts/rk3399-evb-u-boot.dtsi           |  13 +
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |   3 +
 configs/evb-rk3399_defconfig                  |   6 +
 configs/roc-pc-mezzanine-rk3399_defconfig     |   5 +
 configs/roc-pc-rk3399_defconfig               |   6 +
 drivers/Makefile                              |   1 +
 drivers/clk/rockchip/clk_rk3399.c             |  38 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/rockchip/Kconfig                  |  21 +
 drivers/phy/rockchip/Makefile                 |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 312 +++++++
 drivers/phy/rockchip/phy-rockchip-typec.c     | 796 ++++++++++++++++++
 drivers/usb/common/common.c                   |  25 +
 drivers/usb/dwc3/core.c                       | 106 ++-
 drivers/usb/dwc3/core.h                       |  19 +
 drivers/usb/dwc3/dwc3-generic.c               |  33 +-
 drivers/usb/host/Kconfig                      |   9 -
 drivers/usb/host/Makefile                     |   1 -
 drivers/usb/host/xhci-rockchip.c              | 196 -----
 include/dwc3-uboot.h                          |   3 +
 include/linux/usb/phy.h                       |  18 +
 21 files changed, 1376 insertions(+), 243 deletions(-)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-typec.c
 delete mode 100644 drivers/usb/host/xhci-rockchip.c

-- 
2.17.1
