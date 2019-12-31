From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 0/7] Add SR-IOV support in PCIe Endpoint Core
Date: Tue, 31 Dec 2019 17:05:27 +0530
Message-ID: <20191231113534.30405-1-kishon@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>, Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Patch series
*) Adds support to add virtual functions to enable endpoint controller
   which supports SR-IOV capability
*) Add support in Cadence endpoint driver to configure virtual functions
*) Enable pci_endpoint_test driver to create pci_device for virtual
   functions

Here both physical functions and virtual functions use the same
pci_endpoint_test driver and existing pcitest utility can be used
to test virtual functions also.

This series is created on top of [1], [2], [3] & [4]
[1] -> http://lore.kernel.org/r/20191209092147.22901-1-kishon@ti.com
[2] -> http://lore.kernel.org/r/20191211124608.887-1-kishon@ti.com
[3] -> http://lore.kernel.org/r/20191230123315.31037-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20191231100331.6316-1-kishon@ti.com

Kishon Vijay Abraham I (7):
  Documentation: PCI: endpoint/pci-endpoint-cfs: Guide to use SR-IOV
  dt-bindings: PCI: cadence: Add binding to specify max virtual
    functions
  PCI: endpoint: Add support to add virtual function in endpoint core
  PCI: endpoint: Add support to link a physical function to a virtual
    function
  PCI: endpoint: Add virtual function number in pci_epc ops
  PCI: cadence: Add support to configure virtual functions
  misc: pci_endpoint_test: Populate sriov_configure ops to configure
    SR-IOV device

 .../PCI/endpoint/pci-endpoint-cfs.rst         |  12 +-
 .../bindings/pci/cdns,cdns-pcie-ep.txt        |   2 +
 .../bindings/pci/ti,j721e-pci-ep.yaml         |   8 +
 drivers/misc/pci_endpoint_test.c              |   1 +
 .../pci/controller/cadence/pcie-cadence-ep.c  | 232 +++++++++++++++---
 drivers/pci/controller/cadence/pcie-cadence.h |   7 +
 .../pci/controller/dwc/pcie-designware-ep.c   |  36 +--
 drivers/pci/controller/pcie-rockchip-ep.c     |  18 +-
 drivers/pci/endpoint/functions/pci-epf-test.c |  64 ++---
 drivers/pci/endpoint/pci-ep-cfs.c             |  24 ++
 drivers/pci/endpoint/pci-epc-core.c           | 126 +++++++---
 drivers/pci/endpoint/pci-epf-core.c           |  92 ++++++-
 include/linux/pci-epc.h                       |  53 ++--
 include/linux/pci-epf.h                       |  16 +-
 14 files changed, 541 insertions(+), 150 deletions(-)

-- 
2.17.1
