Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D67DEB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 05:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qvePDzX1sj+8QljTw2dYxP44FftAfl8AjGr5vmTogI=; b=YwQWIMVOyJrwjo
	rDbSTXKfIbIP4zwXL4LFm2j+t4mMgZw/Fa8F4QbGTe3cb6TrdJSZOcd+QAiDuy+chtzTKCgg7/j4u
	tKTt962x77xW7ykYT7kEjDcbPIuqpYOIMA6JT/5bpfaZC0YG4M//pgmkhoeGnHdZc8L1Frk5RJ55N
	LO+OQEbdxZDWkIEbzZdY4vTD3DIq5RpKkPrUIXD+VHsu5moa7hWI9aRYWQ5smFBuR1FzWOmQhZ7Mj
	kIgvvdroaBEJ9kltTQBPLVHf0Ulo5q1ZZBmF9l8+7jDHc/JJwTQnw50XZIOtiYvmVGvCONivDuw31
	k+atYNPM1oo77Qcd66Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNnqb-002p4g-1m;
	Mon, 24 Jul 2023 05:11:05 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNnqW-002p2D-2U
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jul 2023 05:11:03 +0000
X-QQ-mid: bizesmtp85t1690175391tolgaibr
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 24 Jul 2023 13:09:49 +0800 (CST)
X-QQ-SSF: 01100000000000B0G000000A0000000
X-QQ-FEAT: XBN7tc9DADIQeu1cWzVWHFXLnjX7WQ2KfJIbn6ldIwV6W30Zrp5HaCVOCXF2S
	5U+ZiEA3XXrudIim6s+AiWSbkW1jCVLgluizrKhTINHitLl1RoQZTOL/9mExJI6VVTyEz+O
	OXFT4x3a4b0MHXqbeV6JwebcQVYcnmnTxoDba7LU/iNqQ2k1KP2zMvE1TvAI7vXVZ5LKKSj
	I+sXIcxGz423PzD3bTAL5I6ZJs+wNfQ9DpkvCcgf7N2ta0ig0YZ6gyprFzNGPHaCTnTSx91
	smBg3L3e/oIJy/TAzAcWX/qBnBNNOTnmoBI0uNxMmAG3ROdCg9MNL7g1EtEM6jYY6j24F2k
	8/wfi/fr0uC0GWoGTg6NT7L4nu4QlIsSKzKvNRs9gA15Dg4MpE=
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4978098935637453173
Message-ID: <EF4FC43DBE66C4B0+4cc055c3-9faa-d71c-8e99-62fa99f0368e@radxa.com>
Date: Mon, 24 Jul 2023 14:09:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
To: Jonas Karlman <jonas@kwiboo.se>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Heiko Stuebner <heiko@sntech.de>, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org
References: <20230714063027.74489-1-naoki@radxa.com>
 <25008843.6Emhk5qWAg@phil> <3e4a649c-a8fe-ff84-3beb-c56be1afff9b@kwiboo.se>
 <88A84626E8619FC1+da8b7cbd-ecc3-bd30-ed88-d6f13a39acd3@radxa.com>
 <a8de59ae-777a-a52f-cc23-573b500754a7@kwiboo.se>
 <d8f7f21e-f10c-17c9-2462-f21f49196096@wolfvision.net>
 <19a0271a-8b73-bf45-8159-a738ff43f1c2@kwiboo.se>
 <cc8017b5-92a0-7483-e0b6-f2146bac1eb4@kwiboo.se>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <cc8017b5-92a0-7483-e0b6-f2146bac1eb4@kwiboo.se>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230723_221101_296241_CCA9D268 
X-CRM114-Status: GOOD (  32.65  )
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

hi,

