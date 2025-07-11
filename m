Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D715C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 11:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNhe6fmGO+IxJ9bdr2LmPNi97ujpdw2ggoTRgHn8a1k=; b=sPXKWov31Nw8Fw
	jgHl6sG4UDtus8jEN0hEk1NxF/oh69By4BJw2pCD+8a5ICLYrwMxsIawomMAOYMmhafuNX0xWFmH4
	NJ8Bl8qewbyl43o+KX1pMK7gvAbad2mBzIQUdxDXcEkS6saPaN35iTpZzPG9OpO44taogoCcShrG0
	GB7ammwos/wXT2JYuLDML7VlfFfmhcG27fF4iJzWH9FGjR017GV6S+1GQS/SS6P3CoE+SWnqryETG
	RL2rYqDZHD7aKtv1+HukVpSh/NKMKvFgnJT2kzZInH7Q/R7yKWKI89TturMmEbyEpkCYpObWQgYIu
	qNmBz81f7BctZsM65IVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaBWz-0000000EYD9-2Szd;
	Fri, 11 Jul 2025 11:03:05 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaAUm-0000000EORe-1vck
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 09:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1752227804;
 bh=4rVIc3YXAPNKeRBKRO+kcpmDUDUsEdoUffccwiP9wS4=;
 b=OviRDQ+LlIUEPVLvY868yBoNv6ucH1im6LkGRb5SYWhffzytPCt73ucNNk45K42gGXLae0SFi
 MPO7NST8iPX9pvnfeM+qjq+f8dGvNVWcCxjc2OczqZiLV33RzdQvXEdO28zApKkPtuAlVm2Esvf
 QPrOb+GyPtvPthZrCNNNMzXXVso95+CGBZMlWl9Z1HYpm8J4RMxp9uPsXaETxq4bx/ArrkHEEha
 ETmxXwPYCUrXSIJSCw/9dx8FiTlPJUHWpFh7WNr2OfenMbjBP2HyCLF0LjC+5si8Ova5fJmXviJ
 tY8E4mcjJCBgbF42UBFo3lcTiwPN9NfMS2g5ORu4aNaQ==
X-Forward-Email-ID: 6870dfd1f6410632f515ce81
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <acbbf570-7a56-4d88-a631-32acd13d29c7@kwiboo.se>
Date: Fri, 11 Jul 2025 11:56:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: rockchip: Add ArmSoM Sige1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 ziyao@disroot.org
References: <20250710202958.3717181-5-jonas@kwiboo.se>
 <20250711080009.72677-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250711080009.72677-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_025644_835867_4094D851 
X-CRM114-Status: GOOD (  14.48  )
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

Hi,

On 7/11/2025 10:00 AM, Chukun Pan wrote:
> Hi,
> 
>> +	leds {
>> +		compatible = "gpio-leds";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&g_led>, <&r_led>;
>> +
>> +		led-green {
> 
> Should this label be named as led-0/led-1?

The nodes must include 'led' anywhere in their name according to schema:

"""
patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
"""

Using the color name similar to the the pin labels in schematics made
most sense to me.

Do you want me to change these to conform to the more restricted
^led-[0-9a-f]$ pattern?

> 
>> +&sdio0 {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
>> +	disable-wp;
>> +	keep-power-in-suspend;
>> +	mmc-pwrseq = <&sdio_pwrseq>;
>> +	no-mmc;
>> +	no-sd;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdio0_bus4>, <&sdio0_clk>, <&sdio0_cmd>;
> 
> This pinctrl is the same as that of rk3528.dtsi, we can remove it.

I will drop the pinctrl props in a v3.

> 
> BTW there is a fan connector on the board (connected to pwm6m2),
> so pwm6 should be enabled.

I only try to enable controllers for devices that are properly described,
so I ignored the pwm-fan and its required pwm6 controller. Mostly
because it make more sense to describe the fan once thermal support is
completed, work [1] currently being blocked by a rk356x otp series [2]
and that depends on a rk3576 thermal series [3].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250620-rk3528/
[2] https://lore.kernel.org/r/20250415103203.82972-1-kever.yang@rock-chips.com
[3] https://lore.kernel.org/r/20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com

> 
>> +&uart2 {
>> +	dma-names = "tx", "rx";
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart2m1_xfer>, <&uart2m1_ctsn>, <&uart2m1_rtsn>;
>> +	uart-has-rtscts;
>> +	status = "okay";
>> +
>> +	bluetooth {
>> +		compatible = "brcm,bcm43438-bt";
>> +		clocks = <&cru CLK_DEEPSLOW>;
>> +		clock-names = "lpo";
>> +		device-wakeup-gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
> 
> Is host-wakeup-gpios needed?

The host-wakeup interrupt is described using interrupt* props, not
using the deprecated host-wakeup-gpios prop.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
