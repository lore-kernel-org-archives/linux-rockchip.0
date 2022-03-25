Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941A8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 07:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgzWeEVopdCDk8jIPuAim7UY+DhaZu3Q0DGEhiQMYUs=; b=ngG0y4S7RQopZv
	Tubz4BrxAEsaMT+fYClPPU7tQN10t/8n0o3We30ezPixb8cCP5yUW/MxROYloYGl+5mQO3NaXQc7q
	m2GeFHYGtMHJIywJaWA+VoTxYMCaDeIDA5yTjk1zUVVkSuCHijqj+KUvjQs6BMr1qkbkL5UsbCIfI
	nL4EAM39D2RGseM2dTirURvQ5qlxUTcCJ7G0O3c7slLsiU/xENdqezqhQjsWBQizg0IsJqu5bojWm
	oZ9JBcMK9iZoCsCkpL0ht/NPMbAwGTytIVgTJIy+g+tV9YGqE2MuaCsCnUHO35nXyUYeFCf1c77sG
	yRZ0nzUoTNm/9rb4AxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXeVV-001MBk-Hk; Fri, 25 Mar 2022 07:37:13 +0000
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXeVJ-001M8J-83; Fri, 25 Mar 2022 07:37:02 +0000
Received: by mail-ej1-f46.google.com with SMTP id bi12so13687009ejb.3;
 Fri, 25 Mar 2022 00:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6VyB3UYxWMO3tIrgEiCLozgnlezY4UO/iQgH0TlS3Ek=;
 b=xpJlFHvhEwva6BCPp1aSHASzaYplvJbXKlqBfgxD3RAQTJDXJ2C5MbM9WM/VmoevKY
 5qno0r4kL7QHMQg2hNa2rSrDzVfKFmNY9Oryi+5wpADY0/S+DC2DicDI5xS3TbDphy+d
 F39wyZXhavaODGikfRopY4GyXw4UKxYopsqW0TsuWZ2LATZwkFQWjRzFUL1E4lWfhB4R
 AntwGiLe0+X2lo4LcXXuaTnBCK3N4oF5gP3KEO3+8Qn1zyrmgAhnBzyWN30J1NsFAC9V
 i4que/uj/utbJF3ZPH4hsQModAf2HgGsNafIUDlZ3zjy+CKR2KO2HPcWxNK2+zfN5YMx
 1MWQ==
X-Gm-Message-State: AOAM530nNpAeAfag3MX6AvqWKpe48Tx78zm8hIRumiIZTjBWypZouK/s
 2smajz9d6aYXKzs2slf+Z98=
X-Google-Smtp-Source: ABdhPJye6CqOTuW/WLwG8QnXQHalgAOvoPopU/9m5KwtnnA+wXTM9UKgjiBBnOU8B4FUrtXiZR/+LQ==
X-Received: by 2002:a17:906:1804:b0:6d6:dc46:d9ed with SMTP id
 v4-20020a170906180400b006d6dc46d9edmr9903089eje.288.1648193818924; 
 Fri, 25 Mar 2022 00:36:58 -0700 (PDT)
Received: from [192.168.0.158] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 q16-20020a170906145000b006bdaf981589sm2011246ejc.81.2022.03.25.00.36.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Mar 2022 00:36:58 -0700 (PDT)
Message-ID: <9fc72d19-1827-7681-4eb7-ba7c67f325fa@kernel.org>
Date: Fri, 25 Mar 2022 08:36:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip, rk3188-cru.txt to
 YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220324133229.24035-1-jbx6244@gmail.com>
 <f7493d93-6c8a-efa9-1f2c-a0003a6d43b2@kernel.org>
 <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_003701_332612_18802F91 
X-CRM114-Status: GOOD (  21.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 24/03/2022 20:51, Johan Jonker wrote:
> Hi Heiko, Krzysztof,
> 
> Question for the Rockchip clock maintainer:
> What clock should be used here and other SoCs with several clock parents
> in the tree?
> 
> The clock.yaml produces a lot off notifications like:
> 
> /arch/arm/boot/dts/rk3036-evb.dtb: clock-controller@20000000: 'clocks'
> is a dependency of 'assigned-clocks'
> 
> Same for power-controller:
> 
> /arch/arm/boot/dts/rk3288-evb-rk808.dtb: power-controller: 'clocks' is a
> dependency of 'assigned-clocks'
> 
> Just followed rk3399.yaml that got approved recent.
> The current CRU nodes are in use for a long time this way.
> Converting a simple .txt comes with a lot of extra work each time. :\
> Please advise.

Same for me, same for me...

I replied to this part to Stephen's email. Here I'll reply to other parts:

(...)

>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - rockchip,rk3066a-cru
>>> +      - rockchip,rk3188-cru
>>> +      - rockchip,rk3188a-cru
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  "#clock-cells":
>>> +    const: 1
>>> +
>>> +  "#reset-cells":
>>> +    const: 1
>>> +
>>> +  clocks:
>>> +    minItems: 1
>>
> 
>> You need maxItems. Would be also nice to describe what should be here as
>> input
> 
> Just followed rockchip,rk3399-cru.yaml that got rob+dt's ack.
> 
> Is this dependency only for simple clock consumers suitable for complex
> clock trees with pll's, mux, etc? Shouldn't that be relaxed a bit?

minItems means that your clock controller can take any number of other
clock inputs. This is not true, for sure. Your device probably has fixed
number of external clocks (usually provided on the board if this is main
SoC clock controller).

> 
>>
>>
>>> +
>>> +  assigned-clock-rates:
>>> +    minItems: 1
>>> +    maxItems: 64
>>> +
>>> +  assigned-clocks:
>>> +    minItems: 1
>>> +    maxItems: 64
>>
>> Both assigned-xxx should not be necessary. Did you try validate the dtbs
>> without these?
> 
> That's how it's currently done for Rockchip cru's.

I understand, but if you remove assigned-xxx from schema what happens?

> 
> 
> ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml

There is no such file in my tree...

> 
>>
>> I guess you added "clocks" above because of these, so you need to
>> correct the DTS because asigned-xxx depend on clocks property.
> 
> See comment above.
> 
>>
>>> +
>>> +  rockchip,grf:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      Phandle to the syscon managing the "general register files" (GRF),
>>> +      if missing pll rates are not changeable, due to the missing pll lock status.
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - "#clock-cells"
>>> +  - "#reset-cells"
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    cru: cru@20000000 {
>>
>> Node name: clock-controller
> 
> Which schema?

Devicetree specification (see chapter for node naming). Nodes should
have generic name. There is also list of example names to use.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
