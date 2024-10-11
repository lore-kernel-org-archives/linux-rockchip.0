Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EAACFD2EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMFWzkBOr3XWCpFumyZteYW+kPtFCxJrsB7ME1P2aI4=; b=D1BBf7WAqhIoNH
	E9fqacMe3MUtRyNsxR7IUYG89BHtaxnlyvXCWYG7xmz90rycV5B71TbTrYgRMvJEmYz7jA9mS0gST
	3+RYBhNwyMeFCGzWm1e6Moa0Aky8WUrD7zHAActP2rO9jppxXt9DyEfzjKjs5gMhtgc0lfmUOeOsT
	AeR/y6XcVAIYVVUDJKkkZjXMd6FMrTvRUE3e2MCQ7JpWaeg3vg9prqH88xCLh1GdoP4bUW/WrWWK4
	8ds+8334ho3JC5UxKckqE9IxmKoEfsXiRVpoydSZNHVdN3ljMNeXBO6MlJ59T2h9ZsNhh3bRzQhRc
	5ItQ3QpmHCgK4ErUlvOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szBGy-0000000Fiw9-3GKF;
	Fri, 11 Oct 2024 08:45:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szBGw-0000000Fiuw-3vqI
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 08:45:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F05065C1852;
	Fri, 11 Oct 2024 08:45:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7455C4CEC3;
	Fri, 11 Oct 2024 08:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728636318;
	bh=Rz1JW1rIi79ZSTNSWl9Mp46JKBe8iE1qkRrozsoCn5E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WQb1NEwkBbQe7zMcMr9j+7YfBn4W54TsKCP8ZsTiksJjGJEXO3zKxu5nes6uPr3PH
	 DR2VRIi8Ls6V548ICpgrd9YULkhxvJdjBfH4rl7XwXJe0iIER3iG6mgOAFBjuM/PK4
	 GvsAA35qe7WCV6U4hOiOATtrDq/m1qJ1l9HvQz7pUVndvnMtSQaBWzdDLh+xFUWStv
	 5Sc5j4f82f0MFrlMQ6V7GzIFJEkqL8GLhWRuyTGdHPmmDYSaV1IHK+5cfOucI/xJze
	 P9BwK87Dmpm+Qkm3He5Se1aAQix4GBcjKu8Ng0nW/AebymNv58UstIk+Bs/BJk9Te7
	 YLcJfudPayt5Q==
Message-ID: <d9ae3745-6ec6-44e6-842d-4086f50864ae@kernel.org>
Date: Fri, 11 Oct 2024 17:45:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/12] PCI: rockchip-ep: Refactor endpoint link
 training enable
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
 <20241007041218.157516-9-dlemoal@kernel.org>
 <20241010082223.amfboyuegxwdo5gf@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241010082223.amfboyuegxwdo5gf@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_014519_057564_4D2D703C 
X-CRM114-Status: GOOD (  14.56  )
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

On 10/10/24 17:22, Manivannan Sadhasivam wrote:
> On Mon, Oct 07, 2024 at 01:12:14PM +0900, Damien Le Moal wrote:
>> The function rockchip_pcie_init_port() enables link training for a
>> controller configured in EP mode. Enabling link training is again done
>> in rockchip_pcie_ep_probe() after that function executed
>> rockchip_pcie_init_port(). Enabling link training only needs to be done
>> once, and doing so at the probe stage before the controller is actually
>> started by the user serves no purpose.
>>
> 
> I hope that the dual enablement is done as a mistake and not on purpose...

Yes, I think that was a mistake, likely when the EP mode support was added.

>> Refactor this by removing the link training enablement from both
>> rockchip_pcie_init_port() and rockchip_pcie_ep_probe() and moving it to
>> the endpoint start operation defined with rockchip_pcie_ep_start().
>> Enabling the controller configuration using the PCIE_CLIENT_CONF_ENABLE
>> bit in the same PCIE_CLIENT_CONFIG register is also move to
>> rockchip_pcie_ep_start() and both the controller configuration and link
>> training enable bits are set with a single call to
>> rockchip_pcie_write().
>>
> 
> But you didn't remove the existing code in probe() that sets
> PCIE_CLIENT_CONF_ENABLE.

Indeed. Removed. It does not seem to hurt though.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
