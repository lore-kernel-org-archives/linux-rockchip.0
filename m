Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A92CFC61C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3R0X1buAM63F0xbfhavU/XdjlsBzC2MPw21h6wNgeg=; b=wFc/lCIskuMfrM
	+6a2v5HGq6pNxCEwcwQ+FDaW/z2PdGz2o0zIHSObgp+qCE4v/Z/f0NhmrX8G+uRM6RNz3B9h6Inn2
	BDe2a2/joVqsH5L4ZwZmxBGr9eaS56RRwhObbatJwxG6mltx5S2Dp2X8hIORzfei2hM/piUAc2c6h
	ZtErSPhfhob2lJx94eKleSI5BZHr3oiP3koeFbRHfi3WW6yBDo//+j0v0//1bILM2eRlUMEQ/P5YK
	FFMvLSvmVAt8g5YAB+hVKiHSs9ntXNRWflmUoy5c8Q9EkXOazq6syRWjW+PNTu/jEDXkdsmNLx+ky
	mtqC7HNBsSuuHWUWgU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szAvW-0000000Fg7d-3zep;
	Fri, 11 Oct 2024 08:23:11 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szAvA-0000000Fg2W-1Iyg
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 08:23:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3FE0DA4524A;
	Fri, 11 Oct 2024 08:22:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A887C4CEC3;
	Fri, 11 Oct 2024 08:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728634966;
	bh=0seMzSwNBuFkRvs9M5p5d+Tp1hKCYdfJloejRQWx454=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GSJpoRnp5hAYYFhn+kLKJMNTepTbXj0b1EE+z9hTxpyo33rs7pfC0XwX3Jt5/T3l4
	 wzTythEhnUGceZud55GQrBTU4nxAJ2ddshMpAR8lhOYFGYBHTx0xeTavj7rwthSCnL
	 DxvcCmbG2gCD35yh03QEzAQ9vfA7iD7NnuPvFmZzFgpJ1kJ1xhuEdF2ifeGZ+5zK3N
	 opGuAqbvV1+yT/ZG33nYqgrX/7HLssbi51TKHMgfM9tMHjntr7gAsL9Z4Fk7vKs4+G
	 JVcN1bV/5fz/Ic84z+imCjgYU0uTxWyRr3UzwIAFkn4lmUL7eUFJdPLYAphew0SAfz
	 z3AI25X1bIcVQ==
Message-ID: <902d1e4e-3c4e-4590-a810-77a1d11ce57d@kernel.org>
Date: Fri, 11 Oct 2024 17:22:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_unmap_addr()
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
 <20241007041218.157516-4-dlemoal@kernel.org>
 <20241010070911.ozwrpho3wddb4ezf@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241010070911.ozwrpho3wddb4ezf@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_012248_520066_14D5616A 
X-CRM114-Status: GOOD (  17.46  )
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

On 10/10/24 16:09, Manivannan Sadhasivam wrote:
> On Mon, Oct 07, 2024 at 01:12:09PM +0900, Damien Le Moal wrote:
>> From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
>>
>> There is no need to loop over all regions to find the memory window used
>> to map an address. We can use rockchip_ob_region() to determine the
>> region index, together with a check that the address passed as argument
>> is the address used to create the mapping. Furthermore, the
>> ob_region_map bitmap should also be checked to ensure that we are not
>> attempting to unmap an address that is not mapped.
>>
>> Signed-off-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
>> ---
>>  drivers/pci/controller/pcie-rockchip-ep.c | 8 ++------
>>  1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>> index 5a07084fb7c4..89ebdf3e4737 100644
>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>> @@ -256,13 +256,9 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
>>  {
>>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>> -	u32 r;
>> -
>> -	for (r = 0; r < ep->max_regions; r++)
>> -		if (ep->ob_addr[r] == addr)
>> -			break;
>> +	u32 r = rockchip_ob_region(addr);
>>  
>> -	if (r == ep->max_regions)
>> +	if (addr != ep->ob_addr[r] || !test_bit(r, &ep->ob_region_map))
> 
> Having these two checks looks redundant to me. Is it possible that an address
> could pass only one check?

Yes, if the wrong address is passed to rockchip_pcie_ep_unmap_addr() but that
address still correspond to an ob_region that is being used.

We could do add a WARN_ON_ONCE() around that if condition as calling that
function with an invalid address would mean that either the epc core or the
function driver is buggy.




-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
