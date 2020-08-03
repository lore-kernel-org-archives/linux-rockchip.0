From: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 00/10] Remove surplus dev_err() when handing an error
 from platform_get_irq()
Date: Sun, 2 Aug 2020 21:01:51 -0500
Message-ID: <20200803020151.GA291575@bjorn-Precision-5520>
References: <20200802142601.1635926-1-kw@linux.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200802142601.1635926-1-kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Sender: linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Cc: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kukjin Kim <kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Krzysztof Kozlowski <krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Richard Zhu <hongxing.zhu-3arQi8VN3Tc@public.gmane.org>, Lucas Stach <l.stach-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Shawn Guo <shawnguo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Sascha Hauer <s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Murali Karicheri <m-karicheri2-l0cyMroinI0@public.gmane.org>, Yue Wang <yue.wang-jh/zon5tOX5BDgjK7y7TUQ@public.gmane.org>, Kevin Hilman <khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jesper Nilsson <jesper.nilsson-VrBV9hrLPhE@public.gmane.org>, Xiaowei Song <songxiaowei-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Binghui Wang <wangbinghui-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Pratyush Anand <pratyush.anand-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Toan Le <toan-shex6MNQR2J/SfDzf78azzKzEDxYleXD@public.gmane.org>, Ley
List-Id: linux-rockchip.vger.kernel.org

On Sun, Aug 02, 2020 at 02:25:52PM +0000, Krzysztof Wilczyński wrote:
> At the moment a lot of error handling code would print a duplicated
> error message should either the platform_get_irq() or
> platform_get_irq_byname() function fails to obtain an IRQ for a device.
> 
> There is no need to call the dev_err() function directly to print
> a custom message when handling an error from either of these functions
> as both are going to display an appropriate error message in case of
> a failure.
> 
> This series aims to remove surplus call to dev_err() when handing an
> error originating from either platform_get_irq() or
> platform_get_irq_byname() function as per suggestion from Coccinelle.
> 
> Related commits are commit 7723f4c5ecdb ("driver core: platform: Add an
> error message to platform_get_irq*()") and commit 98051ba2b28b
> ("coccinelle: Add script to check for platform_get_irq() excessive
> prints").
> 
> Krzysztof Wilczyński (10):
>   PCI: dwc: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: mobiveil: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: tegra: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: altera: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: host-generic: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: v3-semi: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: altera-msi: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: xgene-msi: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: rockchip: Remove dev_err() when handing an error from
>     platform_get_irq()
>   PCI: xilinx-nwl: Remove dev_err() when handing an error from
>     platform_get_irq()
> 
>  drivers/pci/controller/dwc/pci-dra7xx.c              |  8 ++------
>  drivers/pci/controller/dwc/pci-exynos.c              |  9 +++------
>  drivers/pci/controller/dwc/pci-imx6.c                |  4 +---
>  drivers/pci/controller/dwc/pci-keystone.c            |  4 +---
>  drivers/pci/controller/dwc/pci-meson.c               |  4 +---
>  drivers/pci/controller/dwc/pcie-armada8k.c           |  4 +---
>  drivers/pci/controller/dwc/pcie-artpec6.c            |  4 +---
>  drivers/pci/controller/dwc/pcie-histb.c              |  4 +---
>  drivers/pci/controller/dwc/pcie-kirin.c              |  5 +----
>  drivers/pci/controller/dwc/pcie-spear13xx.c          |  5 ++---
>  drivers/pci/controller/dwc/pcie-tegra194.c           |  4 +---
>  .../pci/controller/mobiveil/pcie-layerscape-gen4.c   |  5 ++---
>  drivers/pci/controller/mobiveil/pcie-mobiveil-host.c |  4 +---
>  drivers/pci/controller/pci-tegra.c                   |  8 ++------
>  drivers/pci/controller/pci-v3-semi.c                 |  5 ++---
>  drivers/pci/controller/pci-xgene-msi.c               |  2 --
>  drivers/pci/controller/pcie-altera-msi.c             |  1 -
>  drivers/pci/controller/pcie-altera.c                 |  4 +---
>  drivers/pci/controller/pcie-rockchip-host.c          | 12 +++---------
>  drivers/pci/controller/pcie-tango.c                  |  4 +---
>  drivers/pci/controller/pcie-xilinx-nwl.c             | 11 ++---------
>  21 files changed, 29 insertions(+), 82 deletions(-)

I squashed these together and applied them to pci/irq-error for v5.9,
thanks!

The cover letter claims there should be 10 patches, but I only got 9.
Just FYI.
