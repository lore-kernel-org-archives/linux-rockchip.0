From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Date: Tue, 17 Mar 2020 06:59:26 +0000
Message-ID: <TYAPR01MB4544CBB9CD07CAF55D7D3845D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: ja-JP
Sender: linux-pci-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrew Murray <andrew.murray@arm.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM

Since your email account is different with the Singed-off-by,
I think you should add your From: tag here like your v2 patch series.

> This commit renames pcie-rcar.c to pcie-rcar-host.c in preparation for
> adding support for endpoint mode. CONFIG_PCIE_RCAR is also renamed to
> CONFIG_PCIE_RCAR_HOST to match the driver name accordingly.
>=20
> In addition to this defconfig file has also been updated to match the new
> config option.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/arm64/configs/defconfig                             | 2 +-
>  drivers/pci/controller/Kconfig                           | 7 ++++---
>  drivers/pci/controller/Makefile                          | 2 +-
>  drivers/pci/controller/{pcie-rcar.c =3D> pcie-rcar-host.c} | 0
>  4 files changed, 6 insertions(+), 5 deletions(-)
>  rename drivers/pci/controller/{pcie-rcar.c =3D> pcie-rcar-host.c} (100%)
>=20
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0f21288..7a34fce 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -185,7 +185,7 @@ CONFIG_HOTPLUG_PCI=3Dy
>  CONFIG_HOTPLUG_PCI_ACPI=3Dy
>  CONFIG_PCI_AARDVARK=3Dy
>  CONFIG_PCI_TEGRA=3Dy
> -CONFIG_PCIE_RCAR=3Dy
> +CONFIG_PCIE_RCAR_HOST=3Dy

I think you should separate this change.
To avoid this, I have an idea in the Kconfig like below:
 - adding PCIE_RCAR_HOST.
 - keeping PCIE_RCAR and select PCIE_RCAR_HOST here.
 - adding a description in the help of PCIE_RCAR like "This will be removed=
 after defconfig is updated" is better.

The following is a sample. What do you think?
---
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -58,8 +58,18 @@ config PCIE_RCAR
 	bool "Renesas R-Car PCIe controller"
 	depends on ARCH_RENESAS || COMPILE_TEST
 	depends on PCI_MSI_IRQ_DOMAIN
+	select PCIE_RCAR_HOST
 	help
 	  Say Y here if you want PCIe controller support on R-Car SoCs.
+	  This will be removed after defconfig is updated.
+
+config PCIE_RCAR_HOST
+	bool "Renesas R-Car PCIe host controller"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on PCI_MSI_IRQ_DOMAIN
+	help
+	  Say Y here if you want PCIe controller support on R-Car SoCs in host
+	  mode.
=20
 config PCI_HOST_COMMON
 	bool
---

Best regards,
Yoshihiro Shimoda

>  CONFIG_PCI_HOST_GENERIC=3Dy
>  CONFIG_PCI_XGENE=3Dy
>  CONFIG_PCIE_ALTERA=3Dy
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kcon=
fig
> index f84e5ff..37e0ea7 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -54,12 +54,13 @@ config PCI_RCAR_GEN2
>  	  There are 3 internal PCI controllers available with a single
>  	  built-in EHCI/OHCI host controller present on each one.
>=20
> -config PCIE_RCAR
> -	bool "Renesas R-Car PCIe controller"
> +config PCIE_RCAR_HOST
> +	bool "Renesas R-Car PCIe host controller"
>  	depends on ARCH_RENESAS || COMPILE_TEST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	help
> -	  Say Y here if you want PCIe controller support on R-Car SoCs.
> +	  Say Y here if you want PCIe controller support on R-Car SoCs in host
> +	  mode.
>=20
>  config PCI_HOST_COMMON
>  	bool
> diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Mak=
efile
> index 01b2502..4ca2da6 100644
> --- a/drivers/pci/controller/Makefile
> +++ b/drivers/pci/controller/Makefile
> @@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) +=3D pci-mvebu.o
>  obj-$(CONFIG_PCI_AARDVARK) +=3D pci-aardvark.o
>  obj-$(CONFIG_PCI_TEGRA) +=3D pci-tegra.o
>  obj-$(CONFIG_PCI_RCAR_GEN2) +=3D pci-rcar-gen2.o
> -obj-$(CONFIG_PCIE_RCAR) +=3D pcie-rcar.o
> +obj-$(CONFIG_PCIE_RCAR_HOST) +=3D pcie-rcar-host.o
>  obj-$(CONFIG_PCI_HOST_COMMON) +=3D pci-host-common.o
>  obj-$(CONFIG_PCI_HOST_GENERIC) +=3D pci-host-generic.o
>  obj-$(CONFIG_PCIE_XILINX) +=3D pcie-xilinx.o
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/=
pcie-rcar-host.c
> similarity index 100%
> rename from drivers/pci/controller/pcie-rcar.c
> rename to drivers/pci/controller/pcie-rcar-host.c
> --
> 2.7.4
