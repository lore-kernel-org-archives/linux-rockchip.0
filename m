From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v6 06/11] PCI: endpoint: Add support to handle multiple
 base for mapping outbound memory
Date: Fri, 3 Apr 2020 09:34:06 +0000
Message-ID: <TYAPR01MB4544D205BE659CE74205737CD8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB45442959B9FD7299D2CB8D73D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <OSBPR01MB3590260FDE8EA7D3701EAE2FAAC70@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <OSBPR01MB3590260FDE8EA7D3701EAE2FAAC70@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Content-Language: ja-JP
Sender: linux-kernel-owner@vger.kernel.org
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Frank Rowand <frowand.list@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Simon Horman <horms@verge.net.au>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

> From: Prabhakar Mahadev Lad, Sent: Friday, April 3, 2020 6:12 PM
<snip>
> > > @@ -122,31 +167,56 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> > >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> > >  				     phys_addr_t *phys_addr, size_t size)
> > >  {
> > > -	int pageno;
> > >  	void __iomem *virt_addr =3D NULL;
> > > -	struct pci_epc_mem *mem =3D epc->mem;
> > > -	unsigned int page_shift =3D ilog2(mem->page_size);
> > > +	struct pci_epc_mem *mem;
> > > +	unsigned int page_shift;
> > > +	int pageno =3D -EINVAL;
> > >  	int order;
> > > +	int i;
> > >
> > > -	size =3D ALIGN(size, mem->page_size);
> > > -	order =3D pci_epc_mem_get_order(mem, size);
> > > -
> > > -	mutex_lock(&mem->lock);
> > > -	pageno =3D bitmap_find_free_region(mem->bitmap, mem->pages, order);
> > > -	if (pageno < 0)
> > > -		goto ret;
> > > +	for (i =3D 0; i < epc->num_windows; i++) {
> > > +		mem =3D epc->windows[i];
> > > +		mutex_lock(&mem->lock);
> >
> > This is my feeling though, calling mutex_lock() in the loop seems
> > to cause overhead. And, if we call mutex_lock() at out-of the loop,
> > I think we can write single mutex_unlock() calling.
> >
> But the mutex is for each window, are you suggesting to add a global mute=
x ?

Oops, that's right. So, I'd like to recall.

> > > +		size =3D ALIGN(size, mem->window.page_size);
> >
> > I'm sorry I should have realized this in the previous review,
> > but overwriting this size is possible to cause an issue at second time =
or more loops.
> > So, the first argument of ALIGN should be kept for the loop.
> >
> Could you please elaborate on this.

My concern is the following.

For example, the size of argument of pci_epc_mem_alloc_addr() is 4096.
epc->windows[0].window.page_size =3D 8192
 --> then the size will be changed to 0.

epc->windows[1].window.page_size =3D 4096
 --> since the size was changed to 0 on the first loop, the result is 0.
     But, this should be 4096.

Does such a case never happen?
(Or, is my understanding incorrect?)

Best regards,
Yoshihiro Shimoda


> > > +		order =3D pci_epc_mem_get_order(mem, size);
> > >
> > > -	*phys_addr =3D mem->phys_base + ((phys_addr_t)pageno << page_shift)=
;
> > > -	virt_addr =3D ioremap(*phys_addr, size);
> > > -	if (!virt_addr)
> > > -		bitmap_release_region(mem->bitmap, pageno, order);
> > > +		pageno =3D bitmap_find_free_region(mem->bitmap, mem->pages,
> > > +						 order);
> > > +		if (pageno >=3D 0) {
> > > +			page_shift =3D ilog2(mem->window.page_size);
> > > +			*phys_addr =3D mem->window.phys_base +
> > > +				((phys_addr_t)pageno << page_shift);
> > > +			virt_addr =3D ioremap(*phys_addr, size);
> > > +			if (!virt_addr)
> > > +				bitmap_release_region(mem->bitmap,
> > > +						      pageno, order);
> > > +			mutex_unlock(&mem->lock);
> > > +			return virt_addr;
> >
> > As I mentioned above, if mutex_lock() is called at out-of-loop,
> > we can use "goto ret;" here like the original code,
> >
> > > +		}
> > > +		mutex_unlock(&mem->lock);
> >
> > and we can remove this.
> >
> > > +	}
> > >
> > > -ret:
> > > -	mutex_unlock(&mem->lock);
> > >  	return virt_addr;
> > >  }
> > >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> > >
> > > +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> > > +						phys_addr_t phys_addr)
> > > +{
> > > +	struct pci_epc_mem *mem;
> > > +	int i;
> > > +
> > > +	for (i =3D 0; i < epc->num_windows; i++) {
> > > +		mem =3D epc->windows[i];
> > > +
> > > +		if (phys_addr >=3D mem->window.phys_base &&
> > > +		    phys_addr < (mem->window.phys_base + mem->window.size))
> > > +			return mem;
> > > +	}
> > > +
> > > +	return NULL;
> > > +}
> > > +
> > >  /**
> > >   * pci_epc_mem_free_addr() - free the allocated memory address
> > >   * @epc: the EPC device on which memory was allocated
> > > @@ -159,14 +229,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> > >  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_add=
r,
> > >  			   void __iomem *virt_addr, size_t size)
> > >  {
> > > +	struct pci_epc_mem *mem;
> > > +	unsigned int page_shift;
> > > +	size_t page_size;
> > >  	int pageno;
> > > -	struct pci_epc_mem *mem =3D epc->mem;
> > > -	unsigned int page_shift =3D ilog2(mem->page_size);
> > >  	int order;
> > >
> > > +	mem =3D pci_epc_get_matching_window(epc, phys_addr);
> > > +	if (!mem) {
> > > +		pr_err("failed to get matching window\n");
> > > +		return;
> > > +	}
> > > +
> > > +	page_size =3D mem->window.page_size;
> > > +	page_shift =3D ilog2(page_size);
> > >  	iounmap(virt_addr);
> > > -	pageno =3D (phys_addr - mem->phys_base) >> page_shift;
> > > -	size =3D ALIGN(size, mem->page_size);
> > > +	pageno =3D (phys_addr - mem->window.phys_base) >> page_shift;
> > > +	size =3D ALIGN(size, page_size);
> > >  	order =3D pci_epc_mem_get_order(mem, size);
> > >  	mutex_lock(&mem->lock);
> > >  	bitmap_release_region(mem->bitmap, pageno, order);
> > > diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> > > index e0ed9d01f6e5..d5da11cf0f2a 100644
> > > --- a/include/linux/pci-epc.h
> > > +++ b/include/linux/pci-epc.h
> > > @@ -65,20 +65,28 @@ struct pci_epc_ops {
> > >  	struct module *owner;
> > >  };
> > >
> > > +/**
> > > + * struct pci_epc_mem_window - address window of the endpoint contro=
ller
> > > + * @phys_base: physical base address of the PCI address window
> > > + * @size: the size of the PCI address window
> > > + * @page_size: size of each page
> > > + */
> > > +struct pci_epc_mem_window {
> > > +	phys_addr_t	phys_base;
> > > +	size_t		size;
> > > +	size_t		page_size;
> > > +};
> > > +
> > >  /**
> > >   * struct pci_epc_mem - address space of the endpoint controller
> > > - * @phys_base: physical base address of the PCI address space
> > > - * @size: the size of the PCI address space
> > > + * @window: address window of the endpoint controller
> > >   * @bitmap: bitmap to manage the PCI address space
> > > - * @pages: number of bits representing the address region
> > > - * @page_size: size of each page
> > >   * @lock: mutex to protect bitmap
> > > + * @pages: number of bits representing the address region
> >
> > Perhaps, we should not change the "@pages" line.
> >
> OK will drop this change.
>=20
> Cheers,
> --Prabhakar
>=20
> > Best regards,
> > Yoshihiro Shimoda
