From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 5/6] PCI: rockchip: Fix kerneldoc
Date: Wed, 29 Jul 2020 22:12:23 +0200
Message-ID: <20200729201224.26799-6-krzk@kernel.org>
References: <20200729201224.26799-1-krzk@kernel.org>
Return-path: <linux-acpi-owner@vger.kernel.org>
In-Reply-To: <20200729201224.26799-1-krzk@kernel.org>
Sender: linux-acpi-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Fix W=1 compile warnings (invalid kerneldoc):

    drivers/pci/controller/pcie-rockchip-ep.c:50: warning: Function parameter or member 'epc' not described in 'rockchip_pcie_ep'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 5eaf36629a75..7631dc3961c1 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -22,6 +22,7 @@
 /**
  * struct rockchip_pcie_ep - private data for PCIe endpoint controller driver
  * @rockchip: Rockchip PCIe controller
+ * @epc: PCI EPC device
  * @max_regions: maximum number of regions supported by hardware
  * @ob_region_map: bitmask of mapped outbound regions
  * @ob_addr: base addresses in the AXI bus where the outbound regions start
-- 
2.17.1
