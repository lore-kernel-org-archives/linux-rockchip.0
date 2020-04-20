From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v8 5/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Date: Mon, 20 Apr 2020 10:17:08 +0100
Message-ID: <CA+V-a8vkZwgOf8gkxWU62A3L1BTXw_y2H5MGo-7-+ad28q1tWQ@mail.gmail.com>
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com> <TYAPR01MB4544FDF2FEDBED104F6C6C45D8D40@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <TYAPR01MB4544FDF2FEDBED104F6C6C45D8D40@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-renesas-soc@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yoshihiro,

Thank you for the review.

On Mon, Apr 20, 2020 at 10:04 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Sunday, April 19, 2020 10:27 PM
> <snip>
> > @@ -109,11 +137,22 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_init);
> >   */
> >  void pci_epc_mem_exit(struct pci_epc *epc)
> >  {
> > -     struct pci_epc_mem *mem = epc->mem;
> > +     struct pci_epc_mem *mem;
> > +     int i;
> >
> > +     if (!epc->num_windows)
> > +             return;
> > +
> > +     for (i = 0; i <= epc->num_windows; i++) {
>
> I'm sorry, I overlooked when I reviewed before.
> This condition should be "i < epc->num_windows".
>
Argh my bad, will fix it.

> > +             mem = epc->windows[i];
> > +             kfree(mem->bitmap);
> > +             kfree(mem);
> > +     }
> > +     kfree(epc->windows);
> > +
> > +     epc->windows = NULL;
> >       epc->mem = NULL;
> > -     kfree(mem->bitmap);
> > -     kfree(mem);
> > +     epc->num_windows = 0;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >
> > @@ -129,31 +168,57 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> >                                    phys_addr_t *phys_addr, size_t size)
> >  {
> > -     int pageno;
> >       void __iomem *virt_addr = NULL;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     size_t align_size;
> > +     int pageno;
> >       int order;
> > +     int i;
> >
> > -     size = ALIGN(size, mem->page_size);
> > -     order = pci_epc_mem_get_order(mem, size);
> > -
> > -     mutex_lock(&mem->lock);
> > -     pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> > -     if (pageno < 0)
> > -             goto ret;
> > +     for (i = 0; i < epc->num_windows; i++) {
> > +             mem = epc->windows[i];
> > +             mutex_lock(&mem->lock);
> > +             align_size = ALIGN(size, mem->window.page_size);
> > +             order = pci_epc_mem_get_order(mem, align_size);
> >
> > -     *phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> > -     virt_addr = ioremap(*phys_addr, size);
> > -     if (!virt_addr)
> > -             bitmap_release_region(mem->bitmap, pageno, order);
> > +             pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
> > +                                              order);
> > +             if (pageno >= 0) {
> > +                     page_shift = ilog2(mem->window.page_size);
> > +                     *phys_addr = mem->window.phys_base +
> > +                             ((phys_addr_t)pageno << page_shift);
> > +                     virt_addr = ioremap(*phys_addr, align_size);
> > +                     if (!virt_addr)
> > +                             bitmap_release_region(mem->bitmap,
> > +                                                   pageno, order);
>
> I'm sorry here again. But, I think we should call mutex_unlock() and "continue;"
> here if ioremap() failed for trying remaining windows. What do you think?
>
If ioremap() has failed something has really went wrong with the
system, but there is no harm in trying other windows. So Ill add the
code as suggested above.

Cheers,
--Prabhakar

> > +                     mutex_unlock(&mem->lock);
> > +                     return virt_addr;
> > +             }
> > +             mutex_unlock(&mem->lock);
> > +     }
> >
> > -ret:
> > -     mutex_unlock(&mem->lock);
> >       return virt_addr;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>
> Best regards,
> Yoshihiro Shimoda
>
