Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F760C67861
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 15:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmSNVUFOVOuhPV3Le6DlQiE6CDwGNBP59JCr4sf/2gw=; b=xzXPCMpi8WD0tS
	zWZaxgc1dSoM3irPaX5+WpIbJeDzBTMr1uqZcSEhzbt2S+1MV18HoctS7lcwvIfmXtNIcfeq5fSOT
	6ezq/POBludOL4S8KDn6l+/4idKBvfGvrVFdAxlGsg/XSTOsF2g34RY4kOrWr0vkKgdPJ8qUJQg4J
	ITKYXC0NkcGKmXRud2S1vpymwu0DEHryF4FWfYtw/zsw3bG5x3HxXZe0kIA9LSTH8vN38IsYfG1Zo
	qpdjKuVva0iC8XfiCtLY6T8o1kZmN0VN2gxgcDBkYDabrJsqSWYLazTB3b8dZj6eQ5iALpAE4xo+a
	wDtL4X3wWZnjfRPGWRDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rslL1-00000007hTn-2Yq0;
	Fri, 05 Apr 2024 15:18:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rslKx-00000007hSV-2RKC;
	Fri, 05 Apr 2024 15:18:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 87187618FA;
	Fri,  5 Apr 2024 15:18:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED339C433C7;
	Fri,  5 Apr 2024 15:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712330317;
	bh=X6pHevWSssAs9ixG4YxroAR6EPsHtS1VXJB0aVPbpis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tSjJQ/bbGYLM3304BH4A8P12Fsfgm6xezkRozu8XogFubodOKDPaqvBEkk77Zxpu4
	 gA153lZpCzWfw0VF+OEzQOzdoEy9NUOPmVwesxeUJ/X6gwc9HRT1GX6WR3qGj0Vria
	 WwF6teE8+2dmqfwXG87b/cFXeQ0gMT5238Yi2SLen4RCS9Pq2TCpUt8wIqdb7pFEhE
	 DuIsihbwZJTwkcoGuLKDlVHCqUv6T+KeXsVWb+3OaZ1zkGnjhPECjZbEVhtl6BH2FG
	 8dj6W43YsAfs4gqN2tKUZumg7zCG3XFZmRm6UEPZAtZyI8IemaA+jAAVdvlc3sbkU1
	 d0yC9MaId/roA==
Date: Fri, 5 Apr 2024 17:18:28 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Kishon Vijay Abraham I <kvijayab@amd.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Message-ID: <ZhAWRLiP8DNZEC0x@x1-carbon>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
 <dccb87db-d826-43fa-a499-cf36ea9b10d5@amd.com>
 <3a2aff21-4b1d-4f99-bd49-bf75f41cb924@kernel.org>
 <Zg_skLWnl04-pxkn@ryzen>
 <9b3cfd8a-640d-4645-83a9-ddaa34cd09cd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b3cfd8a-640d-4645-83a9-ddaa34cd09cd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_081839_743020_429337BB 
X-CRM114-Status: GOOD (  48.92  )
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

On Fri, Apr 05, 2024 at 09:43:42PM +0900, Damien Le Moal wrote:
> On 4/5/24 21:20, Niklas Cassel wrote:
> > 
> > Now I understand that rockchip is the first one that does not have a fixed
> > alignment.
> > So for that platform, map_align() will be different from ep->page_size.
> > (For all DWC based drivers the outbound iATU alignment requirement is
> > the same as the page size.)
> 
> Yes. So we can have a generic map_align() implementation that all these drivers
> can use as there .map_align method. No need to expose page size to the epc/epf
> core code.

I don't follow.

ep->page_size is used by pci_epc_multi_mem_init(), pci_epc_mem_alloc_addr()
and pci_epc_mem_free_addr(), so it is used by EPC core.

pci_epc_mem_alloc_addr() currently uses it to align up an allocation to the
page size, so that an allocation from the PCI window/memory space is a multiple
of page_size. How can we avoid exposing the page size to EPC core?


For a DWC-based driver, the mapping part requires that the start address of
the mapping should be aligned to the page size.

