From: Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v4 00/16] Add Rockchip RK3399 USB3.0 Host support
Date: Mon, 11 May 2020 15:53:14 +0800
Message-ID: <20200511075330.26462-1-frank.wang@rock-chips.com>
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This series add quirks for DWC3 and add Rockchip RK3399 USB3.0 host support.

The function has been tested pass on rk3399-evb and roc-rk3399-pc board.

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

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200506075025.1677-1-jagan@amarulasolutions.com

BR,
Frank

Frank Wang (7):
  usb: dwc3: add dis_enblslpm_quirk
  usb: dwc3: add dis_u2_freeclk_exists_quirk
  usb: dwc3: amend UTMI/UTMIW phy interface setup
  usb: dwc3: add make compatible for rockchip platform
  driver: usb: drop legacy rockchip xhci driver
  ARM: dts: rk3399-evb: usb3.0 host support
  configs: evb-rk3399: update support usb3.0 host

Jagan Teki (9):
  clk: rk3399: Enable/Disable the USB2PHY clk
  clk: rk3399: Set empty for TCPHY assigned-clocks
  clk: rk3399: Enable/Disable TCPHY clocks
  phy: rockchip: Add Rockchip USB2PHY driver
  arm64: dts: rk3399: Move u2phy into root port
  phy: rockchip: Add Rockchip USB TypeC PHY driver
  usb: dwc3: Add disable u2mac linestate check quirk
  usb: dwc3: Enable AutoRetry feature in the controller
  roc-rk3399-pc: Enable USB3.0 Host

 arch/arm/dts/rk3399-evb-u-boot.dtsi           |  13 +
 arch/arm/dts/rk3399.dtsi                      | 108 +--
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
 21 files changed, 1427 insertions(+), 297 deletions(-)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-typec.c
 delete mode 100644 drivers/usb/host/xhci-rockchip.c

-- 
2.17.1
