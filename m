Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C39C54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 10:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARrCRoDw1zH+jjLqkHp3i7gHzgZMIq1Ov2gN4ho/ODY=; b=NnPhmKCoIgpFLn
	dd3zNCtPQQzq7baa9rT8nhWe9PmYJLBe0LTzB5V7seZU0QiCTz9HKQSN91py+sKDaHWBZR1E85fBr
	HuXI+rNfFwyN4SkrE8v1uhx2YU5rgeo+I0FHQIhQ8grEKc1g5hA+tAkIs69Q4xVzyEMZEFQuuCR8s
	s3/WkGZddAlpoRjcG6RUNPlHP/LteW1e5TLoLQ3DR546XSQ53ArONdoTtVxQJ2b2hTSaoj98uteMr
	imI0bIiSHhMRItvt/hrpeG6/4dJsKvuBCDDJePFAmZrxPBlvxoD/MzWWD7mW5dSGJHml08k1GHl7g
	CwxSai+vQ2N9yb15WLIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnz3A-0000000ADa5-3eU1;
	Sat, 23 Mar 2024 10:56:32 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnz36-0000000ADYf-3tf9;
	Sat, 23 Mar 2024 10:56:30 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-33d90dfe73cso1582441f8f.0;
        Sat, 23 Mar 2024 03:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711191382; x=1711796182; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T89lugZZm+sK/OwQC/VrSH4+YBlryHzMWMY+9vJ7rZ4=;
        b=QFI+kVmIEV9c/Yr9DbsV8wBg1Boj7YJn3fxIipoKz4Fk3XPkc2q/6VLcr5HRKu7j4W
         pycj/yT+UyjTaIppYnyDCN5csGluTNHtYevnz6I8FXbMVlFFQvoA32rVyJkMbZw87XC3
         SBut74AFt8kICeK+6V9wd2IYLypntEUVaeUcxyFjnxI+I/y5Wq41koyDP6M2oT95SYWz
         TsNLm/VvLLZdavQD/1WSW3IX9Np1l4sOKJzFEOL7xSaDHsW5IbAXtOk5+0SELTbZiiaL
         ZZdoEDlPdKKLHw8op9GkELIN6BVlCAEvyeaX3lbhlBGyWle0vU03NvK+nyQ4itLhYRz0
         DMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711191382; x=1711796182;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T89lugZZm+sK/OwQC/VrSH4+YBlryHzMWMY+9vJ7rZ4=;
        b=f5bUnMOwn/suT157NIW9L5+WW50XeFNOYb4qIyrLz4H2zPLZgt3b96A9cVXKL4g7Db
         08Ab2zNOC/qDwDPR0S17Z5M8TjUYagF0kqRAIeo3vBXjvnaQyVpd9hu3n4+qT9Y7+4mo
         8Q/FrbNmnldCEalXuygPm/z4oXAGTsdh/fMnOhfb+Lb3vrNwMKUUwVIoE3y4Lk+r3egg
         hSL0jw+T8fcJzW9h9pfOdo6AX/B5xrzNl37zDHXjcV31u7Mqpkbq72YZ2aTc91gH0SJ8
         KXqPXlAC4TGrKTnEUyV4eEJQSDiRlZvfPJwsHrsx8+Wg2Ufx3uCJj5aoNY+IHpr/dDOA
         qoRA==
X-Forwarded-Encrypted: i=1; AJvYcCXIdHgNvgC83ATg4Es7pi6xhqfwKKyP//wT0wV/bMrJxOmZxSQfoOGDYkzF2NXWW2t4TWJCwN5xO5SBRMQ1k+SJBQoTa1vwH8sm4UUA7OMyHjTTyq5SItjDqSERfM0oBVDzR+gVsvoYAwzA9iAX1yafMPwfk+Rz1xk=
X-Gm-Message-State: AOJu0YzNhPkj+os/6xeSA6XBPk7gVIV0Zsu1zrthupL/t84XxL07RQ9I
	dIEe8j9rvx2VuQpL40mlBRc4d2+AZNUbsi89SOLe3xv0lRTdfbU=
X-Google-Smtp-Source: AGHT+IFjvMTxrAPgAxiFi0hukZKVkQEPlqo+pP4JejA5ZZnSvnrZv+lDfiAlrQrGGNVKjpgzQkOaGQ==
X-Received: by 2002:adf:fb4a:0:b0:33e:6760:5298 with SMTP id c10-20020adffb4a000000b0033e67605298mr1287289wrs.29.1711191381500;
        Sat, 23 Mar 2024 03:56:21 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:fbb8:7547:139d:a40f? ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id n14-20020a5d51ce000000b0033e9fca1e49sm4160326wrv.60.2024.03.23.03.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Mar 2024 03:56:21 -0700 (PDT)
Message-ID: <3c0d5aa2-55fb-4827-bcd4-256e6ae55ee9@gmail.com>
Date: Sat, 23 Mar 2024 11:56:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: Add rk816 binding
Content-Language: en-US, de-DE
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20240323085852.116756-1-knaerzche@gmail.com>
 <20240323085852.116756-2-knaerzche@gmail.com>
 <bfe79f3d-1615-45a4-81f7-7e30740308d7@linaro.org>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <bfe79f3d-1615-45a4-81f7-7e30740308d7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_035629_046343_3481A5AB 