On 7/24/23 07:54, Jonas Karlman wrote:
> On 2023-07-17 19:11, Jonas Karlman wrote:
>> On 2023-07-17 09:40, Michael Riesch wrote:
>>> Hi all,
>>>
>>> In addition to what has been already said:
>>>
>>> On 7/16/23 15:50, Jonas Karlman wrote:
>>>> On 2023-07-15 06:49, FUKAUMI Naoki wrote:
>>>>> hi,
>>>>>
>>>>> On 7/15/23 01:24, Jonas Karlman wrote:
>>>>>> On 2023-07-14 17:46, Heiko Stuebner wrote:
>>>>>>> Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
>>>>>>>> ethernet on Radxa ROCK 3A is not working by following error:
>>>>>>>>
>>>>>>>>    rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>>>>>>>>    rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
>>>>>>>>
>>>>>>>> to fix this problem, align related properties with vendor kernel
>>>>>>>>    https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>>>>>>
>>>>>>>> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>>
>>>>>>> There also is a second patch in the mix adding the gmac1_clkin
>>>>>>> ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")
>>>>>>>
>>>>>>> And this patch does the exact opposite as the original nodes.
>>>>>>> Can someone please mention board versions? Or did the gmac1 never
>>>>>>> really work in the first place?
>>>
>>> As far as I know all schematics versions state that the PHY produces the
>>> clock (see the most recent schematics here:
>>> https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf
>>>
>>> Although using the internal MAC clock works as well, using the
>>> gmac1_clkin is most probably the correct way.
>>>
>>>>>> Ethernet have worked and probably still works booting with vendor U-Boot.
>>>>>>
>>>>>> However, when booting using mainline U-Boot the ethernet PHY is never
>>>>>> initialized or reset due to lack of a ethernet gmac driver for rk35xx.
>>>>>
>>>>> surely I'm using mainline u-boot.
>>>
>>> Ah, this might explain why I never experienced this issue: I am using
>>> mainline barebox with GMAC support.
>>>
>>>>>> With an early work-in-progress gmac driver the ethernet PHY is working
>>>>>> same as with vendor U-Boot, and the ethernet PHY is identified.
>>>>>>
>>>>>> This revert from using reset-gpios to using the deprecated
>>>>>> snps,reset-gpio is probably the wrong way forward.
>>>>>>
>>>>>> I suspect there is a bug in net/phy/mdio_device.c on how reset-gpios
>>>>>> is asserted/deasserted, it works differently than how I would expect it
>>>>>> to work, and also differs in how U-Boot handles reset-gpios.
>>>>>>
>>>>>> Some earlier findings regarding this reset issue:
>>>>>> https://github.com/Kwiboo/linux-rockchip/compare/rk3568-eth-phy-reset~2...rk3568-eth-phy-reset
>>>>>>
>>>>>> Will try to get a proper patch/rfc out later this weekend or early next
>>>>>> week after re-testing that on latest kernel.
>>>>>
>>>>> thank you so much for your awesome work!
>>>>
>>>> Thanks, made some progress on tracking down the root cause.
>>>>  From what I have discovered so far there is a chicken-and-egg problem:
>>>>
>>>> - phy needs to be reset or phy_id read back as 0xffffffff on mdio bus
>>>> - phy device is not created because a valid phy_id is not read back
>>>> - phy device needs to be created before it can be reset
>>>>
>>>> Possible workarounds so far:
>>>> - phy is reset in U-Boot
>>>>    - very early work-in-progress at https://github.com/Kwiboo/u-boot-rockchip/commit/6ee80f9a895a32551cf30dd4252a4960ed80dfc9
>>>> - phy is reset using mdio bus reset
>>>>    - similar to old https://github.com/Kwiboo/linux-rockchip/commit/8597fcfa0c5c792dabb44a2db7b283c56c99ec6a
>>>> - phy is reset using deprecated snps,reset-gpio
>>>>    - similar to mdio bus reset
>>>
>>> There was a similar discussion here:
>>> https://lore.kernel.org/all/CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com/
>>>
>>> The approach that moves the reset to the MDIO bus has been mentioned
>>> there as well. On the first glance this approach looks reasonable to me.
>>
>> It does not look like U-Boot support mdio bus reset-gpios, so changing
>> to that would require adding even more code into U-Boot to get ethernet
>> working in U-Boot.
>>
>> Moving to mdio bus would make it behave like with old snps,reset-gpio,
>> however phy reset-gpios still describe the hw more accurately, a
>> assert/deassert cycle of reset-gpios triggers a phy hard reset.
>>
>> Do not know if it is possible to have both mdio bus reset and phy reset.
>>
>> There also looks like there is a bug in dwmac-rk rk3568_set_to_rgmii,
>> tx/rx delay is always enabled. It should be disabled in some phy modes.
>> Can send a patch once I finish with the U-Boot ethernet driver.
>>
>> Will try to complete a U-Boot driver that supports both phy reset-gpios
>> and the deprecated snps,reset-gpio as a first step.
> 
> I have now created a small U-Boot dummy ethernet phy reset driver that
> will assert/deassert reset-gpios to help make linux detect the PHY.
> 
> With this my ROCK 3 Model B detects the RTL8211F PHY again without any
> changes to linux device tree.
> 
> See the U-Boot patch "HACK: net: Add dummy PHY reset-gpios driver"
> at https://github.com/Kwiboo/u-boot-rockchip/commits/rk3568-2023.10-hacks

your hack works fine on my ROCK 3A with mainline kernel.

Best regards,

--
FUKAUMI Naoki
Radxa

> Will continue work on a fully working dwc_eth_qos_rockchip U-Boot driver,
> currently having trouble getting TX working, at least RX is working.
> 
> Regards,
> Jonas
> 
>>
>> Regards,
>> Jonas
>>
>>>
>>> Best regards,
>>> Michael
>>>
>>>> [...]
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
