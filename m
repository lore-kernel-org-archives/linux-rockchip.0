Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33140EB1070
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 15:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whm6zbPY24m8ORQ6Qun4tX0fqEfRL2D4UMpjQW0QVBw=; b=b0GJiSK5tYZo6y
	aC6Fv3JwoJX4/AkgVy+OB4SJypkOORSd+ka2q5CJqAkNKfHXnqiupQNFzsUierz4oVLGHS3SWlhmu
	eeHkHo5q5zDthiTFtwYEPzyuLfrvZV+vidZUmzzWQlPxOpBY7xfLXd2a0Z2sAKpWik4T3lkEAhr39
	pOxp4QTRh0d6goz+CXfh0im1/odrBiogR0+ETqPCCRtUWIrSjjSOqXvEmZGVnx0coBu73YzaJYTEY
	CRJ9KkLu+zzIQnZZfeH4p6d+yB+XA3egqzxbXEtglSVdXNnCk7lXj7SQCgnluJ4ycLsr/FIHkERK7
	PgsJLvn+EpXJ/jtl8mwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzz38-00000009oVq-0l7K;
	Tue, 10 Mar 2026 15:31:10 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzz34-00000009oU9-3Q4p
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 15:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1773156665;
 bh=gF9wyK5BBXJ3oTJAJwbnzvXXms8IntJorKz535sV2C8=;
 b=OMMdTeWMRXqGHPT8AqCOniiJ7behfdW5Oi6u9hAiOauJbQKxKx1JuNP+EYa18Kpu6Ojw5MY8l
 t7K80qgdKbJgDMbIPCGX4Uo+1a12mh87vh9NvHgB08UUQDhMb4W40NicT1MKkh2/BU5IblpoKjD
 Ic7D6+KLOelbEnC6DQD1753JzYTJyZaC0zFpsfQifiw9sIGbWzhHr54kW1K5OqT9AaZM5f5vi5p
 t631Tk7Dt1fngPlvI3jVgHVYc0M8BhcvnFIRlJksmUUd5IAyRaMKV2kimYQze3Oz+iUiXs7yAeM
 va7MC6FhvIjZb9j8Ue7dsM4TLRaxLHhsY7xuJEYt3Wwg==
X-Forward-Email-ID: 69b00b7ccff8521c13e86f9d
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.49
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <b0678a18-f6a1-467b-aa66-8807a97c2187@kwiboo.se>
Date: Tue, 10 Mar 2026 13:15:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 1/2] arm64: dts: rockchip: rk3308: Add gpio-ranges
 properties
To: Matthijs Kooijman <matthijs@stdin.nl>
References: <20260302202121.197288-1-matthijs@stdin.nl>
 <20260302202121.197288-3-matthijs@stdin.nl>
 <e439f2f7-0b25-41a5-951a-d8d3bc9f2bf2@kwiboo.se>
 <aa_cCCc7FqdSv8eX@login.tika.stderr.nl>
Content-Language: en-US
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <aa_cCCc7FqdSv8eX@login.tika.stderr.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_083107_152670_6EFB4578 
X-CRM114-Status: GOOD (  30.04  )
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

Hi Matthijs,

On 3/10/2026 9:53 AM, Matthijs Kooijman wrote:
> Hi Jonas,
> 
> Thanks for your review.
> 
>>> This does not immediately change functionality, because the
>>> gpio-rockchip.c driver has a workaround that defines ranges when they
>>> are not present in DT, but that relies on global gpio numbering (so
>>> AFAICS only works when the rockchip gpio banks are initialized first and
>>> in-order).
>>
>> This is strictly not correct, the driver use the gpioX alias id as
>> defined in the device tree and does not depend on the initialization
>> order.
> 
> Ah, I had not realized these aliases existed. However, it seems they are
> not actually relevant in this case. My assumption was that gpio
> numbering was based on initalizating order, but I see in the code that
> GPIO drivers decide themselves (by setting gc->base statically or maybe
> based on DT). For the gpio-rockchip driver, these base numbers are
> hardcoded to start from 0 in rockchip_pinctrl_get_soc_data(). Dynamic
> initialization-order based numbering is also done for drivers that do
> not set gc->base, but that starts at GPIO number 512 to prevent
> conflicts.
> 
> In any case, I will update my commit message to better reflect what is
> happening.
> 
> 
>>> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>>> @@ -889,6 +889,7 @@ gpio0: gpio@ff220000 {
>>>  			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
>>>  			clocks = <&cru PCLK_GPIO0>;
>>>  			gpio-controller;
>>> +			gpio-ranges = <&pinctrl 0 0 32>;
>>
>> This matches the driver, but not the hardware according to datasheet, it
>> only lists gpio0 A0-C5 used, and not all 32 pins supported by the gpio0
>> controller.
> 
> Indeed, this seems to be the case, but I wonder if this is a problem?

The device tree should represent the hardware and not work as
configuration for a software implementation.

The SoC has X amounts of pins, however each gpio controller have support
to control up to 32 routed pins.

So to accurately describe the pincntrl <-> gpio controller relation we
should likely only include the routed pins.

> 
> Isee other rockchip devicetree definitions (rk3528, rk3562, rk356x,
> rk3576, rk3588) do not care about this and just map all 32 pins. See
> 
> 	git grep -C 20 rockchip,gpio-bank | grep gpio-ranges
> 
> I also think there is no other provision for these missing GPIOs
> anywhere - both pinctrl and gpiod seem to expose all 32 pins, even the
> one that do not exist.

Correct, and this is the issue, the pinctrl driver exposes pins that do
not exists, i.e. the software is wrong here and we should not add DT props
just to satisfy incorrect software.

> 
> Limiting the gpio-ranges definitions would prevent writing to reserved
> pinctrl registers via the userspace gpio API, which might be useful, but
> you would still be able to write to them via a custom devicetree (that
> uses non-existing pinctrl pins) and you would still be able to write to
> non-existent gpio registers via the userspace API.

Correct, the rockchip pinctrl and gpio drivers is in desperate need of a
big overhaul to fix this properly. And why I think it is better to avoid
adding incorrect gpio-ranges props. The DT is ABI and drivers must keep
backward compatibility, so adding incorrect props may make it even
harder to fix the underlying root issue in these drivers.

> 
> Given the above, do you still think it would be good to limit the
> gpio-ranges to the existing GPIOs only (I have no strong opinion)?

Yes, the DT should describe the HW, however the pinctrl driver report
too many pins so that probably need to be fixed in a backward compatible
way first.

Regards,
Jonas

> 
> Gr.
> 
> Matthijs


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
