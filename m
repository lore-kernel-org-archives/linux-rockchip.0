Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C92ECFC270
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 06:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2xD6A/m/Ar4lpVNeI0fI2cSahdoExrzrua7h8fnTLA=; b=e9vz9pqdMbxqJY
	ujcm7RVMHTx4WVVztJscs7Canl3fEuAmdFOq9+eOf5EdKSnC1KQpH2BJ/L+kB3wwQSabJkxSLCB9B
	0qUEtgZyzIufqLcH4pPt7fF2IZ+J42kyYvdfCyCIscztxFi3DXkexcdsDYw6CPVtsSh0oq7Ik4Dn5
	OiWwKUEg9R/WdnVkqrJGUH1R5/UAsucLkX5UF38kpoOD5z5BWR8h2sevFgNf+O54A4/wRc/TEyPG9
	amvHkDhyv5bM0ut1NXRvfUA+Lq9gqB2jFtGTJH6K58fpysX9HMmUqpgDS9VTucfKTWK++PDQtlC5X
	tv8JQNCijeBxg0wfusVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0azS-00000007Cpu-1Nar;
	Tue, 15 Oct 2024 06:25:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ayw-00000007CkV-0tPw
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Oct 2024 06:24:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 36FC35C5C8A;
	Tue, 15 Oct 2024 06:24:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52347C4CEC7;
	Tue, 15 Oct 2024 06:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728973473;
	bh=vsXOOA5ANMXEDreUY4REBTLChawkE5C8ea8kSRyDtmA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=p85FOT8cZgvfLGCc1nlifVmk6Mi8WDsF9W8hMsGffKM4EA/8w2Su3ZQGJHMiolj0H
	 W8zezNObIX0jzBcZBwFR50fZ9tIv46OeeTrYsFdHIEWeupFqXD4qRo9uDPeru7bTFE
	 w0g5mWyfHRp7olfKZk1KZoM25aHTbRmNMxghlpogYHhzLfigL9XcbXCzNoIdtqXpdE
	 Pko92kAN8yMAYTY9Y1NPj7hhanQMK9zrLShWXEBzpQcHpHRvJaHqiOAp2NW+mS7Sfh
	 RMOlMws/3+CUa0kTE8/6R0X8yCqEPM6aymRyKEtaKl34pQw141zEX5XYvqRql4C9RB
	 zVxHBjvRkEs9w==
Message-ID: <b4e4718e-d601-4ea2-b5e6-e4e1e778afe3@kernel.org>
Date: Tue, 15 Oct 2024 15:24:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
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
 <20241007041218.157516-13-dlemoal@kernel.org>
 <20241010104932.gfrunorhpnhan5wp@thinkpad>
 <b525abc8-4066-4097-9a36-558b84144228@kernel.org>
 <20241012123111.bg6rzxotabkxfchc@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241012123111.bg6rzxotabkxfchc@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_232434_378435_A64F3083 
X-CRM114-Status: GOOD (  12.03  )
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

On 10/12/24 21:31, Manivannan Sadhasivam wrote:
> On Fri, Oct 11, 2024 at 06:30:31PM +0900, Damien Le Moal wrote:
>> On 10/10/24 19:49, Manivannan Sadhasivam wrote:
>>>> +static int rockchip_pcie_ep_setup_irq(struct pci_epc *epc)
>>>> +{
>>>> +	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>>>> +	struct rockchip_pcie *rockchip = &ep->rockchip;
>>>> +	struct device *dev = rockchip->dev;
>>>> +	int ret;
>>>> +
>>>> +	if (!rockchip->ep_gpio)
>>>> +		return 0;
>>>> +
>>>> +	/* PCIe reset interrupt */
>>>> +	ep->perst_irq = gpiod_to_irq(rockchip->ep_gpio);
>>>> +	if (ep->perst_irq < 0) {
>>>> +		dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
>>>> +		return ep->perst_irq;
>>>> +	}
>>>> +
>>>> +	ep->perst_asserted = true;
>>>
>>> How come?
>>
>> Yeah, a bit confusing. This is because the gpio active low / inactive high, so
>> as soon as we enable the IRQ, we are going to get one IRQ even though perst gpio
>> signal has not changed yet.
> 
> Which means you are looking for a wrong level! What is the polarity of the
> PERST# gpio in DT?

It is not defined in the default DT with the kernel. I added an overlay file to
define it together with the EP mode. And as I said above, the gpio is active
low. If I reverse that to active high, it does not work.


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
