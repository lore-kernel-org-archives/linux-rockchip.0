Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C1EAEB64DC
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jul 2023 04:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYM+P+4/rFedJLRIInlRKYA9eXNq9uIOwp7dojNW4cw=; b=rQN7Vex07mGCel
	JYMoczqV6iwDgWWXgT4uMfHuGK5dCID+rs8fB/HhagsLtoljoY4einn5nbPYiQw8aGXQJidot6wD5
	ugHyxeVOcISbyB04L2a1T+ByC/pHM8oHvaGeV5qOZY7oZK35yMpGeLfjJ9ODDtRfpeWcX6Rtmf/4C
	nnhInBOa9sJMY8hY/fih4IdgmY2PoWye4KupUxGlp8DXgzAEXO27vUD8wYhbxBCKqDmFKRrmu1JAZ
	mbDUdW+ah/Td2uaRaBs+UMN47IYfiUyZINfdy27LiHOqnDQUn/IFkphxHWEOS+1akfB2d0zkBeVCD
	Vsa7Lo7WzSzapi4ob8Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKXEU-007upc-1T;
	Sat, 15 Jul 2023 04:50:14 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKXEQ-007unc-0l
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jul 2023 04:50:13 +0000
X-QQ-mid: bizesmtp66t1689396554ts0a65lb
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 15 Jul 2023 12:49:12 +0800 (CST)
X-QQ-SSF: 01100000000000B0G000000A0000000
X-QQ-FEAT: nA8mzCjPbKhB82fJ7kfmdm6ovveqkbcT39SgoDHoyXXLIX29WusPB54nXKgW9
	xYqCY4xmJxcVmvBB6QdRETRptLLwn8KkT1F/GO4r1y2E80fEGOGLczD5XVgzSLN4tWVf/JN
	VMSM+dm3KuPK7Z3J0CTcrUNwgQRA7u9MFMJO7mzEZqRU4sK7o3MuwYmJ/4z1674cLv3QAYC
	9wgXQGTCe0k1jxoCNMhhKlABfJM6NmbpPMqhhiaUDgDv4DLZ6z/0U9BH50VFFFujCuvRAQ0
	xfAIqc8OfvEtDKFcjK+T37kJlY5e2JV004Ntw6/y5GARWOHuRBBL+re7Ks2SBKXQ49JC+k9
	U8vibhPTp8LWsnPdtZBxC/97dz5uYxphhbpkwLGMc4Xcfa4szQ=
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2870174752306850587
Message-ID: <88A84626E8619FC1+da8b7cbd-ecc3-bd30-ed88-d6f13a39acd3@radxa.com>
Date: Sat, 15 Jul 2023 13:49:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 michael.riesch@wolfvision.net, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org
References: <20230714063027.74489-1-naoki@radxa.com>
 <25008843.6Emhk5qWAg@phil> <3e4a649c-a8fe-ff84-3beb-c56be1afff9b@kwiboo.se>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <3e4a649c-a8fe-ff84-3beb-c56be1afff9b@kwiboo.se>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_215011_086087_85FD1C97 
X-CRM114-Status: GOOD (  27.19  )
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

On 7/15/23 01:24, Jonas Karlman wrote:
> On 2023-07-14 17:46, Heiko Stuebner wrote:
>> Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
>>> ethernet on Radxa ROCK 3A is not working by following error:
>>>
>>>   rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>>>   rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
>>>
>>> to fix this problem, align related properties with vendor kernel
>>>   https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>
>>> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>
>> There also is a second patch in the mix adding the gmac1_clkin
>> ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")
>>
>> And this patch does the exact opposite as the original nodes.
>> Can someone please mention board versions? Or did the gmac1 never
>> really work in the first place?
> 
> Ethernet have worked and probably still works booting with vendor U-Boot.
> 
> However, when booting using mainline U-Boot the ethernet PHY is never
> initialized or reset due to lack of a ethernet gmac driver for rk35xx.

