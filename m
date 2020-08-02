From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Subject: [PATCH 02/10] PCI: mobiveil: Remove dev_err() when handing an error from platform_get_irq()
Date: Sun,  2 Aug 2020 14:25:54 +0000
Message-ID: <20200802142601.1635926-3-kw@linux.com>
References: <20200802142601.1635926-1-kw@linux.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
In-Reply-To: <20200802142601.1635926-1-kw@linux.com>
Sender: linux-samsung-soc-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Murali Karicheri <m-karicheri2@ti.com>, Yue Wang <yue.wang@Amlogic.com>, Kevin Hilman <khilman@baylibre.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jesper Nilsson <jesper.nilsson@axis.com>, Xiaowei Song <songxiaowei@hisilicon.com>, Binghui Wang <wangbinghui@hisilicon.com>, Pratyush Anand <pratyush.anand@gmail.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, Toan Le <toan@os.amperecomputing.com>, Ley Foon Tan <ley.foon.tan@intel.com>Shawn Lin <shawn>
List-Id: linux-rockchip.vger.kernel.org

There is no need to call the dev_err() function directly to print a
custom message when handling an error from either the platform_get_irq()
or platform_get_irq_byname() functions as both are going to display an
appropriate error message in case of a failure.

This change is as per suggestion from Coccinelle:

  drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c:174:2-9: line
  174 is redundant because platform_get_irq() already prints an error

  drivers/pci/controller/mobiveil/pcie-mobiveil-host.c:526:2-9: line 526
  is redundant because platform_get_irq() already prints an error

Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Krzysztof Wilczyński <kw@linux.com>
---
 drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c | 5 ++---
 drivers/pci/controller/mobiveil/pcie-mobiveil-host.c   | 4 +---
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
index a6d2190a6753..ee0156921ebc 100644
--- a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
+++ b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
@@ -170,10 +170,9 @@ static int ls_pcie_g4_interrupt_init(struct mobiveil_pcie *mv_pci)
 	int ret;
 
 	pcie->irq = platform_get_irq_byname(pdev, "intr");
-	if (pcie->irq < 0) {
-		dev_err(dev, "Can't get 'intr' IRQ, errno = %d\n", pcie->irq);
+	if (pcie->irq < 0)
 		return pcie->irq;
-	}
+
 	ret = devm_request_irq(dev, pcie->irq, ls_pcie_g4_isr,
 			       IRQF_SHARED, pdev->name, pcie);
 	if (ret) {
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index 5907baa9b1f2..fa321fcdd4bc 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -522,10 +522,8 @@ static int mobiveil_pcie_integrated_interrupt_init(struct mobiveil_pcie *pcie)
 	mobiveil_pcie_enable_msi(pcie);
 
 	rp->irq = platform_get_irq(pdev, 0);
-	if (rp->irq < 0) {
-		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
+	if (rp->irq < 0)
 		return rp->irq;
-	}
 
 	/* initialize the IRQ domains */
 	ret = mobiveil_pcie_init_irq_domain(pcie);
-- 
2.27.0
