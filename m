From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 09/25] PCI: mobiveil: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:40 -0500
Message-ID: <20191028163256.8004-10-robh@kernel.org>
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

Convert the Mobiveil host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-mobiveil.c | 26 +++++++-------------------
 1 file changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index a45a6447b01d..4eab8624ce4d 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -140,7 +140,6 @@ struct mobiveil_msi {			/* MSI information */
 
 struct mobiveil_pcie {
 	struct platform_device *pdev;
-	struct list_head resources;
 	void __iomem *config_axi_slave_base;	/* endpoint config base */
 	void __iomem *csr_axi_slave_base;	/* root port config base */
 	void __iomem *apb_csr_base;	/* MSI register base */
@@ -575,6 +574,7 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 
 static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 {
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
 	u32 value, pab_ctrl, type;
 	struct resource_entry *win;
 
@@ -631,7 +631,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
 
 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &pcie->resources) {
+	resource_list_for_each_entry(win, &bridge->windows) {
 		if (resource_type(win->res) == IORESOURCE_MEM)
 			type = MEM_WINDOW_TYPE;
 		else if (resource_type(win->res) == IORESOURCE_IO)
@@ -857,7 +857,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	struct device *dev = &pdev->dev;
-	resource_size_t iobase;
 	int ret;
 
 	/* allocate the PCIe port */
@@ -875,11 +874,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	INIT_LIST_HEAD(&pcie->resources);
-
 	/* parse the host bridge base addresses from the device tree file */
-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, &iobase);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return ret;
@@ -892,24 +888,19 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	ret = mobiveil_host_init(pcie);
 	if (ret) {
 		dev_err(dev, "Failed to initialize host\n");
-		goto error;
+		return ret;
 	}
 
 	/* initialize the IRQ domains */
 	ret = mobiveil_pcie_init_irq_domain(pcie);
 	if (ret) {
 		dev_err(dev, "Failed creating IRQ Domain\n");
-		goto error;
+		return ret;
 	}
 
 	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
 
-	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
-	if (ret)
-		goto error;
-
 	/* Initialize bridge */
-	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = pcie->root_bus_nr;
@@ -920,13 +911,13 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	ret = mobiveil_bringup_link(pcie);
 	if (ret) {
 		dev_info(dev, "link bring-up failed\n");
-		goto error;
+		return ret;
 	}
 
 	/* setup the kernel resources for the newly added PCIe root bus */
 	ret = pci_scan_root_bus_bridge(bridge);
 	if (ret)
-		goto error;
+		return ret;
 
 	bus = bridge->bus;
 
@@ -936,9 +927,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	pci_bus_add_devices(bus);
 
 	return 0;
-error:
-	pci_free_resource_list(&pcie->resources);
-	return ret;
 }
 
 static const struct of_device_id mobiveil_pcie_of_match[] = {
-- 
2.20.1
