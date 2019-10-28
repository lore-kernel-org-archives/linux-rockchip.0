From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 10/25] PCI: rockchip: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:41 -0500
Message-ID: <20191028163256.8004-11-robh@kernel.org>
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

Convert the Rockchip host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 36 ++++-----------------
 1 file changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ef8e677ce9d1..8d2e6f2e141e 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -950,14 +950,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
+	struct resource *bus_res;
 	struct resource_entry *win;
-	resource_size_t io_base;
-	struct resource	*mem;
-	struct resource	*io;
 	int err;
 
-	LIST_HEAD(res);
-
 	if (!dev->of_node)
 		return -ENODEV;
 
@@ -995,29 +991,20 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (err < 0)
 		goto err_deinit_port;
 
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &res, &io_base);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
 	if (err)
 		goto err_remove_irq_domain;
 
-	err = devm_request_pci_bus_resources(dev, &res);
-	if (err)
-		goto err_free_res;
+	rockchip->root_bus_nr = bus_res->start;
 
 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &res) {
+	resource_list_for_each_entry(win, &bridge->windows) {
 		switch (resource_type(win->res)) {
 		case IORESOURCE_IO:
 			io = win->res;
 			io->name = "I/O";
 			rockchip->io_size = resource_size(io);
 			rockchip->io_bus_addr = io->start - win->offset;
-			err = pci_remap_iospace(io, io_base);
-			if (err) {
-				dev_warn(dev, "error %d: failed to map resource %pR\n",
-					 err, io);
-				continue;
-			}
 			rockchip->io = io;
 			break;
 		case IORESOURCE_MEM:
@@ -1026,9 +1013,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 			rockchip->mem_size = resource_size(mem);
 			rockchip->mem_bus_addr = mem->start - win->offset;
 			break;
-		case IORESOURCE_BUS:
-			rockchip->root_bus_nr = win->res->start;
-			break;
 		default:
 			continue;
 		}
@@ -1036,15 +1020,14 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	err = rockchip_pcie_cfg_atu(rockchip);
 	if (err)
-		goto err_unmap_iospace;
+		goto err_remove_irq_domain;
 
 	rockchip->msg_region = devm_ioremap(dev, rockchip->msg_bus_addr, SZ_1M);
 	if (!rockchip->msg_region) {
 		err = -ENOMEM;
-		goto err_unmap_iospace;
+		goto err_remove_irq_domain;
 	}
 
-	list_splice_init(&res, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = rockchip;
 	bridge->busnr = 0;
@@ -1054,7 +1037,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	err = pci_scan_root_bus_bridge(bridge);
 	if (err < 0)
-		goto err_unmap_iospace;
+		goto err_remove_irq_domain;
 
 	bus = bridge->bus;
 
@@ -1068,10 +1051,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	pci_bus_add_devices(bus);
 	return 0;
 
-err_unmap_iospace:
-	pci_unmap_iospace(rockchip->io);
-err_free_res:
-	pci_free_resource_list(&res);
 err_remove_irq_domain:
 	irq_domain_remove(rockchip->irq_domain);
 err_deinit_port:
@@ -1097,7 +1076,6 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
 
 	pci_stop_root_bus(rockchip->root_bus);
 	pci_remove_root_bus(rockchip->root_bus);
-	pci_unmap_iospace(rockchip->io);
 	irq_domain_remove(rockchip->irq_domain);
 
 	rockchip_pcie_deinit_phys(rockchip);
-- 
2.20.1
