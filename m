From: Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Date: Thu, 16 Jan 2020 21:36:00 +0000
Message-ID: <SL2P216MB0105652DE83E7CBBDA2A370CAA360@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1578986701-72072-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, "linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Han Jingoo <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 1/14/20, 2:25 AM, Shawn Lin wrote:
>=20
> From: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> Signed-off-by: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>
>  drivers/pci/controller/dwc/Kconfig            |   9 +
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 441 ++++++++++++++++++++=
++++++
>  3 files changed, 451 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
>
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/=
dwc/Kconfig
> index 0830dfc..9160264 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -82,6 +82,15 @@ config PCIE_DW_PLAT_EP
>  	  order to enable device-specific features PCI_DW_PLAT_EP must be
>  	  selected.
> =20
> +config PCIE_DW_ROCKCHIP
> +	bool "Rockchip DesignWare PCIe controller"
> +	select PCIE_DW
> +	select PCIE_DW_HOST
> +	depends on ARCH_ROCKCHIP
> +	depends on OF
> +	help
> +	  Enables support for the DW PCIe controller in the Rockchip SoC.
> +

The order is PCIE_DW, PCI_*, and PCIE_* as below.

1. Common Frameworks:
    These options are used by other controller drivers.
    e.g., PCIE_DW, PCIE_DW_HOST, PCIE_DW_EP.

2. PCI_* controller drivers:
    PCI_* was used earlier than PCIE_*. If a chip vendor's controllers prov=
ide
    both conventional PCI and PCI Express, or only conventional PCI, PCI_* =
can
    be used.

3. PCIE_* controller drivers
    If a controller can support only PCI Express, not conventional PCI,
    PCIE_* is the proper naming.

Then, within PCI_* or PCIE_* categories, each controller option should be
in an alphabetical order for the readability.

So, add 'PCIE_DW_ROCKCHIP' between 'PCIE_ARTPEC6_EP' and 'PCIE_KIRIN'.

>
>  config PCI_EXYNOS
>  	bool "Samsung Exynos PCIe controller"
>  	depends on SOC_EXYNOS5440 || COMPILE_TEST
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller=
/dwc/Makefile
> index 8a637cf..cb4857f 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_PCIE_HISI_STB) +=3D pcie-histb.o
>  obj-$(CONFIG_PCI_MESON) +=3D pci-meson.o
>  obj-$(CONFIG_PCIE_TEGRA194) +=3D pcie-tegra194.o
>  obj-$(CONFIG_PCIE_UNIPHIER) +=3D pcie-uniphier.o
> +obj-$(CONFIG_PCIE_DW_ROCKCHIP) +=3D pcie-dw-rockchip.o

Ditto.

[...]

Best regards,
Jingoo Han
