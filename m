From: Jagan Teki <jagan@amarulasolutions.com>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCA1LzhdIHBjaTogQWRkIFJvY2tjaGlwIFBDSWUgY29udHJvbGxlciBkcg==?=
 =?UTF-8?B?aXZlcuOAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlwLWJvdW5jZXMrc2hhd24ubGlu?=
 =?UTF-8?B?PXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
Date: Wed, 29 Apr 2020 01:09:21 +0530
Message-ID: <CAMty3ZA=bvDtGwss2yMzwOCfpxKtcOz0Ep8YRRmzbfpyZeSPHw@mail.gmail.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-6-jagan@amarulasolutions.com>
 <d1bab25f-daba-c541-ffcf-cfe0c80432fb@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <d1bab25f-daba-c541-ffcf-cfe0c80432fb@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Patrick Wildt <patrick@blueri.se>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Suniel Mahesh <sunil@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Sun, Apr 26, 2020 at 5:21 AM Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
>
> On 2020/4/25 19:03, Jagan Teki wrote:
> > Add Rockchip PCIe controller driver for rk3399 platform.
> >
> > Driver support Gen1 by operating as a Root complex.
> >
> > Thanks to Patrick for initial work.
> >
>
> Thanks for your patches!
>
> > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >   drivers/pci/Kconfig         |   8 +
> >   drivers/pci/Makefile        |   1 +
> >   drivers/pci/pcie_rockchip.c | 460 +++++++++++++++++++++++++++++++++++=
+
> >   drivers/pci/pcie_rockchip.h |  79 +++++++
> >   4 files changed, 548 insertions(+)
> >   create mode 100644 drivers/pci/pcie_rockchip.c
> >   create mode 100644 drivers/pci/pcie_rockchip.h
> >
> > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > index 437cd9a055..3dba84103b 100644
> > --- a/drivers/pci/Kconfig
> > +++ b/drivers/pci/Kconfig
> > @@ -197,4 +197,12 @@ config PCIE_MEDIATEK
> >         Say Y here if you want to enable Gen2 PCIe controller,
> >         which could be found on MT7623 SoC family.
> >
> > +config PCIE_ROCKCHIP
> > +     bool "Enable Rockchip PCIe driver"
> > +     select DM_PCI
> > +     default y if ROCKCHIP_RK3399
> > +     help
> > +       Say Y here if you want to enable PCIe controller support on
> > +       Rockchip SoCs.
> > +
> >   endif
> > diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
> > index c051ecc9f3..493e9354dd 100644
> > --- a/drivers/pci/Makefile
> > +++ b/drivers/pci/Makefile
> > @@ -43,3 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) +=3D pcie_phytium.o
> >   obj-$(CONFIG_PCIE_INTEL_FPGA) +=3D pcie_intel_fpga.o
> >   obj-$(CONFIG_PCI_KEYSTONE) +=3D pcie_dw_ti.o
> >   obj-$(CONFIG_PCIE_MEDIATEK) +=3D pcie_mediatek.o
> > +obj-$(CONFIG_PCIE_ROCKCHIP) +=3D pcie_rockchip.o
> > diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
> > new file mode 100644
> > index 0000000000..adc64aedf5
> > --- /dev/null
> > +++ b/drivers/pci/pcie_rockchip.c
> > @@ -0,0 +1,460 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Rockchip AXI PCIe host controller driver
> > + *
> > + * Copyright (c) 2016 Rockchip, Inc.
> > + * Copyright (c) 2020 Amarula Solutions(India)
> > + * Copyright (c) 2020 Jagan Teki <jagan@amarulasolutions.com>
> > + * Copyright (c) 2019 Patrick Wildt <patrick@blueri.se>
> > + * Copyright (c) 2018 Mark Kettenis <kettenis@openbsd.org>
> > + *
> > + * Bits taken from Linux Rockchip PCIe host controller.
> > + */
> > +
> > +#include <common.h>
> > +#include <clk.h>
> > +#include <dm.h>
> > +#include <dm/device_compat.h>
> > +#include <pci.h>
> > +#include <power-domain.h>
> > +#include <power/regulator.h>
> > +#include <reset.h>
> > +#include <syscon.h>
> > +#include <asm/io.h>
> > +#include <asm-generic/gpio.h>
> > +#include <asm/arch-rockchip/clock.h>
> > +#include <linux/iopoll.h>
> > +
> > +#include "pcie_rockchip.h"
> > +
> > +DECLARE_GLOBAL_DATA_PTR;
> > +
> > +static int rockchip_pcie_rd_conf(const struct udevice *bus, pci_dev_t =
bdf,
> > +                              uint offset, ulong *valuep,
> > +                              enum pci_size_t size)
> > +{
> > +     struct rockchip_pcie *priv =3D dev_get_priv(bus);
> > +     ulong value;
> > +     u32 off;
> > +
> > +     off =3D (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
> > +           (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
> > +
> > +     if ((PCI_BUS(bdf) =3D=3D priv->first_busno) && (PCI_DEV(bdf) =3D=
=3D 0)) {
> > +             value =3D readl(priv->apb_base + PCIE_RC_NORMAL_BASE + of=
f);
> > +             *valuep =3D pci_conv_32_to_size(value, offset, size);
> > +             return 0;
> > +     }
> > +
> > +     if ((PCI_BUS(bdf) =3D=3D priv->first_busno + 1) && (PCI_DEV(bdf) =
=3D=3D 0)) {
> > +             value =3D readl(priv->axi_base + off);
> > +             *valuep =3D pci_conv_32_to_size(value, offset, size);
> > +             return 0;
> > +     }
> > +
> > +     *valuep =3D pci_get_ff(size);
> > +
>
> PCIe cfg accessors, for instance, rockchip_pcie_rd_config=EF=BC=8Cis supp=
osed
> to configure TLP type to PCIE_ATR_HDR_CFG_TYPE1 if scanning the
> downstream buses, as it possiblely is a pcie-switch which should need
> forward  the type1 header packets.
>
> Linux driver is a good example for reference:
> https://elixir.bootlin.com/linux/latest/source/drivers/pci/controller/pci=
e-rockchip-host.c#L177

Looks like we need to preserve root_bus_nr for this, but this indeed
requires to parse the pcie ranges which I'm not sure it would be
available in U-Boot. But, I can mark it as TODO if it really requires
it in U-Boot.?

Jagan.
