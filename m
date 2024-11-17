Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35966D68BDD
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Nov 2024 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqRj/9KM8fOODpP+cq8fRa97iv73cr36iihSfJjlhKQ=; b=4WgRvk5LyzmMf8
	oJ447giR+DqZVIZYAEqYI4LRj9BYxwNmyJo/T9w9TABBHuJe2RjN4T42kIWSnf6qLSuvXHQHl+QuV
	kmtFM1U6Rd9c4yx1NlQ6g2XIEHuojKGC4voFDprvNFmWsy5oKj5lOJBBrQxINmDiFFlkiN5V77uK0
	Qzuwx2VegtXZtRQpOYG4iCV4SZCOG4hhiIAQK/jnwdOuOxS1ZQN/h8Vkfj4fYDJKvL9ib9R99jUq/
	t3fRhLkTfThB44d/oqKP68mbJQdaon9a45gMjASoaymhl8Mq1jZ4z4JWb1jQyuoEpnwWKXOgknbwm
	bc9nxZBZOtzxdxCsREgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCaGY-00000006zVX-39rX;
	Sun, 17 Nov 2024 08:04:18 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCaGV-00000006zUy-1VHG
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Nov 2024 08:04:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id ACDA6A400B6;
	Sun, 17 Nov 2024 08:02:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FB5EC4CECD;
	Sun, 17 Nov 2024 08:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731830653;
	bh=shLcgrgwHbmGhcP3CmHV76UlkYB1nen1PjPkGhk7H3E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hpk7Wy5QkEdtVH/0w4is3I9D+vQtI9spbjCPoG1LjCuu2IuCt8STHHrmBsv6p3RXj
	 uCiWR6uyxr4hHFzV98sKGUXFR0wjcb6JNywHoIGauPCDkpw0YnDsiObHFc9vzjxTGn
	 JwwASbquOAa9P+90XqDmtWxWI+deP6X86ri9wkZQzY2UYVWxZ56ws3AFPpqZgOfGKs
	 Q1JMXBQoz5byez69v4plAppd86BX2Qxuix2h47WxL7qp8Og6+4OZ8XB/8UrJ1UuK8p
	 TES/XHC45iFKHk9BywsSFF9lTIZDLuQJAQOduXwgrP/YuILoYw1jbBUaUvjpr6fixP
	 +Mwa86V1pYY/g==
Message-ID: <8054f771-d4d6-4d8d-85b6-dd22050897c9@kernel.org>
Date: Sun, 17 Nov 2024 17:04:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/14] PCI: rockchip-ep: Fix address translation unit
 programming
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Niklas Cassel <cassel@kernel.org>
References: <20241115224145.GA2064331@bhelgaas>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241115224145.GA2064331@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_000415_554939_EE8A8247 
X-CRM114-Status: GOOD (  13.06  )
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

On 11/16/24 07:41, Bjorn Helgaas wrote:
>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>> index 136274533656..27a7febb74e0 100644
>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>> @@ -63,16 +63,23 @@ static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
>>  			    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
>>  }
>>  
>> +static int rockchip_pcie_ep_ob_atu_num_bits(struct rockchip_pcie *rockchip,
>> +					    u64 pci_addr, size_t size)
>> +{
>> +	int num_pass_bits = fls64(pci_addr ^ (pci_addr + size - 1));
>> +
>> +	return clamp(num_pass_bits, ROCKCHIP_PCIE_AT_MIN_NUM_BITS,
>> +		     ROCKCHIP_PCIE_AT_MAX_NUM_BITS);
>> +}
>> +
>>  static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
>>  					 u32 r, u64 cpu_addr, u64 pci_addr,
>>  					 size_t size)
>>  {
>> -	int num_pass_bits = fls64(size - 1);
>> +	int num_pass_bits =
>> +		rockchip_pcie_ep_ob_atu_num_bits(rockchip, pci_addr, size);
>>  	u32 addr0, addr1, desc0;
>>  
>> -	if (num_pass_bits < 8)
>> -		num_pass_bits = 8;
>> -
>>  	addr0 = ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
>>  		(lower_32_bits(pci_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
> 
> PCIE_CORE_OB_REGION_ADDR0_NUM_BITS is 0x3f and
> rockchip_pcie_ep_ob_atu_num_bits() returns something between 8 and
> 0x14, inclusive?  So masking with PCIE_CORE_OB_REGION_ADDR0_NUM_BITS
> doesn't do anything, does it?

Indeed, we could remove that mask.

> Also, "..._NUM_BITS" is kind of a weird name for a mask.

Well, I did not change that. It was like this. Can clean that up too. Do you
want me to send a patch ?

> rockchip_pcie_prog_ob_atu() in pcie-rockchip-host.c is similar but
> different; it looks like all callers supply num_pass_bits=19.  I
> assume it doesn't need a similar change?

I did not check the TRM for host mode. But for my tests, I used 2 rockpro64, one
as RC and the other as EP, and the RC side was working just fine without any
change. So I assume it is OK as-is.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
