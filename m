From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 09/10] PCI: rockchip: Remove dev_err() when handing an error from platform_get_irq()
Date: Sun,  2 Aug 2020 14:26:01 +0000
Message-ID: <20200802142601.1635926-10-kw@linux.com>
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

  drivers/pci/controller/pcie-rockchip-host.c:553:2-9: line 553 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/pcie-rockchip-host.c:566:2-9: line 566 is
  redundant because platform_get_irq() already prints an error

  drivers/pci/controller/pcie-rockchip-host.c:576:2-9: line 576 is
  redundant because platform_get_irq() already prints an error

Suggested-by: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Krzysztof Wilczyński <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 94af6f5828a3..eebe05ab354f 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -549,10 +549,8 @@ static int rockchip_pcie_setup_irq(struct rockchip_pcie *rockchip)
 	struct platform_device *pdev = to_platform_device(dev);
 
 	irq = platform_get_irq_byname(pdev, "sys");
-	if (irq < 0) {
-		dev_err(dev, "missing sys IRQ resource\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	err = devm_request_irq(dev, irq, rockchip_pcie_subsys_irq_handler,
 			       IRQF_SHARED, "pcie-sys", rockchip);
@@ -562,20 +560,16 @@ static int rockchip_pcie_setup_irq(struct rockchip_pcie *rockchip)
 	}
 
 	irq = platform_get_irq_byname(pdev, "legacy");
-	if (irq < 0) {
-		dev_err(dev, "missing legacy IRQ resource\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	irq_set_chained_handler_and_data(irq,
 					 rockchip_pcie_legacy_int_handler,
 					 rockchip);
 
 	irq = platform_get_irq_byname(pdev, "client");
-	if (irq < 0) {
-		dev_err(dev, "missing client IRQ resource\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	err = devm_request_irq(dev, irq, rockchip_pcie_client_irq_handler,
 			       IRQF_SHARED, "pcie-client", rockchip);
-- 
2.27.0
