Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C931DECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 19:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6d2shgkyyubTtg/YMC4j8V3TnHql9Lx0cIxtN+jM1E=; b=Jk/gCmQxPmpg4W
	Cb682xERS+Krx45pDhNf8497FxQo9Tff9mC8u4/rffVhLOZfHQXMAU9QxHRHtKcurFCDhGQRJ90c8
	NDSi/Bl2d2f6SP/yQWyMzRFfIElTAxW7Hgenx1qEjvcmCEinEbqHhHFKNblz/jnIQNxtWdwTGL8Iz
	CLpwQwRM763z6gOZyqJ3wH3I0tpngv+JoLXGpHppCfWPQ26qvvZhECdDaUA7bbEsYubHLXb1w6IDy
	81Pb6W4BXL/8KK6L3lAaYTt9GuVZwwcikWcbjVG2b+MvxCu/GyWTv1MA+vSiJhxMS9txPTlqG6Br+
	knRt0KMcK+ipXB8OAJ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo8nH-00Ei1q-HY; Thu, 27 Oct 2022 19:43:59 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo8n7-00Ehyp-0C
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 19:43:51 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id n18so2346135qvt.11
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 12:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MK3yOE9pIq7JHkRZwQR/zciky0lrTlCe6u4dRS7btwI=;
        b=wjlJ0VkwPuAfmg3CW8O14Rz3pG2p4iq+qpritNMiyxTT0EYfCjO4kkqS+MqY6VHsYq
         6l3JUTmn1M/k3ZqqRDMgynXNEMHxkCgIw1NiqAX+TWhgqNYk15h5zO+4FLFjf6Zx6c9A
         IpP1Lr7QMNxhuVhOCLrD9ucnaOAJ/eSzTSKtEpa787Af38As15dHXfTEoDASY5bFRidX
         RPkqQJcThBsXXI+vza1s9X71+WmjkxtVIolrN5j5MpnClToJGH5mTkyKh8nJhTKH1hf6
         L6dmpDkKq+DjdB5civ79d08DE84CWR5DkvgEbxuQ9VdMrywb78lB5krvF+UgYd123WmT
         V8+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MK3yOE9pIq7JHkRZwQR/zciky0lrTlCe6u4dRS7btwI=;
        b=sS7N/I3GAL6fvD6ePYu9IyWsmuIvEEbvDCE6K6TUpfz+4OcA3sb8wJv2/ABtdW5WF4
         ExEVE2o52N+0zW6X2CyP6jhk1C+UgOpbUFNyiBA4KpeBWcpg3OmQ/dmMllODeUPfumaH
         Sf74Cja+v4IBw/A2b6kHST0eEhr9kc8mN07217+doYvb35mdU7A+Nyf7J1oAH/nK9+tG
         KLnCEjicwJwbJZpWkpW3pftmTuarUwH+RLlWUxUAEZ8K8UbJVyIbSNAugFG2tvflUAgB
         7f04LXDCcEXNW8/mZOL1Kl9C6xZJvpb3zaVzCIo6+g0HM9uoMoby9Z3/h5JMeDaf+m1N
         7X2g==
X-Gm-Message-State: ACrzQf1uko9SoufeAwbk5WEJtlySImA2v13np0Gf62K0+6molcgv5bdT
	7gXE1Vvo3rPwMVlwWUSO7ybt3A==
X-Google-Smtp-Source: AMsMyM5Lp0W//oZxCFeHBdp+E82reM9g6Ux2PnIzsmr9Y5GOCi9DaxUpYh3kmyxYVUMh23jq7NwohQ==
X-Received: by 2002:a05:6214:2487:b0:4af:a6f9:ace3 with SMTP id gi7-20020a056214248700b004afa6f9ace3mr42252486qvb.78.1666899825892;
        Thu, 27 Oct 2022 12:43:45 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id x4-20020a05620a258400b006bc192d277csm1571419qko.10.2022.10.27.12.43.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 12:43:45 -0700 (PDT)
Message-ID: <6fbb01f0-d0d2-bb06-a160-2f8f91ac68ca@linaro.org>
Date: Thu, 27 Oct 2022 15:43:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 3/4] ARM: dts: rockchip: add rk3128.dtsi
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com,
 heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
 <674b875a-0dfa-eff2-5018-eafed851707f@gmail.com>
 <f45a4dcb-12e6-9a72-dbb3-7ec198ff2b1d@linaro.org>
 <2dc46681-894d-4521-bfa7-3e9209691e0a@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2dc46681-894d-4521-bfa7-3e9209691e0a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_124349_059253_88378DF2 
X-CRM114-Status: GOOD (  32.54  )
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

