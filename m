Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 128B2C25B0E
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 06:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj/NPdtlKzxsqC9Pja5lYgu/g+WktlYL6erH0MbGSpo=; b=HBLgAdY6gewEyV
	st22a6Vc80znKpB84ELxYmWHTa6qiIh+iO+SjQV9+v2z00jWqxUp2CfPOVrvsyDrTHET2z8O2xBs9
	MuJEQckH3fgcrhu4NjeTzkxI2GejIAs0A1Jx3TGpeIdzB1/U3Hs87Ez0YPxp3MVhoCfL/ej283+L5
	3fnp3Fm9o8MtdSOqgDNZuoNd7/KPqbz6DioWm8wPim4OCnbKlfAsc1hpj9w6Z7zdrHK4HGOvfcoXo
	ZeIMlTRWoB6FuGOr90hHBjd4LW5zfF4n1USPlrVJ5RNaNi+bNgI6RTg9hR+ZreB2/C1dPVZJHqRX3
	7jNrCWMcqLoH+YpxEoow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOvpK-002pkI-2R; Fri, 19 Aug 2022 06:49:54 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOvpI-002phC-0S
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 06:49:53 +0000
Received: by mail-lf1-x136.google.com with SMTP id u9so4924429lfg.11
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 23:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=0aFm45vhUsFQmWN32/3tsrKJoEI1kItFWdWI05G8olA=;
        b=JKLCnf25hJNe1J6a02C4Pk4mvROY4c82wFAf5xqqiTpfUlfLiTx2gngBVnHqyPteMu
         AHVfGnguk+Rc2xLHbILGCldHmI5mB+1uGJU7KWcbQLOaKFnYLcfkD7MI7Ab7vr/2VFuG
         t7egUJN5KT6zz1mHLATDz4r8pFA8xCOfxOu7F7AVI0mIBMiDMiiAxyQx0ilmTVYVcuAr
         sF6zbKEf/TLKn+lvdJ1K8DyuTFu81uMnyVW27Vg1yy89aTySS8V/uf28lLbf6sTqeDGy
         WdrGg2DYzJ6DT98J33Cf5kfpCMb1cD8433xUYratIjOXLVgOFvAgd6/1MsN8sbVXmY4A
         Ktog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=0aFm45vhUsFQmWN32/3tsrKJoEI1kItFWdWI05G8olA=;
        b=hc6nk8M4LdXgYCaNOWZzA0aYpRmpLdD2h3ZnxWNgTIcPBWmtDz2U9WlT7mG8i9Gffe
         WXnhGWStH7xzuQbfCKQGpCmaDju7ecO/9IgEg8Lg85ObAxZL3+7zP+w0Grun4jmNY7s7
         h1ar1IzX6Kst63NdwdN+pgofP0Tf1JTsVgpKYOH2u9Ux8wrYJe/v31vIkcb8LVtIm9EU
         2qzz1ttiMSGTuG0vCbRfiudaZUh2Ca+y06aVGXDMEsK6DTGx4o/Io/BNN7NctpfNokQn
         u7HuL6LTaIJg32T4chWRGQn+BRP0Lar3YYAx0e3w7tEa7vgtxAI9Hv+d1AJX+HaBOy8g
         RyPw==
X-Gm-Message-State: ACgBeo3vsFYFu7XF4rngHhu5U7JRRyA/QXRBk3bZPGV0sTX9JDoy51i5
	QQKSzyyB1+VBNvIKxVpX6MC9GA==
X-Google-Smtp-Source: AA6agR4aClINEBXF7YiW+1smN3G7p5mGau9H55/Jo364twd381c+5CaP/1qsaRwRfGfq8JPletm5YQ==
X-Received: by 2002:a05:6512:2348:b0:492:ba80:5144 with SMTP id p8-20020a056512234800b00492ba805144mr1858781lfu.467.1660891789439;
        Thu, 18 Aug 2022 23:49:49 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id a1-20020ac25201000000b0048b26d4bb64sm524730lfl.40.2022.08.18.23.49.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 23:49:48 -0700 (PDT)
