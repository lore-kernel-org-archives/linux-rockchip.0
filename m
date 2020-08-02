From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Subject: [PATCH 04/10] PCI: altera: Remove dev_err() when handing an error from platform_get_irq()
Date: Sun,  2 Aug 2020 14:25:56 +0000
Message-ID: <20200802142601.1635926-5-kw@linux.com>
References: <20200802142601.1635926-1-kw@linux.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-omap-owner@vger.kernel.org>
In-Reply-To: <20200802142601.1635926-1-kw@linux.com>
Sender: linux-omap-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Murali Karicheri <m-karicheri2@ti.com>, Yue Wang <yue.wang@Amlogic.com>, Kevin Hilman <khilman@baylibre.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jesper Nilsson <jesper.nilsson@axis.com>, Xiaowei Song <songxiaowei@hisilicon.com>, Binghui Wang <wangbinghui@hisilicon.com>, Pratyush Anand <pratyush.anand@gmail.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, Toan Le <toan@os.amperecomputing.com>, Ley Foon Tan <ley.foon.tan@intel.com>Shawn Lin <shawn>
List-Id: linux-rockchip.vger.kernel.org

There is no need to call the dev_err() function directly to print a
custom message when handling an error from either the platform_get_irq()
or platform_get_irq_byname() functions as both are going to display an
appropriate error message in case of a failure.

This change is as per suggestion from Coccinelle:

  drivers/pci/controller/pcie-altera.c:717:2-9: line 717 is redundant
  because platform_get_irq() already prints an error

Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Krzysztof Wilczyński <kw@linux.com>
---
 drivers/pci/controller/pcie-altera.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index 24cb1c331058..f6d73d282230 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -713,10 +713,8 @@ static int altera_pcie_parse_dt(struct altera_pcie *pcie)
 
 	/* setup IRQ */
 	pcie->irq = platform_get_irq(pdev, 0);
-	if (pcie->irq < 0) {
-		dev_err(dev, "failed to get IRQ: %d\n", pcie->irq);
+	if (pcie->irq < 0)
 		return pcie->irq;
-	}
 
 	irq_set_chained_handler_and_data(pcie->irq, altera_pcie_isr, pcie);
 	return 0;
-- 
2.27.0
