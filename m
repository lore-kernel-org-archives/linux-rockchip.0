From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/6] rockchip: Add PCIe host support
Date: Sat,  9 May 2020 22:26:18 +0530
Message-ID: <20200509165624.20791-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: shawn.lin@rock-chips.com, patrick@blueri.se, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This series support PCIe host controller support
on rockchip rk3399 platform.

It is based on previous version[1] changes.

Works well on rk3399 boards like rock960, nanopc-t4 
and roc-kr3399-pc-mezzanine board as Gen1 configurable 
host with M.2 SSD.

Changes for v3:
- fix few clock register values
- collect mani a-b
Changes for v2:
- handle USB, GMAC clocks
- collect kever r-o-b tag
- simplify rd and wr conf API 

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200430070412.12499-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (6):
  clk: rk3399: Add enable/disable clks
  clk: rk3399: Enable/Disable the PCIEPHY clk
  pci: Add Rockchip PCIe controller driver
  pci: Add Rockchip PCIe PHY controller driver
  rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
  rockchip: Enable PCIe/M.2 on rock960 board

 arch/arm/dts/rk3399-u-boot.dtsi             |   1 +
 board/vamrs/rock960_rk3399/rock960-rk3399.c |  23 +
 configs/nanopc-t4-rk3399_defconfig          |   4 +
 configs/roc-pc-mezzanine-rk3399_defconfig   |   4 +
 configs/rock960-rk3399_defconfig            |   5 +
 drivers/clk/rockchip/clk_rk3399.c           | 154 ++++++
 drivers/pci/Kconfig                         |   8 +
 drivers/pci/Makefile                        |   1 +
 drivers/pci/pcie_rockchip.c                 | 491 ++++++++++++++++++++
 drivers/pci/pcie_rockchip.h                 | 142 ++++++
 drivers/pci/pcie_rockchip_phy.c             | 205 ++++++++
 11 files changed, 1038 insertions(+)
 create mode 100644 drivers/pci/pcie_rockchip.c
 create mode 100644 drivers/pci/pcie_rockchip.h
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

-- 
2.17.1
