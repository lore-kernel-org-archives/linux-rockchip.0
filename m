From: Jesper Nilsson <Jesper.Nilsson-VrBV9hrLPhE@public.gmane.org>
Subject: Re: [PATCH 01/10] PCI: dwc: Remove dev_err() when handing an error
 from platform_get_irq()
Date: Mon, 3 Aug 2020 09:16:42 +0200
Message-ID: <20200803071642.7qgua4qnwrre4s3v@axis.com>
References: <20200802142601.1635926-1-kw@linux.com>
 <20200802142601.1635926-2-kw@linux.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200802142601.1635926-2-kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Sender: linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Cc: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kukjin Kim <kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Krzysztof Kozlowski <krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Richard Zhu <hongxing.zhu-3arQi8VN3Tc@public.gmane.org>, Lucas Stach <l.stach-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Shawn Guo <shawnguo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Sascha Hauer <s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Murali Karicheri <m-karicheri2-l0cyMroinI0@public.gmane.org>, Yue Wang <yue.wang-jh/zon5tOX5BDgjK7y7TUQ@public.gmane.org>, Kevin Hilman <khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jesper Nilsson <Jesper.Nilsson-VrBV9hrLPhE@public.gmane.org>, Xiaowei Song <songxiaowei-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Binghui Wang <wangbinghui-C8/M+/jPZTeaMJb+Lgu22Q@public.gmane.org>, Pratyush Anand <pratyush.anand-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Toan Le <toan-shex6MNQR2J/SfDzf78azzKzEDxYleXD@public.gmane.org>, Ley
List-Id: linux-rockchip.vger.kernel.org

On Sun, Aug 02, 2020 at 04:25:53PM +0200, Krzysztof Wilczyński wrote:
> There is no need to call the dev_err() function directly to print a
> custom message when handling an error from either the platform_get_irq()
> or platform_get_irq_byname() functions as both are going to display an
> appropriate error message in case of a failure.
> 
> This change is as per suggestion from Coccinelle:
> 
>   drivers/pci/controller/dwc/pcie-armada8k.c:252:2-9: line 252 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pcie-kirin.c:459:3-10: line 459 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-imx6.c:872:3-10: line 872 is redundant
>   because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pcie-artpec6.c:391:3-10: line 391 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pcie-spear13xx.c:202:2-9: line 202 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-keystone.c:1254:2-9: line 1254 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-exynos.c:406:2-9: line 406 is redundant
>   because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-exynos.c:419:3-10: line 419 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pcie-tegra194.c:2193:2-9: line 2193 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pcie-histb.c:406:3-10: line 406 is
>   redundant because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-meson.c:492:3-10: line 492 is redundant
>   because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-dra7xx.c:633:2-9: line 633 is redundant
>   because platform_get_irq() already prints an error
> 
>   drivers/pci/controller/dwc/pci-dra7xx.c:875:2-9: line 875 is redundant
>   because platform_get_irq() already prints an error
> 
> Suggested-by: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> Signed-off-by: Krzysztof Wilczyński <kw-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>

Looks good,

Acked-by: Jesper Nilsson <jesper.nilsson-VrBV9hrLPhE@public.gmane.org>

/^JN - Jesper Nilsson
-- 
               Jesper Nilsson -- jesper.nilsson-VrBV9hrLPhE@public.gmane.org
