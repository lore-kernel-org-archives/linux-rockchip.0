From: "Lad, Prabhakar" <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v9 5/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Date: Fri, 24 Apr 2020 08:46:17 +0100
Message-ID: <CA+V-a8sCLm_3hxBT+p_mjSt92rTF3+4nPBuuOdoq==ZKbTK2zg@mail.gmail.com>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587666159-6035-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com> <99ff8fb8-101c-a548-7d6e-07c3a31ced2c@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <99ff8fb8-101c-a548-7d6e-07c3a31ced2c-l0cyMroinI0@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Murray <amurray-tUaQ5FxYRYX4aQPF92CzsNBc4/FLrbF6@public.gmane.org>, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>, linux-pci <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux-Renesas <linux-renesas-soc-u79uwXL29TbrhsbdSgBK9A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

Thank you for the review.

On Fri, Apr 24, 2020 at 7:13 AM Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org> wrote:
>
> Hi Prabhakar,
>
> On 4/23/2020 11:52 PM, Lad Prabhakar wrote:
> > R-Car PCIe controller has support to map multiple memory regions for
> > mapping the outbound memory in local system also the controller limits
> > single allocation for each region (that is, once a chunk is used from the
> > region it cannot be used to allocate a new one). This features inspires to
> > add support for handling multiple memory bases in endpoint framework.
> >
> > With this patch pci_epc_mem_init() initializes address space for endpoint
> > controller which support single window and pci_epc_multi_mem_init()
> > initializes multiple windows supported by endpoint controller.
>
> Have a couple of clean-up comments. See below.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
> > ---
> >  .../pci/controller/dwc/pcie-designware-ep.c   |  16 +-
> >  drivers/pci/endpoint/pci-epc-mem.c            | 199 ++++++++++++------
> >  include/linux/pci-epc.h                       |  33 ++-
> >  3 files changed, 170 insertions(+), 78 deletions(-)
> >
> .
> .
> <snip>
> .
> .
> > diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> > index cdd1d3821249..a3466da2a16f 100644
> > --- a/drivers/pci/endpoint/pci-epc-mem.c
> > +++ b/drivers/pci/endpoint/pci-epc-mem.c
> > @@ -23,7 +23,7 @@
> >  static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
> >  {
> >       int order;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> > +     unsigned int page_shift = ilog2(mem->window.page_size);
> >
> >       size--;
> >       size >>= page_shift;
> > @@ -36,67 +36,95 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
> >  }
> >
> >  /**
> > - * __pci_epc_mem_init() - initialize the pci_epc_mem structure
> > + * pci_epc_multi_mem_init() - initialize the pci_epc_mem structure
> >   * @epc: the EPC device that invoked pci_epc_mem_init
> > - * @phys_base: the physical address of the base
> > - * @size: the size of the address space
> > - * @page_size: size of each page
> > + * @windows: pointer to windows supported by the device
> > + * @num_windows: number of windows device supports
> >   *
> >   * Invoke to initialize the pci_epc_mem structure used by the
> >   * endpoint functions to allocate mapped PCI address.
> >   */
> > -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
> > -                    size_t page_size)
> > +int pci_epc_multi_mem_init(struct pci_epc *epc,
> > +                        struct pci_epc_mem_window *windows,
> > +                        unsigned int num_windows)
> >  {
> > -     int ret;
> > -     struct pci_epc_mem *mem;
> > -     unsigned long *bitmap;
> > +     struct pci_epc_mem *mem = NULL;
> > +     unsigned long *bitmap = NULL;
> >       unsigned int page_shift;
> > -     int pages;
> > +     size_t page_size;
> >       int bitmap_size;
> > +     int pages;
> > +     int ret;
> > +     int i;
> >
> > -     if (page_size < PAGE_SIZE)
> > -             page_size = PAGE_SIZE;
> > +     epc->num_windows = 0;
> >
> > -     page_shift = ilog2(page_size);
> > -     pages = size >> page_shift;
> > -     bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > +     if (!windows || !num_windows)
> > +             return -EINVAL;
> >
> > -     mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > -     if (!mem) {
> > -             ret = -ENOMEM;
> > -             goto err;
> > -     }
> > +     epc->windows = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> > +     if (!epc->windows)
> > +             return -ENOMEM;
> >
> > -     bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > -     if (!bitmap) {
> > -             ret = -ENOMEM;
> > -             goto err_mem;
> > -     }
> > +     for (i = 0; i < num_windows; i++) {
> > +             page_size = windows[i].page_size;
> > +             if (page_size < PAGE_SIZE)
> > +                     page_size = PAGE_SIZE;
> > +             page_shift = ilog2(page_size);
> > +             pages = windows[i].size >> page_shift;
> > +             bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> >
> > -     mem->bitmap = bitmap;
> > -     mem->phys_base = phys_base;
> > -     mem->page_size = page_size;
> > -     mem->pages = pages;
> > -     mem->size = size;
> > -     mutex_init(&mem->lock);
> > +             mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > +             if (!mem) {
> > +                     ret = -ENOMEM;
> > +                     i--;
> > +                     goto err_mem;
> > +             }
> >
> > -     epc->mem = mem;
> > +             bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > +             if (!bitmap) {
> > +                     ret = -ENOMEM;
> > +                     kfree(mem);
> > +                     i--;
> > +                     goto err_mem;
> > +             }
> > +
> > +             mem->window.phys_base = windows[i].phys_base;
> > +             mem->window.size = windows[i].size;
> > +             mem->window.page_size = page_size;
> > +             mem->bitmap = bitmap;
> > +             mem->pages = pages;
> > +             mutex_init(&mem->lock);
> > +             epc->windows[i] = mem;
> > +     }
> > +
> > +     epc->mem = epc->windows[0];
>
> "mem" member of EPC looks unnecessary since that value is available at
> epc->windows[0].
This was suggested by Shimoda-san, as most of the current  controller
drivers support single region this pointer would be easier to access
the region instead of adding #define EPC_DEFAULT_WINDOW  0 and
accessing  as epc->windows[EPC_DEFAULT_WINDOW];

> > +     epc->num_windows = num_windows;
> >
> >       return 0;
> >
> >  err_mem:
> > -     kfree(mem);
> > +     for (; i >= 0; i--) {
> > +             mem = epc->windows[i];
> > +             kfree(mem->bitmap);
> > +             kfree(mem);
> > +     }
> > +     kfree(epc->windows);
> >
> > -err:
> > -return ret;
> > +     return ret;
> >  }
> > -EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
> > +EXPORT_SYMBOL_GPL(pci_epc_multi_mem_init);
> >
> >  int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
> >                    size_t size, size_t page_size)
> >  {
> > -     return __pci_epc_mem_init(epc, base, size, page_size);
> > +     struct pci_epc_mem_window mem_window;
> > +
> > +     mem_window.phys_base = base;
> > +     mem_window.size = size;
> > +     mem_window.page_size = page_size;
> > +
> > +     return pci_epc_multi_mem_init(epc, &mem_window, 1);
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_init);
> >
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
> > +     for (i = 0; i < epc->num_windows; i++) {
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
> > @@ -129,31 +168,60 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
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
> > +                     if (!virt_addr) {
> > +                             bitmap_release_region(mem->bitmap,
> > +                                                   pageno, order);
> > +                             mutex_unlock(&mem->lock);
> > +                             continue;
> > +                     }
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
> >
> > +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> > +                                             phys_addr_t phys_addr)
> > +{
> > +     struct pci_epc_mem *mem;
> > +     int i;
> > +
> > +     for (i = 0; i < epc->num_windows; i++) {
> > +             mem = epc->windows[i];
> > +
> > +             if (phys_addr >= mem->window.phys_base &&
> > +                 phys_addr < (mem->window.phys_base + mem->window.size))
> > +                     return mem;
> > +     }
> > +
> > +     return NULL;
> > +}
> > +
> >  /**
> >   * pci_epc_mem_free_addr() - free the allocated memory address
> >   * @epc: the EPC device on which memory was allocated
> > @@ -166,14 +234,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
> >                          void __iomem *virt_addr, size_t size)
> >  {
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     size_t page_size;
> >       int pageno;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> >       int order;
> >
> > +     mem = pci_epc_get_matching_window(epc, phys_addr);
> > +     if (!mem) {
> > +             pr_err("failed to get matching window\n");
> > +             return;
> > +     }
> > +
> > +     page_size = mem->window.page_size;
> > +     page_shift = ilog2(page_size);
> >       iounmap(virt_addr);
> > -     pageno = (phys_addr - mem->phys_base) >> page_shift;
> > -     size = ALIGN(size, mem->page_size);
> > +     pageno = (phys_addr - mem->window.phys_base) >> page_shift;
> > +     size = ALIGN(size, page_size);
> >       order = pci_epc_mem_get_order(mem, size);
> >       mutex_lock(&mem->lock);
> >       bitmap_release_region(mem->bitmap, pageno, order);
> > diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> > index 5bc1de65849e..cc66bec8be90 100644
> > --- a/include/linux/pci-epc.h
> > +++ b/include/linux/pci-epc.h
> > @@ -65,20 +65,28 @@ struct pci_epc_ops {
> >       struct module *owner;
> >  };
> >
> > +/**
> > + * struct pci_epc_mem_window - address window of the endpoint controller
> > + * @phys_base: physical base address of the PCI address window
> > + * @size: the size of the PCI address window
> > + * @page_size: size of each page
> > + */
> > +struct pci_epc_mem_window {
> > +     phys_addr_t     phys_base;
> > +     size_t          size;
> > +     size_t          page_size;
> > +};
> > +
> >  /**
> >   * struct pci_epc_mem - address space of the endpoint controller
> > - * @phys_base: physical base address of the PCI address space
> > - * @size: the size of the PCI address space
> > + * @window: address window of the endpoint controller
> >   * @bitmap: bitmap to manage the PCI address space
> >   * @pages: number of bits representing the address region
> > - * @page_size: size of each page
> >   * @lock: mutex to protect bitmap
> >   */
> >  struct pci_epc_mem {
> > -     phys_addr_t     phys_base;
> > -     size_t          size;
> > +     struct pci_epc_mem_window window;
>
> Don't see any additional value in moving phys_base, size, page_size to a new
> structure and again including it here.
>
Controllers supporting multiple windows create a list of supported
regions (struct pci_epc_mem_window ) and pass a pointer to
pci_epc_multi_mem_init(), hence this split.

Cheers,
--Prabhakar
