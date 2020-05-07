From: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Subject: [PATCH v10 4/8] PCI: endpoint: Pass page size as argument to pci_epc_mem_init()
Date: Thu,  7 May 2020 13:33:15 +0100
Message-ID: <1588854799-13710-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1588854799-13710-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1588854799-13710-1-git-send-email-prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Prabhakar <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

pci_epc_mem_init() internally used page size equal to *PAGE_SIZE* to
manage the address space so instead just pass the page size as a
argument to pci_epc_mem_init().

Also make pci_epc_mem_init() as a C function instead of a macro function
in preparation for adding support for pci-epc-mem core to handle multiple
windows.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
Acked-by: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
---
 drivers/pci/controller/cadence/pcie-cadence-ep.c | 2 +-
 drivers/pci/controller/pcie-rockchip-ep.c        | 2 +-
 drivers/pci/endpoint/pci-epc-mem.c               | 7 +++++++
 include/linux/pci-epc.h                          | 5 ++---
 4 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 1c173dad67d1..1c15c8352125 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -450,7 +450,7 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 		epc->max_functions = 1;
 
 	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
-			       resource_size(pcie->mem_res));
+			       resource_size(pcie->mem_res), PAGE_SIZE);
 	if (ret < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_init;
diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d743b0a48988..5eaf36629a75 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -615,7 +615,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
 	err = pci_epc_mem_init(epc, rockchip->mem_res->start,
-			       resource_size(rockchip->mem_res));
+			       resource_size(rockchip->mem_res), PAGE_SIZE);
 	if (err < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_uninit_port;
diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
index abfac1109a13..cdd1d3821249 100644
--- a/drivers/pci/endpoint/pci-epc-mem.c
+++ b/drivers/pci/endpoint/pci-epc-mem.c
@@ -93,6 +93,13 @@ return ret;
 }
 EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
 
+int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
+		     size_t size, size_t page_size)
+{
+	return __pci_epc_mem_init(epc, base, size, page_size);
+}
+EXPORT_SYMBOL_GPL(pci_epc_mem_init);
+
 /**
  * pci_epc_mem_exit() - cleanup the pci_epc_mem structure
  * @epc: the EPC device that invoked pci_epc_mem_exit
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index e0ed9d01f6e5..5bc1de65849e 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -137,9 +137,6 @@ struct pci_epc_features {
 #define devm_pci_epc_create(dev, ops)    \
 		__devm_pci_epc_create((dev), (ops), THIS_MODULE)
 
-#define pci_epc_mem_init(epc, phys_addr, size)	\
-		__pci_epc_mem_init((epc), (phys_addr), (size), PAGE_SIZE)
-
 static inline void epc_set_drvdata(struct pci_epc *epc, void *data)
 {
 	dev_set_drvdata(&epc->dev, data);
@@ -195,6 +192,8 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
+int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
+		     size_t size, size_t page_size);
 int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
 		       size_t page_size);
 void pci_epc_mem_exit(struct pci_epc *epc);
-- 
2.17.1
