Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BDA4EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jul 2023 13:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1drzJYyGD/tFHZg8QweH45zCk1TPFCDzghILeb13A/k=; b=e0JlRiw6alcJWX
	soGXeNKgRvQJczqKUce1XMexnRxDG5EJhqTsXnjkZO/RFQS2J7vQi5fR9+iATe7YVmChx7QCI6sxX
	EAchv9pSXITVid3bF50Flbb8OX0zOJG2do0nDoUv/HF+28eY/0/Sx0dsdq6XEtgKZoX64yvGMWV0E
	IQfw7sMs76lUX3OHVF3WZ7Woa4CAwwd9EVdaUABNbiYL2Ulyqnskp0No0iQZvYb5uix0AFDMrdwgt
	BqqYLTWJrVI78vnXTvyig5EWwgON2WOerB2AZsIaX/xt6vv08/9uK9WXanzseTG285t0efjK53ldt
	08fFmjefZKyN8yNKWpCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qL29J-00BbZd-2s;
	Sun, 16 Jul 2023 13:50:57 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qL298-00BbVZ-00
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Jul 2023 13:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=09WyLGu4sDKt6cE8perQ6cdTvtdsXS5BgrO8PhqYcMM=;
	b=UMS1i8N48iFol80mWTXmQ2lx2wBu7SvJ1DpdLs5zrxyjvkfb71RP+LL0qSQ/q/9v4q5D
	lt68jDGLD25LQlIiSlL8Gy3xLAT9RoaFW3ACkrzIQ3AOED989widoBkeZv0/IPk9gyEnOy
	cyqkzCyvO6+uEdphwOcMpH29eeJ3+kwT+S22Gu1WhcKWQ3BLu6y1SgqZf7NBVqtg7XPJad
	TvGOkGJUIH7LItAQZ4DGehelFx/YVrFb4sXQLUBk/rnEfNct3TV8iBYVzrLWN2DjHA2BwU
	+qUIfIpJFay95/9L5zf23R4OUz9yRPA2k0kCicUicEDr/3c+RKrCgE3i5CqZBXxA==
Received: by filterdrecv-77869f68cc-659km with SMTP id filterdrecv-77869f68cc-659km-1-64B3F5AE-1A
        2023-07-16 13:50:38.718990442 +0000 UTC m=+5753673.609010343
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-2 (SG) with ESMTP
	id PBh5rzQDS-qjAeNpFmJj0A
	Sun, 16 Jul 2023 13:50:38.340 +0000 (UTC)
Message-ID: <a8de59ae-777a-a52f-cc23-573b500754a7@kwiboo.se>
Date: Sun, 16 Jul 2023 13:50:38 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
Content-Language: en-US
References: <20230714063027.74489-1-naoki@radxa.com>
 <25008843.6Emhk5qWAg@phil> <3e4a649c-a8fe-ff84-3beb-c56be1afff9b@kwiboo.se>
 <88A84626E8619FC1+da8b7cbd-ecc3-bd30-ed88-d6f13a39acd3@radxa.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <88A84626E8619FC1+da8b7cbd-ecc3-bd30-ed88-d6f13a39acd3@radxa.com>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hynNbFeHWCqqzA+UF?=
 =?us-ascii?Q?p8i6POjv1MZP9aoq5DIGqXnY4KoC4ulOdQpSOpL?=
 =?us-ascii?Q?Co0peyM8THi4JADxRWodJtNgekaXPE1ut+1bwdw?=
 =?us-ascii?Q?rj9yCut8rFYX9=2FomINH6W9+l0wLwthpNY7ESKmx?=
 =?us-ascii?Q?EGWstLbUYYK8acMe6vj804hjz8=2FvFaoMXLCpPrl?=
 =?us-ascii?Q?4aWm3jCdipETOLH4Rn6BQ=3D=3D?=
To: FUKAUMI Naoki <naoki@radxa.com>, Heiko Stuebner <heiko@sntech.de>,
	michael.riesch@wolfvision.net, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230716_065046_731168_BBCC2742 
X-CRM114-Status: GOOD (  26.94  )
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

