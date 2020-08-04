From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 17/19] PCI: rcar-gen2: Convert to use modern host bridge
 probe functions
Date: Tue, 4 Aug 2020 09:13:10 -0600
Message-ID: <CAL_Jsq+6Xcf5KT1Db5mGFWr9E04Jd8Rx4aVJpUmfUT8hPmtqBg@mail.gmail.com>
References: <20200722022514.1283916-1-robh@kernel.org> <20200722022514.1283916-18-robh@kernel.org>
 <CAMuHMdWVWoQDc3MMv9LjA+hA1EoXQjVM-JfO_hVqnDf0tC8LJg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAMuHMdWVWoQDc3MMv9LjA+hA1EoXQjVM-JfO_hVqnDf0tC8LJg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-tegra-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>
Cc: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jonathan Hunter <jonathanh-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Karthikeyan Mitran <m.karthikeyan-DTHOJn6Rh8lhmhkoCovsdw@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Lucas Stach <l.stach-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Michal Simek <michal.simek-gjFFaj9aHVfQT0dZR+AlfA@public.gmane.org>, Murali Karicheri <m-karicheri2-l0cyMroinI0@public.gmane.org>, NXP Linux Team <linux-imx-3arQi8VN3Tc@public.gmane.org>, Pengutronix Kernel Team <kernel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Richard Zhu <hongxing.zhu-3arQi8VN3Tc@public.gmane.org>, Ryder Lee <ryder.lee-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>, Sascha Hauer <s.hauer@p>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Aug 4, 2020 at 6:12 AM Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org> wrote:
>
> Hi Rob,
>
> On Wed, Jul 22, 2020 at 4:26 AM Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> > The rcar-gen2 host driver still uses the old Arm PCI setup function
> > pci_common_init_dev(). Let's update it to use the modern
> > devm_pci_alloc_host_bridge(), pci_parse_request_of_pci_ranges() and
> > pci_host_probe() functions.
> >
> > Cc: Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
> > Cc: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> > Cc: linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > Signed-off-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
>
> This is now commit 92d69cc6275845a7 ("PCI: rcar-gen2: Convert to use
> modern host bridge probe functions"), and causes a crash on r8a7791/koelsch:

Can't say I'm surprised, this was a big change. Thanks for testing.


>     Unable to handle kernel NULL pointer dereference at virtual address 00000008
>     pgd = (ptrval)
>     [00000008] *pgd=00000000
>     Internal error: Oops: 5 [#1] SMP ARM
>     CPU: 0 PID: 1 Comm: swapper/0 Not tainted
> 5.8.0-rc1-shmobile-00035-g92d69cc6275845a7 #645
>     Hardware name: Generic R-Car Gen2 (Flattened Device Tree)
>     PC is at rcar_pci_probe+0x154/0x340
>     LR is at _raw_spin_unlock_irqrestore+0x18/0x20
>
> > --- a/drivers/pci/controller/pci-rcar-gen2.c
> > +++ b/drivers/pci/controller/pci-rcar-gen2.c
> > @@ -189,19 +170,33 @@ static inline void rcar_pci_setup_errirq(struct rcar_pci_priv *priv) { }
> >  #endif
> >
> >  /* PCI host controller setup */
> > -static int rcar_pci_setup(int nr, struct pci_sys_data *sys)
> > +static void rcar_pci_setup(struct rcar_pci_priv *priv)
> >  {
> > -       struct rcar_pci_priv *priv = sys->private_data;
> > +       struct pci_host_bridge *bridge = pci_host_bridge_from_priv(priv);
> >         struct device *dev = priv->dev;
> >         void __iomem *reg = priv->reg;
> > +       struct resource_entry *entry;
> > +       unsigned long window_size;
> > +       unsigned long window_addr;
> > +       unsigned long window_pci;
> >         u32 val;
> > -       int ret;
> > +
> > +       entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
>
> bridge->dma_ranges is not initialized => BOOM.
>
> >  static int rcar_pci_probe(struct platform_device *pdev)
> >  {
> >         struct device *dev = &pdev->dev;
> >         struct resource *cfg_res, *mem_res;
> >         struct rcar_pci_priv *priv;
> > +       struct pci_host_bridge *bridge;
> >         void __iomem *reg;
> > -       struct hw_pci hw;
> > -       void *hw_private[1];
> > +       int ret;
> > +
> > +       bridge = devm_pci_alloc_host_bridge(dev, sizeof(*priv));
> > +       if (!bridge)
> > +               return -ENOMEM;
> > +
> > +       priv = pci_host_bridge_priv(bridge);
>
> This is the "new" priv instance.
>
> > +       bridge->sysdata = priv;
> >
> >         cfg_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >         reg = devm_ioremap_resource(dev, cfg_res);
>
> However, the "old" instance is still allocated below, and should be removed.
>
> I've send a patch to fix that, which should appear soon at
> https://lore.kernel.org/r/20200804120430.9253-1-geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org
>
> BTW, the conversion has the following impact on r8a7791/koelsch:
>
>     -pci-rcar-gen2 ee090000.pci: PCI: bus0 revision 11
>     +pci-rcar-gen2 ee090000.pci: host bridge /soc/pci@ee090000 ranges:
>     +pci-rcar-gen2 ee090000.pci:      MEM 0x00ee080000..0x00ee08ffff
> -> 0x00ee080000
>     +pci-rcar-gen2 ee090000.pci: PCI: revision 11
>      pci-rcar-gen2 ee090000.pci: PCI host bridge to bus 0000:00
>     -pci_bus 0000:00: root bus resource [mem 0xee080000-0xee0810ff]
>                                              ^^^^^^^^^^^^^^^^^^^^^
>     -pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
>     +pci_bus 0000:00: root bus resource [bus 00]
>     +pci_bus 0000:00: root bus resource [mem 0xee080000-0xee08ffff]
>                                              ^^^^^^^^^^^^^^^^^^^^^
>
>     pci0: pci@ee090000 {
>             ...
>             reg = <0 0xee090000 0 0xc00>,
>                   <0 0xee080000 0 0x1100>;
>             ...
>             ranges = <0x02000000 0 0xee080000 0 0xee080000 0 0x00010000>;
>             ...
>             usb@1,0 {
>                     reg = <0x800 0 0 0 0>;
>                     ...
>             };
>
>             usb@2,0 {
>                     reg = <0x1000 0 0 0 0>;
>                     ...
>             };
>
>     }
>
> The old root bus resource size was based on the "reg" property.
> The new root bus resource size is based on the "ranges" property.

That was wrong to have PCI memory space in 'reg', but the driver could
always adjust the size to 0x1100 if needed.

BTW, the binding description seems to have the 'reg' description reversed.

> Given the only children are hardcoded, I guess that is OK?

In the sense that those are the only 2 devices and you know their
memory fits, yes. However, the memory space itself isn't hardcoded. If
you wanted to do that, then the children really need
'assigned-addresses' properties. I guess it happens to work because
memory space is allocated from the start and goes in order of device
addresses. But if that changed to top down allocation?

Rob
