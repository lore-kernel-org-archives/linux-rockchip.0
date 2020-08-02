From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Subject: [PATCH 01/10] PCI: dwc: Remove dev_err() when handing an error from platform_get_irq()
Date: Sun,  2 Aug 2020 14:25:53 +0000
Message-ID: <20200802142601.1635926-2-kw@linux.com>
References: <20200802142601.1635926-1-kw@linux.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20200802142601.1635926-1-kw@linux.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Murali Karicheri <m-karicheri2@ti.com>, Yue Wang <yue.wang@Amlogic.com>, Kevin Hilman <khilman@baylibre.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jesper Nilsson <jesper.nilsson@axis.com>, Xiaowei Song <songxiaowei@hisilicon.com>, Binghui Wang <wangbinghui@hisilicon.com>, Pratyush Anand <pratyush.anand@gmail.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, Toan Le <toan@os.amperecomputing.com>, Ley Foon Tan <ley.foon.tan@intel.com>Shawn Lin <shawn>
List-Id: linux-rockchip.vger.kernel.org

There is no need to call the dev_err() function directly to print a
custom message when handling an error from either the platform_get_irq()
or platform_get_irq_byname() functions as both are going to display an
appropriate error message in case of a failure.

This change is as per suggestion from Coccinelle:

  drivers/pci/controller/dwc/pcie-armada8k.c:252:2-9: line 252 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pcie-kirin.c:459:3-10: line 459 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-imx6.c:872:3-10: line 872 is redundant
  because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pcie-artpec6.c:391:3-10: line 391 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pcie-spear13xx.c:202:2-9: line 202 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-keystone.c:1254:2-9: line 1254 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-exynos.c:406:2-9: line 406 is redundant
  because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-exynos.c:419:3-10: line 419 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pcie-tegra194.c:2193:2-9: line 2193 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pcie-histb.c:406:3-10: line 406 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-meson.c:492:3-10: line 492 is redundant
  because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-dra7xx.c:633:2-9: line 633 is redundant
  because platform_get_irq() already prints an error

  drivers/pci/controller/dwc/pci-dra7xx.c:875:2-9: line 875 is redundant
  because platform_get_irq() already prints an error

Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Krzysztof Wilczyński <kw@linux.com>
---
 drivers/pci/controller/dwc/pci-dra7xx.c     | 8 ++------
 drivers/pci/controller/dwc/pci-exynos.c     | 9 +++------
 drivers/pci/controller/dwc/pci-imx6.c       | 4 +---
 drivers/pci/controller/dwc/pci-keystone.c   | 4 +---
 drivers/pci/controller/dwc/pci-meson.c      | 4 +---
 drivers/pci/controller/dwc/pcie-armada8k.c  | 4 +---
 drivers/pci/controller/dwc/pcie-artpec6.c   | 4 +---
 drivers/pci/controller/dwc/pcie-histb.c     | 4 +---
 drivers/pci/controller/dwc/pcie-kirin.c     | 5 +----
 drivers/pci/controller/dwc/pcie-spear13xx.c | 5 ++---
 drivers/pci/controller/dwc/pcie-tegra194.c  | 4 +---
 11 files changed, 15 insertions(+), 40 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-dra7xx.c b/drivers/pci/controller/dwc/pci-dra7xx.c
index 6184ebc9392d..66465dd69858 100644
--- a/drivers/pci/controller/dwc/pci-dra7xx.c
+++ b/drivers/pci/controller/dwc/pci-dra7xx.c
@@ -629,10 +629,8 @@ static int __init dra7xx_add_pcie_port(struct dra7xx_pcie *dra7xx,
 	struct resource *res;
 
 	pp->irq = platform_get_irq(pdev, 1);
-	if (pp->irq < 0) {
-		dev_err(dev, "missing IRQ resource\n");
+	if (pp->irq < 0)
 		return pp->irq;
-	}
 
 	ret = dra7xx_pcie_init_irq_domain(pp);
 	if (ret < 0)
@@ -871,10 +869,8 @@ static int __init dra7xx_pcie_probe(struct platform_device *pdev)
 	pci->ops = &dw_pcie_ops;
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(dev, "missing IRQ resource: %d\n", irq);
+	if (irq < 0)
 		return irq;
-	}
 
 	base = devm_platform_ioremap_resource_byname(pdev, "ti_conf");
 	if (IS_ERR(base))
diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index c5043d951e80..f721fddc521e 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -402,10 +402,9 @@ static int __init exynos_add_pcie_port(struct exynos_pcie *ep,
 	int ret;
 
 	pp->irq = platform_get_irq(pdev, 1);
-	if (pp->irq < 0) {
-		dev_err(dev, "failed to get irq\n");
+	if (pp->irq < 0)
 		return pp->irq;
-	}
+
 	ret = devm_request_irq(dev, pp->irq, exynos_pcie_irq_handler,
 				IRQF_SHARED, "exynos-pcie", ep);
 	if (ret) {
@@ -415,10 +414,8 @@ static int __init exynos_add_pcie_port(struct exynos_pcie *ep,
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		pp->msi_irq = platform_get_irq(pdev, 0);
-		if (pp->msi_irq < 0) {
-			dev_err(dev, "failed to get msi irq\n");
+		if (pp->msi_irq < 0)
 			return pp->msi_irq;
-		}
 	}
 
 	pp->ops = &exynos_pcie_host_ops;
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 8f08ae53f53e..aba0a1514a86 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -868,10 +868,8 @@ static int imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		pp->msi_irq = platform_get_irq_byname(pdev, "msi");
-		if (pp->msi_irq < 0) {
-			dev_err(dev, "failed to get MSI irq\n");
+		if (pp->msi_irq < 0)
 			return pp->msi_irq;
-		}
 	}
 
 	pp->ops = &imx6_pcie_host_ops;
diff --git a/drivers/pci/controller/dwc/pci-keystone.c b/drivers/pci/controller/dwc/pci-keystone.c
index 790679fdfa48..99df9aeece1f 100644
--- a/drivers/pci/controller/dwc/pci-keystone.c
+++ b/drivers/pci/controller/dwc/pci-keystone.c
@@ -1250,10 +1250,8 @@ static int __init ks_pcie_probe(struct platform_device *pdev)
 	pci->version = version;
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(dev, "missing IRQ resource: %d\n", irq);
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = request_irq(irq, ks_pcie_err_irq_handler, IRQF_SHARED,
 			  "ks-pcie-error-irq", ks_pcie);
diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index ca59ba9e0ecd..4f183b96afbb 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -488,10 +488,8 @@ static int meson_add_pcie_port(struct meson_pcie *mp,
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		pp->msi_irq = platform_get_irq(pdev, 0);
-		if (pp->msi_irq < 0) {
-			dev_err(dev, "failed to get MSI IRQ\n");
+		if (pp->msi_irq < 0)
 			return pp->msi_irq;
-		}
 	}
 
 	pp->ops = &meson_pcie_host_ops;
diff --git a/drivers/pci/controller/dwc/pcie-armada8k.c b/drivers/pci/controller/dwc/pcie-armada8k.c
index 49596547e8c2..66ec21cd9487 100644
--- a/drivers/pci/controller/dwc/pcie-armada8k.c
+++ b/drivers/pci/controller/dwc/pcie-armada8k.c
@@ -248,10 +248,8 @@ static int armada8k_add_pcie_port(struct armada8k_pcie *pcie,
 	pp->ops = &armada8k_pcie_host_ops;
 
 	pp->irq = platform_get_irq(pdev, 0);
-	if (pp->irq < 0) {
-		dev_err(dev, "failed to get irq for port\n");
+	if (pp->irq < 0)
 		return pp->irq;
-	}
 
 	ret = devm_request_irq(dev, pp->irq, armada8k_pcie_irq_handler,
 			       IRQF_SHARED, "armada8k-pcie", pcie);
diff --git a/drivers/pci/controller/dwc/pcie-artpec6.c b/drivers/pci/controller/dwc/pcie-artpec6.c
index 28d5a1095200..d429bd2b2406 100644
--- a/drivers/pci/controller/dwc/pcie-artpec6.c
+++ b/drivers/pci/controller/dwc/pcie-artpec6.c
@@ -387,10 +387,8 @@ static int artpec6_add_pcie_port(struct artpec6_pcie *artpec6_pcie,
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		pp->msi_irq = platform_get_irq_byname(pdev, "msi");
-		if (pp->msi_irq < 0) {
-			dev_err(dev, "failed to get MSI irq\n");
+		if (pp->msi_irq < 0)
 			return pp->msi_irq;
-		}
 	}
 
 	pp->ops = &artpec6_pcie_host_ops;
diff --git a/drivers/pci/controller/dwc/pcie-histb.c b/drivers/pci/controller/dwc/pcie-histb.c
index 811b5c6d62ea..006437eadc31 100644
--- a/drivers/pci/controller/dwc/pcie-histb.c
+++ b/drivers/pci/controller/dwc/pcie-histb.c
@@ -402,10 +402,8 @@ static int histb_pcie_probe(struct platform_device *pdev)
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		pp->msi_irq = platform_get_irq_byname(pdev, "msi");
-		if (pp->msi_irq < 0) {
-			dev_err(dev, "Failed to get MSI IRQ\n");
+		if (pp->msi_irq < 0)
 			return pp->msi_irq;
-		}
 	}
 
 	hipcie->phy = devm_phy_get(dev, "phy");
diff --git a/drivers/pci/controller/dwc/pcie-kirin.c b/drivers/pci/controller/dwc/pcie-kirin.c
index c19617a912bd..2e0181ce6895 100644
--- a/drivers/pci/controller/dwc/pcie-kirin.c
+++ b/drivers/pci/controller/dwc/pcie-kirin.c
@@ -455,11 +455,8 @@ static int kirin_pcie_add_msi(struct dw_pcie *pci,
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
 		irq = platform_get_irq(pdev, 0);
-		if (irq < 0) {
-			dev_err(&pdev->dev,
-				"failed to get MSI IRQ (%d)\n", irq);
+		if (irq < 0)
 			return irq;
-		}
 
 		pci->pp.msi_irq = irq;
 	}
diff --git a/drivers/pci/controller/dwc/pcie-spear13xx.c b/drivers/pci/controller/dwc/pcie-spear13xx.c
index 7d0cdfd8138b..ad5d08d19926 100644
--- a/drivers/pci/controller/dwc/pcie-spear13xx.c
+++ b/drivers/pci/controller/dwc/pcie-spear13xx.c
@@ -198,10 +198,9 @@ static int spear13xx_add_pcie_port(struct spear13xx_pcie *spear13xx_pcie,
 	int ret;
 
 	pp->irq = platform_get_irq(pdev, 0);
-	if (pp->irq < 0) {
-		dev_err(dev, "failed to get irq\n");
+	if (pp->irq < 0)
 		return pp->irq;
-	}
+
 	ret = devm_request_irq(dev, pp->irq, spear13xx_pcie_irq_handler,
 			       IRQF_SHARED | IRQF_NO_THREAD,
 			       "spear1340-pcie", spear13xx_pcie);
diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 92b77f7d8354..70498689d0c0 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -2189,10 +2189,8 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
 	}
 
 	pp->irq = platform_get_irq_byname(pdev, "intr");
-	if (pp->irq < 0) {
-		dev_err(dev, "Failed to get \"intr\" interrupt\n");
+	if (pp->irq < 0)
 		return pp->irq;
-	}
 
 	pcie->bpmp = tegra_bpmp_get(dev);
 	if (IS_ERR(pcie->bpmp))
-- 
2.27.0