On 27/10/2022 13:53, Johan Jonker wrote:
> Hi Krzysztof, Kever, Heiko and others,
> 
> On 10/27/22 16:58, Krzysztof Kozlowski wrote:
>> On 26/10/2022 20:53, Johan Jonker wrote:
>>> Add basic rk3128 support.
>>>
>>
>> Thank you for your patch. There is something to discuss/improve.
> 
> Thank you for your review.
> 
> Some more questions/comments below.
> 
>>
>>> +#include <dt-bindings/clock/rk3128-cru.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/pinctrl/rockchip.h>
>>> +
>>> +/ {
>>> +	compatible = "rockchip,rk3128";
>>> +	interrupt-parent = <&gic>;
>>> +	#address-cells = <1>;
>>> +	#size-cells = <1>;
>>> +
>>> +	aliases {
>>> +		gpio0 = &gpio0;
>>> +		gpio1 = &gpio1;
>>> +		gpio2 = &gpio2;
>>> +		gpio3 = &gpio3;
> 
> Is gpio OK here?

Could be, but let me rephrase it - why do you need aliases in DTSI? What
do these aliases represent?

The SoC pieces (nodes in DTSI) do not rely on aliases.

> 
>>> +		i2c0 = &i2c0;
>>> +		i2c1 = &i2c1;
>>> +		i2c2 = &i2c2;
>>> +		i2c3 = &i2c3;
>>> +		spi0 = &spi0;
>>> +		serial0 = &uart0;
>>> +		serial1 = &uart1;
>>> +		serial2 = &uart2;
>>
>> Bus aliases are board specific and represent what is actually available
>> on headers/pins etc. These do not belong to SoC DTSI.
> 
> I just follow current Rockchip DT common practice.
> 
> Do we need to change all Rockchip boards?
> Would like to hear from Heiko what's the plan here?
> Syncing to U-boot is already a mess...

Heiko might have his own preference which then over-rules my
recommendation here. But in general this applies to all boards, so other
boards could be fixed as well. Different point is whether it is actually
worth fixing them...

> 
> So far only instructions/changes and discussion about mmc nodes.
> 
> Can Rockchip specific rules be publicized in a central place? 
> 
> ===
> mmc aliases on reg order, availability and without number gap.
> ===
> 
> Heiko's sort rules:
> 
> compatible
> reg
> interrupts
> [alphabetical]
> status [if needed]

I don't know what does it mean. Do you discuss with my comment? Wasn't
my comment exactly like this?

> 
> ===
> My incomplete list:
> 
> For nodes:
> If exists on top: model, compatible and chosen.
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
> 
> Inside nodes:
> If exists on top: compatible, reg and interrupts.
> In alphabetical order the required properties.
> Then in alphabetical order the other properties.
> And as last things that start with '#' in alphabetical order.
> Add status below all other properties for soc internal components with
> any board-specifics.
> Keep an empty line between properties and nodes.
> 
> Exceptions:
> Sort pinctrl-0 above pinctrl-names, so it stays in line with clock-names
> and dma-names.
> Sort simple-audio-card,name above other simple-audio-card properties.
> Sort regulator-name above other regulator properties.
> Sort regulator-min-microvolt above regulator-max-microvolt.

Is there a question to me?

> 
>>
>>> +	};
>>> +
>>> +	arm-pmu {
>>> +		compatible = "arm,cortex-a7-pmu";
>>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
>>> +			     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
>>> +			     <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>,
>>> +			     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
>>> +		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
>>> +	};
>>> +
>>> +	cpus {
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		cpu0: cpu@f00 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a7";
>>> +			reg = <0xf00>;
>>> +			clock-latency = <40000>;
>>> +			clocks = <&cru ARMCLK>;
> 
>>> +			operating-points = <
>>> +				/* KHz    uV */
>>> +				 816000 1000000
>>> +			>;
>>
>> Why not operating-points-v2?
> 
> rk3128 doesn't have a tsadc.

And this is related to operating-points-v2?

> As long as this thermal stuff is not implemented with drivers and regulators I would prefer to keep it basic in the DT for now.
> Just keep things simple for now till someone with hardware can fix that.
> 
> https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm/boot/dts/rk312x.dtsi#L315
> 
> 	tsadc: tsadc {
> 		compatible = "rockchip,rk3126-tsadc-virtual";
> 		nvmem-cells = <&cpu_leakage>;
> 		nvmem-cell-names = "cpu_leakage";
> 		#thermal-sensor-cells = <1>;
> 		status = "disabled";
> 	};

>>
>>> +			#cooling-cells = <2>; /* min followed by max */
>>> +		};
>>> +
>>> +		cpu1: cpu@f01 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a7";
>>> +			reg = <0xf01>;
>>> +		};
>>> +
>>> +		cpu2: cpu@f02 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a7";
>>> +			reg = <0xf02>;
>>> +		};
>>> +
>>> +		cpu3: cpu@f03 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a7";
>>> +			reg = <0xf03>;
>>> +		};
>>> +	};
>>> +
>>> +	timer {
> 
>>> +		compatible = "arm,armv7-timer";
> 
> Original 2 interrupts:

I have no clue what do you refer now.

I did not comment here, so I guess nothing more to me?

>>> +		usb2phy: usb2phy@17c {
>>
> 
>> Node names should be generic.
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 
> You are absolutely correct. Except for Rockchip usb2phy nodes ....
> #phy-cells is located in a sub node, so we keep as it is... ;)

How phy-cells are related?

> 
> dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml 
> https://lore.kernel.org/all/20210601164800.7670-2-jbx6244@gmail.com/

You mean parent device bindings expect usb2phy? If so, then it's fine.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
