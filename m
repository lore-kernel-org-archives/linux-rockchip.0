Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF7A9CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 12:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5t9QOlNa02QfiUcnKtN7sPAbEWEROe1QLIxAD4r60g4=; b=RzxNJNFS0O1f7Y
	wvnFFrrQT5I0UFDYDeY/Ci24FfI7rtZuDx8ERi2KPxGMNpFiPjMPx2QTv9ruv2uZMZKEZgYXPJwGz
	CXsMg1dQWQRiu1Q1OqqecfSlNoqjH6qm4vmrbL2NTo3fFCg5gbSHBL0bQmqkOBZ7QSq/fw6shBgRY
	8OCRH71nLuFYCTeEoZ+EvFln2a8jg/0C7niLp4116W3W+N3FZrOtFv3PqoAVv8ddPbbLaqiJX9QHd
	08/4OnUPQhcCj3NJMVg84wL23txgoiOAnN4L4oH7h9I3UgHlCoEXJkmPopps8giCNcRlIo48ZLiM+
	yjkmPovdp4aO2K1Kc4pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsiYm-00000006tg8-1GSu;
	Fri, 05 Apr 2024 12:20:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsiYi-00000006tdt-1HW1;
	Fri, 05 Apr 2024 12:20:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 57E7C612E3;
	Fri,  5 Apr 2024 12:20:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 412C3C433C7;
	Fri,  5 Apr 2024 12:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712319639;
	bh=7IlIsmaUGt9vN0FkEmaPIjm0f3Rgk4zASXxH2vUlsb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dSFi+QFh35YUN9w2ozzKt7Z+dsTS9Jgjyua1hv0sBAodw+KW0TI/hIuelLU1ThOio
	 2f5uZrqvhGolioi4KCWYw6YN+4cdln/wqcVnfXF9SPVXYEldeqRONfzTX2WwQqn0RB
	 nNgXS/hnEXCYAON8qsKa0zUHZkkFVJeYlWMgtf+jda1hGTdX+Jnwc1VBCoHI0Ez/+8
	 0rDA2iQ14y6i5U0s1wgBpYjlTYR7/kRO69YiyXcEmignn6PR34UtjWBeVbkFVBK/a/
	 avOUqDvTzvoTiu0GITjk5p2FcslMFlcv+JjtEHkia+A4ln3xFofqGCZrtlyxR0smzo
	 N931M12H2CiBg==
Date: Fri, 5 Apr 2024 14:20:32 +0200
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
Message-ID: <Zg_skLWnl04-pxkn@ryzen>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
 <dccb87db-d826-43fa-a499-cf36ea9b10d5@amd.com>
 <3a2aff21-4b1d-4f99-bd49-bf75f41cb924@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a2aff21-4b1d-4f99-bd49-bf75f41cb924@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_052040_476371_671EF04D 
X-CRM114-Status: GOOD (  60.42  )
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

