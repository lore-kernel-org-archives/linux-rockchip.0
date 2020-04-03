From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Subject: RE: [PATCH v6 06/11] PCI: endpoint: Add support to handle multiple
 base for mapping outbound memory
Date: Fri, 3 Apr 2020 09:11:44 +0000
Message-ID: <OSBPR01MB3590260FDE8EA7D3701EAE2FAAC70@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB45442959B9FD7299D2CB8D73D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <TYAPR01MB45442959B9FD7299D2CB8D73D8C70-0qPFe2CvyVQpBNo+t84M2ncolHNk5qUtvxpqHgZTriW3zl9H0oFU5g@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, Magnus Damm <magnus.damm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Paterson <Chris.Paterson2-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Frank Rowand <frowand.list-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Simon Horman <horms-/R6kz+dDXgpPR4JQBCEnsQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Heiko
List-Id: linux-rockchip.vger.kernel.org

Hi Shimoda-san,

Thank you for the review.

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
> Sent: 03 April 2020 09:23
> To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>; Bjor=
n Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>; Rob Herring
> <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>; Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>; Geert Uytterho=
even <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>; Magnus Damm
> <magnus.damm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>; Lorenzo =
Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>; Marek Vasut
> <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Cc: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>; Will Deacon <will@kernel.o=
rg>; Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>; Greg Kroah-Hartman
> <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>; Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>; devi=
cetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org;
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org; linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; =
Chris Paterson <Chris.Paterson2-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>; Frank Rowand
> <frowand.list-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org=
>; Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; Simon Horman
> <horms-/R6kz+dDXgpPR4JQBCEnsQ@public.gmane.org>; Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>; Tom Joseph <t=
joseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>; Heiko Stuebner
> <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>; linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org; Lad Prabhakar <pra=
bhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; Prabhakar Mahadev Lad
> <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
> Subject: RE: [PATCH v6 06/11] PCI: endpoint: Add support to handle multip=
le base for mapping outbound memory
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> >
> > R-Car PCIe controller has support to map multiple memory regions for
> > mapping the outbound memory in local system also the controller limits
> > single allocation for each region (that is, once a chunk is used from t=
he
> > region it cannot be used to allocate a new one). This features inspires=
 to
> > add support for handling multiple memory bases in endpoint framework.
> >
> > With this patch pci_epc_mem_init() initializes address space for endpoi=
nt
> > controller which support single window and whereas __pci_epc_mem_init()
> > now accepts pointer to multiple windows supported by endpoint controlle=
r.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
> > ---
> > @@ -38,61 +38,95 @@ static int pci_epc_mem_get_order(struct pci_epc_mem=
 *mem, size_t size)
