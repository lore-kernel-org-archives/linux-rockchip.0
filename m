From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
Date: Tue, 17 Mar 2020 10:14:39 +0000
Message-ID: <OSBPR01MB3590B241F5BBC991DE6ABED2AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544EAC877ADD0664CB93FF5D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <TYAPR01MB4544EAC877ADD0664CB93FF5D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Content-Language: en-US
Sender: linux-pci-owner@vger.kernel.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrew Murray <andrew.murray@arm.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg
List-Id: linux-rockchip.vger.kernel.org

Hi Yoshihiro-san,

Thank you for the review,

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 17 March 2020 09:59
> To: Lad Prabhakar <prabhakar.csengg@gmail.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org;
> linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Prabhakar Mahadev Lad <prabhakar.mahadev-
> lad.rj@bp.renesas.com>; Bjorn Helgaas <bhelgaas@google.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Catalin Marinas <catalin.marinas@arm.com>; Will Deacon <will@kernel.org>;
> Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>; Greg
> Kroah-Hartman <gregkh@linuxfoundation.org>; Jingoo Han
> <jingoohan1@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Marek Vasut
> <marek.vasut+renesas@gmail.com>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko@sntech.de>
> Subject: RE: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controll=
er in
> endpoint mode
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> >
> > This patch adds support for rcar PCIe controller to work in endpoint mo=
de.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/Kconfig        |   8 +
> >  drivers/pci/controller/Makefile       |   1 +
> >  drivers/pci/controller/pcie-rcar-ep.c | 490
> ++++++++++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.h    |   4 +
> >  4 files changed, 503 insertions(+)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> >
> > diff --git a/drivers/pci/controller/Kconfig
> > b/drivers/pci/controller/Kconfig index 37e0ea7..9bf4b02 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -62,6 +62,14 @@ config PCIE_RCAR_HOST
> >    Say Y here if you want PCIe controller support on R-Car SoCs in host
> >    mode.
> >
> > +config PCIE_RCAR_EP
> > +bool "Renesas R-Car PCIe endpoint controller"
> > +depends on ARCH_RENESAS || COMPILE_TEST
> > +depends on PCI_ENDPOINT
> > +help
> > +  Say Y here if you want PCIe controller support on R-Car SoCs in
> > +  endpoint mode.
> > +
> >  config PCI_HOST_COMMON
> >  bool
> >  select PCI_ECAM
> > diff --git a/drivers/pci/controller/Makefile
> > b/drivers/pci/controller/Makefile index b4ada32..067bd33 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -8,6 +8,7 @@ obj-$(CONFIG_PCI_AARDVARK) +=3D pci-aardvark.o
> >  obj-$(CONFIG_PCI_TEGRA) +=3D pci-tegra.o
> >  obj-$(CONFIG_PCI_RCAR_GEN2) +=3D pci-rcar-gen2.o
> >  obj-$(CONFIG_PCIE_RCAR_HOST) +=3D pcie-rcar.o pcie-rcar-host.o
> > +obj-$(CONFIG_PCIE_RCAR_EP) +=3D pcie-rcar.o pcie-rcar-ep.o
> >  obj-$(CONFIG_PCI_HOST_COMMON) +=3D pci-host-common.o
> >  obj-$(CONFIG_PCI_HOST_GENERIC) +=3D pci-host-generic.o
> >  obj-$(CONFIG_PCIE_XILINX) +=3D pcie-xilinx.o diff --git
> > a/drivers/pci/controller/pcie-rcar-ep.c
> > b/drivers/pci/controller/pcie-rcar-ep.c
> > new file mode 100644
> > index 0000000..db89bbe
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-rcar-ep.c
> > @@ -0,0 +1,490 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * PCIe endpoint driver for Renesas R-Car SoCs
> > + *  Copyright (c) 2020 Renesas Electronics Europe GmbH
> > + *
> > + * Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/of_pci.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/pci.h>
> > +#include <linux/pci-epc.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +
> > +#include "pcie-rcar.h"
> > +
> > +/* Structure representing the PCIe interface */ struct rcar_pcie {
> > +phys_addr_t*ob_addr;
>
> I think "ob_mapped_addr" is better.
>
OK will rename that.

> > +struct pci_epc_mem_window *ob_window;
>
> I think we can get these windows from "array of address space of the
> endpoint controller" in struct pci_epc. If so, we can remove this member.
>
I shall see if this can be dropped.

> > +struct pci_epc*epc;
>
> This member can be removed like pcie-cadence-ep.c because this is not use=
d
> except saving the epc value from devm_pci_epc_create().
>
OK will drop it.

> <snip>
> > +static int rcar_pcie_ep_start(struct pci_epc *epc) {
> > +struct rcar_pcie *ep =3D epc_get_drvdata(epc);
> > +
> > +rcar_pci_write_reg(ep->base, CFINIT, PCIETCTLR);
>
> The following setting is needed before CFINIT like host.
>
> rcar_pci_write_reg(pcie->base, MACCTLR_INIT_VAL, MACCTLR);
>
I shall add this as part of rcar_pcie_ep_hw_init()

> > +
> > +return 0;
> > +}
> > +
> > +static void rcar_pcie_ep_stop(struct pci_epc *epc) {
> > +struct rcar_pcie *ep =3D epc_get_drvdata(epc);
> > +
> > +rcar_pci_write_reg(ep->base, 0, PCIETCTLR); }
> > +
> > +static const struct pci_epc_features rcar_pcie_epc_features =3D {
> > +.linkup_notifier =3D false,
> > +.msi_capable =3D false,
> > +.msix_capable =3D false,
> > +/* use 64-bit bars so mark bar1/3/5 as reserved */
> > +.reserved_bar =3D 1 << BAR_1 | 1 << BAR_3 | 1 << BAR_5,
> > +.bar_fixed_64bit =3D  (1 << BAR_0) | (1 << BAR_2) | (1 << BAR_4),
>
> These parentheses are not needed like .reserved_bar.
>
Agreed.

> <snip>
> > +err =3D pci_epc_mem_init(epc, pcie->ob_window, pcie-
> >num_ob_windows);
> > +if (err < 0) {
> > +dev_err(dev, "failed to initialize the epc memory space\n");
> > +goto err_pm_put;
> > +}
> > +
> > +rcar_pcie_ep_hw_init(pcie);
>
> I'm not sure, but I wonder if we should call this hw init before
> pci_epc_mem_init().
>
Ideally shouldn't matter because in pci_epc_mem_init(), we just tell the fr=
amework
our windows properties.  But shall move hw_init() before mem_init().

> <snip>
> > +builtin_platform_driver(rcar_pcie_ep_driver);
> > diff --git a/drivers/pci/controller/pcie-rcar.h
> > b/drivers/pci/controller/pcie-rcar.h
> > index b529d806..5564ca8 100644
> > --- a/drivers/pci/controller/pcie-rcar.h
> > +++ b/drivers/pci/controller/pcie-rcar.h
> > @@ -17,6 +17,7 @@
> >  #define PCIECDR0x000020
> >  #define PCIEMSR0x000028
> >  #define PCIEINTXR0x000400
> > +#define  ASTINTX_SHIFTBIT(16)
>
> Just "ASTINTX" is better.
>
Shall replace it.

> >  #define PCIEPHYSR0x0007f0
> >  #define  PHYRDYBIT(0)
> >  #define PCIEMSITXR0x000840
> > @@ -55,12 +56,15 @@
> >
> >  /* Configuration */
> >  #define PCICONF(x)(0x010000 + ((x) * 0x4))
> > +#define  INTDIS_SHIFTBIT(10)
>
> Same here (we can remove "_SHIFT").
>
OK.

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda
>
> >  #define PMCAP(x)(0x010040 + ((x) * 0x4))
> >  #define EXPCAP(x)(0x010070 + ((x) * 0x4))
> >  #define VCCAP(x)(0x010100 + ((x) * 0x4))
> >
> >  /* link layer */
> > +#define IDSETR00x011000
> >  #define IDSETR10x011004
> > +#define SUBIDSETR0x011024
> >  #define TLCTLR0x011048
> >  #define MACSR0x011054
> >  #define  SPCHGFINBIT(4)
> > --
> > 2.7.4



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch=
, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, =
40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldor=
f, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WE=
EE reg. no.: DE 14978647
