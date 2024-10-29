Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FE75D2AB1B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 10:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6d192jRhSezhxMbPG4QmdGRkgw20UIhEWBP0OhnM9Y=; b=pCRtHYrbfoQR4X
	BjRmmz0wvu97xw7997fBCBLX9zuQQqK6f6DsJDv90xgirWyAQaIWvU8DSxARmGdzIYig7v6JAu7hB
	A3FQWH5gM8DWAJTRYM5q5jPSsA6oVf9M24PLu6pi+DNHd6A2eAi+Lo4YdqxDDrX5Tw2JbMfg9HcMD
	Eiwz7e/Ag9C9bXAlXB1m+jiDQs2sRWsQANQ/rpv5LFxafbyB5jLBFJB0OZXLWHG7QyIkdbssixvUj
	dttyzjK2ZALl2ry9kZq5mwYKrvgdXOTPRpLwScKG5kLnQz4NCEuXYdLsmCyV1faDqi86cl1q54t7N
	CqT3Rz+Q8VOUOtkSD40Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5jih-0000000E5Pv-3Seu;
	Tue, 29 Oct 2024 10:45:03 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5jZn-0000000E3UP-2KjS
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 10:35:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9C686A41895;
	Tue, 29 Oct 2024 10:33:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51E27C4CECD;
	Tue, 29 Oct 2024 10:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730198150;
	bh=aq++cbQ+5AGHbOH23ddxpmmWU7ItL0ozXF/spT1zIqQ=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=lINJNvTYE/MQA+aEHXCGgvKMbjanAAMEmvibck+ZDLWf7GCTVNos9nUh6XhCQX8oj
	 vcEJC/aGe6jDQEF9ZzNx5I9QPt08llSlb89dJafrUro3j5hznLe3GcCm6C2OQYW6Fs
	 uhiMzKZQG+Z2If/7pJ+5k8OggaUo/wWTxnSK4lErmJVn6K4TJCGsMy6YrOxRCW7QC+
	 5iNvZeTAfFq9vTToVnvkkMN9mm4lKwIggbGztau5AjJxynLzus1FjjbrjFK6FvNY7+
	 BzJEzn/nREkS2lhQ0AtuivJbdw+H9aJ3QuNOg+coF7bu2wPUMT1gWWPeW00u2NrFlk
	 CrQNz84M6ySFg==
Message-ID: <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
Date: Tue, 29 Oct 2024 19:35:47 +0900
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
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_033551_765113_408B438B 
X-CRM114-Status: GOOD (  21.28  )
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

On 10/17/24 10:58, Damien Le Moal wrote:
> This patch series fix the PCI address mapping handling of the Rockchip
> PCI endpoint driver, refactor some of its code, improves link training
> and adds handling of the PERST# signal.
> 
> This series is organized as follows:
>  - Patch 1 fixes the rockchip ATU programming
>  - Patch 2, 3 and 4 introduce small code improvments
>  - Patch 5 implements the .align_addr() operation to make the RK3399
>    endpoint controller driver fully functional with the new
>    pci_epc_mem_map() function
>  - Patch 6 uses the new align_addr operation function to fix the ATU
>    programming for MSI IRQ data mapping
>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
>    readable
>  - Patch 11 introduces the .stop() endpoint controller operation to
>    correctly disable the endpopint controller after use
>  - Patch 12 improves link training
>  - Patch 13 implements handling of the #PERST signal
>  - Patch 14 adds a DT overlay file to enable EP mode and define the
>    PERST# GPIO (reset-gpios) property.
> 
> These patches were tested using a Pine Rockpro64 board used as an
> endpoint with the test endpoint function driver and a prototype nvme
> endpoint function driver.

Ping ? If there are no issues, can we get this queued up ?

> 
> Changes from v4:
>  - Added patch 6
>  - Added comments to patch 12 and 13 to clarify link training handling
>    and PERST# GPIO use.
>  - Added patch 14
> 
> Changes from v3:
>  - Addressed Mani's comments (see mailing list for details).
>  - Removed old patch 11 (dt-binding changes) and instead use in patch 12
>    the already defined reset_gpios property.
>  - Added patch 6
>  - Added review tags
> 
> Changes from v2:
>  - Split the patch series
>  - Corrected patch 11 to add the missing "maxItem"
> 
> Changes from v1:
>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
>    1.
>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
>    (former patch 2 of v1)
>  - Various typos cleanups all over. Also fixed some blank space
>    indentation.
>  - Added review tags
> 
> Damien Le Moal (14):
>   PCI: rockchip-ep: Fix address translation unit programming
>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
>   PCI: rockchip-ep: Implement the pci_epc_ops::align_addr() operation
>   PCI: rockchip-ep: Fix MSI IRQ data mapping
>   PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
>   PCI: rockchip-ep: Refactor endpoint link training enable
>   PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
>   PCI: rockchip-ep: Improve link training
>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
>   arm64: dts: rockchip: Add rockpro64 overlay for PCIe endpoint mode
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3399-rockpro64-pcie-ep.dtso    |  20 +
>  drivers/pci/controller/pcie-rockchip-ep.c     | 432 ++++++++++++++----
>  drivers/pci/controller/pcie-rockchip-host.c   |   4 +-
>  drivers/pci/controller/pcie-rockchip.c        |  21 +-
>  drivers/pci/controller/pcie-rockchip.h        |  24 +-
>  6 files changed, 406 insertions(+), 96 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso
> 


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