Message-ID: <65789dad-32c4-5437-9edf-d23475f5de46@linaro.org>
Date: Fri, 19 Aug 2022 09:49:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-4-macroalpha82@gmail.com>
 <e30e41c6-04b4-bf48-b034-b722f950ac90@linaro.org>
 <SN6PR06MB53424AA16DDA579063D11A46A56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB53424AA16DDA579063D11A46A56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_234952_107100_12AE973F 
X-CRM114-Status: GOOD (  16.45  )
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

On 18/08/2022 19:33, Chris Morgan wrote:
> On Thu, Aug 18, 2022 at 11:14:17AM +0300, Krzysztof Kozlowski wrote:
>> On 17/08/2022 23:49, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
>>> from Anbernic.
>>>
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>> +		red_led: led-2 {
>>> +			color = <LED_COLOR_ID_RED>;
>>> +			default-state = "off";
>>> +			function = LED_FUNCTION_STATUS;
>>> +			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
>>> +		};
>>> +	};
>>> +
>>> +	rk817-sound {
>>
>> just sound
>>
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>>
> 
> Acknowledged. I just cut and pasted from a different tree, but I'll make this change.
> 
>>> +		compatible = "simple-audio-card";
>>> +		simple-audio-card,name = "anbernic_rk817";
>>> +		simple-audio-card,aux-devs = <&spk_amp>;
>>> +		simple-audio-card,format = "i2s";
>>> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
>>> +		simple-audio-card,mclk-fs = <256>;
>>> +		simple-audio-card,widgets =
>>> +			"Microphone", "Mic Jack",
>>> +			"Headphone", "Headphones",
>>> +			"Speaker", "Internal Speakers";
>>> +		simple-audio-card,routing =
>>> +			"MICL", "Mic Jack",
>>> +			"Headphones", "HPOL",
>>> +			"Headphones", "HPOR",
>>> +			"Internal Speakers", "Speaker Amp OUTL",
>>> +			"Internal Speakers", "Speaker Amp OUTR",
>>> +			"Speaker Amp INL", "HPOL",
>>> +			"Speaker Amp INR", "HPOR";
>>> +		simple-audio-card,pin-switches = "Internal Speakers";
>>> +
>>> +		simple-audio-card,codec {
>>> +			sound-dai = <&rk817>;
>>> +		};
>>> +
>>> +		simple-audio-card,cpu {
>>> +			sound-dai = <&i2s1_8ch>;
>>> +		};
>>> +	};
>>> +
>>> +	sdio_pwrseq: sdio-pwrseq {
>>> +		compatible = "mmc-pwrseq-simple";
>>> +		clocks = <&rk817 1>;
>>> +		clock-names = "ext_clock";
>>> +		pinctrl-0 = <&wifi_enable_h>;
>>> +		pinctrl-names = "default";
>>> +		post-power-on-delay-ms = <200>;
>>> +		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
>>> +	};
>>> +
>>> +	spk_amp: audio-amplifier {
>>> +		compatible = "simple-audio-amplifier";
>>> +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
>>> +		pinctrl-0 = <&spk_amp_enable_h>;
>>> +		pinctrl-names = "default";
>>> +		sound-name-prefix = "Speaker Amp";
>>> +	};
>>> +
>>> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
>>
>> Node name:
>> regulator-vcc3v3-lcd0-n
>> vcc3v3-lcd0-n-regulator
>> or just regulator-0
> 
> Does this restriction only apply to node names for regulators, or all
> node names? The docs I looked at suggested that it was okay to use an
> underscore, but I'll defer to you.

Device node names should be generic and such rule applies everywhere.
For regulators and clocks, pretty often people want some specific
prefix/suffix, so I don't mind, but what I mind is the generic part.

underscores will get you warnings with W=1, so they are not accepted
even though the spec mentions them.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