On 2023-07-15 06:49, FUKAUMI Naoki wrote:
> hi,
> 
> On 7/15/23 01:24, Jonas Karlman wrote:
>> On 2023-07-14 17:46, Heiko Stuebner wrote:
>>> Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
>>>> ethernet on Radxa ROCK 3A is not working by following error:
>>>>
>>>>   rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>>>>   rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
>>>>
>>>> to fix this problem, align related properties with vendor kernel
>>>>   https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>>
>>>> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>
>>> There also is a second patch in the mix adding the gmac1_clkin
>>> ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")
>>>
>>> And this patch does the exact opposite as the original nodes.
>>> Can someone please mention board versions? Or did the gmac1 never
>>> really work in the first place?
>>
>> Ethernet have worked and probably still works booting with vendor U-Boot.
>>
>> However, when booting using mainline U-Boot the ethernet PHY is never
>> initialized or reset due to lack of a ethernet gmac driver for rk35xx.
> 
> surely I'm using mainline u-boot.
> 
>> With an early work-in-progress gmac driver the ethernet PHY is working
>> same as with vendor U-Boot, and the ethernet PHY is identified.
>>
>> This revert from using reset-gpios to using the deprecated
>> snps,reset-gpio is probably the wrong way forward.
>>
>> I suspect there is a bug in net/phy/mdio_device.c on how reset-gpios
>> is asserted/deasserted, it works differently than how I would expect it
>> to work, and also differs in how U-Boot handles reset-gpios.
>>
>> Some earlier findings regarding this reset issue:
>> https://github.com/Kwiboo/linux-rockchip/compare/rk3568-eth-phy-reset~2...rk3568-eth-phy-reset
>>
>> Will try to get a proper patch/rfc out later this weekend or early next
>> week after re-testing that on latest kernel.
> 
> thank you so much for your awesome work!

Thanks, made some progress on tracking down the root cause.
From what I have discovered so far there is a chicken-and-egg problem:

- phy needs to be reset or phy_id read back as 0xffffffff on mdio bus
- phy device is not created because a valid phy_id is not read back
- phy device needs to be created before it can be reset

Possible workarounds so far:
- phy is reset in U-Boot
  - very early work-in-progress at https://github.com/Kwiboo/u-boot-rockchip/commit/6ee80f9a895a32551cf30dd4252a4960ed80dfc9
- phy is reset using mdio bus reset
  - similar to old https://github.com/Kwiboo/linux-rockchip/commit/8597fcfa0c5c792dabb44a2db7b283c56c99ec6a
- phy is reset using deprecated snps,reset-gpio
  - similar to mdio bus reset

Regards,
Jonas

> 
> Best regards,
> FUKAUMI Naoki
> 
>> Regards,
>> Jonas
>>
>>>
>>>
>>> Thanks
>>> Heiko
>>>
>>>> ---
>>>>   .../boot/dts/rockchip/rk3568-rock-3a.dts      | 32 ++++++-------------
>>>>   1 file changed, 10 insertions(+), 22 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> index 917f5b2b8aab..f9381ab9629b 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> @@ -32,13 +32,6 @@ hdmi_con_in: endpoint {
>>>>   		};
>>>>   	};
>>>>   
>>>> -	gmac1_clkin: external-gmac1-clock {
>>>> -		compatible = "fixed-clock";
>>>> -		clock-frequency = <125000000>;
>>>> -		clock-output-names = "gmac1_clkin";
>>>> -		#clock-cells = <0>;
>>>> -	};
>>>> -
>>>>   	leds {
>>>>   		compatible = "gpio-leds";
>>>>   
>>>> @@ -256,18 +249,24 @@ &cpu3 {
>>>>   
>>>>   &gmac1 {
>>>>   	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>>>> -	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
>>>> -	clock_in_out = "input";
>>>> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
>>>> +	assigned-clock-rates = <0>, <125000000>;
>>>> +	clock_in_out = "output";
>>>>   	phy-handle = <&rgmii_phy1>;
>>>> -	phy-mode = "rgmii-id";
>>>> +	phy-mode = "rgmii";
>>>>   	phy-supply = <&vcc_3v3>;
>>>>   	pinctrl-names = "default";
>>>>   	pinctrl-0 = <&gmac1m1_miim
>>>>   		     &gmac1m1_tx_bus2
>>>>   		     &gmac1m1_rx_bus2
>>>>   		     &gmac1m1_rgmii_clk
>>>> -		     &gmac1m1_clkinout
>>>>   		     &gmac1m1_rgmii_bus>;
>>>> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>>> +	snps,reset-active-low;
>>>> +	/* Reset time is 20ms, 100ms for rtl8211f */
>>>> +	snps,reset-delays-us = <0 20000 100000>;
>>>> +	tx_delay = <0x42>;
>>>> +	rx_delay = <0x28>;
>>>>   	status = "okay";
>>>>   };
>>>>   
>>>> @@ -588,11 +587,6 @@ &mdio1 {
>>>>   	rgmii_phy1: ethernet-phy@0 {
>>>>   		compatible = "ethernet-phy-ieee802.3-c22";
>>>>   		reg = <0x0>;
>>>> -		pinctrl-names = "default";
>>>> -		pinctrl-0 = <&eth_phy_rst>;
>>>> -		reset-assert-us = <20000>;
>>>> -		reset-deassert-us = <100000>;
>>>> -		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>>>   	};
>>>>   };
>>>>   
>>>> @@ -630,12 +624,6 @@ vcc_mipi_en: vcc_mipi_en {
>>>>   		};
>>>>   	};
>>>>   
>>>> -	ethernet {
>>>> -		eth_phy_rst: eth_phy_rst {
>>>> -			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>>>> -		};
>>>> -	};
>>>> -
>>>>   	hym8563 {
>>>>   		hym8563_int: hym8563-int {
>>>>   			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
>>>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
