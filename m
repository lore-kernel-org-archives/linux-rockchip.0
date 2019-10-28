From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 13/25] PCI: xgene: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:44 -0500
Message-ID: <20191028163256.8004-14-robh@kernel.org>
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

Convert the xgene host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Toan Le <toan@os.amperecomputing.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-xgene.c | 39 +++++++++---------------------
 1 file changed, 11 insertions(+), 28 deletions(-)

diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index ffda3e8b4742..7d0f0395a479 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -405,15 +405,13 @@ static void xgene_pcie_setup_cfg_reg(struct xgene_pcie_port *port)
 	xgene_pcie_writel(port, CFGCTL, EN_REG);
 }
 
-static int xgene_pcie_map_ranges(struct xgene_pcie_port *port,
-				 struct list_head *res,
-				 resource_size_t io_base)
+static int xgene_pcie_map_ranges(struct xgene_pcie_port *port)
 {
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(port);
 	struct resource_entry *window;
 	struct device *dev = port->dev;
-	int ret;
 
-	resource_list_for_each_entry(window, res) {
+	resource_list_for_each_entry(window, &bridge->windows) {
 		struct resource *res = window->res;
 		u64 restype = resource_type(res);
 
@@ -421,11 +419,9 @@ static int xgene_pcie_map_ranges(struct xgene_pcie_port *port,
 
 		switch (restype) {
 		case IORESOURCE_IO:
-			xgene_pcie_setup_ob_reg(port, res, OMR3BARL, io_base,
+			xgene_pcie_setup_ob_reg(port, res, OMR3BARL,
+						pci_pio_to_address(res->start),
 						res->start - window->offset);
-			ret = devm_pci_remap_iospace(dev, res, io_base);
-			if (ret < 0)
-				return ret;
 			break;
 		case IORESOURCE_MEM:
 			if (res->flags & IORESOURCE_PREFETCH)
@@ -567,8 +563,7 @@ static void xgene_pcie_clear_config(struct xgene_pcie_port *port)
 		xgene_pcie_writel(port, i, 0);
 }
 
-static int xgene_pcie_setup(struct xgene_pcie_port *port, struct list_head *res,
-			    resource_size_t io_base)
+static int xgene_pcie_setup(struct xgene_pcie_port *port)
 {
 	struct device *dev = port->dev;
 	u32 val, lanes = 0, speed = 0;
@@ -580,7 +575,7 @@ static int xgene_pcie_setup(struct xgene_pcie_port *port, struct list_head *res,
 	val = (XGENE_PCIE_DEVICEID << 16) | XGENE_PCIE_VENDORID;
 	xgene_pcie_writel(port, BRIDGE_CFG_0, val);
 
-	ret = xgene_pcie_map_ranges(port, res, io_base);
+	ret = xgene_pcie_map_ranges(port);
 	if (ret)
 		return ret;
 
@@ -607,11 +602,9 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *dn = dev->of_node;
 	struct xgene_pcie_port *port;
-	resource_size_t iobase = 0;
 	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
 	int ret;
-	LIST_HEAD(res);
 
 	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*port));
 	if (!bridge)
@@ -634,20 +627,14 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
-						    &iobase);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret)
 		return ret;
 
-	ret = devm_request_pci_bus_resources(dev, &res);
-	if (ret)
-		goto error;
-
-	ret = xgene_pcie_setup(port, &res, iobase);
+	ret = xgene_pcie_setup(port);
 	if (ret)
-		goto error;
+		return ret;
 
-	list_splice_init(&res, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = port;
 	bridge->busnr = 0;
@@ -657,7 +644,7 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 
 	ret = pci_scan_root_bus_bridge(bridge);
 	if (ret < 0)
-		goto error;
+		return ret;
 
 	bus = bridge->bus;
 
@@ -666,10 +653,6 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 		pcie_bus_configure_settings(child);
 	pci_bus_add_devices(bus);
 	return 0;
-
-error:
-	pci_free_resource_list(&res);
-	return ret;
 }
 
 static const struct of_device_id xgene_pcie_match_table[] = {
-- 
2.20.1
