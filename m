Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 813B1CA1015
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 12:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bsQ2TZrPZ0SgJEDJ6s9UJknqg237b8cO+FqNkXqHm8=; b=XpeMIcl98gopp+
	P0dkeovu0fnVxHnb+RhK4uN5znKjeK+Flhx0FzqeEH46EErXFreeYdoZL3X1CayEzc7+JmKj9hX6r
	licfstojXMSmmMc2HFi29S6BaLmUEQH9XyaJV2PeKyfJUmXZN6kl/RWv74F0UccBGHEDk29QhwOMw
	n4zlfprhTMhIBBX+s7EnG4fUttPa3vJYt9cnj/qf4DMaeesLrSRsvgZOSgUP1+VgXy8/mi4wdFyj5
	C7SakYeNuIxwv2Hst+71vVv+DdHWMBa/kXILN51CLtjdBO3q4h+s1MxBGemWP6L7EIoa455mnAzom
	KD/b3ZA05vuf7waROdXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu96I-0000000BZdc-3H5K;
	Thu, 04 Sep 2025 12:30:02 +0000
Received: from mail-m49201.qiye.163.com ([45.254.49.201])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7kJ-0000000B4xF-1qbR;
	Thu, 04 Sep 2025 11:03:16 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 21b2ed1f3;
	Thu, 4 Sep 2025 19:03:11 +0800 (GMT+08:00)
Message-ID: <b5fbeb3f-9962-444d-85b3-3b8a11f69266@rock-chips.com>
Date: Thu, 4 Sep 2025 19:03:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Ensure clk_phy doesn't contain
 invalid address
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Yao Zi <ziyao@disroot.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250904031222.40953-3-ziyao@disroot.org>
 <aLlwv3v8ACha8b-3@shell.armlinux.org.uk>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aLlwv3v8ACha8b-3@shell.armlinux.org.uk>
X-HM-Tid: 0a991465108003abkunm0f56a227434cd4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhDQlZLGR4dShpIS0pDQkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Xit9gLr6c2F67gZWiRJ3knK+6v3aqUFhgRcIQ2qpT3IVYWVLjxjDx+93FZxit8MYIQ2q4QDexxikifP7ohn/GuR6WZl8TXLXN7BsZSF1phcaUvWq4h0bSxKVFlB7oNT+jkw/9A/nyTQILFNQSy4ZP7NbYAiYNyjQ3WrTJxtEWzs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ZFFCk3oD5mOkAzLuXB6XLVMdJMHaibq0TJviAsZVl/c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_040315_648925_1E4AF7DA 
X-CRM114-Status: GOOD (  21.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 9/4/2025 6:58 PM, Russell King (Oracle) wrote:
> On Thu, Sep 04, 2025 at 03:12:24AM +0000, Yao Zi wrote:
>>   	if (plat->phy_node) {
>>   		bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
>>   		ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
>> -		/* If it is not integrated_phy, clk_phy is optional */
>> +		/*
>> +		 * If it is not integrated_phy, clk_phy is optional. But we must
>> +		 * set bsp_priv->clk_phy to NULL if clk_phy isn't proivded, or
>> +		 * the error code could be wrongly taken as an invalid pointer.
>> +		 */
> I'm concerned by this. This code is getting the first clock from the DT
> description of the PHY. We don't know what type of PHY it is, or what
> the DT description of that PHY might suggest that the first clock would
> be.
>
> However, we're geting it and setting it to 50MHz. What if the clock is
> not what we think it is?

We only set integrated_phy to 50M, which are all known targets. For external PHYs, we do not perform frequency settings.



>
> I'm not sure we should be delving in to some other device's DT
> properties to then get resources that it _uses_ to then effectively
> take control those resources.
>
> I think we need way more detail on what's going on. Commit da114122b83
> merely stated:
>
>      For external phy, clk_phy should be optional, and some external phy
>      need the clock input from clk_phy. This patch adds support for setting
>      clk_phy for external phy.
>
> If the external PHY requires a clock supplied to it, shouldn't the PHY
> driver itself be getting that clock and setting it appropriately?
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
