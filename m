From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v8 7/8] PCI: rcar: Add endpoint mode support
Date: Tue, 21 Apr 2020 09:58:07 +0100
Message-ID: <CA+V-a8tBEwMz4LDfcg2ReLsCkZH7Q_aN1b_Yc1qhp1H_g_HsTw@mail.gmail.com>
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com> <TYAPR01MB45443972F88BDA1134628342D8D50@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <TYAPR01MB45443972F88BDA1134628342D8D50@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Geert Uytterhoeven <geert+renesas@glider.be>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Tom Joseph <tjoseph@cadence.com>, Ji
List-Id: linux-rockchip.vger.kernel.org

Hi Shimoda-san,

Thank you for the review.

On Tue, Apr 21, 2020 at 5:08 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
> I'm sorry I should have mentioned on previous email. But, I have some comments.
>
> > From: Lad Prabhakar, Sent: Sunday, April 19, 2020 10:27 PM
> >
> > Add support for R-Car PCIe controller to work in endpoint mode.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> <snip>
> > +static int rcar_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 interrupts)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 flags;
> > +
> > +     flags = rcar_pci_read_reg(pcie, MSICAP(fn));
>
> The argument of MSICAP() should be 0. Otherwise, if the fn is 1 or more,
> the code reads a wrong register.
>
Agreed, but fn (func_no = find_first_zero_bit(&epc->function_num_map,
BITS_PER_LONG); in pci_epc_add_epf()) in any callback is compared
against to max_functions in the core and  is configurable and by
default its set to 1 in rcar_pcie_ep_get_pdata(). So this will make
sure that fn in any callback will always be 0. Said that the binding
needs to be fixed to:

  max-functions:
    minimum: 1
    maximum: 1

