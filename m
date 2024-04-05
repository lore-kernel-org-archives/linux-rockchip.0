Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12D7FC67861
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 12:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoJ1AWuI8SEURvx5lSgqyXHtRLAyskQD/9904ZpL1mc=; b=VuYVR4N05UCIDU
	rFiqXLzJgwotD6+cqj3ZGaxEzk5w8ZU8/ZZxilFiOQnrMJlNM79fwWPK9XeGq+ZUHb/7ck4omQL9V
	Q4VH+kFGytj/HYApgl0vKQyBfsfQbwIfbVzvXbKV1n5+B/ou+fjplMhfru7c7U+/ZAU0AZqSggGmT
	5xbEsnVw6thRKjYcgRULunuD/uu5ebr7gSJ+1FtBZop6L/bboDVculeEvGs7Nx3UCmi28sRzwI2+p
	QHuzUXHppmq5NwnyNs6yRJoOYqjII8UZK1WiDNJ29aetGsCXLYylduhFE4yWlTsbk71FRmDej9nhb
	6C04ffI8tuQ04hc2wbZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsiv9-000000070ZV-3rSE;
	Fri, 05 Apr 2024 12:43:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsiv5-000000070Wz-1ICF;
	Fri, 05 Apr 2024 12:43:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8894F618BF;
	Fri,  5 Apr 2024 12:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BD33C433F1;
	Fri,  5 Apr 2024 12:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712321026;
	bh=SLK4zI+nVWkiYe5UgpdLjD23jt65EvZg2Lg9bW0zCAA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZFmDYHTqRoNOtVb5lEaL31f8AL1SwU63h+wnNgBaa68NXpYmQFaj3O6B+Vex9xXl4
	 uYh+5qJxHwYNnhJicCZDMIlFeEyruI8YN7FnYmuHURvshZ8qLBfiX+cQWxQLKd35zo
	 dN6BITdRT5QHpX2qYBihFRMAoM7x+4zdA4Jgz6xDu+8NQb7ej1eMPU+me6YXOMM0nn
	 dPTRaJncsTblJAu8SVmLJxaUgHcsUQgYOK2bTjLmqtAXcJglpdlMvflP++ybeK8ZFg
	 VSra1psFkwrByhdM8jHnfcAVDOSO47wrhYBp0e0/H4b7EPYmhMxwmtv7E0bEC294pv
	 xR93BQli/bTgA==
Message-ID: <9b3cfd8a-640d-4645-83a9-ddaa34cd09cd@kernel.org>
Date: Fri, 5 Apr 2024 21:43:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
To: Niklas Cassel <cassel@kernel.org>
Cc: Kishon Vijay Abraham I <kvijayab@amd.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
 <dccb87db-d826-43fa-a499-cf36ea9b10d5@amd.com>
 <3a2aff21-4b1d-4f99-bd49-bf75f41cb924@kernel.org> <Zg_skLWnl04-pxkn@ryzen>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <Zg_skLWnl04-pxkn@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_054347_906293_9EE7AC1C 
X-CRM114-Status: GOOD (  61.05  )
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

