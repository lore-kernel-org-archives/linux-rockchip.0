Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29BE3C6FA86
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 17:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcfOWT1ak9eakpOuygcdpMPp2ICiWll50A1Gw3a/JJo=; b=EnFoOBedSzXDzd
	4AhwGd9cNyr14wCNtQNcJ8S5yymYgRTZ+TXsBWSwF0lHZlBhaYetzLHs9TkPcmqJDvT+G/7gVuh1u
	XldJDSn6DqAMroxEjm9YZZt5q1oLB/ovjvGbIjk41Eq6EKB+E8L+tXSRKFgusWUuocC5zSdqukpgm
	WOTGOAQG2sF0xMCcqgf42kxvZJc+cQFV5NAiiq2tIkSva5fMLfIafeID8Qz+7UF93cww/kALu6PWp
	/JtQOxrha7MU5iUBZTcZUEFCQwYg8K2fN+SJ9dhI0lGJsay8DLy4XRF/aQD2fqhrXn1rwaeFtjt3W
	dE3j5REm6bMFph7BvsKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYsOk-00Dvwz-B7; Thu, 15 Sep 2022 17:11:34 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYsOY-00Dvt5-Sk; Thu, 15 Sep 2022 17:11:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C7671682;
	Thu, 15 Sep 2022 10:11:24 -0700 (PDT)
Received: from [10.57.18.118] (unknown [10.57.18.118])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCE083F73B;
	Thu, 15 Sep 2022 10:11:16 -0700 (PDT)
Message-ID: <4c4e5ab8-80eb-7b36-0489-a4e7ee346e4c@arm.com>
Date: Thu, 15 Sep 2022 18:11:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: enable gamma control on
 RK3399
Content-Language: en-GB
To: Hugh Cole-Baker <sigmaris@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com
References: <20211019215843.42718-1-sigmaris@gmail.com>
 <20211019215843.42718-4-sigmaris@gmail.com>
 <9196035b-273a-adca-2b87-c70bbab7f5c9@arm.com>
 <7B966E6B-1D3F-4975-AC44-1840951257F1@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <7B966E6B-1D3F-4975-AC44-1840951257F1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_101123_008132_0FE11263 
X-CRM114-Status: GOOD (  14.66  )
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

On 2022-09-15 17:53, Hugh Cole-Baker wrote:
> 
>> On 15 Sep 2022, at 15:40, Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2021-10-19 22:58, Hugh Cole-Baker wrote:
>>> Define the memory region on RK3399 VOPs containing the gamma LUT at
>>> base+0x2000.
>>> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
>>> ---
>>> Changes from v1: no changes in this patch
>>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index 3871c7fd83b0..9cbf6ccdd256 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -1619,7 +1619,7 @@ i2s2: i2s@ff8a0000 {
>>>     	vopl: vop@ff8f0000 {
>>>   		compatible = "rockchip,rk3399-vop-lit";
>>> -		reg = <0x0 0xff8f0000 0x0 0x3efc>;
>>> +		reg = <0x0 0xff8f0000 0x0 0x2000>, <0x0 0xff8f2000 0x0 0x400>;
>>>   		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
>>>   		assigned-clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
>>>   		assigned-clock-rates = <400000000>, <100000000>;
>>> @@ -1676,7 +1676,7 @@ vopl_mmu: iommu@ff8f3f00 {
>>>     	vopb: vop@ff900000 {
>>>   		compatible = "rockchip,rk3399-vop-big";
>>> -		reg = <0x0 0xff900000 0x0 0x3efc>;
>>> +		reg = <0x0 0xff900000 0x0 0x2000>, <0x0 0xff902000 0x0 0x1000>;
>>
>> Doesn't the second range still need to be shorter than 0xf00 to avoid overlapping the IOMMU?
>>
>> Robin.
> 
> This should be OK, the other registers are in the range ff900000-ff902000, the
> gamma LUT occupies the range ff902000-ff903000, and then the IOMMU registers
> begin at ff903f00. I don't see any overlaps with the IOMMU unless I'm
> misreading the dts.

Oh dear, you're quite right, apparently I can't add up in hex today. 
Sorry for the noise!

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
