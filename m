From: Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH 5/8] pci: Add Rockchip PCIe controller driver
Date: Sat, 25 Apr 2020 22:29:13 +0200 (CEST)
Message-ID: <016196512107ed26@bloch.sibelius.xs4all.nl>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-6-jagan@amarulasolutions.com>
 <016196137a6060e1@bloch.sibelius.xs4all.nl>
 <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A@mail.gmail.com>
Return-path: <u-boot-bounces@lists.denx.de>
In-reply-to: <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A@mail.gmail.com>
 (message from Jagan Teki on Sun, 26 Apr 2020 01:06:56 +0530)
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@theobroma-systems.com, patrick@blueri.se, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

> From: Jagan Teki <jagan@amarulasolutions.com>
> Date: Sun, 26 Apr 2020 01:06:56 +0530
> 
> On Sun, Apr 26, 2020 at 12:23 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
> >
> > > From: Jagan Teki <jagan@amarulasolutions.com>
> > > Date: Sat, 25 Apr 2020 16:33:51 +0530
> > >
> > > Add Rockchip PCIe controller driver for rk3399 platform.
> > >
> > > Driver support Gen1 by operating as a Root complex.
> > >
> > > Thanks to Patrick for initial work.
> >
> > Tried to get this to work on my firefly-rk3399 which made me notice
> > some shortcomings:
> >
> > 1. The vpcie1v8 and vpcie0v9 supplies are optional, just like the
> >    vpcie3v3 supply.
> >
> > 2. The vpcie3v3 regulator check doesn't quite work.
> 
> You mean the regulator check?

I mean the check wether the regulator is actually there in
rockchip_pcie_set_vpcie().  See my suggested changes below.

