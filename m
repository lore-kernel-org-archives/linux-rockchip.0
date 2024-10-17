Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED1DCD2F7DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 02:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46dNXhb9HOiWWZSfhX77LajwLJEslaexWe6RHbbX/No=; b=PBiU4sMGxGr0Yl
	j3LafnUP4jyT2cCvzyGHuWGynIF4FfOJt/pdtjUNlkYzgunFmsRDPdmRMp7MQr2R7Rpf5lqbuYLdZ
	iKGLmXWcS5EphQXaRlXGqBCPIiC+tFRak6kd4Ppk8hXW8sGqPwkmk3X2FfA77ZKvuW2PhJcAq4pf5
	t/1Ku+AJWWlRb4dBthluW6nzSPQQ2pBqzgdKAfexyfLx7SPYsbtW+xYWvbcrtL7n5pvrtUnmb0Rl7
	pYa8C/UY+vBLiDIHC1aMq3TOcoVWUzXf28+Zx0dHVHCTcTnx2NX5FsIPLwFwmp5GkCxX8mzKw84Tr
	gNwsk31MLCM+DUnpqwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1GHx-0000000DYgF-3iwi;
	Thu, 17 Oct 2024 02:30:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Ekv-0000000DOV5-2YnF
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 00:52:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 92195A432C5;
	Thu, 17 Oct 2024 00:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46208C4CEC5;
	Thu, 17 Oct 2024 00:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729126364;
	bh=XV5pdlUSFEp4A8UQmD5d4AG1BolLauc6GYZCxQjojrw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JlQ3f1PQuv07sfNVGx2imhc4U6DbbRRj4v5lPNCQCteQ2xgVJQieISz+yYWjXsFMD
	 Cq5YEkaIe9SxKNY0RHiyhoT5cZ1NTA14Dmh86JryqWvwyc2ZhFhvLUQHEn/vXxA3X9
	 f+M2pPp63GPQoU/ytDvRTY435PNrZkABU9H2fq/LChL1N5lBWsgE21Z17uf3r4Wl9O
	 89ygcGjAceEHo4OXgIjOAtYRvkMdBV0ZvHGtQk0e9SoPFtyPDrazHbbikZ38qw92Ys
	 lnLUOaOE2GYhMHI3ZtFFaiqRj8vtI1lJtDgsdbM0vV16taqeA6w28pK+rppQDLRnv4
	 4Eb1t3iOqVGWw==
Message-ID: <b3640074-a8e5-4f1d-8e9d-78b508378990@kernel.org>
Date: Thu, 17 Oct 2024 09:52:41 +0900
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
 <84efa346-c1de-44d5-8b27-2481043e9102@kernel.org>
 <20241012121622.owkg5geqp5jqtjod@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241012121622.owkg5geqp5jqtjod@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_175246_376346_E0F4B5A8 
X-CRM114-Status: GOOD (  12.16  )
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

On 10/12/24 21:16, Manivannan Sadhasivam wrote:
> On Fri, Oct 11, 2024 at 05:55:25PM +0900, Damien Le Moal wrote:
>> On 10/10/24 19:35, Manivannan Sadhasivam wrote:
>>>> +static void rockchip_pcie_ep_link_training(struct work_struct *work)
>>>> +{
>>>> +	struct rockchip_pcie_ep *ep =
>>>> +		container_of(work, struct rockchip_pcie_ep, link_training.work);
>>>> +	struct rockchip_pcie *rockchip = &ep->rockchip;
>>>> +	struct device *dev = rockchip->dev;
>>>> +	u32 val;
>>>> +	int ret;
>>>> +
>>>> +	/* Enable Gen1 training and wait for its completion */
>>>> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
>>>> +				 val, PCIE_LINK_TRAINING_DONE(val), 50,
>>>> +				 LINK_TRAIN_TIMEOUT);
>>>> +	if (ret)
>>>> +		goto again;
>>>> +
>>>> +	/* Make sure that the link is up */
>>>> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
>>>> +				 val, PCIE_LINK_UP(val), 50,
>>>> +				 LINK_TRAIN_TIMEOUT);
>>>> +	if (ret)
>>>> +		goto again;
>>>> +
>>>> +	/* Check the current speed */
>>>> +	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
>>>> +	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
>>>
>>> PCIE_LINK_IS_GEN2()?
>>
>> This is defined in drivers/pci/controller/pcie-rockchip.h. What is it exactly
>> you would like to know about this ?
>>
> 
> !PCIE_LINK_IS_GEN2 means check is for non-Gen2 mode, isn't it? I guess the check
> should be 'if (PCIE_LINK_IS_GEN2...)

Nope, the negative test is correct. The condition means: if we are not at GEN2
speed yet AND gen2 was requested, then initiate training again to get gen2.
So !PCIE_LINK_IS_GEN2() is correct.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
