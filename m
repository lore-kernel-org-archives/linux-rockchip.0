Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A3BCFC61B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8GoM/NY1YkspxbqBIB9IfEi1bNMxJh0faxF/eoaJ8Q=; b=BCzGyBga6qmbYz
	7sQ7ofHOWY+FAQtKwWBvs2K6+UbAdxUFck7t2iKnFk8pdaa5qvU4AfAig39M0Tct/MpcAw5mVJdxN
	7kylXl90o6Mu3kL6u2OaCXBRrg2XatAikOI2+lQ1Y3jgSNiRfpyz0HrcJYjpKrY0pzJwGA2rspiZg
	IAk/1DNva9ZkS8E8oVQ2jsd3uqoMOix4RQLHqG+CZ9uUgaijuVjl7ad2dAObra0DzuR/0i7zWBjZh
	wlgSErSMb9kg8jN3rULzUFj9p97xJSvavZHvCHD8L0ZdCVBxSc0PC6hNhTeMSlQM3A7hyrr1Rfnjm
	oNuiDUWUTDGHldVsa4+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szB2G-0000000Fgqb-2xrR;
	Fri, 11 Oct 2024 08:30:08 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szB2D-0000000Fgq9-3Yeu
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 08:30:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 45B54A45258;
	Fri, 11 Oct 2024 08:29:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 376F6C4CEC3;
	Fri, 11 Oct 2024 08:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728635404;
	bh=NQrTiZByneHIXcuPUCaVgQWb9k85uwMIf+r+Fo/+4/I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WoqlzMfP0obsncPCD3Xqb/kPiEGFecyNh6JImInOWRPVbZFVkNMnA53lsRxumaI27
	 pyNp2LnF9ibG5bYHFq4W860C8bvffIYr80u06R4TrBLljdi5amzEDLv4oNTZMb/cYK
	 vxS+nJOasXOwZPgEv5CWwOP7mN5guLjuCDC5/dWXJdYj9GFdnC/f+T9wMBLhNVg2Ta
	 hNhiG1Ig7Igv51G6MhhwyRPZ+lYFLHzl9LXchRb8uEDoYWdYyXqk1j0TH5piZwX15o
	 0dL4ll7INRrvoFLkpy0ysMpKqPhXf0UqtEcpBXkaMZplkPsOX0i765SRHu4Semi62D
	 tHZQIFyLkwZ7A==
Message-ID: <bafe2763-8aac-4051-a2d2-d94a0deae04e@kernel.org>
Date: Fri, 11 Oct 2024 17:30:00 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
 <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_013005_989815_06CC7D12 
X-CRM114-Status: GOOD (  13.41  )
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

On 10/10/24 17:09, Manivannan Sadhasivam wrote:
> On Thu, Oct 10, 2024 at 12:55:12PM +0530, Manivannan Sadhasivam wrote:
>> On Mon, Oct 07, 2024 at 01:12:13PM +0900, Damien Le Moal wrote:
>>> Move the code in rockchip_pcie_ep_probe() to hide the MSI-X capability
>>> to its own function, rockchip_pcie_ep_hide_msix_cap(). No functional
>>> changes.
>>>
>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>
>> Btw, can someone from Rockchip confirm if this hiding is necessary for all the
>> SoCs? It looks to me like an SoC quirk.
>>
>> - Mani
>>
>>> ---
>>>  drivers/pci/controller/pcie-rockchip-ep.c | 54 +++++++++++++----------
>>>  1 file changed, 30 insertions(+), 24 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>>> index 523e9cdfd241..7a1798fcc2ad 100644
>>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>>> @@ -581,6 +581,34 @@ static void rockchip_pcie_ep_release_resources(struct rockchip_pcie_ep *ep)
>>>  	pci_epc_mem_exit(ep->epc);
>>>  }
>>>  
>>> +static void rockchip_pcie_ep_hide_msix_cap(struct rockchip_pcie *rockchip)
> 
> Perhaps a better name would be rockchip_pcie_disable_broken_msix()? As the
> function essentially disables MSIx which is broken. Again, it'd be good to know
> if this applies to all SoCs or just a few.

The function does not disable anything but *really* simply hides the capability
in the capability list so that the host does not see it. So I think the better
name is:

rockchip_pcie_ep_hide_broken_msix_cap()

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
