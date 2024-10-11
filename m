Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C36DBCFD2F3
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPQWs7c2wkoyNomtS2NdUwrQCJft9SQ9RMJTq/iGjE8=; b=MPvYebd9j/Yib7
	p36YgeNbngzSceHSNFiqDIPL1A0J18NIPvC2gvlJYN1LoqS4pNqNGsnkfWfrdTmgTT7sxDli3nOTJ
	oajFRevL/gv5k6xRwqHeUTGzTAoNpJ92i3n0jVL8vNL/wF/aPkGRom1egGhxCC80OtqHhV46FgvKE
	nyBW4REf8Zv2l90S3oF11iqxn9jaQUhJcYM8iVQJa7etBeXtJbGHqKy7CsZjH5au5mxG41ZVvk4PV
	ipPdkyPTIeOQ1VOAzDWqSzIfjePjmS6AstlreeJVE8yLbaGl8BDqBEy6TSLx1DF1nhwBP+4YNPE1+
	GcSn47JLyHCjB8GdF0VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szBQr-0000000FkSA-0ap9;
	Fri, 11 Oct 2024 08:55:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szBQo-0000000FkQU-2YZg
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 08:55:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E43D6A452B1;
	Fri, 11 Oct 2024 08:55:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9894C4CEC3;
	Fri, 11 Oct 2024 08:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728636929;
	bh=TM7wSSesHKlnFGC0qSeniGMPWLlPft7VpoxJkrXmJac=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WCnyouQQ93Px4D/Kw71I4zkZsG4Xsrk0vJcX2jrUgv16T3xpNOIVYnTnocq7PNH4U
	 4tib8ZZazDBNRIYf3GkgQe4gLwk47kLFJAjbDuu7D7+ZcgzlvoTdZfPye2eSnozLqM
	 SJ2xGqzeHOzFvxDYG+XbQJXjWlia0ShQy2FKVkz5rogott1PZRXKW2RpfWU7cdkYe0
	 F+3DsywZxSIZ1jw0R7ykuAPLuaro3M+3BxWRN1sfEXjJ/xqAGstXVOhxiu1aflfVGT
	 txml2rOuG5PBtOFiEsO5lpIZsNyoplAbNXf8++JAuMo4aJeQZ2tWdY2zfZg8/Nguvf
	 U6Dy4w87VWYrA==
Message-ID: <84efa346-c1de-44d5-8b27-2481043e9102@kernel.org>
Date: Fri, 11 Oct 2024 17:55:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] PCI: rockchip-ep: Improve link training
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
 <20241007041218.157516-11-dlemoal@kernel.org>
 <20241010103550.elwd2k35t4k4cypu@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241010103550.elwd2k35t4k4cypu@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_015530_752281_E7F1092F 
X-CRM114-Status: GOOD (  13.48  )
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

On 10/10/24 19:35, Manivannan Sadhasivam wrote:
>> +static void rockchip_pcie_ep_link_training(struct work_struct *work)
>> +{
>> +	struct rockchip_pcie_ep *ep =
>> +		container_of(work, struct rockchip_pcie_ep, link_training.work);
>> +	struct rockchip_pcie *rockchip = &ep->rockchip;
>> +	struct device *dev = rockchip->dev;
>> +	u32 val;
>> +	int ret;
>> +
>> +	/* Enable Gen1 training and wait for its completion */
>> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
>> +				 val, PCIE_LINK_TRAINING_DONE(val), 50,
>> +				 LINK_TRAIN_TIMEOUT);
>> +	if (ret)
>> +		goto again;
>> +
>> +	/* Make sure that the link is up */
>> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
>> +				 val, PCIE_LINK_UP(val), 50,
>> +				 LINK_TRAIN_TIMEOUT);
>> +	if (ret)
>> +		goto again;
>> +
>> +	/* Check the current speed */
>> +	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
>> +	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
> 
> PCIE_LINK_IS_GEN2()?

This is defined in drivers/pci/controller/pcie-rockchip.h. What is it exactly
you would like to know about this ?

> 
>> +		/* Enable retrain for gen2 */
>> +		rockchip_pcie_ep_retrain_link(rockchip);
>> +		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
>> +				   val, PCIE_LINK_IS_GEN2(val), 50,
>> +				   LINK_TRAIN_TIMEOUT);
>> +	}
>> +
>> +	/* Check again that the link is up */
>> +	if (!rockchip_pcie_ep_link_up(rockchip))
>> +		goto again;
> 
> TRM doesn't mention this check. Is this really necessary?

I think so, to check the result of the second training for gen2.
Even though the TRM does not say so, I prefer checking that the result is what
we expect: the link is up.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
