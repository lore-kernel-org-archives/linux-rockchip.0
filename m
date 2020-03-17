From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Date: Tue, 17 Mar 2020 08:26:53 +0000
Message-ID: <OSBPR01MB359098590FC973A243BBCE2CAAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544CBB9CD07CAF55D7D3845D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <TYAPR01MB4544CBB9CD07CAF55D7D3845D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Mark Rutland <mark.rutland@arm.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Will Deacon <will@kernel.org>, linux-a
List-Id: linux-rockchip.vger.kernel.org

Hi Yoshihiro-San,

Thank you for the review.

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 17 March 2020 06:59
> To: Lad Prabhakar <prabhakar.csengg@gmail.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org;
> linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Bjorn Helgaas <bhelgaas@google.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Catalin Marinas <catalin.marinas@arm.com>; Will Deacon <will@kernel.org>;
> Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>; Greg
> Kroah-Hartman <gregkh@linuxfoundation.org>; Jingoo Han
> <jingoohan1@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Marek Vasut
> <marek.vasut+renesas@gmail.com>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko@sntech.de>; Prabhakar Mahadev Lad
> <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Subject: RE: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
>
> Since your email account is different with the Singed-off-by, I think you
> should add your From: tag here like your v2 patch series.
>
> > This commit renames pcie-rcar.c to pcie-rcar-host.c in preparation for
> > adding support for endpoint mode. CONFIG_PCIE_RCAR is also renamed to
> > CONFIG_PCIE_RCAR_HOST to match the driver name accordingly.
> >
> > In addition to this defconfig file has also been updated to match the
> > new config option.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  arch/arm64/configs/defconfig                             | 2 +-
> >  drivers/pci/controller/Kconfig                           | 7 ++++---
> >  drivers/pci/controller/Makefile                          | 2 +-
> >  drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} | 0
> >  4 files changed, 6 insertions(+), 5 deletions(-)  rename
> > drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} (100%)
> >
> > diff --git a/arch/arm64/configs/defconfig
> > b/arch/arm64/configs/defconfig index 0f21288..7a34fce 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -185,7 +185,7 @@ CONFIG_HOTPLUG_PCI=y
> CONFIG_HOTPLUG_PCI_ACPI=y
> > CONFIG_PCI_AARDVARK=y  CONFIG_PCI_TEGRA=y -
> CONFIG_PCIE_RCAR=y
> > +CONFIG_PCIE_RCAR_HOST=y
>
> I think you should separate this change.
> To avoid this, I have an idea in the Kconfig like below:
>  - adding PCIE_RCAR_HOST.
>  - keeping PCIE_RCAR and select PCIE_RCAR_HOST here.
>  - adding a description in the help of PCIE_RCAR like "This will be removed
> after defconfig is updated" is better.
>
> The following is a sample. What do you think?
Sound like a plan will do that, I will just append the description "This will be removed
after defconfig is updated" to PCIE_RCAR config option.

Cheers,
--Prabhakar

> ---
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -58,8 +58,18 @@ config PCIE_RCAR
>  bool "Renesas R-Car PCIe controller"
>  depends on ARCH_RENESAS || COMPILE_TEST
>  depends on PCI_MSI_IRQ_DOMAIN
> +select PCIE_RCAR_HOST
>  help
>    Say Y here if you want PCIe controller support on R-Car SoCs.
> +  This will be removed after defconfig is updated.
> +
> +config PCIE_RCAR_HOST
> +bool "Renesas R-Car PCIe host controller"
> +depends on ARCH_RENESAS || COMPILE_TEST
> +depends on PCI_MSI_IRQ_DOMAIN
> +help
> +  Say Y here if you want PCIe controller support on R-Car SoCs in host
> +  mode.
>
>  config PCI_HOST_COMMON
>  bool
> ---
>
> Best regards,
> Yoshihiro Shimoda
>
> >  CONFIG_PCI_HOST_GENERIC=y
> >  CONFIG_PCI_XGENE=y
> >  CONFIG_PCIE_ALTERA=y
> > diff --git a/drivers/pci/controller/Kconfig
> > b/drivers/pci/controller/Kconfig index f84e5ff..37e0ea7 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -54,12 +54,13 @@ config PCI_RCAR_GEN2
> >    There are 3 internal PCI controllers available with a single
> >    built-in EHCI/OHCI host controller present on each one.
> >
> > -config PCIE_RCAR
> > -bool "Renesas R-Car PCIe controller"
> > +config PCIE_RCAR_HOST
> > +bool "Renesas R-Car PCIe host controller"
> >  depends on ARCH_RENESAS || COMPILE_TEST
> >  depends on PCI_MSI_IRQ_DOMAIN
> >  help
> > -  Say Y here if you want PCIe controller support on R-Car SoCs.
> > +  Say Y here if you want PCIe controller support on R-Car SoCs in host
> > +  mode.
> >
> >  config PCI_HOST_COMMON
> >  bool
> > diff --git a/drivers/pci/controller/Makefile
> > b/drivers/pci/controller/Makefile index 01b2502..4ca2da6 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
> >  obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
> >  obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
> >  obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
> > -obj-$(CONFIG_PCIE_RCAR) += pcie-rcar.o
> > +obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
> >  obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
> >  obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
> >  obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o diff --git
> > a/drivers/pci/controller/pcie-rcar.c
> > b/drivers/pci/controller/pcie-rcar-host.c
> > similarity index 100%
> > rename from drivers/pci/controller/pcie-rcar.c
> > rename to drivers/pci/controller/pcie-rcar-host.c
> > --
> > 2.7.4



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647
