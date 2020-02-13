From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/6] Add Rockchip new PCIe controller and combo phy support
Date: Thu, 13 Feb 2020 14:08:05 +0800
Message-ID: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
Sender: linux-pci-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org


Rockchip's new PCIe controller is based on DesignWare IP and the
combo phy is shard by PCIe and USB3.0 controller. This series adds
both of controller and phy drivers found on Rockchip RV1808 platform.


Changes in v2:
- fix yaml format
- add commit log and fix Kconfig
- remove dead code

Shawn Lin (3):
  dt-bindings: add binding for Rockchip combo phy using an Innosilicon
    IP
  PCI: dwc: Skip allocating own MSI domain if using external MSI domain
  MAINTAINERS: Update PCIe drivers for Rockchip

Simon Xue (2):
  dt-bindings: rockchip: Add DesignWare based PCIe controller
  PCI: rockchip: add DesignWare based PCIe controller

William Wu (1):
  phy/rockchip: inno-combophy: Add initial support

 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |  148 +++
 .../bindings/phy/rockchip,inno-combophy.yaml       |   80 ++
 MAINTAINERS                                        |    4 +-
 drivers/pci/controller/Kconfig                     |    4 +-
 drivers/pci/controller/dwc/Kconfig                 |    9 +
 drivers/pci/controller/dwc/Makefile                |    1 +
 drivers/pci/controller/dwc/pcie-designware-host.c  |   10 +-
 drivers/pci/controller/dwc/pcie-designware.h       |    1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c      |  439 ++++++++
 drivers/phy/rockchip/Kconfig                       |    8 +
 drivers/phy/rockchip/Makefile                      |    1 +
 drivers/phy/rockchip/phy-rockchip-inno-combphy.c   | 1056 ++++++++++++++++++++
 12 files changed, 1757 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-combphy.c

-- 
1.9.1