X-CRM114-Status: GOOD (  21.68  )
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

Hi Krzysztof,

Am 23.03.24 um 11:32 schrieb Krzysztof Kozlowski:
> On 23/03/2024 09:58, Alex Bee wrote:
>> Add DT binding document for Rockchip's RK816 PMIC
>>
>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>> ---
>> changes since v1:
>>    - lowercase/hyphens for regulator node names
>>    - rename "-reg" to "-regulator" to make node names generic
> I don't understand why did you do it. I did not ask for it. If you want
> to rename, drop redundant regulator or reg suffix from node names.
You didn't ask for that, thats true.

I did it regardless, since node names should be generic and the "-reg"
suffix is not. They are all subnodes of "regulators", indeed, but I don't
think dropping the suffix completely makes the binding any better, since
there is a boost(-switch) and an otg-switch which are also subnodes of
"regulators" and they are just switches.

Alex
>
>>    - dropped superfluous description for clock-output-names and
>>      wakeup-source
>>    - dropped "|" for text blocks that don't require to preserve formatting
>>    - use full path for `$ref`s
>>    - added pins description to the binding
>>    - added charger function to description
>>   
>>   .../bindings/mfd/rockchip,rk816.yaml          | 269 ++++++++++++++++++
>>   1 file changed, 269 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
>> new file mode 100644
>> index 000000000000..9664162f4f75
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
>> @@ -0,0 +1,269 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mfd/rockchip,rk816.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: RK816 Power Management Integrated Circuit
>> +
>> +maintainers:
>> +  - Chris Zhong <zyw@rock-chips.com>
>> +  - Zhang Qing <zhangqing@rock-chips.com>
>> +
>> +description:
>> +  Rockchip RK816 series PMIC. This device consists of an i2c controlled MFD
>> +  that includes regulators, a RTC, a GPIO controller, a power button, and a
>> +  battery charger manager with fuel gauge.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - rockchip,rk816
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  '#clock-cells':
>> +    description:
>> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
>> +    const: 1
>> +
>> +  clock-output-names:
>> +    maxItems: 2
>> +
>> +  gpio-controller: true
>> +
>> +  '#gpio-cells':
>> +    const: 2
>> +
>> +  system-power-controller:
>> +    type: boolean
>> +    description:
>> +      Telling whether or not this PMIC is controlling the system power.
>> +
>> +  wakeup-source:
>> +    type: boolean
>> +
>> +  vcc1-supply:
>> +    description:
>> +      The input supply for dcdc1-regulator.
>> +
>> +  vcc2-supply:
>> +    description:
>> +      The input supply for dcdc2-regulator.
>> +
>> +  vcc3-supply:
>> +    description:
>> +      The input supply for dcdc3-regulator.
>> +
>> +  vcc4-supply:
>> +    description:
>> +      The input supply for dcdc4-regulator.
>> +
>> +  vcc5-supply:
>> +    description:
>> +      The input supply for ldo1-regulator, ldo2-regulator, and ldo3-regulator.
>> +
>> +  vcc6-supply:
>> +    description:
>> +      The input supply for ldo4-regulator, ldo5-regulator, and ldo6-regulator.
>> +
>> +  vcc7-supply:
>> +    description:
>> +      The input supply for boost.
>> +
>> +  vcc8-supply:
>> +    description:
>> +      The input supply for otg-switch.
>> +
>> +  regulators:
>> +    type: object
>> +    patternProperties:
>> +      "^(boost|dcdc[1-4]-regulator|ldo[1-6]-regulator|otg-switch)$":
>> +        type: object
>> +        $ref: /schemas/regulator/regulator.yaml#
>> +        unevaluatedProperties: false
>> +    unevaluatedProperties: false
>> +
>> +patternProperties:
>> +  '-pins$':
> Keep consistent quotes, so either ' or ".
>
>> +    type: object
>> +    additionalProperties: false
>> +    $ref: /schemas/pinctrl/pinmux-node.yaml
>> +
>> +    properties:
>> +      function:
>> +        enum: [pin_fun_gpio, pin_fun_thermistor]
> gpio, thermistor
> (pin_fun is redundant)
>
>> +
>> +      pins:
>> +        $ref: /schemas/types.yaml#/definitions/string
>> +        const: gpio0
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - "#clock-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/pinctrl/rockchip.h>
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    #include <dt-bindings/gpio/gpio.h>
>> +
>> +    i2c {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        rk816: pmic@1a {
>> +            compatible = "rockchip,rk816";
>> +            reg = <0x1a>;
>> +            interrupt-parent = <&gpio0>;
>> +            interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
>> +            clock-output-names = "xin32k", "rk816-clkout2";
>> +            pinctrl-names = "default";
>> +            pinctrl-0 = <&pmic_int_l>;
>> +            gpio-controller;
>> +            system-power-controller;
>> +            wakeup-source;
>> +            #clock-cells = <1>;
>> +            #gpio-cells = <2>;
>> +
>> +            vcc1-supply = <&vcc_sys>;
>> +            vcc2-supply = <&vcc_sys>;
>> +            vcc3-supply = <&vcc_sys>;
>> +            vcc4-supply = <&vcc_sys>;
>> +            vcc5-supply = <&vcc33_io>;
>> +            vcc6-supply = <&vcc_sys>;
> Add pins node to the example.
>
> Best regards,
> Krzysztof
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
