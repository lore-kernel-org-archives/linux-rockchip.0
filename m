From: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Subject: [PATCH 2/3] pci: dw: use new config space accessors
Date: Wed,  1 Jun 2016 14:31:23 +0200
Message-ID: <1464784332-3775650-2-git-send-email-arnd@arndb.de>
References: <1464784332-3775650-1-git-send-email-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1464784332-3775650-1-git-send-email-arnd-r2nGTMty4D4@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pratyush Anand <pratyush.anand-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Thomas Petazzoni <thomas.petazzoni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Jisheng Zhang <jszhang-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Zhou Wang <wangzhou1-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Joao Pinto <Joao.Pinto-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Gabriele Paoloni <gabriele.paoloni-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Lucas Stach <l.stach-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The PCI core can now use separate callbacks for type 1 config
space accesses, so we can simplify the dw_pcie_wr_conf/dw_pcie_rd_conf
logic that multiplexes between the two kinds.

Signed-off-by: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
---
 drivers/pci/host/pcie-designware.c | 73 +++++++++++++++-----------------------
 1 file changed, 28 insertions(+), 45 deletions(-)

diff --git a/drivers/pci/host/pcie-designware.c b/drivers/pci/host/pcie-designware.c
index aafd766546f3..37e16c159719 100644
--- a/drivers/pci/host/pcie-designware.c
+++ b/drivers/pci/host/pcie-designware.c
@@ -573,13 +573,24 @@ int dw_pcie_host_init(struct pcie_port *pp)
 	return 0;
 }
 
-static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
+static int dw_pcie_rd_other_conf(struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 *val)
 {
 	int ret, type;
 	u32 busdev, cfg_size;
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
+	struct pcie_port *pp = bus->sysdata;
+
+	/*
+	 * If there is no link, then there is no device.
+	 *
+	 * do not read more than one device on the bus directly attached
+	 * to RC's (Virtual Bridge's) DS side.
+	 */
+	if (!dw_pcie_link_up(pp) ||
+	    (bus->primary == pp->root_bus_nr && PCI_SLOT(devfn) > 0))
+		return PCIBIOS_DEVICE_NOT_FOUND;
 
 	if (pp->ops->rd_other_conf)
 		return pp->ops->rd_other_conf(pp, bus, devfn, where, size, val);
@@ -610,13 +621,18 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	return ret;
 }
 
-static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
+static int dw_pcie_wr_other_conf(struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 val)
 {
 	int ret, type;
 	u32 busdev, cfg_size;
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
+	struct pcie_port *pp = bus->sysdata;
+
+	if (!dw_pcie_link_up(pp) ||
+	    (bus->primary == pp->root_bus_nr && PCI_SLOT(devfn) > 0))
+		return PCIBIOS_DEVICE_NOT_FOUND;
 
 	if (pp->ops->wr_other_conf)
 		return pp->ops->wr_other_conf(pp, bus, devfn, where, size, val);
@@ -647,62 +663,29 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	return ret;
 }
 
-static int dw_pcie_valid_config(struct pcie_port *pp,
-				struct pci_bus *bus, int dev)
-{
-	/* If there is no link, then there is no device */
-	if (bus->number != pp->root_bus_nr) {
-		if (!dw_pcie_link_up(pp))
-			return 0;
-	}
-
-	/* access only one slot on each root port */
-	if (bus->number == pp->root_bus_nr && dev > 0)
-		return 0;
-
-	/*
-	 * do not read more than one device on the bus directly attached
-	 * to RC's (Virtual Bridge's) DS side.
-	 */
-	if (bus->primary == pp->root_bus_nr && dev > 0)
-		return 0;
-
-	return 1;
-}
-
-static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
+static int dw_pcie_rd_bridge_conf(struct pci_bus *bus, u32 devfn, int where,
 			int size, u32 *val)
 {
-	struct pcie_port *pp = bus->sysdata;
-
-	if (dw_pcie_valid_config(pp, bus, PCI_SLOT(devfn)) == 0) {
-		*val = 0xffffffff;
+	if (PCI_SLOT(devfn) > 0)
 		return PCIBIOS_DEVICE_NOT_FOUND;
-	}
-
-	if (bus->number == pp->root_bus_nr)
-		return dw_pcie_rd_own_conf(pp, where, size, val);
 
-	return dw_pcie_rd_other_conf(pp, bus, devfn, where, size, val);
+	return dw_pcie_rd_own_conf(bus->sysdata, where, size, val);
 }
 
-static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
+static int dw_pcie_wr_bridge_conf(struct pci_bus *bus, u32 devfn,
 			int where, int size, u32 val)
 {
-	struct pcie_port *pp = bus->sysdata;
-
-	if (dw_pcie_valid_config(pp, bus, PCI_SLOT(devfn)) == 0)
+	if (PCI_SLOT(devfn) > 0)
 		return PCIBIOS_DEVICE_NOT_FOUND;
 
-	if (bus->number == pp->root_bus_nr)
-		return dw_pcie_wr_own_conf(pp, where, size, val);
-
-	return dw_pcie_wr_other_conf(pp, bus, devfn, where, size, val);
+	return dw_pcie_wr_own_conf(bus->sysdata, where, size, val);
 }
 
 static struct pci_ops dw_pcie_ops = {
-	.read = dw_pcie_rd_conf,
-	.write = dw_pcie_wr_conf,
+	.read_bridge = dw_pcie_rd_bridge_conf,
+	.write_bridge = dw_pcie_wr_bridge_conf,
+	.read = dw_pcie_rd_other_conf,
+	.write = dw_pcie_wr_other_conf,
 };
 
 void dw_pcie_setup_rc(struct pcie_port *pp)
-- 
2.7.0