On 4/5/24 21:20, Niklas Cassel wrote:
> On Thu, Apr 04, 2024 at 11:43:47AM +0900, Damien Le Moal wrote:
>> On 4/3/24 21:33, Kishon Vijay Abraham I wrote:
>>> Hi Damien,
>>>
>>> On 3/30/2024 9:49 AM, Damien Le Moal wrote:
>>>> Some endpoint controllers have requirements on the alignment of the
>>>> controller physical memory address that must be used to map a RC PCI
>>>> address region. For instance, the rockchip endpoint controller uses
>>>> at most the lower 20 bits of a physical memory address region as the
>>>> lower bits of an RC PCI address. For mapping a PCI address region of
>>>> size bytes starting from pci_addr, the exact number of address bits
>>>> used is the number of address bits changing in the address range
>>>> [pci_addr..pci_addr + size - 1].
>>>>
>>>> For this example, this creates the following constraints:
>>>> 1) The offset into the controller physical memory allocated for a
>>>>     mapping depends on the mapping size *and* the starting PCI address
>>>>     for the mapping.
>>>> 2) A mapping size cannot exceed the controller windows size (1MB) minus
>>>>     the offset needed into the allocated physical memory, which can end
>>>>     up being a smaller size than the desired mapping size.
>>>>
>>>> Handling these constraints independently of the controller being used in
>>>> a PCI EP function driver is not possible with the current EPC API as
>>>> it only provides the ->align field in struct pci_epc_features.
>>>> Furthermore, this alignment is static and does not depend on a mapping
>>>> pci address and size.
>>>>
>>>> Solve this by introducing the function pci_epc_map_align() and the
>>>> endpoint controller operation ->map_align to allow endpoint function
>>>> drivers to obtain the size and the offset into a controller address
>>>> region that must be used to map an RC PCI address region. The size
>>>> of the physical address region provided by pci_epc_map_align() can then
>>>> be used as the size argument for the function pci_epc_mem_alloc_addr().
>>>> The offset into the allocated controller memory can be used to
>>>> correctly handle data transfers. Of note is that pci_epc_map_align() may
>>>> indicate upon return a mapping size that is smaller (but not 0) than the
>>>> requested PCI address region size. For such case, an endpoint function
>>>> driver must handle data transfers in fragments.
>>>>
>>>> The controller operation ->map_align is optional: controllers that do
>>>> not have any address alignment constraints for mapping a RC PCI address
>>>> region do not need to implement this operation. For such controllers,
>>>> pci_epc_map_align() always returns the mapping size as equal
>>>> to the requested size and an offset equal to 0.
>>>>
>>>> The structure pci_epc_map is introduced to represent a mapping start PCI
>>>> address, size and the size and offset into the controller memory needed
>>>> for mapping the PCI address region.
>>>>
>>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>>> ---
>>>>   drivers/pci/endpoint/pci-epc-core.c | 66 +++++++++++++++++++++++++++++
>>>>   include/linux/pci-epc.h             | 33 +++++++++++++++
>>>>   2 files changed, 99 insertions(+)
>>>>
>>>> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
>>>> index 754afd115bbd..37758ca91d7f 100644
>>>> --- a/drivers/pci/endpoint/pci-epc-core.c
>>>> +++ b/drivers/pci/endpoint/pci-epc-core.c
>>>> @@ -433,6 +433,72 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>>>>   }
>>>>   EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
>>>>   
>>>> +/**
>>>> + * pci_epc_map_align() - Get the offset into and the size of a controller memory
>>>> + *			 address region needed to map a RC PCI address region
>>>> + * @epc: the EPC device on which address is allocated
>>>> + * @func_no: the physical endpoint function number in the EPC device
>>>> + * @vfunc_no: the virtual endpoint function number in the physical function
>>>> + * @pci_addr: PCI address to which the physical address should be mapped
>>>> + * @size: the size of the mapping starting from @pci_addr
>>>> + * @map: populate here the actual size and offset into the controller memory
>>>> + *       that must be allocated for the mapping
>>>> + *
>>>> + * Invoke the controller map_align operation to obtain the size and the offset
>>>> + * into a controller address region that must be allocated to map @size
>>>> + * bytes of the RC PCI address space starting from @pci_addr.
>>>> + *
>>>> + * The size of the mapping that can be handled by the controller is indicated
>>>> + * using the pci_size field of @map. This size may be smaller than the requested
>>>> + * @size. In such case, the function driver must handle the mapping using
>>>> + * several fragments. The offset into the controller memory for the effective
>>>> + * mapping of the @pci_addr..@pci_addr+@map->pci_size address range is indicated
>>>> + * using the map_ofst field of @map.
>>>> + */
>>>> +int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>>>> +		      u64 pci_addr, size_t size, struct pci_epc_map *map)
>>>> +{
>>>> +	const struct pci_epc_features *features;
>>>> +	size_t mask;
>>>> +	int ret;
>>>> +
>>>> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>>>> +		return -EINVAL;
>>>> +
>>>> +	if (!size || !map)
>>>> +		return -EINVAL;
>>>> +
>>>> +	memset(map, 0, sizeof(*map));
>>>> +	map->pci_addr = pci_addr;
>>>> +	map->pci_size = size;
>>>> +
>>>> +	if (epc->ops->map_align) {
>>>> +		mutex_lock(&epc->lock);
>>>> +		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
>>>> +		mutex_unlock(&epc->lock);
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	/*
>>>> +	 * Assume a fixed alignment constraint as specified by the controller
>>>> +	 * features.
>>>> +	 */
>>>> +	features = pci_epc_get_features(epc, func_no, vfunc_no);
>>>> +	if (!features || !features->align) {
>>>> +		map->map_pci_addr = pci_addr;
>>>> +		map->map_size = size;
>>>> +		map->map_ofst = 0;
>>>> +	}
>>>
>>> The 'align' of pci_epc_features was initially added only to address the 
>>> inbound ATU constraints. This is also added as comment in [1]. The PCI 
>>> address restrictions (only fixed alignment constraint) were handled by 
>>> the host side driver and depends on the connected endpoint device 
>>> (atleast it was like that for pci_endpoint_test.c [2]).
>>> So pci-epf-test.c used the 'align' in pci_epc_features only as part of 
>>> pci_epf_alloc_space().
>>>
>>> Though I have abused 'align' of pci_epc_features in pci-epf-ntb.c using 
>>> it out of pci_epf_alloc_space(), I think we should keep the 'align' of 
>>> pci_epc_features only within pci_epf_alloc_space() and controllers with 
>>> any PCI address restrictions to implement ->map_align(). This could as 
>>> well be done in a phased manner to let controllers implement 
>>> ->map_align() and then remove using  pci_epc_features in 
>>> pci_epc_map_align(). Let me know what you think?
> 
> First you say that you want to avoid using epc_features->align inside
> pci_epc_map_align(), and then you say that we could do it in phases,
> and eventually stop using epc_features->align in pci_epc_map_align().
> 
> I'm confused... :)
> 
> Do you really want pci_epc_map_align() to make use of epc_features->align ?
> 
> Don't you mean ep->page_size ?
> (Please read the whole email to see my reasoning.)
> 
> 
>>
>> Yep, good idea. I will remove the use of "align" as a default alignment
>> constraint. For controllers that have a fixed alignment constraint (not
>> necessarilly epc->features->align), it is trivial to provide a generic helper
>> function that implements the ->map_align method.
> 
> We can see that commit:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2a9a801620efac92885fc9cd53594c0b9aba87a4
> 
> Introduced epc_features->align and modified pci_epf_alloc_space() to use it.
> 
> From reading the commit, it appears that epc_features->align was intended to
> represent inbound iATU alignment requirement.
> 
> For DWC based controllers, the inbound iATU address must be aligned to:
> CX_ATU_MIN_REGION_SIZE.
> 
> AFAICT, epc_features->align currently has nothing to do with traffic outbound
> from the EP.

Yes, correct. It is for BARs, not for PCI address alignment constraint.

> For aligning the reads/writes to buffers allocated on the host side,
> we currently have .alignment in the host side driver:
> https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L966-L1021
> 
> Which should be set to the outbound iATU alignment requirement.
> 
> For DWC based controllers, the outbound iATU address must be aligned to:
> CX_ATU_MIN_REGION_SIZE.
> Additionally, we have ep->page_size, which defines the smallest outbound unit
> that can be mapped.
> (On DWC based controllers, tis is CX_ATU_MIN_REGION_SIZE.)
> 
> ep->page_size is used to specify the outbound alignment for e.g.
> dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq():
> https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/pci/controller/dwc/pcie-designware-ep.c#L488
> https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/pci/controller/dwc/pcie-designware-ep.c#L555> which makes sure that we can write to the RC side MSI/MSI-X address
> while satisfying the outbound iATU alignment requirement.
> 
> See also:
> https://lore.kernel.org/linux-pci/20240402-pci2_upstream-v3-2-803414bdb430@nxp.com/
> 
> 
> 
> Now I understand that rockchip is the first one that does not have a fixed
> alignment.
> So for that platform, map_align() will be different from ep->page_size.
> (For all DWC based drivers the outbound iATU alignment requirement is
> the same as the page size.)

Yes. So we can have a generic map_align() implementation that all these drivers
can use as there .map_align method. No need to expose page size to the epc/epf
core code.

> However, it would be nice if:
> 1) We could have a default implementation of map_align() that by default uses
> ep->page_size. Platforms that have non-fixed alignment requirements could
> define their own map_align().

See above. The default implementation can be a helper function defined in epc
core that the drivers can use for their .map_align() method.

> 
> 2) We fix dw_pcie_ep_raise_msi_irq() and dw_pcie_ep_raise_msix_irq() to use
> the new pci_epc_map_align().