> > +     flags |= interrupts << MSICAP0_MMESCAP_OFFSET;
> > +     rcar_pci_write_reg(pcie, flags, MSICAP(fn));
>
> Same here about MSICAP().
>
> > +
> > +     return 0;
> > +}
> > +
> > +static int rcar_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 flags;
> > +
> > +     flags = rcar_pci_read_reg(pcie, MSICAP(fn));
>
> Same here about MSICAP().
>
> > +     if (!(flags & MSICAP0_MSIE))
> > +             return -EINVAL;
> > +
> > +     return ((flags & MSICAP0_MMENUM_MASK) >> MSICAP0_MMENUM_OFFSET);
> > +}
> > +
> > +static int rcar_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
> > +                              phys_addr_t addr, u64 pci_addr, size_t size)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     struct resource res;
> > +     int window;
> > +     int err;
> > +
> > +     /* check if we have a link. */
> > +     err = rcar_pcie_wait_for_dl(pcie);
> > +     if (err) {
> > +             dev_err(pcie->dev, "link not up\n");
> > +             return err;
> > +     }
> > +
> > +     window = rcar_pcie_ep_get_window(ep, addr);
> > +     if (window < 0) {
> > +             dev_err(pcie->dev, "failed to get corresponding window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     memset(&res, 0x0, sizeof(res));
> > +     res.start = pci_addr;
> > +     res.end = pci_addr + size - 1;
> > +     res.flags = IORESOURCE_MEM;
> > +
> > +     rcar_pcie_set_outbound(pcie, window, &res);
> > +
> > +     ep->ob_mapped_addr[window] = addr;
> > +
> > +     return 0;
> > +}
> > +
> > +static void rcar_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn,
> > +                                 phys_addr_t addr)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct resource res;
> > +     int idx;
> > +
> > +     for (idx = 0; idx < ep->num_ob_windows; idx++)
> > +             if (ep->ob_mapped_addr[idx] == addr)
> > +                     break;
> > +
> > +     if (idx >= ep->num_ob_windows)
> > +             return;
> > +
> > +     memset(&res, 0x0, sizeof(res));
> > +     rcar_pcie_set_outbound(&ep->pcie, idx, &res);
> > +
> > +     ep->ob_mapped_addr[idx] = 0;
> > +}
> > +
> > +static int rcar_pcie_ep_assert_intx(struct rcar_pcie_endpoint *ep,
> > +                                 u8 fn, u8 intx)
> > +{
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 val;
> > +
> > +     val = rcar_pci_read_reg(pcie, PCIEMSITXR);
> > +     if ((val & PCI_MSI_FLAGS_ENABLE)) {
> > +             dev_err(pcie->dev, "MSI is enabled, cannot assert INTx\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     val = rcar_pci_read_reg(pcie, PCICONF(1));
> > +     if ((val & INTDIS)) {
> > +             dev_err(pcie->dev, "INTx message transmission is disabled\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     val = rcar_pci_read_reg(pcie, PCIEINTXR);
> > +     if ((val & ASTINTX)) {
> > +             dev_err(pcie->dev, "INTx is already asserted\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     val |= ASTINTX;
> > +     rcar_pci_write_reg(pcie, val, PCIEINTXR);
> > +     mdelay(1);
>
> Since pci_epc_raise_irq() calls mutex_lock() and then this function,
> we can assume this function also can sleep. And, according to
> Documentation/timers/timers-howto.rst, we should use
> usleep_range(1000, 1000) instead of mdelay(1).
>
Sure will replace that.

> > +     val = rcar_pci_read_reg(pcie, PCIEINTXR);
> > +     val &= ~ASTINTX;
> > +     rcar_pci_write_reg(pcie, val, PCIEINTXR);
> > +
> > +     return 0;
> > +}
> > +
> > +static int rcar_pcie_ep_assert_msi(struct rcar_pcie *pcie,
> > +                                u8 fn, u8 interrupt_num)
> > +{
> > +     u16 msi_count;
> > +     u32 val;
> > +
> > +     /* Check MSI enable bit */
> > +     val = rcar_pci_read_reg(pcie, MSICAP(fn));
>
> Same here about MSICAP().
>
> > +     if (!(val & MSICAP0_MSIE))
> > +             return -EINVAL;
> > +
> > +     /* Get MSI numbers from MME */
> > +     msi_count = ((val & MSICAP0_MMENUM_MASK) >> MSICAP0_MMENUM_OFFSET);
> > +     msi_count = 1 << msi_count;
> > +
> > +     if (!interrupt_num || interrupt_num > msi_count)
> > +             return -EINVAL;
> > +
> > +     val = rcar_pci_read_reg(pcie, PCIEMSITXR);
> > +     rcar_pci_write_reg(pcie, val | (interrupt_num - 1), PCIEMSITXR);
> > +
> > +     return 0;
> > +}
> <snip>
> > diff --git a/drivers/pci/controller/pcie-rcar.h b/drivers/pci/controller/pcie-rcar.h
> > index cec7768b4725..0fbeff3d7b78 100644
> > --- a/drivers/pci/controller/pcie-rcar.h
> > +++ b/drivers/pci/controller/pcie-rcar.h
> > @@ -17,6 +17,7 @@
> >  #define PCIECDR                      0x000020
> >  #define PCIEMSR                      0x000028
> >  #define PCIEINTXR            0x000400
> > +#define  ASTINTX             BIT(16)
> >  #define PCIEPHYSR            0x0007f0
> >  #define  PHYRDY                      BIT(0)
> >  #define PCIEMSITXR           0x000840
> > @@ -55,12 +56,20 @@
> >
> >  /* Configuration */
> >  #define PCICONF(x)           (0x010000 + ((x) * 0x4))
> > +#define  INTDIS                      BIT(10)
> >  #define PMCAP(x)             (0x010040 + ((x) * 0x4))
> > +#define MSICAP(x)            (0x010050 + ((x) * 0x4))
> > +#define  MSICAP0_MSIE                BIT(16)
> > +#define  MSICAP0_MMESCAP_OFFSET      17
> > +#define  MSICAP0_MMENUM_OFFSET       20
> > +#define  MSICAP0_MMENUM_MASK GENMASK(22, 20)
>
> s/MSICAP0_MMENUM/MSICAP0_MMESE/ ?
>
Sure will replace that.

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda
>
> >  #define EXPCAP(x)            (0x010070 + ((x) * 0x4))
> >  #define VCCAP(x)             (0x010100 + ((x) * 0x4))
> >
> >  /* link layer */
> > +#define IDSETR0                      0x011000
> >  #define IDSETR1                      0x011004
> > +#define SUBIDSETR            0x011024
> >  #define TLCTLR                       0x011048
> >  #define MACSR                        0x011054
> >  #define  SPCHGFIN            BIT(4)
> > --
> > 2.17.1
>