But e.g.
drivers/pci/controller/pcie-rockchip-ep.c, sets page size (smallest allocation):
to 1 MB:
windows[i].page_size = SZ_1M;

But the mapping part for rockchip-ep appears to have different requirements.


> 
> > However, it would be nice if:
> > 1) We could have a default implementation of map_align() that by default uses
> > ep->page_size. Platforms that have non-fixed alignment requirements could
> > define their own map_align().
> 
> See above. The default implementation can be a helper function defined in epc
> core that the drivers can use for their .map_align() method.

Sounds good.


> > 2) We fix dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq() to use
> > the new pci_epc_map_align().
> 
> Why ? That is completely internal to the controller driver.

Well, dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq() currently does
some clearing of lower bits of the address before using .map_addr() to map the
an aligned outbound address. It will then write to the mapped address + some
offset.

Since it is already using .map_addr(), it seems like the perfect use case for
pci_epc_map_align(), as the function then would not need to do any clearing
of lower bits before mapping, nor writing to an offset within the mapping.

It would just use pci_epc_map_align() and then write to map->pci_addr.


> > 3) It is getting too complicated with all these...
> > epc_features->align, ep->page_size, map_align(), and .alignment in host driver.
> > I think that we need to document each of these in Documentation/PCI/endpoint/
> 
> test host driver .alignment needs to be nuked. That one is nonsense.
> ep->page_size needs to stay internal to the driver. .map_align method is enough
> to handle any PCI address mapping constraint and will indicate memory size to
> allocate, offset into it etc. And for the BARs alignment, .align feature is not
> exactly great as it is not clear, but it is enough I think. So we could just
> rename it to be clear. And even maybe remove it from features. I do not see why
> an EPF needs to care about it given that epc core funstions are used to setup
> the bars.

+1 on renaming it to bar_alignment or inbound_alignment or similar.

I don't think that we can remove it from epc_features. It is used by
pci_epf_alloc_space() which uses epc_features->align to ensure that
when an EPF driver allocates the backing memory for a BAR, the backing
memory is aligned to bar_alignment. (An allocation of size X is guaranteed
to be aligned to X.)


> > 4) It would be nice if we could set page_size correctly for all the PCI device
> > and vendor IDs that have defined an .alignment in drivers/misc/pci_endpoint_test.c
> > in the correct EPC driver. That way, we should be able to completely remove all
> > .alignment specified in drivers/misc/pci_endpoint_test.c.
> 
> The host side should be allowed to use any PCI address alignment it wants. So no
> alignment communicated at all. It is the EP side that needs to deal with alignment.

I think we are saying the same thing.
But in order to remove all .alignment uses in drivers/misc/pci_endpoint_test.c,
we will need to add modify the corresponding EPC driver to either:
- Define the ep->page_size, so that the generic map_align() implementation will
work.
(If you grep for page_size in drivers/pci/controller, you will see that
very few EPC drivers currently set ep->page_size, even though the PCI device
and vendor IDs for those same controllers have specified an alignment in
drivers/misc/pci_endpoint_test.c)
- Define a custom map_align() implementation.


> > 5) Unfortunately drivers/misc/pci_endpoint_test.c defines a default alignment
> > of 4K:
> > https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L968
> > https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L820
> > 
> > It would be nice if we could get rid of this as well. Or perhaps add an option
> > to pci_test so that it does not use this 4k alignment, such that we can verify
> > that pci_epc_map_align() is actually working.
> 
> Exactly. Get rid of any default alignment, add a test parameter to define one so
> that we can test different alignment+size combinations.
> 
> > In my opinion 4) is the biggest win with this series, because it means that
> > we define the alignment in the EPC driver, instead of needing to define it in
> > each and every host side driver. But right now, this great improvement is not
> > really visible for someone looking quickly at the current series.
> 
> Yes. Once in place, we can rework the test driver alignment stuff to make it
> optional instead of mandatory because of bad handling on the EP side :)

Perhaps it would be nice to have 5) implemented for this initial series,
so that it is possible to test that this new API is behaving as intended?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
