Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB58ACF07CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8Nu7JrTBroyFlMT3SsT3HSokt+VPjxz384KWK7xBc4=; b=KIqMaD5CrkpLxq
	b2GXfLtzyQqT8o+vtdYBwTrCOxNqRe5j6Wfg4GE6tBWWD2dGs2sg5+GaK0u3XfF880HLMW1MmRFWE
	4WXgwvr7tkCwnNLEzXRDY1X1RTW0nbniQ3vN45GRB/G+bvtYEE8P+4GFMM5/0X3lYGfOEXeLlNxme
	uaWvlKse12zYeLigwbWdVHSP8S3KzjeC8abS2MwTuwJ7Jb8Sw7GXHZmQneKVZJ1HLuW+cw0M+sXUj
	3kFhs3FJbTAZF3nLbwx1s+KBVpQ3y+TaPDCUdQGdEdU1FPkivBvGzLjIIbg88i7mCYt0LvnhbnUks
	vl27xGFh/rWA5arfQUGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syouO-0000000C6o6-2YU6;
	Thu, 10 Oct 2024 08:52:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syouO-0000000C6nT-06GA
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Oct 2024 08:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=e7n/uzKgbekAyFUxt7juNl7xWCx/CxD6iut2byaoCCI=; b=RpGeJZ3+UxGkm268PkZmXIVLbP
	zq7/Km8oC1z+Va7xyxVGtKIaKPto6lSP65056aLX6uZ0EdI85IdB7AXJI45cOM42TGJnkGO/BeQ1Y
	Vm2l61hqWzFbEgeg80iyT3HCjqkQHX4gIuYwqJen3Mc1NKrg3vyYX+hPDKW9lI8jDUWXzmoThmD10
	GIcvptFs3LC2Lovmu1NjpHZlkgnL211o2AHW0xCk59bFDJnYhb0xDNvhql8KOohKtgzr1eBhqaZEl
	PcfnNe338z0092XasDAjaOdJwRSlaQ/w8FW8RwkIxvmVcpkIwm42DxvJABGGGcW3NtDctHqtgb1M5
	eRB99HQw==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syouE-00000005HiX-2xfG
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 08:52:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A774EA4369F;
	Thu, 10 Oct 2024 08:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89EAFC4CEC5;
	Thu, 10 Oct 2024 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728549722;
	bh=yG2U03+rpXfeplBSeoqwKQhKM1LaYdj5AZHW2srLQHk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uXfIp7AiUnqRFFvN/a0zg4U5ytOL+ySRDHYP7LgsJ6kW7eH+qBHIRSeGcoH8bt25n
	 wde4j8WesAOWNo5DO2ElcrQWZyZsBvFdGHWdnoPINlfFv5S8Ha7R30QVEziQ8mIOKI
	 86AwUXBCyFoY873BCKkhVfZQxwzMhj00GvJvxKtVa2v9fs/8omTDCLYiqs7WClk/LM
	 YBqNQ5kiiYgKo7DDnTT43zKHkYFe+Y/TMsKXiummLBRSzb8MzruBPhk9llcp/IoH0D
	 8bkPQQ9DH7I1wJuhgsPpNztz5pHYuRySS6I5HqeqSlg+VHX+vildPMbr3KlY0f6Fal
	 9w2FOwkNrTjwA==
Message-ID: <016bb5a6-5f05-404c-acaf-e0a3ed6fcede@kernel.org>
Date: Thu, 10 Oct 2024 17:41:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/12] PCI: rockchip-ep: Fix address translation unit
 programming
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
 <20241007041218.157516-2-dlemoal@kernel.org>
 <20241010070242.3i2f53kpdpr4fgl6@thinkpad>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20241010070242.3i2f53kpdpr4fgl6@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_095223_202120_3CA8F3DF 
X-CRM114-Status: GOOD (  17.48  )
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

On 2024/10/10 16:02, Manivannan Sadhasivam wrote:
> On Mon, Oct 07, 2024 at 01:12:07PM +0900, Damien Le Moal wrote:
>> The rockchip PCIe endpoint controller handles PCIe transfers addresses
>> by masking the lower bits of the programmed PCI address and using the
>> same number of lower bits masked from the CPU address space used for the
>> mapping. For a PCI mapping of <size> bytes starting from <pci_addr>,
>> the number of bits masked is the number of address bits changing in the
>> address range [pci_addr..pci_addr + size - 1].
>>
>> However, rockchip_pcie_prog_ep_ob_atu() calculates num_pass_bits only
>> using the size of the mapping, resulting in an incorrect number of mask
>> bits depending on the value of the PCI address to map.
>>
>> Fix this by introducing the helper function
>> rockchip_pcie_ep_ob_atu_num_bits() to correctly calculate the number of
>> mask bits to use to program the address translation unit. The number of
>> mask bits iscalculated depending on both the PCI address and size of the
>> mapping, and clamped between 8 and 20 using the macros
>> ROCKCHIP_PCIE_AT_MIN_NUM_BITS and ROCKCHIP_PCIE_AT_MAX_NUM_BITS.
>>
> 
> How did you end up with these clamping values? Are the values (at least MAX
> applicable to all SoCs)?
> 
> Btw, it would be helpful if you referenced the TRM and the section that
> describes the outbound mapping. I'm able to find the reference:
> 
> Rockchip RK3399 TRM V1.3 Part2, Section 17.5.5.1.1

OK. Will add that.

I really appreciate very much all the reviews you are sending, but given that
this patch series depends on the series "[PATCH v4 0/7] Improve PCI memory
mapping API", could we start with that one and get it queued ASAP ?

Thanks !

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
