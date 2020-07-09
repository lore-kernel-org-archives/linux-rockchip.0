From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/3] phy: rockchip: Add PCIe phy driver
Date: Thu,  9 Jul 2020 23:41:00 +0530
Message-ID: <20200709181103.89870-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This series add PCIe PHY driver for rockchip platform.

Tested on ROC-RK3399-PC and RockPi 4.

Any inputs?
Jagan.

Jagan Teki (3):
  phy: Add Rockchip PCIe PHY driver
  pci: rockchip: Switch to generic-phy
  pci: rockchip: Drop legacy PHY driver

 drivers/pci/Kconfig                      |   1 +
 drivers/pci/Makefile                     |   2 +-
 drivers/pci/pcie_rockchip.c              |  95 +++++++-
 drivers/pci/pcie_rockchip.h              | 141 ------------
 drivers/pci/pcie_rockchip_phy.c          | 205 -----------------
 drivers/phy/rockchip/Kconfig             |   7 +
 drivers/phy/rockchip/Makefile            |   1 +
 drivers/phy/rockchip/phy-rockchip-pcie.c | 271 +++++++++++++++++++++++
 8 files changed, 364 insertions(+), 359 deletions(-)
 delete mode 100644 drivers/pci/pcie_rockchip.h
 delete mode 100644 drivers/pci/pcie_rockchip_phy.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-pcie.c

-- 
2.25.1
