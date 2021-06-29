Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B954C11F67
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 15:07:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A97561DC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 15:07:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A97561DC2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fff4hjBjhYIZDBdwiRZ5qg+FX/aaZRvI3PQUXTlaZQU=; b=hNNusqY4PsjrO6jwtP8YCMj3v4
	d7P66OiqbbTdh+o268fhagx67QN2EE/JJfDo7EBpnUrilxpwZEdxqfJRGH6z2tgAYwAVOhIhX+Ezy
	PnlGTpJO759kPSkIciHtxRZd1gkLXPZl4O7U+iO9kx/w5w+axrCFNoepKbURJ5QPCssWYMWsf72Up
	dl4LsH3KUFKlWe+FcK6ElOI5m76k/TPpoZtAVkkr1CPduElVBe02fRt5kEclhr6bgFrMlhn5bhO8d
	EWBvQqj0ymoKh8CF7AfKhlS3/DVcPKEnVrl7ISWR4r1rJ3H/bsUlHaIY/Jc4qH4TphDf9ty2HHccl
	QnVjGdWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyFKp-00BPOO-7H; Tue, 29 Jun 2021 15:07:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyFKc-00BPMo-At; Tue, 29 Jun 2021 15:07:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 49F041F42FFF
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, jack@radxa.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add rock-pi-4 analog audio
In-Reply-To: <7f806d30-594e-2325-615a-8fee875c83a8@gmail.com>
References: <20210628113033.9145-1-adrian.ratiu@collabora.com>
 <7f806d30-594e-2325-615a-8fee875c83a8@gmail.com>
Date: Tue, 29 Jun 2021 18:07:15 +0300
Message-ID: <87eeck3e1o.fsf@ryzen9.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_080722_562589_E6F38B99 
X-CRM114-Status: GOOD (  21.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Alex,

On Tue, 29 Jun 2021, Alex Bee <knaerzche@gmail.com> wrote:
> Hi Adrian, 
> 
> I've submitted similar patch already. Its part of [1]

Thank you for pointing out your patch, I was not aware of it as it 
was not merged yet (I tested latest linux-next).

It is a good sign that our code is almost identical except for the 
headphone detect pin which you mention.
 
> 
> There is no headphone detection pin in the schematics, btw. 
>

There are two reasons I added it:

1. The es8316 codec failed to probe() in my testing unless the irq 
was defined. That might have been due to me testing the codec 
directly with the simple card driver instead of the graph driver.

Point 1 doesn't appear to be an issue anymore, the codec + graph 
driver probe correctly and audio supposedly (see below) works even 
without the irq.

2. I got the gpio bank 1 pin 0 location from various headphone 
detection commits in the vendor v4.4 kernel, like for example [1].

Are you 100% sure there is no hp detection pin wired on the 
rock-pi-4? 

Even if it might be missing from the schematics, the vendor driver 
code apparently defines and uses it?

From booting with the irq defined I get the following in 
/proc/interrupts however I'm having an unrelated difficulty 
testing because the audio connector literally broke off the board 
like in [2]. 

90: 1  0  0  0  0  rockchip_gpio_irq   0 Level     es8316

Team Radxa was very nice in offering me a replacement but until 
that arrives I can't test this anymore.

[1] 
https://github.com/radxa/kernel/commit/e945cad5c3ec82d171760465d3c7a84bb10ed1b7

[2] https://forum.radxa.com/t/audio-jack-broke-off/935

> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20210618181256.27992-1-knaerzche@gmail.com/
>
> Best,
>
> Alex
>
> Am 28.06.21 um 13:30 schrieb Adrian Ratiu:
>> This adds the necessary pinctrl and nodes to enable the
>> analog audio on rk3399 rock-pi-4 SBCs using the es8316
>> codec and the audio-graph-card driver.
>>
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
>> ---
>>   .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 38 +++++++++++++++++++
>>   1 file changed, 38 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
>> index b28888ea9262..77781d9150ac 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
>> @@ -128,6 +128,12 @@ vdd_log: vdd-log {
>>   		regulator-max-microvolt = <1400000>;
>>   		vin-supply = <&vcc5v0_sys>;
>>   	};
>> +
>> +	sound {
>> +		compatible = "audio-graph-card";
>> +		label = "rockchip,rk3399";
>> +		dais = <&i2s0_p0>;
>> +	};
>>   };
>>   
>>   &cpu_l0 {
>> @@ -422,6 +428,24 @@ &i2c1 {
>>   	i2c-scl-rising-time-ns = <300>;
>>   	i2c-scl-falling-time-ns = <15>;
>>   	status = "okay";
>> +
>> +	es8316: codec@11 {
>> +		compatible = "everest,es8316";
>> +		reg = <0x11>;
>> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +		clock-names = "mclk";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&hp_det_pin>;
>> +		interrupt-parent = <&gpio1>;
>> +		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
>> +		#sound-dai-cells = <0>;
>> +
>> +		port {
>> +			es8316_p0_0: endpoint {
>> +				remote-endpoint = <&i2s0_p0_0>;
>> +			};
>> +		};
>> +	};
>>   };
>>   
>>   &i2c3 {
>> @@ -441,6 +465,14 @@ &i2s0 {
>>   	rockchip,capture-channels = <2>;
>>   	rockchip,playback-channels = <2>;
>>   	status = "okay";
>> +
>> +	i2s0_p0: port {
>> +		i2s0_p0_0: endpoint {
>> +			dai-format = "i2s";
>> +			mclk-fs = <256>;
>> +			remote-endpoint = <&es8316_p0_0>;
>> +		};
>> +	};
>>   };
>>   
>>   &i2s1 {
>> @@ -556,6 +588,12 @@ wifi_host_wake_l: wifi-host-wake-l {
>>   			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>>   		};
>>   	};
>> +
>> +	es8316 {
>> +		hp_det_pin: hp-det-pin {
>> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>>   };
>>   
>>   &pwm2 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