> >
> > See below for suggestions on how to fix this.
> >
> > Sadly the NVME SSD doesn't seem to be happy and shows up as only 1023 MB.
> > But that is probably not caused by this diff.
> >
> > > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  drivers/pci/Kconfig         |   8 +
> > >  drivers/pci/Makefile        |   1 +
> > >  drivers/pci/pcie_rockchip.c | 460 ++++++++++++++++++++++++++++++++++++
> > >  drivers/pci/pcie_rockchip.h |  79 +++++++
> > >  4 files changed, 548 insertions(+)
> > >  create mode 100644 drivers/pci/pcie_rockchip.c
> > >  create mode 100644 drivers/pci/pcie_rockchip.h
> > >
> > > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > > index 437cd9a055..3dba84103b 100644
> > > --- a/drivers/pci/Kconfig
> > > +++ b/drivers/pci/Kconfig
> > > @@ -197,4 +197,12 @@ config PCIE_MEDIATEK
> > >         Say Y here if you want to enable Gen2 PCIe controller,
> > >         which could be found on MT7623 SoC family.
> > >
> > > +config PCIE_ROCKCHIP
> > > +     bool "Enable Rockchip PCIe driver"
> > > +     select DM_PCI
> > > +     default y if ROCKCHIP_RK3399
> > > +     help
> > > +       Say Y here if you want to enable PCIe controller support on
> > > +       Rockchip SoCs.
> > > +
> > >  endif
> > > diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
> > > index c051ecc9f3..493e9354dd 100644
> > > --- a/drivers/pci/Makefile
> > > +++ b/drivers/pci/Makefile
> > > @@ -43,3 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
> > >  obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
> > >  obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
> > >  obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
> > > +obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
> > > diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
> > > new file mode 100644
> > > index 0000000000..adc64aedf5
> > > --- /dev/null
> > > +++ b/drivers/pci/pcie_rockchip.c
> > > @@ -0,0 +1,460 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * Rockchip AXI PCIe host controller driver
> > > + *
> > > + * Copyright (c) 2016 Rockchip, Inc.
> > > + * Copyright (c) 2020 Amarula Solutions(India)
> > > + * Copyright (c) 2020 Jagan Teki <jagan@amarulasolutions.com>
> > > + * Copyright (c) 2019 Patrick Wildt <patrick@blueri.se>
> > > + * Copyright (c) 2018 Mark Kettenis <kettenis@openbsd.org>
> > > + *
> > > + * Bits taken from Linux Rockchip PCIe host controller.
> > > + */
> > > +
> > > +#include <common.h>
> > > +#include <clk.h>
> > > +#include <dm.h>
> > > +#include <dm/device_compat.h>
> > > +#include <pci.h>
> > > +#include <power-domain.h>
> > > +#include <power/regulator.h>
> > > +#include <reset.h>
> > > +#include <syscon.h>
> > > +#include <asm/io.h>
> > > +#include <asm-generic/gpio.h>
> > > +#include <asm/arch-rockchip/clock.h>
> > > +#include <linux/iopoll.h>
> > > +
> > > +#include "pcie_rockchip.h"
> > > +
> > > +DECLARE_GLOBAL_DATA_PTR;
> > > +
> > > +static int rockchip_pcie_rd_conf(const struct udevice *bus, pci_dev_t bdf,
> > > +                              uint offset, ulong *valuep,
> > > +                              enum pci_size_t size)
> > > +{
> > > +     struct rockchip_pcie *priv = dev_get_priv(bus);
> > > +     ulong value;
> > > +     u32 off;
> > > +
> > > +     off = (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
> > > +           (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
> > > +
> > > +     if ((PCI_BUS(bdf) == priv->first_busno) && (PCI_DEV(bdf) == 0)) {
> > > +             value = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + off);
> > > +             *valuep = pci_conv_32_to_size(value, offset, size);
> > > +             return 0;
> > > +     }
> > > +
> > > +     if ((PCI_BUS(bdf) == priv->first_busno + 1) && (PCI_DEV(bdf) == 0)) {
> > > +             value = readl(priv->axi_base + off);
> > > +             *valuep = pci_conv_32_to_size(value, offset, size);
> > > +             return 0;
> > > +     }
> > > +
> > > +     *valuep = pci_get_ff(size);
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int rockchip_pcie_wr_conf(struct udevice *bus, pci_dev_t bdf,
> > > +                              uint offset, ulong value,
> > > +                              enum pci_size_t size)
> > > +{
> > > +     struct rockchip_pcie *priv = dev_get_priv(bus);
> > > +     ulong old;
> > > +     u32 off;
> > > +
> > > +     off = (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
> > > +           (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
> > > +
> > > +     if ((PCI_BUS(bdf) == priv->first_busno) && (PCI_DEV(bdf) == 0)) {
> > > +             old = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + off);
> > > +             value = pci_conv_size_to_32(old, value, offset, size);
> > > +             writel(value, priv->apb_base + PCIE_RC_NORMAL_BASE + off);
> > > +             return 0;
> > > +     }
> > > +
> > > +     if ((PCI_BUS(bdf) == priv->first_busno + 1) && (PCI_DEV(bdf) == 0)) {
> > > +             old = readl(priv->axi_base + off);
> > > +             value = pci_conv_size_to_32(old, value, offset, size);
> > > +             writel(value, priv->axi_base + off);
> > > +             return 0;
> > > +     }
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
> > > +{
> > > +     struct udevice *ctlr = pci_get_controller(priv->dev);
> > > +     struct pci_controller *hose = dev_get_uclass_priv(ctlr);
> > > +     u64 addr, size, offset;
> > > +     u32 type;
> > > +     int i, region;
> > > +
> > > +     /* Use region 0 to map PCI configuration space. */
> > > +     writel(25 - 1, priv->apb_base + PCIE_ATR_OB_ADDR0(0));
> > > +     writel(0, priv->apb_base + PCIE_ATR_OB_ADDR1(0));
> > > +     writel(PCIE_ATR_HDR_CFG_TYPE0 | PCIE_ATR_HDR_RID,
> > > +            priv->apb_base + PCIE_ATR_OB_DESC0(0));
> > > +     writel(0, priv->apb_base + PCIE_ATR_OB_DESC1(0));
> > > +
> > > +     for (i = 0; i < hose->region_count; i++) {
> > > +             if (hose->regions[i].flags == PCI_REGION_SYS_MEMORY)
> > > +                     continue;
> > > +
> > > +             if (hose->regions[i].flags == PCI_REGION_IO)
> > > +                     type = PCIE_ATR_HDR_IO;
> > > +             else
> > > +                     type = PCIE_ATR_HDR_MEM;
> > > +
> > > +             /* Only support identity mappings. */
> > > +             if (hose->regions[i].bus_start !=
> > > +                 hose->regions[i].phys_start)
> > > +                     return -EINVAL;
> > > +
> > > +             /* Only support mappings aligned on a region boundary. */
> > > +             addr = hose->regions[i].bus_start;
> > > +             if (addr & (PCIE_ATR_OB_REGION_SIZE - 1))
> > > +                     return -EINVAL;
> > > +
> > > +             /* Mappings should lie between AXI and APB regions. */
> > > +             size = hose->regions[i].size;
> > > +             if (addr < (u64)priv->axi_base + PCIE_ATR_OB_REGION0_SIZE)
> > > +                     return -EINVAL;
> > > +             if (addr + size > (u64)priv->apb_base)
> > > +                     return -EINVAL;
> > > +
> > > +             offset = addr - (u64)priv->axi_base - PCIE_ATR_OB_REGION0_SIZE;
> > > +             region = 1 + (offset / PCIE_ATR_OB_REGION_SIZE);
> > > +             while (size > 0) {
> > > +                     writel(32 - 1,
> > > +                            priv->apb_base + PCIE_ATR_OB_ADDR0(region));
> > > +                     writel(0, priv->apb_base + PCIE_ATR_OB_ADDR1(region));
> > > +                     writel(type | PCIE_ATR_HDR_RID,
> > > +                            priv->apb_base + PCIE_ATR_OB_DESC0(region));
> > > +                     writel(0, priv->apb_base + PCIE_ATR_OB_DESC1(region));
> > > +
> > > +                     addr += PCIE_ATR_OB_REGION_SIZE;
> > > +                     size -= PCIE_ATR_OB_REGION_SIZE;
> > > +                     region++;
> > > +             }
> > > +     }
> > > +
> > > +     /* Passthrough inbound translations unmodified. */
> > > +     writel(32 - 1, priv->apb_base + PCIE_ATR_IB_ADDR0(2));
> > > +     writel(0, priv->apb_base + PCIE_ATR_IB_ADDR1(2));
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int rockchip_pcie_init_port(struct udevice *dev)
> > > +{
> > > +     struct rockchip_pcie *priv = dev_get_priv(dev);
> > > +     u32 cr, val, status;
> > > +     int ret;
> > > +
> > > +     if (dm_gpio_is_valid(&priv->ep_gpio))
> > > +             dm_gpio_set_value(&priv->ep_gpio, 0);
> > > +
> > > +     ret = reset_assert(&priv->aclk_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert aclk reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_assert(&priv->pclk_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert pclk reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_assert(&priv->pm_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert pm reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_assert(&priv->core_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert core reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_assert(&priv->mgmt_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert mgmt reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_assert(&priv->mgmt_sticky_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert mgmt-sticky reset (ret=%d)\n",
> > > +                     ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_assert(&priv->pipe_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to assert pipe reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     udelay(10);
> > > +
> > > +     ret = reset_deassert(&priv->pm_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert pm reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_deassert(&priv->aclk_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert aclk reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_deassert(&priv->pclk_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert pclk reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     /* Select GEN1 for now */
> > > +     cr = PCIE_CLIENT_GEN_SEL_1;
> > > +     /* Set Root complex mode */
> > > +     cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
> > > +     writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
> > > +
> > > +     ret = reset_deassert(&priv->mgmt_sticky_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert mgmt-sticky reset (ret=%d)\n",
> > > +                     ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_deassert(&priv->core_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert core reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_deassert(&priv->mgmt_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert mgmt reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     ret = reset_deassert(&priv->pipe_rst);
> > > +     if (ret) {
> > > +             dev_err(dev, "failed to deassert pipe reset (ret=%d)\n", ret);
> > > +             return ret;
> > > +     }
> > > +
> > > +     /* Enable Gen1 training */
> > > +     writel(PCIE_CLIENT_LINK_TRAIN_ENABLE,
> > > +            priv->apb_base + PCIE_CLIENT_CONFIG);
> > > +
> > > +     if (dm_gpio_is_valid(&priv->ep_gpio))
> > > +             dm_gpio_set_value(&priv->ep_gpio, 1);
> > > +
> > > +     ret = readl_poll_sleep_timeout
> > > +                     (priv->apb_base + PCIE_CLIENT_BASIC_STATUS1,
> > > +                     status, PCIE_LINK_UP(status), 20, 500 * 1000);
> > > +     if (ret) {
> > > +             dev_err(dev, "PCIe link training gen1 timeout!\n");
> > > +             return ret;
> > > +     }
> > > +
> > > +     /* Initialize Root Complex registers. */
> > > +     writel(PCIE_LM_VENDOR_ROCKCHIP, priv->apb_base + PCIE_LM_VENDOR_ID);
> > > +     writel(PCI_CLASS_BRIDGE_PCI << 16,
> > > +            priv->apb_base + PCIE_RC_BASE + PCI_CLASS_REVISION);
> > > +     writel(PCIE_LM_RCBARPIE | PCIE_LM_RCBARPIS,
> > > +            priv->apb_base + PCIE_LM_RCBAR);
> > > +
> > > +     if (dev_read_bool(dev, "aspm-no-l0s")) {
> > > +             val = readl(priv->apb_base + PCIE_RC_PCIE_LCAP);
> > > +             val &= ~PCIE_RC_PCIE_LCAP_APMS_L0S;
> > > +             writel(val, priv->apb_base + PCIE_RC_PCIE_LCAP);
> > > +     }
> > > +
> > > +     /* Configure Address Translation. */
> > > +     ret = rockchip_pcie_atr_init(priv);
> > > +     if (ret) {
> > > +             dev_err(dev, "PCIE-%d: ATR init failed\n", dev->seq);
> > > +             return ret;
> > > +     }
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int rockchip_pcie_set_vpcie(struct udevice *dev)
> > > +{
> > > +     struct rockchip_pcie *priv = dev_get_priv(dev);
> > > +     int ret;
> > > +
> > > +     if (!IS_ERR(priv->vpcie3v3)) {
> >
> > I think this should be:
> >
> >         if (priv->vpcie3v3) {
> 
> I didn't find any issue with the board I have optional of this, but
> will check it.
> 
> >
> > > +             ret = regulator_set_enable(priv->vpcie3v3, true);
> > > +             if (ret) {
> > > +                     dev_err(dev, "failed to enable vpcie3v3 (ret=%d)\n",
> > > +                             ret);
> > > +                     return ret;
> > > +             }
> > > +     }
> > > +
> >
> > And to make this regulator optional, it needs an
> >
> >         if (priv->vpcie1v8) {
> 
> I can see from v5.7-rc1, 12v, 3v3 are optional and rest not If I'm not wrong.

The devicetree binding is clear about it.  See
Documentation/devicetree/bindings/pci/rockchip-pcie-host.txt.

And rk3399-firefly.dts doesn't add the properties.
