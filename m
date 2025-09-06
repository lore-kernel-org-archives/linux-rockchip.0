Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBEECA1012
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vxOFn7eCLi3n05zGa/FM6FkXYWwrNA6BfCurp7S/Ys=; b=QWfm+3mcg7LSMy
	IIIbWhiluK9dVZo3ohmOkOIfLiUZ6HvHuQUbIceEMPpgq44YUGFNsccCf2ttaXd+6XLc1yQCVNTvW
	va3rSR5+naSz/fycXfdGsmj1+gV7QpfpZ6nQ5+Jan5TdPKaGly7GZlr3/BIzjZ1nnHo15iWUVP8K+
	2rV5JQaoroy01Esa4zBswLVFXik+yOknHmwyBYuDdQv4csaT3AV0pOQFNxlgpHz4nkfDdOsqGtT3e
	JLpYoXZsqMs6bbBJpMotQOGLJygOdhfjkqV9LgxRmCWws9uDAMCE5S55MEyX8RqwFRsqBKFgH25Ea
	YmG9LqqdqkSwsCcMuxOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uumNp-0000000711d-0WWK;
	Sat, 06 Sep 2025 06:26:45 +0000
Received: from mail-m155116.qiye.163.com ([101.71.155.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uumNl-0000000710i-1GDt;
	Sat, 06 Sep 2025 06:26:43 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 21e46c877;
	Sat, 6 Sep 2025 14:26:31 +0800 (GMT+08:00)
Message-ID: <5d691f5b-460e-46cb-9658-9c391058342f@rock-chips.com>
Date: Sat, 6 Sep 2025 14:26:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Ensure clk_phy doesn't contain
 invalid address
To: Yao Zi <ziyao@disroot.org>, "Russell King (Oracle)"
 <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250904031222.40953-3-ziyao@disroot.org>
 <aLlwv3v8ACha8b-3@shell.armlinux.org.uk>
 <b5fbeb3f-9962-444d-85b3-3b8a11f69266@rock-chips.com>
 <aLlyb6WvoBiBfUx3@shell.armlinux.org.uk>
 <aLly7lJ05xQjqCWn@shell.armlinux.org.uk> <aLvIbPfWWNa6TwNv@pie>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aLvIbPfWWNa6TwNv@pie>
X-HM-Tid: 0a991db47afa03abkunm6f5b97526997b6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRlJTVZKTxpPTU4fTB1JQ05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XeollWZr90ZLf9L7AdJ3LQbsRm2o9/RlO6fnKUc1fCiUZVidPuq4AywnynalP0/pupRK5Fn/V141DZqMKg6Or8cwAa9y0ysjWi/3FI7BGU/AW4bcdOEc5Y30uM5F1jnwWVDYZe3IbI/KYC9P81XZ7KUdvA0qDfkfDWwVrYpGR48=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=iAEkg+oPP2b/JZz9myImwCnXMGQd4xA94/pfnmR4uF0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_232641_834171_80550680 
X-CRM114-Status: GOOD (  15.90  )
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

On 9/6/2025 1:36 PM, Yao Zi wrote:

> On Thu, Sep 04, 2025 at 12:07:26PM +0100, Russell King (Oracle) wrote:
>> On Thu, Sep 04, 2025 at 12:05:19PM +0100, Russell King (Oracle) wrote:
>>> On Thu, Sep 04, 2025 at 07:03:10PM +0800, Chaoyi Chen wrote:
>>>> On 9/4/2025 6:58 PM, Russell King (Oracle) wrote:
>>>>> On Thu, Sep 04, 2025 at 03:12:24AM +0000, Yao Zi wrote:
>>>>>>    	if (plat->phy_node) {
>>>>>>    		bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
>>>>>>    		ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
>>>>>> -		/* If it is not integrated_phy, clk_phy is optional */
>>>>>> +		/*
>>>>>> +		 * If it is not integrated_phy, clk_phy is optional. But we must
>>>>>> +		 * set bsp_priv->clk_phy to NULL if clk_phy isn't proivded, or
>>>>>> +		 * the error code could be wrongly taken as an invalid pointer.
>>>>>> +		 */
>>>>> I'm concerned by this. This code is getting the first clock from the DT
>>>>> description of the PHY. We don't know what type of PHY it is, or what
>>>>> the DT description of that PHY might suggest that the first clock would
>>>>> be.
>>>>>
>>>>> However, we're geting it and setting it to 50MHz. What if the clock is
>>>>> not what we think it is?
>>>> We only set integrated_phy to 50M, which are all known targets. For external PHYs, we do not perform frequency settings.
>>> Same question concerning enabling and disabling another device's clock
>>> that the other device should be handling.
>> Let me be absolutely clear: I consider *everything* that is going on
>> with clk_phy here to be a dirty hack.
>>
>> Resources used by a device that has its own driver should be managed
>> by _that_ driver alone, not by some other random driver.
> Agree on this. Should we drop the patch, or fix it up for now to at
> least prevent the oops? Chaoyi, I guess there's no user of the feature
> for now, is it?

This at least needs fixing. Sorry, I have no idea how to implement this in the PHY.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
