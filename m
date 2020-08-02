From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 03/10] PCI: tegra: Remove dev_err() when handing an error from platform_get_irq()
Date: Sun,  2 Aug 2020 14:25:55 +0000
Message-ID: <20200802142601.1635926-4-kw@linux.com>
References: <20200802142601.1635926-1-kw@linux.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200802142601.1635926-1-kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Sender: linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kukjin Kim <kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Krzysztof Kozlowski <krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Richard Zhu <hongxing.zhu-3arQi8VN3Tc@public.gmane.org>, Lucas Stach <l.stach-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Shawn Guo <shawnguo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Sascha Hauer <s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Murali Karicheri <m-karicheri2-l0cyMroinI0@public.gmane.org>, Yue Wang <yue.wang-jh/zon5tOX5BDgjK7y7TUQ@public.gmane.org>, Kevin Hilman <khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jesper Nilsson <jesper.nilsson-VrBV9hrLPhE@public.gmane.org>, Xiaowei Song <songxiaowei-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Binghui Wang <wangbinghui-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Pratyush Anand <pratyush.anand-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Toan Le <toan-shex6MNQR2J/SfDzf78azzKzEDxYleXD@public.gmane.org>, Ley Foon Tan <ley.foon.tan-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>Shawn Lin <shawn>
List-Id: linux-rockchip.vger.kernel.org

There is no need to call the dev_err() function directly to print a
custom message when handling an error from either the platform_get_irq()
or platform_get_irq_byname() functions as both are going to display an
appropriate error message in case of a failure.

This change is as per suggestion from Coccinelle:

  drivers/pci/controller/pci-tegra.c:1524:2-9: line 1524 is redundant
  because platform_get_irq() already prints an error

  drivers/pci/controller/pci-tegra.c:1742:2-9: line 1742 is redundant
  because platform_get_irq() already prints an error

Suggested-by: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Krzysztof Wilczyński <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
---
 drivers/pci/controller/pci-tegra.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 235b456698fc..b11397475a4d 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -1520,10 +1520,8 @@ static int tegra_pcie_get_resources(struct tegra_pcie *pcie)
 
 	/* request interrupt */
 	err = platform_get_irq_byname(pdev, "intr");
-	if (err < 0) {
-		dev_err(dev, "failed to get IRQ: %d\n", err);
+	if (err < 0)
 		goto phys_put;
-	}
 
 	pcie->irq = err;
 
@@ -1738,10 +1736,8 @@ static int tegra_pcie_msi_setup(struct tegra_pcie *pcie)
 	}
 
 	err = platform_get_irq_byname(pdev, "msi");
-	if (err < 0) {
-		dev_err(dev, "failed to get IRQ: %d\n", err);
+	if (err < 0)
 		goto free_irq_domain;
-	}
 
 	msi->irq = err;
 
-- 
2.27.0