surely I'm using mainline u-boot.

> With an early work-in-progress gmac driver the ethernet PHY is working
> same as with vendor U-Boot, and the ethernet PHY is identified.
> 
> This revert from using reset-gpios to using the deprecated
> snps,reset-gpio is probably the wrong way forward.
> 
> I suspect there is a bug in net/phy/mdio_device.c on how reset-gpios
> is asserted/deasserted, it works differently than how I would expect it
> to work, and also differs in how U-Boot handles reset-gpios.
> 
> Some earlier findings regarding this reset issue:
> https://github.com/Kwiboo/linux-rockchip/compare/rk3568-eth-phy-reset~2...rk3568-eth-phy-reset
> 
> Will try to get a proper patch/rfc out later this weekend or early next
> week after re-testing that on latest kernel.

thank you so much for your awesome work!

Best regards,
FUKAUMI Naoki

> Regards,
> Jonas
> 
>>
>>
>> Thanks
>> Heiko
>>
>>> ---
>>>   .../boot/dts/rockchip/rk3568-rock-3a.dts      | 32 ++++++-------------
>>>   1 file changed, 10 insertions(+), 22 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> index 917f5b2b8aab..f9381ab9629b 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> @@ -32,13 +32,6 @@ hdmi_con_in: endpoint {
>>>   		};
>>>   	};
>>>   
>>> -	gmac1_clkin: external-gmac1-clock {
>>> -		compatible = "fixed-clock";
>>> -		clock-frequency = <125000000>;
>>> -		clock-output-names = "gmac1_clkin";
>>> -		#clock-cells = <0>;
>>> -	};
>>> -
>>>   	leds {
>>>   		compatible = "gpio-leds";
>>>   
>>> @@ -256,18 +249,24 @@ &cpu3 {
>>>   
>>>   &gmac1 {
>>>   	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>>> -	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
>>> -	clock_in_out = "input";
>>> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
>>> +	assigned-clock-rates = <0>, <125000000>;
>>> +	clock_in_out = "output";
>>>   	phy-handle = <&rgmii_phy1>;
>>> -	phy-mode = "rgmii-id";
>>> +	phy-mode = "rgmii";
>>>   	phy-supply = <&vcc_3v3>;
>>>   	pinctrl-names = "default";
>>>   	pinctrl-0 = <&gmac1m1_miim
>>>   		     &gmac1m1_tx_bus2
>>>   		     &gmac1m1_rx_bus2
>>>   		     &gmac1m1_rgmii_clk
>>> -		     &gmac1m1_clkinout
>>>   		     &gmac1m1_rgmii_bus>;
>>> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>> +	snps,reset-active-low;
>>> +	/* Reset time is 20ms, 100ms for rtl8211f */
>>> +	snps,reset-delays-us = <0 20000 100000>;
>>> +	tx_delay = <0x42>;
>>> +	rx_delay = <0x28>;
>>>   	status = "okay";
>>>   };
>>>   
>>> @@ -588,11 +587,6 @@ &mdio1 {
>>>   	rgmii_phy1: ethernet-phy@0 {
>>>   		compatible = "ethernet-phy-ieee802.3-c22";
>>>   		reg = <0x0>;
>>> -		pinctrl-names = "default";
>>> -		pinctrl-0 = <&eth_phy_rst>;
>>> -		reset-assert-us = <20000>;
>>> -		reset-deassert-us = <100000>;
>>> -		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>>   	};
>>>   };
>>>   
>>> @@ -630,12 +624,6 @@ vcc_mipi_en: vcc_mipi_en {
>>>   		};
>>>   	};
>>>   
>>> -	ethernet {
>>> -		eth_phy_rst: eth_phy_rst {
>>> -			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>>> -		};
>>> -	};
>>> -
>>>   	hym8563 {
>>>   		hym8563_int: hym8563-int {
>>>   			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
>>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
