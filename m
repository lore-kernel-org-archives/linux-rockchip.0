From: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
Subject: RE: [PATCH v5 4/7] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Date: Tue, 17 Mar 2020 11:04:47 +0000
Message-ID: <TYAPR01MB4544DD58C495D0ED223B1A7BD8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544599A72C88666B4F972B7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <OSBPR01MB359001B994CFC0CB45170AB0AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <OSBPR01MB359001B994CFC0CB45170AB0AAF60-zhdMvvdcU0ZkIAJEWnuByncolHNk5qUtvxpqHgZTriW3zl9H0oFU5g@public.gmane.org>
Content-Language: ja-JP
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>, Lad Prabhakar <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, "linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Greg
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

Just in my opinion though, automatically adding new line of email client
should be disabled or setting larger characters.
# In my side, I change the setting as 132 characters on Outlook :)

> From: Prabhakar Mahadev Lad, Sent: Tuesday, March 17, 2020 7:04 PM
<snip>
> > > -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base,
> > size_t size,
> > > -		       size_t page_size)
> > > +int __pci_epc_mem_init(struct pci_epc *epc, struct
> > pci_epc_mem_window *windows,
> > > +		       int num_windows)
> > >  {
> > > -	int ret;
> > > -	struct pci_epc_mem *mem;
> > > -	unsigned long *bitmap;
> > > +	struct pci_epc_mem *mem =3D NULL;
> > > +	unsigned long *bitmap =3D NULL;
> > >  	unsigned int page_shift;
> > > -	int pages;
> > > +	size_t page_size;
> > >  	int bitmap_size;
> > > -
> > > -	if (page_size < PAGE_SIZE)
> > > -		page_size =3D PAGE_SIZE;
> > > -
> > > -	page_shift =3D ilog2(page_size);
> > > -	pages =3D size >> page_shift;
> > > -	bitmap_size =3D BITS_TO_LONGS(pages) * sizeof(long);
> > > -
> > > -	mem =3D kzalloc(sizeof(*mem), GFP_KERNEL);
> > > -	if (!mem) {
> > > -		ret =3D -ENOMEM;
> > > -		goto err;
> > > -	}
> > > -
> > > -	bitmap =3D kzalloc(bitmap_size, GFP_KERNEL);
> > > -	if (!bitmap) {
> > > -		ret =3D -ENOMEM;
> > > -		goto err_mem;
> > > +	int pages;
> > > +	int ret;
> > > +	int i;
> > > +
> > > +	epc->mem_windows =3D 0;
> > > +
> > > +	if (!windows)
> > > +		return -EINVAL;
> > > +
> > > +	if (num_windows <=3D 0)
> > > +		return -EINVAL;
> > > +
> > > +	epc->mem =3D kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> > > +	if (!epc->mem)
> > > +		return -EINVAL;
> > > +
> > > +	for (i =3D 0; i < num_windows; i++) {
> > > +		page_size =3D windows[i].page_size;
> > > +		if (page_size < PAGE_SIZE)
> > > +			page_size =3D PAGE_SIZE;
> > > +		page_shift =3D ilog2(page_size);
> > > +		pages =3D windows[i].size >> page_shift;
> > > +		bitmap_size =3D BITS_TO_LONGS(pages) * sizeof(long);
> > > +
> > > +		mem =3D kzalloc(sizeof(*mem), GFP_KERNEL);
> > > +		if (!mem) {
> > > +			ret =3D -ENOMEM;
> > > +			goto err_mem;
> > > +		}
> > > +
> > > +		bitmap =3D kzalloc(bitmap_size, GFP_KERNEL);
> > > +		if (!bitmap) {
> > > +			ret =3D -ENOMEM;
> > > +			goto err_mem;
> > > +		}
> > > +
> > > +		mem->bitmap =3D bitmap;
> > > +		mem->window.phys_base =3D windows[i].phys_base;
> >
> > I could not understand why the window member is needed.
> > I think original members (just phys_base and size) are enough.
> > Also, this function doesn't store the page_size to mem->window.page_siz=
e.

I'm sorry, but I meant the window member is in the left side (mem->window.p=
hys_base).
In other words, this patch changes the struct pci_epc_mem like below, but
I'm thinking this change is not needed because struct pci_epc will have
multiple windows as "array of address space of the endpoint controller".
---
struct pci_epc_mem {
-	phys_addr_t	phys_base;
-	size_t		size;
+	struct pci_epc_mem_window window;
---

> Because,  for example on RZ/Gx platforms, following are the windows on en=
dpoint device
> where the root's address can be mapped, but where as on other platforms a=
tm there
> exists just single window to map. Also on RZ/Gx platforms if a window is =
allocated say of
> size 1K, rest of the window cannot be used for other allocations.
>=20
> 1: 0xfe000000 0 0x80000
> 2: 0xfe100000 0 0x100000
> 3: 0xfe200000 0 0x200000
> 4: 0x30000000 0 0x8000000
> 5: 0x38000000 0 0x8000000
>=20
> Struct pci_epc_mem_window, represents the above windows.

Yes, I understood it.

> window.page_size is set by endpoint controller drivers as done in this pa=
tch.

I meant the left side. No one change the mem->window.page_size so that
the value seems to be 0. Of course, for now, this is no problem because
no one uses this value though.

<snip>
> > >  /**
> > >   * struct pci_epc_mem - address space of the endpoint controller
> > > - * @phys_base: physical base address of the PCI address space
> > > - * @size: the size of the PCI address space
> > > + * @window: address window of the endpoint controller
> > >   * @bitmap: bitmap to manage the PCI address space
> > > - * @pages: number of bits representing the address region
> > >   * @page_size: size of each page
> > > + * @pages: number of bits representing the address region
> > >   */
> > >  struct pci_epc_mem {
> > > -	phys_addr_t	phys_base;
> > > -	size_t		size;
> > > +	struct pci_epc_mem_window window;
> > >  	unsigned long	*bitmap;
> > >  	size_t		page_size;
> > >  	int		pages;
> > > @@ -85,7 +97,8 @@ struct pci_epc_mem {
> > >   * @dev: PCI EPC device
> > >   * @pci_epf: list of endpoint functions present in this EPC device
> > >   * @ops: function pointers for performing endpoint operations
> > > - * @mem: address space of the endpoint controller
> >
> > If my idea is acceptable, this should be "default address space ...".
> >
> Could you please elaborate more on how you would like the structures to b=
e organized.

 * @mem: default address space of the endpoint controller.

And, if I assumed the "array of address space of the endpoint controller"
is renamed as struct pci_epc_mem **windows and when __pci_epc_mem_init() is=
 succeeded,
the function should set the mem value right before return as the first wind=
ow like below.

+	epc->mem =3D epc->windows[0];
+	epc->num_windows =3D num_windows;

	return 0;

Best regards,
Yoshihiro Shimoda
