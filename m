From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 00/10] Remove surplus dev_err() when handing an error
 from platform_get_irq()
Date: Mon, 3 Aug 2020 09:55:08 -0500
Message-ID: <20200803145508.GA332368@bjorn-Precision-5520>
References: <20200803020151.GA291575@bjorn-Precision-5520>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200803020151.GA291575@bjorn-Precision-5520>
Sender: linux-samsung-soc-owner@vger.kernel.org
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Murali Karicheri <m-karicheri2@ti.com>, Yue Wang <yue.wang@Amlogic.com>, Kevin Hilman <khilman@baylibre.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jesper Nilsson <jesper.nilsson@axis.com>, Xiaowei Song <songxiaowei@hisilicon.com>, Binghui Wang <wangbinghui@hisilicon.com>, Pratyush Anand <pratyush.anand@gmail.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, Toan Le <toan@os.amperecomputing.com>, Ley
List-Id: linux-rockchip.vger.kernel.org

On Sun, Aug 02, 2020 at 09:01:51PM -0500, Bjorn Helgaas wrote:
> On Sun, Aug 02, 2020 at 02:25:52PM +0000, Krzysztof Wilczyński wrote:
> > At the moment a lot of error handling code would print a duplicated
> > error message should either the platform_get_irq() or
> > platform_get_irq_byname() function fails to obtain an IRQ for a device.
> > 
> > There is no need to call the dev_err() function directly to print
> > a custom message when handling an error from either of these functions
> > as both are going to display an appropriate error message in case of
> > a failure.
> > 
> > This series aims to remove surplus call to dev_err() when handing an
> > error originating from either platform_get_irq() or
> > platform_get_irq_byname() function as per suggestion from Coccinelle.
> > 
> > Related commits are commit 7723f4c5ecdb ("driver core: platform: Add an
> > error message to platform_get_irq*()") and commit 98051ba2b28b
> > ("coccinelle: Add script to check for platform_get_irq() excessive
> > prints").
> > 
> > Krzysztof Wilczyński (10):
> >   PCI: dwc: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: mobiveil: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: tegra: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: altera: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: host-generic: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: v3-semi: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: altera-msi: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: xgene-msi: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: rockchip: Remove dev_err() when handing an error from
> >     platform_get_irq()
> >   PCI: xilinx-nwl: Remove dev_err() when handing an error from
> >     platform_get_irq()
> > 
> >  drivers/pci/controller/dwc/pci-dra7xx.c              |  8 ++------
> >  drivers/pci/controller/dwc/pci-exynos.c              |  9 +++------
> >  drivers/pci/controller/dwc/pci-imx6.c                |  4 +---
> >  drivers/pci/controller/dwc/pci-keystone.c            |  4 +---
> >  drivers/pci/controller/dwc/pci-meson.c               |  4 +---
> >  drivers/pci/controller/dwc/pcie-armada8k.c           |  4 +---
> >  drivers/pci/controller/dwc/pcie-artpec6.c            |  4 +---
> >  drivers/pci/controller/dwc/pcie-histb.c              |  4 +---
> >  drivers/pci/controller/dwc/pcie-kirin.c              |  5 +----
> >  drivers/pci/controller/dwc/pcie-spear13xx.c          |  5 ++---
> >  drivers/pci/controller/dwc/pcie-tegra194.c           |  4 +---
> >  .../pci/controller/mobiveil/pcie-layerscape-gen4.c   |  5 ++---
> >  drivers/pci/controller/mobiveil/pcie-mobiveil-host.c |  4 +---
> >  drivers/pci/controller/pci-tegra.c                   |  8 ++------
> >  drivers/pci/controller/pci-v3-semi.c                 |  5 ++---
> >  drivers/pci/controller/pci-xgene-msi.c               |  2 --
> >  drivers/pci/controller/pcie-altera-msi.c             |  1 -
> >  drivers/pci/controller/pcie-altera.c                 |  4 +---
> >  drivers/pci/controller/pcie-rockchip-host.c          | 12 +++---------
> >  drivers/pci/controller/pcie-tango.c                  |  4 +---
> >  drivers/pci/controller/pcie-xilinx-nwl.c             | 11 ++---------
> >  21 files changed, 29 insertions(+), 82 deletions(-)
> 
> I squashed these together and applied them to pci/irq-error for v5.9,
> thanks!
> 
> The cover letter claims there should be 10 patches, but I only got 9.
> Just FYI.

I picked up and applied 10/10 as well.  And added Jesper & Ley Foon's
reviewed-by and acked-by.  Thanks!
