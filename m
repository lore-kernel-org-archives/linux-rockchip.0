Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74747D21274
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vb08Lq94TfBr/qAP3+Jm2GfHPEUyDe3vRD/K+vIyoUU=; b=RikXnfODeQZnYH
	AuU7uGRO+aaOW61dUFzRHNLV67OdgJlnohsnqLJpYNk3eA1rUn60TKqQoJEw8nd5aIkU7XNdB8gna
	s2KKrZyo29iH0MYZiYwqxKgbEYpDGIugGBaLsapvRwoNTST45dzEi8t4eoVfXC2D4Esx26u8lzzON
	2+koTHiHbNI6dwch0SOFHRWHwj8+rACgURiHdJw1CvW0K+gFYG5TeYgkfSz8VyVOv0/oFfQIaER3G
	QOTk6KO6E9R6124JmLw7U5n4JAeee1O0WmHGBO0GR8ExXDttBhmaAGcRKN9BLv31dVeEnsvQDbPju
	YX17AEAvFCEuwW4UC/Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1NXs-0000000EUQ2-0IlE;
	Thu, 17 Oct 2024 10:15:52 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1NBR-0000000EQE1-38uP
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 09:52:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0A8D0A43AFE;
	Thu, 17 Oct 2024 09:52:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B701EC4CED1;
	Thu, 17 Oct 2024 09:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729158760;
	bh=uukEasIQNFgjyA46j6yP84HfXniUu+fVrEHA2EgplSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PIN/UOb+jYQdtHShMKSEAPVkRiEk3O+matAyczVNRM/9cCII3p41QM1Vh1LRUWBew
	 Dkn62I7kl0iao9jlrXinm4nG/n/JeU0HsxGwZa4befRw/12t8EferCYJLCDGMWCPuW
	 9GvNu2F6dm39IZqm4WXmzDfbkSuDhhmhB2KN2YB4nXU8uOAdFrPju31DH/TI/ZQQ6C
	 puvtBGDxKIlbvV/8g6rxVp/3lTvuu55B/FJU3DTudJwfr63QjuvkLWgA5AxANfFoBT
	 Y4ZzJDH3db3zdHHx0rhAStjm5NU9ktl7uCMBhkMtwelN+LutLnQRbI6gvE/fBzwfaF
	 lGdtEzb3OxwSg==
Date: Thu, 17 Oct 2024 11:52:34 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>
Subject: Re: [PATCH v5 06/14] PCI: rockchip-ep: Fix MSI IRQ data mapping
Message-ID: <ZxDeYqfti0iiK8D2@ryzen.lan>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <20241017015849.190271-7-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017015849.190271-7-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_025241_938373_4884B56E 
X-CRM114-Status: GOOD (  24.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Oct 17, 2024 at 10:58:41AM +0900, Damien Le Moal wrote:
> The call to rockchip_pcie_prog_ep_ob_atu() used to map the PCI address
> of MSI data to the memory window allocated on probe for IRQs is done
> in rockchip_pcie_ep_send_msi_irq() assuming a fixed alignment to a
> 256B boundary of the PCI address.  This is not correct as the alignment
> constraint for the RK3399 PCI mapping depends on the number of bits of
> address changing in the mapped region. This leads to an unstable system
> which sometimes work and sometimes does not (crashing on paging faults
> when memcpy_toio() or memcpy_fromio() are used).
> 
> Similar to regular data mapping, the MSI data mapping must thus be
> handled according to the information provided by
> rockchip_pcie_ep_align_addr(). Modify rockchip_pcie_ep_send_msi_irq()
> to use rockchip_pcie_ep_align_addr() to correctly program entry 0 of
> the ATU for sending MSI IRQs.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index f6959f9b94b7..dcd1b5415602 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -379,9 +379,10 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
>  {
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  	u32 flags, mme, data, data_mask;
> +	size_t irq_pci_size, offset;
> +	u64 irq_pci_addr;
>  	u8 msi_count;
>  	u64 pci_addr;
> -	u32 r;
>  
>  	/* Check MSI enable bit */
>  	flags = rockchip_pcie_read(&ep->rockchip,
> @@ -417,18 +418,21 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
>  				       PCI_MSI_ADDRESS_LO);
>  
>  	/* Set the outbound region if needed. */
> -	if (unlikely(ep->irq_pci_addr != (pci_addr & PCIE_ADDR_MASK) ||
> +	irq_pci_size = ~PCIE_ADDR_MASK + 1;
> +	irq_pci_addr = rockchip_pcie_ep_align_addr(ep->epc,
> +						   pci_addr & PCIE_ADDR_MASK,
> +						   &irq_pci_size, &offset);
> +	if (unlikely(ep->irq_pci_addr != irq_pci_addr ||
>  		     ep->irq_pci_fn != fn)) {
> -		r = rockchip_ob_region(ep->irq_phys_addr);
> -		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
> -					     ep->irq_phys_addr,
> -					     pci_addr & PCIE_ADDR_MASK,
> -					     ~PCIE_ADDR_MASK + 1);
> -		ep->irq_pci_addr = (pci_addr & PCIE_ADDR_MASK);
> +		rockchip_pcie_prog_ep_ob_atu(rockchip, fn,
> +					rockchip_ob_region(ep->irq_phys_addr),
> +					ep->irq_phys_addr,
> +					irq_pci_addr, irq_pci_size);
> +		ep->irq_pci_addr = irq_pci_addr;
>  		ep->irq_pci_fn = fn;
>  	}
>  
> -	writew(data, ep->irq_cpu_addr + (pci_addr & ~PCIE_ADDR_MASK));
> +	writew(data, ep->irq_cpu_addr + offset + (pci_addr & ~PCIE_ADDR_MASK));
>  	return 0;
>  }
>  
> -- 
> 2.47.0
> 

Nice catch.

For DWC, in dw_pcie_ep_raise_msi_irq()
https://github.com/torvalds/linux/blob/v6.12-rc3/drivers/pci/controller/dwc/pcie-designware-ep.c#L519-L522

and in dw_pcie_ep_raise_msix_irq()
https://github.com/torvalds/linux/blob/v6.12-rc3/drivers/pci/controller/dwc/pcie-designware-ep.c#L603-L606

We also make sure that the address that we map is aligned,
and then write to the correct offset within that mapping:
ep->msi_mem + aligned_offset;
in order to write to the actual MSI address.

To me, it looks like doing a similar change as this patch does,
to dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq(),
would make the PCI endpoint code more consistent overall.

Thoughts?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
