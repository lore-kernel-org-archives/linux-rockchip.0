From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Subject: [PATCH 07/10] PCI: altera-msi: Remove dev_err() when handing an error from platform_get_irq()
Date: Sun,  2 Aug 2020 14:25:59 +0000
Message-ID: <20200802142601.1635926-8-kw@linux.com>
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

  drivers/pci/controller/pcie-altera-msi.c:259:2-9: line 259 is
  redundant because platform_get_irq() already prints an error

Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Krzysztof Wilczyński <kw@linux.com>
---
 drivers/pci/controller/pcie-altera-msi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-altera-msi.c b/drivers/pci/controller/pcie-altera-msi.c
index 16d938920ca5..bec666eda1eb 100644
--- a/drivers/pci/controller/pcie-altera-msi.c
+++ b/drivers/pci/controller/pcie-altera-msi.c
@@ -256,7 +256,6 @@ static int altera_msi_probe(struct platform_device *pdev)
 
 	msi->irq = platform_get_irq(pdev, 0);
 	if (msi->irq < 0) {
-		dev_err(&pdev->dev, "failed to map IRQ: %d\n", msi->irq);
 		ret = msi->irq;
 		goto err;
 	}
-- 
2.27.0
