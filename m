Return-Path: <SRS0=pTeD=EM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CF9BC55179
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 11:27:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F227020679
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 11:27:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IYthfNdM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F227020679
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wy1vvbmmiK4nUvU5AGZCsujtvmY1qkF7rwkl6/pTkAc=; b=IYthfNdMlakTA9y8y64C5XdYF
	HkJ9Dl9JOnF9L2Aoc50bzVncsqXdgGO10NXXCAO7G32L+Pei6UY4mEqP0ppaTJQLcgqIFuf6bpsIg
	u9Ke4D/2WZT8oSMICkwdu3KZI+nLZu0LHd4+mu4uFC6VPUA/5sK2myw9ulgxEb2HimznhidvjhWTc
	SLOXDi0IgSJYGScBUBxPUc/S2SgZgy7YHWmUzF6UNpbwyYjRolOyHaFowCXvpM8c/6qHIgmdcOf7a
	DJhZeQ2HWtNshuaxAGiqR58u/KCj/W5x+mNc9T0dUGC+PAeK0HvaN8RzY6m6+ixili5ulU7CdbSdw
	jUAWld2Lg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kazu9-0003Vx-LI; Fri, 06 Nov 2020 11:27:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kazu3-0003TV-HI; Fri, 06 Nov 2020 11:27:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCDD2147A;
 Fri,  6 Nov 2020 03:27:32 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A5B13F719;
 Fri,  6 Nov 2020 03:27:31 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Reorder LED triggers from mmc
 devices on rk3399-roc-pc.
To: Johan Jonker <jbx6244@gmail.com>, Markus Reichl <m.reichl@fivetechno.de>, 
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20201104192933.1001-1-m.reichl@fivetechno.de>
 <db3986ed-e572-bdd1-6f04-3bb2d04d49fa@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bb433605-09fd-388b-dfb0-0a3c52b3fc9f@arm.com>
Date: Fri, 6 Nov 2020 11:27:29 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <db3986ed-e572-bdd1-6f04-3bb2d04d49fa@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201106_062735_674888_492962F1 
X-CRM114-Status: GOOD (  21.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, wens@kernel.org, dianders@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-11-06 10:29, Johan Jonker wrote:
> Hi Markus,
> 
> On 11/4/20 8:29 PM, Markus Reichl wrote:
>> After patch [1] SD-card becomes mmc1 and eMMC becomes mmc2.
>> Correct trigger of LEDs accordingly.
>>
>> [1]
>> https://patchwork.kernel.org/patch/11881427
>>
>> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> index e7a459fa4322..20309076dbac 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> @@ -74,14 +74,14 @@ diy_led: led-1 {
>>   			label = "red:diy";
>>   			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>>   			default-state = "off";
>> -			linux,default-trigger = "mmc1";
> 
>> +			linux,default-trigger = "mmc2";
> 
> remove
>>   		};
>>   
>>   		yellow_led: led-2 {
>>   			label = "yellow:yellow-led";
>>   			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>>   			default-state = "off";
>> -			linux,default-trigger = "mmc0";
> 
>> +			linux,default-trigger = "mmc1";
> 
> remove
> 
>>   		};
>>   	};
>>   
>>
> 
> The "mmc1" and "mmc2" options are custom values and invalid to the
> automated dt check in the mainline kernel.

It's already been established that the binding is at fault here. Effort 
should be spent on fixing *that*, not sacrificing useful and intended DT 
functionality in blind deference to the schema gods.

Robin.

> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
> 
> 
>    linux,default-trigger:
>      description:
>        This parameter, if present, is a string defining the trigger
> assigned to
>        the LED.
>      $ref: /schemas/types.yaml#definitions/string
> 
>      enum:
>          # LED will act as a back-light, controlled by the framebuffer system
>        - backlight
>          # LED will turn on (but for leds-gpio see "default-state"
> property in
>          # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
>        - default-on
>          # LED "double" flashes at a load average based rate
>        - heartbeat
>          # LED indicates disk activity
>        - disk-activity
>          # LED indicates IDE disk activity (deprecated), in new
> implementations
>          # use "disk-activity"
>        - ide-disk
>          # LED flashes at a fixed, configurable rate
>        - timer
>          # LED alters the brightness for the specified duration with one
> software
>          # timer (requires "led-pattern" property)
>        - pattern
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