> >  /**
> >   * __pci_epc_mem_init() - initialize the pci_epc_mem structure
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
> > -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, siz=
e_t size,
> > -       size_t page_size)
> > +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window =
*windows,
> > +       unsigned int num_windows)
> >  {
> > -int ret;
> > -struct pci_epc_mem *mem;
> > -unsigned long *bitmap;
> > +struct pci_epc_mem *mem =3D NULL;
> > +unsigned long *bitmap =3D NULL;
> >  unsigned int page_shift;
> > -int pages;
> > +size_t page_size;
> >  int bitmap_size;
> > +int pages;
> > +int ret;
> > +int i;
> >
> > -if (page_size < PAGE_SIZE)
> > -page_size =3D PAGE_SIZE;
> > +epc->num_windows =3D 0;
> >
> > -page_shift =3D ilog2(page_size);
> > -pages =3D size >> page_shift;
> > -bitmap_size =3D BITS_TO_LONGS(pages) * sizeof(long);
> > +if (!windows || !num_windows)
> > +return -EINVAL;
> >
> > -mem =3D kzalloc(sizeof(*mem), GFP_KERNEL);
> > -if (!mem) {
> > -ret =3D -ENOMEM;
> > -goto err;
> > -}
> > +epc->windows =3D kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> > +if (!epc->windows)
> > +return -ENOMEM;
> >
> > -bitmap =3D kzalloc(bitmap_size, GFP_KERNEL);
> > -if (!bitmap) {
> > -ret =3D -ENOMEM;
> > -goto err_mem;
> > -}
> > +for (i =3D 0; i < num_windows; i++) {
> > +page_size =3D windows[i].page_size;
> > +if (page_size < PAGE_SIZE)
> > +page_size =3D PAGE_SIZE;
> > +page_shift =3D ilog2(page_size);
> > +pages =3D windows[i].size >> page_shift;
> > +bitmap_size =3D BITS_TO_LONGS(pages) * sizeof(long);
> > +
> > +mem =3D kzalloc(sizeof(*mem), GFP_KERNEL);
> > +if (!mem) {
> > +ret =3D -ENOMEM;
> > +i -=3D 1;
>
> nit: We can use i--;
>
Will change it.

> > +goto err_mem;
> > +}
> > +
> > +bitmap =3D kzalloc(bitmap_size, GFP_KERNEL);
> > +if (!bitmap) {
> > +ret =3D -ENOMEM;
> > +kfree(mem);
> > +i -=3D 1;
>
> nit: We can use i--;
>
As above.

> <snip>
> > @@ -122,31 +167,56 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> >       phys_addr_t *phys_addr, size_t size)
> >  {
> > -int pageno;
> >  void __iomem *virt_addr =3D NULL;
> > -struct pci_epc_mem *mem =3D epc->mem;
> > -unsigned int page_shift =3D ilog2(mem->page_size);
> > +struct pci_epc_mem *mem;
> > +unsigned int page_shift;
> > +int pageno =3D -EINVAL;
> >  int order;
> > +int i;
> >
> > -size =3D ALIGN(size, mem->page_size);
> > -order =3D pci_epc_mem_get_order(mem, size);
> > -
> > -mutex_lock(&mem->lock);
> > -pageno =3D bitmap_find_free_region(mem->bitmap, mem->pages, order);
> > -if (pageno < 0)
> > -goto ret;
> > +for (i =3D 0; i < epc->num_windows; i++) {
> > +mem =3D epc->windows[i];
> > +mutex_lock(&mem->lock);
>
> This is my feeling though, calling mutex_lock() in the loop seems
> to cause overhead. And, if we call mutex_lock() at out-of the loop,
> I think we can write single mutex_unlock() calling.
>
But the mutex is for each window, are you suggesting to add a global mutex =
?

> > +size =3D ALIGN(size, mem->window.page_size);
>
> I'm sorry I should have realized this in the previous review,
> but overwriting this size is possible to cause an issue at second time or=
 more loops.
> So, the first argument of ALIGN should be kept for the loop.
>
Could you please elaborate on this.

> > +order =3D pci_epc_mem_get_order(mem, size);
> >
> > -*phys_addr =3D mem->phys_base + ((phys_addr_t)pageno << page_shift);
> > -virt_addr =3D ioremap(*phys_addr, size);
> > -if (!virt_addr)
> > -bitmap_release_region(mem->bitmap, pageno, order);
> > +pageno =3D bitmap_find_free_region(mem->bitmap, mem->pages,
> > + order);
> > +if (pageno >=3D 0) {
> > +page_shift =3D ilog2(mem->window.page_size);
> > +*phys_addr =3D mem->window.phys_base +
> > +((phys_addr_t)pageno << page_shift);
> > +virt_addr =3D ioremap(*phys_addr, size);
> > +if (!virt_addr)
> > +bitmap_release_region(mem->bitmap,
> > +      pageno, order);
> > +mutex_unlock(&mem->lock);
> > +return virt_addr;
>
> As I mentioned above, if mutex_lock() is called at out-of-loop,
> we can use "goto ret;" here like the original code,
>
> > +}
> > +mutex_unlock(&mem->lock);
>
> and we can remove this.
>
> > +}
> >
> > -ret:
> > -mutex_unlock(&mem->lock);
> >  return virt_addr;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >
> > +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> > +phys_addr_t phys_addr)
> > +{
> > +struct pci_epc_mem *mem;
> > +int i;
> > +
> > +for (i =3D 0; i < epc->num_windows; i++) {
> > +mem =3D epc->windows[i];
> > +
> > +if (phys_addr >=3D mem->window.phys_base &&
> > +    phys_addr < (mem->window.phys_base + mem->window.size))
> > +return mem;
> > +}
> > +
> > +return NULL;
> > +}
> > +
> >  /**
> >   * pci_epc_mem_free_addr() - free the allocated memory address
> >   * @epc: the EPC device on which memory was allocated
> > @@ -159,14 +229,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> >  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
> >     void __iomem *virt_addr, size_t size)
> >  {
> > +struct pci_epc_mem *mem;
> > +unsigned int page_shift;
> > +size_t page_size;
> >  int pageno;
> > -struct pci_epc_mem *mem =3D epc->mem;
> > -unsigned int page_shift =3D ilog2(mem->page_size);
> >  int order;
> >
> > +mem =3D pci_epc_get_matching_window(epc, phys_addr);
> > +if (!mem) {
> > +pr_err("failed to get matching window\n");
> > +return;
> > +}
> > +
> > +page_size =3D mem->window.page_size;
> > +page_shift =3D ilog2(page_size);
> >  iounmap(virt_addr);
> > -pageno =3D (phys_addr - mem->phys_base) >> page_shift;
> > -size =3D ALIGN(size, mem->page_size);
> > +pageno =3D (phys_addr - mem->window.phys_base) >> page_shift;
> > +size =3D ALIGN(size, page_size);
> >  order =3D pci_epc_mem_get_order(mem, size);
> >  mutex_lock(&mem->lock);
> >  bitmap_release_region(mem->bitmap, pageno, order);
> > diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> > index e0ed9d01f6e5..d5da11cf0f2a 100644
> > --- a/include/linux/pci-epc.h
> > +++ b/include/linux/pci-epc.h
> > @@ -65,20 +65,28 @@ struct pci_epc_ops {
> >  struct module *owner;
> >  };
> >
> > +/**
> > + * struct pci_epc_mem_window - address window of the endpoint controll=
er
> > + * @phys_base: physical base address of the PCI address window
> > + * @size: the size of the PCI address window
> > + * @page_size: size of each page
> > + */
> > +struct pci_epc_mem_window {
> > +phys_addr_tphys_base;
> > +size_tsize;
> > +size_tpage_size;
> > +};
> > +
> >  /**
> >   * struct pci_epc_mem - address space of the endpoint controller
> > - * @phys_base: physical base address of the PCI address space
> > - * @size: the size of the PCI address space
> > + * @window: address window of the endpoint controller
> >   * @bitmap: bitmap to manage the PCI address space
> > - * @pages: number of bits representing the address region
> > - * @page_size: size of each page
> >   * @lock: mutex to protect bitmap
> > + * @pages: number of bits representing the address region
>
> Perhaps, we should not change the "@pages" line.
>
OK will drop this change.

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch=
, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, =
40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldor=
f, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WE=
EE reg. no.: DE 14978647
