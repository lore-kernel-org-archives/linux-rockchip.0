From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v8 5/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Date: Mon, 20 Apr 2020 09:04:00 +0000
Message-ID: <TYAPR01MB4544FDF2FEDBED104F6C6C45D8D40@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <1587302823-4435-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: ja-JP
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>, Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Sunday, April 19, 2020 10:27 PM
<snip>
> @@ -109,11 +137,22 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_init);
>   */
>  void pci_epc_mem_exit(struct pci_epc *epc)
>  {
> -	struct pci_epc_mem *mem =3D epc->mem;
> +	struct pci_epc_mem *mem;
> +	int i;
>=20
> +	if (!epc->num_windows)
> +		return;
> +
> +	for (i =3D 0; i <=3D epc->num_windows; i++) {

I'm sorry, I overlooked when I reviewed before.
This condition should be "i < epc->num_windows".

> +		mem =3D epc->windows[i];
> +		kfree(mem->bitmap);
> +		kfree(mem);
> +	}
> +	kfree(epc->windows);
> +
> +	epc->windows =3D NULL;
>  	epc->mem =3D NULL;
> -	kfree(mem->bitmap);
> -	kfree(mem);
> +	epc->num_windows =3D 0;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>=20
> @@ -129,31 +168,57 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
>  				     phys_addr_t *phys_addr, size_t size)
>  {
> -	int pageno;
>  	void __iomem *virt_addr =3D NULL;
> -	struct pci_epc_mem *mem =3D epc->mem;
> -	unsigned int page_shift =3D ilog2(mem->page_size);
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	size_t align_size;
> +	int pageno;
>  	int order;
> +	int i;
>=20
> -	size =3D ALIGN(size, mem->page_size);
> -	order =3D pci_epc_mem_get_order(mem, size);
> -
> -	mutex_lock(&mem->lock);
> -	pageno =3D bitmap_find_free_region(mem->bitmap, mem->pages, order);
> -	if (pageno < 0)
> -		goto ret;
> +	for (i =3D 0; i < epc->num_windows; i++) {
> +		mem =3D epc->windows[i];
> +		mutex_lock(&mem->lock);
> +		align_size =3D ALIGN(size, mem->window.page_size);
> +		order =3D pci_epc_mem_get_order(mem, align_size);
>=20
> -	*phys_addr =3D mem->phys_base + ((phys_addr_t)pageno << page_shift);
> -	virt_addr =3D ioremap(*phys_addr, size);
> -	if (!virt_addr)
> -		bitmap_release_region(mem->bitmap, pageno, order);
> +		pageno =3D bitmap_find_free_region(mem->bitmap, mem->pages,
> +						 order);
> +		if (pageno >=3D 0) {
> +			page_shift =3D ilog2(mem->window.page_size);
> +			*phys_addr =3D mem->window.phys_base +
> +				((phys_addr_t)pageno << page_shift);
> +			virt_addr =3D ioremap(*phys_addr, align_size);
> +			if (!virt_addr)
> +				bitmap_release_region(mem->bitmap,
> +						      pageno, order);

I'm sorry here again. But, I think we should call mutex_unlock() and "conti=
nue;"
here if ioremap() failed for trying remaining windows. What do you think?

> +			mutex_unlock(&mem->lock);
> +			return virt_addr;
> +		}
> +		mutex_unlock(&mem->lock);
> +	}
>=20
> -ret:
> -	mutex_unlock(&mem->lock);
>  	return virt_addr;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);

Best regards,
Yoshihiro Shimoda
