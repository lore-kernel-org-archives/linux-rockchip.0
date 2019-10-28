From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 21/25] PCI: v3-semi: Use inbound resources for setup
Date: Mon, 28 Oct 2019 11:32:52 -0500
Message-ID: <20191028163256.8004-22-robh@kernel.org>
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
'dma_ranges' resource list, convert the v3-semi host bridge to use
the resource list to setup the inbound addresses.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-v3-semi.c | 38 ++++++++++++----------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index 2209c7671115..bd05221f5a22 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -598,28 +598,30 @@ static int v3_pci_setup_resource(struct v3_pci *v3,
 }
 
 static int v3_get_dma_range_config(struct v3_pci *v3,
-				   struct of_pci_range *range,
+				   struct resource_entry *entry,
 				   u32 *pci_base, u32 *pci_map)
 {
 	struct device *dev = v3->dev;
-	u64 cpu_end = range->cpu_addr + range->size - 1;
-	u64 pci_end = range->pci_addr + range->size - 1;
+	u64 cpu_addr = entry->res->start;
+	u64 cpu_end = entry->res->end;
+	u64 pci_end = cpu_end - entry->offset;
+	u64 pci_addr = entry->res->start - entry->offset;
 	u32 val;
 
-	if (range->pci_addr & ~V3_PCI_BASE_M_ADR_BASE) {
+	if (pci_addr & ~V3_PCI_BASE_M_ADR_BASE) {
 		dev_err(dev, "illegal range, only PCI bits 31..20 allowed\n");
 		return -EINVAL;
 	}
-	val = ((u32)range->pci_addr) & V3_PCI_BASE_M_ADR_BASE;
+	val = ((u32)pci_addr) & V3_PCI_BASE_M_ADR_BASE;
 	*pci_base = val;
 
-	if (range->cpu_addr & ~V3_PCI_MAP_M_MAP_ADR) {
+	if (cpu_addr & ~V3_PCI_MAP_M_MAP_ADR) {
 		dev_err(dev, "illegal range, only CPU bits 31..20 allowed\n");
 		return -EINVAL;
 	}
-	val = ((u32)range->cpu_addr) & V3_PCI_MAP_M_MAP_ADR;
+	val = ((u32)cpu_addr) & V3_PCI_MAP_M_MAP_ADR;
 
-	switch (range->size) {
+	switch (resource_size(entry->res)) {
 	case SZ_1M:
 		val |= V3_LB_BASE_ADR_SIZE_1MB;
 		break;
@@ -667,8 +669,8 @@ static int v3_get_dma_range_config(struct v3_pci *v3,
 	dev_dbg(dev,
 		"DMA MEM CPU: 0x%016llx -> 0x%016llx => "
 		"PCI: 0x%016llx -> 0x%016llx base %08x map %08x\n",
-		range->cpu_addr, cpu_end,
-		range->pci_addr, pci_end,
+		cpu_addr, cpu_end,
+		pci_addr, pci_end,
 		*pci_base, *pci_map);
 
 	return 0;
@@ -677,24 +679,16 @@ static int v3_get_dma_range_config(struct v3_pci *v3,
 static int v3_pci_parse_map_dma_ranges(struct v3_pci *v3,
 				       struct device_node *np)
 {
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(v3);
 	struct device *dev = v3->dev;
+	struct resource_entry *entry;
 	int i = 0;
 
-	if (of_pci_dma_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing dma-ranges property\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * Get the dma-ranges from the device tree
-	 */
-	for_each_of_pci_range(&parser, &range) {
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
 		int ret;
 		u32 pci_base, pci_map;
 
-		ret = v3_get_dma_range_config(v3, &range, &pci_base, &pci_map);
+		ret = v3_get_dma_range_config(v3, entry, &pci_base, &pci_map);
 		if (ret)
 			return ret;
 
-- 
2.20.1