Why ? That is completely internal to the controller driver.

> 
> 3) It is getting too complicated with all these...
> epc_features->align, ep->page_size, map_align(), and .alignment in host driver.
> I think that we need to document each of these in Documentation/PCI/endpoint/

test host driver .alignment needs to be nuked. That one is nonsense.
ep->page_size needs to stay internal to the driver. .map_align method is enough
to handle any PCI address mapping constraint and will indicate memory size to
allocate, offset into it etc. And for the BARs alignment, .align feature is not
exactly great as it is not clear, but it is enough I think. So we could just
rename it to be clear. And even maybe remove it from features. I do not see why
an EPF needs to care about it given that epc core funstions are used to setup
the bars.

> 4) It would be nice if we could set page_size correctly for all the PCI device
> and vendor IDs that have defined an .alignment in drivers/misc/pci_endpoint_test.c
> in the correct EPC driver. That way, we should be able to completely remove all
> .alignment specified in drivers/misc/pci_endpoint_test.c.

The host side should be allowed to use any PCI address alignment it wants. So no
alignment communicated at all. It is the EP side that needs to deal with alignment.

> 5) Unfortunately drivers/misc/pci_endpoint_test.c defines a default alignment
> of 4K:
> https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L968
> https://github.com/torvalds/linux/blob/v6.9-rc2/drivers/misc/pci_endpoint_test.c#L820
> 
> It would be nice if we could get rid of this as well. Or perhaps add an option
> to pci_test so that it does not use this 4k alignment, such that we can verify
> that pci_epc_map_align() is actually working.

Exactly. Get rid of any default alignment, add a test parameter to define one so
that we can test different alignment+size combinations.

> In my opinion 4) is the biggest win with this series, because it means that
> we define the alignment in the EPC driver, instead of needing to define it in
> each and every host side driver. But right now, this great improvement is not
> really visible for someone looking quickly at the current series.

Yes. Once in place, we can rework the test driver alignment stuff to make it
optional instead of mandatory because of bad handling on the EP side :)

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
