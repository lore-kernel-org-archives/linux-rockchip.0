From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 24/25] PCI: rcar: Use inbound resources for setup
Date: Mon, 28 Oct 2019 11:32:55 -0500
Message-ID: <20191028163256.8004-25-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence>
List-Id: linux-rockchip.vger.kernel.org

Now that the helpers provide the inbound resources in the host bridge
'dma_ranges' resource list, convert Renesas R-Car PCIe host bridge to
use the resource list to setup the inbound addresses.

Cc: Simon Horman <horms@verge.net.au>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rcar.c | 45 +++++++++++-------------------
 1 file changed, 16 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index b8d6e86a5539..453c931aaf77 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -1014,16 +1014,16 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
 }
 
 static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
-				    struct of_pci_range *range,
+				    struct resource_entry *entry,
 				    int *index)
 {
-	u64 restype = range->flags;
-	u64 cpu_addr = range->cpu_addr;
-	u64 cpu_end = range->cpu_addr + range->size;
-	u64 pci_addr = range->pci_addr;
+	u64 restype = entry->res->flags;
+	u64 cpu_addr = entry->res->start;
+	u64 cpu_end = entry->res->end;
+	u64 pci_addr = entry->res->start - entry->offset;
 	u32 flags = LAM_64BIT | LAR_ENABLE;
 	u64 mask;
-	u64 size;
+	u64 size = resource_size(entry->res);
 	int idx = *index;
 
 	if (restype & IORESOURCE_PREFETCH)
@@ -1037,9 +1037,7 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
 		unsigned long nr_zeros = __ffs64(cpu_addr);
 		u64 alignment = 1ULL << nr_zeros;
 
-		size = min(range->size, alignment);
-	} else {
-		size = range->size;
+		size = min(size, alignment);
 	}
 	/* Hardware supports max 4GiB inbound region */
 	size = min(size, 1ULL << 32);
@@ -1078,30 +1076,19 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
 	return 0;
 }
 
-static int rcar_pcie_parse_map_dma_ranges(struct rcar_pcie *pcie,
-					  struct device_node *np)
+static int rcar_pcie_parse_map_dma_ranges(struct rcar_pcie *pcie)
 {
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
-	int index = 0;
-	int err;
-
-	if (of_pci_dma_range_parser_init(&parser, np))
-		return -EINVAL;
-
-	/* Get the dma-ranges from DT */
-	for_each_of_pci_range(&parser, &range) {
-		u64 end = range.cpu_addr + range.size - 1;
-
-		dev_dbg(pcie->dev, "0x%08x 0x%016llx..0x%016llx -> 0x%016llx\n",
-			range.flags, range.cpu_addr, end, range.pci_addr);
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
+	struct resource_entry *entry;
+	int index = 0, err = 0;
 
-		err = rcar_pcie_inbound_ranges(pcie, &range, &index);
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
+		err = rcar_pcie_inbound_ranges(pcie, entry, &index);
 		if (err)
-			return err;
+			break;
 	}
 
-	return 0;
+	return err;
 }
 
 static const struct of_device_id rcar_pcie_of_match[] = {
@@ -1162,7 +1149,7 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 		goto err_unmap_msi_irqs;
 	}
 
-	err = rcar_pcie_parse_map_dma_ranges(pcie, dev->of_node);
+	err = rcar_pcie_parse_map_dma_ranges(pcie);
 	if (err)
 		goto err_clk_disable;
 
-- 
2.20.1
