From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 6/6] PCI: xilinx: Fix kerneldoc
Date: Wed, 29 Jul 2020 22:12:24 +0200
Message-ID: <20200729201224.26799-7-krzk@kernel.org>
References: <20200729201224.26799-1-krzk@kernel.org>
Return-path: <linux-acpi-owner@vger.kernel.org>
In-Reply-To: <20200729201224.26799-1-krzk@kernel.org>
Sender: linux-acpi-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Fix W=1 compile warnings (invalid kerneldoc):

    drivers/pci/controller/pcie-xilinx-cpm.c:122: warning: Function parameter or member 'cpm_domain' not described in 'xilinx_cpm_pcie_port'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pci/controller/pcie-xilinx-cpm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-xilinx-cpm.c b/drivers/pci/controller/pcie-xilinx-cpm.c
index 66f554694e03..cd8c77457b5f 100644
--- a/drivers/pci/controller/pcie-xilinx-cpm.c
+++ b/drivers/pci/controller/pcie-xilinx-cpm.c
@@ -104,6 +104,7 @@
  * @cpm_base: CPM System Level Control and Status Register(SLCR) Base
  * @dev: Device pointer
  * @intx_domain: Legacy IRQ domain pointer
+ * @cpm_domain: CPM IRQ domain pointer
  * @cfg: Holds mappings of config space window
  * @intx_irq: legacy interrupt number
  * @irq: Error interrupt number
-- 
2.17.1
