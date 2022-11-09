Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08129C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Nov 2022 12:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzFqS4oBvdG5lLPA0ekTatNbEINo7w8sBL+tOptDryc=; b=SBpp0rHDAsX1ML
	okh+G/7Td8/Sz0vF61gMteCZaYlUHTlBHp+nb8ZJ+3eZByuIK2aRKU5PnUoeXV2pcTQHsTqZ2fYwq
	o0nXxXuYi0s3piElBXozdsTOkPefAhvU8FaFSZpeTQug5D7TTejumHNxzDitXcxUOw294vY7gAKpY
	ONSHjM2KJgHcvhj45KJU91lpjzF8BwyBNzH6TEqXVjUer0GCpu9ocixieAqmEaKikQDXD0xJqm/X6
	kLHXazv5icALb5Q+8y7JQv6szNOqiqHEH3oKCyWDqt9mfIX+xoyhq7oHNJH2w+SKGSDsRXMIMk2N9
	MMFXelxcmdU/M48Rpmxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osjmh-00DJUc-1c; Wed, 09 Nov 2022 12:02:23 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osjmb-00DIvS-2n
	for linux-rockchip@lists.infradead.org; Wed, 09 Nov 2022 12:02:22 +0000
X-QQ-mid: bizesmtpipv602t1667995270t37f
Received: from [IPV6:240e:3b7:3244:5040::360] ( [255.117.123.4])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 09 Nov 2022 20:01:09 +0800 (CST)
X-QQ-SSF: 01100000000000I0F000000A0000000
X-QQ-FEAT: 7q8qOdSUjLVaaMsDKNrSeCX2ytnuz1Hbx/zDiF7iyWD+RcqLlibUJae6jaEeS
	0lV8zFshiIDCnB5XpITY7puZQJz+IqCS/nwL4RXUca687FEUMmn7fekm2KF0KtTLwCJnMyB
	wn/2J2y8en30bQSvD6XArAmQg6XqzvFVWfEn4JGoiK+NFJAEgUXC4a8XlhPw6z6cyN9DCOu
	c2ZnabEGlSqr1r66f4AgEOQqnBa1NlqF7PTHtuAz8C3qLIt2zFTFwoBWQ2Z6R1u7Z+R02TU
	N4+kFQv1IT4bZIDJu3qL7DamhaHhHUG/whQGq81tJ1pOkxADS7m8IieYuGe3ACQFoITG+YO
	5pawRG7uIJl+kZ4fO4fnvszbwynGc6y/cl6mQVO9qpnldxX2W0sG1AsTzOodu6RPYH9xrRw
	3hyXSVwJw9a3ycd/jX3b8BIb0SSFEZN0
X-QQ-GoodBg: 0
Message-ID: <892CB3E963AEF095+eaed7498-2324-9476-6a24-f940d62adb74@radxa.com>
Date: Wed, 9 Nov 2022 20:01:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Cc: tom@radxa.com, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Add rock-5a board
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20221108171500.99599-1-sebastian.reichel@collabora.com>
 <20221108171500.99599-6-sebastian.reichel@collabora.com>
 <9bdc7e3b-a57b-7247-39ae-ece7bf1566fc@wolfvision.net>
From: ZHANG Yuntian <yt@radxa.com>
Organization: Radxa Computer Co., Ltd
In-Reply-To: <9bdc7e3b-a57b-7247-39ae-ece7bf1566fc@wolfvision.net>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpipv:radxa.com:qybglogicsvr:qybglogicsvr7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_040217_694714_3488C0BA 
X-CRM114-Status: GOOD (  22.89  )
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

On 11/9/22 17:16, Michael Riesch wrote:
> Hi Sebastian,
> 
> On 11/8/22 18:15, Sebastian Reichel wrote:
>> Add board file for the RK3588s Rock 5A board. While the hardware
>> offers plenty of peripherals and connectivity this basic implementation
>> just handles things required to access eMMC, UART and Ethernet (i.e.
>> enough to successfully boot Linux).
>>
>> Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>> ---
>>   .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
>>   arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>>   .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 63 +++++++++++++++++++
>>   3 files changed, 69 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 4230881371fa..6bff4c42d815 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -744,6 +744,11 @@ properties:
>>             - const: rockchip,rk3588-evb1-v10
>>             - const: rockchip,rk3588
>>   
>> +      - description: Radxa Rock 5A

Please change to "Radxa ROCK 5 Model A". This is the full product name 
per our naming convention.

>> +        items:
>> +          - const: radxa,rock-5a
> 
> FYI: I was wondering what the convention was when I submitted the
> rk3568-rock-3a.dts. There are boards with the compatible
> "radxa,rockpi4a", "radxa,rockpi4b", "radxa,rockpis", but also the
> "radxa,rock-4c-plus". I went with the slight majority and named it
> "radxa,rock3a". Maybe you would like to consider "radxa,rock5a" in order
> to follow suit.

Currently we keep the compatible field to match the file name excluding 
the SoC prefix, since that seems to be what other boards are doing (ex. 
odroid-go2, nanopi-r2s, orion-r68-meta, etc). I'll say `rock-5a` looks 
good to me.

> 
> Best regards,
> Michael
> 
>> +          - const: rockchip,rk3588s
>> +
>>   additionalProperties: true
>>   
>>   ...
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index 12ed53de11eb..31fa55750a0f 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -73,3 +73,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> new file mode 100644
>> index 000000000000..25387a000341
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -0,0 +1,63 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include "rk3588s.dtsi"
>> +
>> +/ {
>> +	model = "Radxa Rock 5A Board";
>> +	compatible = "radxa,rock-5a", "rockchip,rk3588s";
>> +
>> +	chosen {
>> +		stdout-path = "serial2:1500000n8";
>> +	};
>> +};
>> +
>> +&gmac1 {
>> +	phy-mode = "rgmii-rxid";
>> +	clock_in_out = "output";
>> +
>> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	/* Reset time is 20ms, 100ms for rtl8211f */
>> +	snps,reset-delays-us = <0 20000 100000>;
>> +
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&gmac1_miim
>> +		     &gmac1_tx_bus2
>> +		     &gmac1_rx_bus2
>> +		     &gmac1_rgmii_clk
>> +		     &gmac1_rgmii_bus>;
>> +
>> +	tx_delay = <0x3a>;
>> +	rx_delay = <0x3e>;
>> +
>> +	phy-handle = <&rgmii_phy1>;
>> +	status = "okay";
>> +};
>> +
>> +&mdio1 {
>> +	rgmii_phy1: phy@1 {
>> +		compatible = "ethernet-phy-ieee802.3-c22";
>> +		reg = <0x1>;
>> +		#phy-cells = <0>;
>> +	};
>> +};
>> +
>> +&sdhci {
>> +	bus-width = <8>;
>> +	no-sdio;
>> +	no-sd;
>> +	non-removable;
>> +	max-frequency = <200000000>;
>> +	mmc-hs400-1_8v;
>> +	mmc-hs400-enhanced-strobe;
>> +	status = "okay";
>> +};
>> +
>> +&uart2 {
>> +	pinctrl-0 = <&uart2m0_xfer>;
>> +	status = "okay";
>> +};
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

-- 
Best regards,

ZHANG Yuntian

Operating System Developer
Radxa Computer Co., Ltd
Shenzhen, China

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
