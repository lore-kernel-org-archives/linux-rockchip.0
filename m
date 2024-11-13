Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29744D462B0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 14:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSz/vKJnwLicNgCz7EdthVK5CKeaWHb5M9/m4ZNOM7w=; b=gv0J62oPqcUJNJ
	SVgHeX7NFAc7UYSgLFBu43fLslAPfNEup+luCRcFhv56OUo/uqfsfMgXCN6TDq9WUy1zwAwizMw/h
	nyD1CES1T2SMcM6Xnn/F9jR5G8L0TkRhClfa/HfPz+wkDLmzalmSCvYwd5OgIrEdB8lWBcTQJneg0
	NRLFCLnMBAhmouKdPV0S9Mh0foCQbIhp0wrI67O5JfhpgT4rxmA+QjMVjpeWFHVwTzIfXcnLZPEgY
	bzGw5qJjRc9Hhm/WfPVh8uMoF7dk4ow8ArjuOicvDemO+YqIP98vWD0E4LqQ196U0pzWMEpBdOoWl
	SqPj9aww6RvB4SYUm7jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBENY-000000079TV-17Bf;
	Wed, 13 Nov 2024 14:29:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBENV-000000079SX-1J6q
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 14:29:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 742255C4ED1;
	Wed, 13 Nov 2024 14:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 425EFC4CEC3;
	Wed, 13 Nov 2024 14:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731508192;
	bh=1HnPuW8zkvLUT3DcdmESKxawgO3Bw//LMyl3qPeV9ms=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=jCJHfNIbO6RqU3lbMet0zAy/a2SKrLodTPgT3kQ2bqYff6eYN9f2i07S2sNGNW3BP
	 YpM9nWTBJ+pFmnZCfVTjnJ7f7zAC05eNRe7fHYZrzTKVIhB3W/5y7tbl2dwgtJJEn4
	 kO9UQe7ji0Aodj4z68rDdgGnP2IrcxRJGpjTzy3tkjt6b4yThnr2AKletJCEiNrUek
	 beSMyC6zuQCa49htnj7swt58BaIZCgHUUwA2sILlVWi0HxLthIpfZo8rm/q26Yfvy1
	 D6Iz6NdOitppKRzD57mP1m8fqoo64VrKz6i/GcgGPWs6qeDVbbal9YZNEgHoJ1K9Wt
	 R23IRNVw4lbIA==
Message-ID: <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
Date: Wed, 13 Nov 2024 23:29:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Niklas Cassel <cassel@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_062953_474360_5DCDBD08 
X-CRM114-Status: GOOD (  19.58  )
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

On 10/29/24 19:35, Damien Le Moal wrote:
> On 10/17/24 10:58, Damien Le Moal wrote:
>> This patch series fix the PCI address mapping handling of the Rockchip
>> PCI endpoint driver, refactor some of its code, improves link training
>> and adds handling of the PERST# signal.
>>
>> This series is organized as follows:
>>  - Patch 1 fixes the rockchip ATU programming
>>  - Patch 2, 3 and 4 introduce small code improvments
>>  - Patch 5 implements the .align_addr() operation to make the RK3399
>>    endpoint controller driver fully functional with the new
>>    pci_epc_mem_map() function
>>  - Patch 6 uses the new align_addr operation function to fix the ATU
>>    programming for MSI IRQ data mapping
>>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
>>    readable
>>  - Patch 11 introduces the .stop() endpoint controller operation to
>>    correctly disable the endpopint controller after use
>>  - Patch 12 improves link training
>>  - Patch 13 implements handling of the #PERST signal
>>  - Patch 14 adds a DT overlay file to enable EP mode and define the
>>    PERST# GPIO (reset-gpios) property.
>>
>> These patches were tested using a Pine Rockpro64 board used as an
>> endpoint with the test endpoint function driver and a prototype nvme
>> endpoint function driver.
> 
> Ping ? If there are no issues, can we get this queued up ?

Mani,

Ping AGAIN !!!!

I do not see anything queued in pci/next. What is the blocker ?
These patches have been sitting on the list for nearly a month now, PLEASE DO
SOMETHING. Comment or apply, but please reply something.

> 
>>
>> Changes from v4:
>>  - Added patch 6
>>  - Added comments to patch 12 and 13 to clarify link training handling
>>    and PERST# GPIO use.
>>  - Added patch 14
>>
>> Changes from v3:
>>  - Addressed Mani's comments (see mailing list for details).
>>  - Removed old patch 11 (dt-binding changes) and instead use in patch 12
>>    the already defined reset_gpios property.
>>  - Added patch 6
>>  - Added review tags
>>
>> Changes from v2:
>>  - Split the patch series
>>  - Corrected patch 11 to add the missing "maxItem"
>>
>> Changes from v1:
>>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
>>    1.
>>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
>>    (former patch 2 of v1)
>>  - Various typos cleanups all over. Also fixed some blank space
>>    indentation.
>>  - Added review tags
>>
>> Damien Le Moal (14):
>>   PCI: rockchip-ep: Fix address translation unit programming
>>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
>>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
>>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
>>   PCI: rockchip-ep: Implement the pci_epc_ops::align_addr() operation
>>   PCI: rockchip-ep: Fix MSI IRQ data mapping
>>   PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
>>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
>>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
>>   PCI: rockchip-ep: Refactor endpoint link training enable
>>   PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
>>   PCI: rockchip-ep: Improve link training
>>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
>>   arm64: dts: rockchip: Add rockpro64 overlay for PCIe endpoint mode
>>
>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>  .../rockchip/rk3399-rockpro64-pcie-ep.dtso    |  20 +
>>  drivers/pci/controller/pcie-rockchip-ep.c     | 432 ++++++++++++++----
>>  drivers/pci/controller/pcie-rockchip-host.c   |   4 +-
>>  drivers/pci/controller/pcie-rockchip.c        |  21 +-
>>  drivers/pci/controller/pcie-rockchip.h        |  24 +-
>>  6 files changed, 406 insertions(+), 96 deletions(-)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso
>>
> 
> 


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