On Thu, Apr 04, 2024 at 11:43:47AM +0900, Damien Le Moal wrote:
> On 4/3/24 21:33, Kishon Vijay Abraham I wrote:
> > Hi Damien,
> > 
> > On 3/30/2024 9:49 AM, Damien Le Moal wrote:
> >> Some endpoint controllers have requirements on the alignment of the
> >> controller physical memory address that must be used to map a RC PCI
> >> address region. For instance, the rockchip endpoint controller uses
> >> at most the lower 20 bits of a physical memory address region as the
> >> lower bits of an RC PCI address. For mapping a PCI address region of
> >> size bytes starting from pci_addr, the exact number of address bits
> >> used is the number of address bits changing in the address range
> >> [pci_addr..pci_addr + size - 1].
> >>
> >> For this example, this creates the following constraints:
> >> 1) The offset into the controller physical memory allocated for a
> >>     mapping depends on the mapping size *and* the starting PCI address
> >>     for the mapping.
> >> 2) A mapping size cannot exceed the controller windows size (1MB) minus
> >>     the offset needed into the allocated physical memory, which can end
> >>     up being a smaller size than the desired mapping size.
> >>
> >> Handling these constraints independently of the controller being used in
> >> a PCI EP function driver is not possible with the current EPC API as
> >> it only provides the ->align field in struct pci_epc_features.
> >> Furthermore, this alignment is static and does not depend on a mapping
> >> pci address and size.
> >>
> >> Solve this by introducing the function pci_epc_map_align() and the
> >> endpoint controller operation ->map_align to allow endpoint function
> >> drivers to obtain the size and the offset into a controller address
> >> region that must be used to map an RC PCI address region. The size
> >> of the physical address region provided by pci_epc_map_align() can then
> >> be used as the size argument for the function pci_epc_mem_alloc_addr().
> >> The offset into the allocated controller memory can be used to
> >> correctly handle data transfers. Of note is that pci_epc_map_align() may
> >> indicate upon return a mapping size that is smaller (but not 0) than the
> >> requested PCI address region size. For such case, an endpoint function
> >> driver must handle data transfers in fragments.
> >>
> >> The controller operation ->map_align is optional: controllers that do
> >> not have any address alignment constraints for mapping a RC PCI address
> >> region do not need to implement this operation. For such controllers,
> >> pci_epc_map_align() always returns the mapping size as equal
> >> to the requested size and an offset equal to 0.
> >>
> >> The structure pci_epc_map is introduced to represent a mapping start PCI
> >> address, size and the size and offset into the controller memory needed
> >> for mapping the PCI address region.
> >>
> >> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> >> ---
> >>   drivers/pci/endpoint/pci-epc-core.c | 66 +++++++++++++++++++++++++++++
> >>   include/linux/pci-epc.h             | 33 +++++++++++++++
> >>   2 files changed, 99 insertions(+)
> >>
> >> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> >> index 754afd115bbd..37758ca91d7f 100644
> >> --- a/drivers/pci/endpoint/pci-epc-core.c
> >> +++ b/drivers/pci/endpoint/pci-epc-core.c
> >> @@ -433,6 +433,72 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> >>   }
> >>   EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
> >>   
> >> +/**
> >> + * pci_epc_map_align() - Get the offset into and the size of a controller memory
> >> + *			 address region needed to map a RC PCI address region
> >> + * @epc: the EPC device on which address is allocated
> >> + * @func_no: the physical endpoint function number in the EPC device
> >> + * @vfunc_no: the virtual endpoint function number in the physical function
> >> + * @pci_addr: PCI address to which the physical address should be mapped
> >> + * @size: the size of the mapping starting from @pci_addr
> >> + * @map: populate here the actual size and offset into the controller memory
> >> + *       that must be allocated for the mapping
> >> + *
> >> + * Invoke the controller map_align operation to obtain the size and the offset
> >> + * into a controller address region that must be allocated to map @size
> >> + * bytes of the RC PCI address space starting from @pci_addr.
> >> + *
> >> + * The size of the mapping that can be handled by the controller is indicated
> >> + * using the pci_size field of @map. This size may be smaller than the requested
> >> + * @size. In such case, the function driver must handle the mapping using
> >> + * several fragments. The offset into the controller memory for the effective
> >> + * mapping of the @pci_addr..@pci_addr+@map->pci_size address range is indicated
> >> + * using the map_ofst field of @map.
> >> + */
> >> +int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> >> +		      u64 pci_addr, size_t size, struct pci_epc_map *map)
> >> +{
> >> +	const struct pci_epc_features *features;
> >> +	size_t mask;
> >> +	int ret;
> >> +
> >> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
> >> +		return -EINVAL;
> >> +
> >> +	if (!size || !map)
> >> +		return -EINVAL;
> >> +
> >> +	memset(map, 0, sizeof(*map));
> >> +	map->pci_addr = pci_addr;
> >> +	map->pci_size = size;
> >> +
> >> +	if (epc->ops->map_align) {
> >> +		mutex_lock(&epc->lock);
> >> +		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
> >> +		mutex_unlock(&epc->lock);
> >> +		return ret;
> >> +	}
> >> +
> >> +	/*
> >> +	 * Assume a fixed alignment constraint as specified by the controller
> >> +	 * features.
> >> +	 */
> >> +	features = pci_epc_get_features(epc, func_no, vfunc_no);
> >> +	if (!features || !features->align) {
> >> +		map->map_pci_addr = pci_addr;
> >> +		map->map_size = size;
> >> +		map->map_ofst = 0;
> >> +	}
> > 
> > The 'align' of pci_epc_features was initially added only to address the 
> > inbound ATU constraints. This is also added as comment in [1]. The PCI 
> > address restrictions (only fixed alignment constraint) were handled by 
> > the host side driver and depends on the connected endpoint device 
> > (atleast it was like that for pci_endpoint_test.c [2]).
> > So pci-epf-test.c used the 'align' in pci_epc_features only as part of 
> > pci_epf_alloc_space().
> > 
> > Though I have abused 'align' of pci_epc_features in pci-epf-ntb.c using 
> > it out of pci_epf_alloc_space(), I think we should keep the 'align' of 
> > pci_epc_features only within pci_epf_alloc_space() and controllers with 
> > any PCI address restrictions to implement ->map_align(). This could as 
> > well be done in a phased manner to let controllers implement 
> > ->map_align() and then remove using  pci_epc_features in 
> > pci_epc_map_align(). Let me know what you think?

First you say that you want to avoid using epc_features->align inside
pci_epc_map_align(), and then you say that we could do it in phases,
and eventually stop using epc_features->align in pci_epc_map_align().

I'm confused... :)

Do you really want pci_epc_map_align() to make use of epc_features->align ?

Don't you mean ep->page_size ?
(Please read the whole email to see my reasoning.)


> 
> Yep, good idea. I will remove the use of "align" as a default alignment
> constraint. For controllers that have a fixed alignment constraint (not
> necessarilly epc->features->align), it is trivial to provide a generic helper
> function that implements the ->map_align method.

We can see that commit:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2a9a801620efac92885fc9cd53594c0b9aba87a4

Introduced epc_features->align and modified pci_epf_alloc_space() to use it.

From reading the commit, it appears that epc_features->align was intended to
represent inbound iATU alignment requirement.

For DWC based controllers, the inbound iATU address must be aligned to:
CX_ATU_MIN_REGION_SIZE.

AFAICT, epc_features->align currently has nothing to do with traffic outbound
from the EP.


For aligning the reads/writes to buffers allocated on the host side,
we currently have .alignment in the host side driver:
https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L966-L1021

Which should be set to the outbound iATU alignment requirement.

For DWC based controllers, the outbound iATU address must be aligned to:
CX_ATU_MIN_REGION_SIZE.


Additionally, we have ep->page_size, which defines the smallest outbound unit
that can be mapped.
(On DWC based controllers, tis is CX_ATU_MIN_REGION_SIZE.)

ep->page_size is used to specify the outbound alignment for e.g.
dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq():
https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/pci/controller/dwc/pcie-designware-ep.c#L488
https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/pci/controller/dwc/pcie-designware-ep.c#L555

which makes sure that we can write to the RC side MSI/MSI-X address
while satisfying the outbound iATU alignment requirement.

See also:
https://lore.kernel.org/linux-pci/20240402-pci2_upstream-v3-2-803414bdb430@nxp.com/



Now I understand that rockchip is the first one that does not have a fixed
alignment.
So for that platform, map_align() will be different from ep->page_size.
(For all DWC based drivers the outbound iATU alignment requirement is
the same as the page size.)

However, it would be nice if:
1) We could have a default implementation of map_align() that by default uses
ep->page_size. Platforms that have non-fixed alignment requirements could
define their own map_align().

2) We fix dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq() to use
the new pci_epc_map_align().

3) It is getting too complicated with all these...
epc_features->align, ep->page_size, map_align(), and .alignment in host driver.
I think that we need to document each of these in Documentation/PCI/endpoint/

4) It would be nice if we could set page_size correctly for all the PCI device
and vendor IDs that have defined an .alignment in drivers/misc/pci_endpoint_test.c
in the correct EPC driver. That way, we should be able to completely remove all
.alignment specified in drivers/misc/pci_endpoint_test.c.

5) Unfortunately drivers/misc/pci_endpoint_test.c defines a default alignment
of 4K:
https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L968
https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L820

It would be nice if we could get rid of this as well. Or perhaps add an option
to pci_test so that it does not use this 4k alignment, such that we can verify
that pci_epc_map_align() is actually working.



In my opinion 4) is the biggest win with this series, because it means that
we define the alignment in the EPC driver, instead of needing to define it in
each and every host side driver. But right now, this great improvement is not
really visible for someone looking quickly at the current series.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
