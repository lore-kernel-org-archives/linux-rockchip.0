Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF8EC54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 10:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1Dl5lJaCzyUxlcfu9FCB0iz/aQDEhJACgrlroCDqro=; b=WYVKtVyYIcRr6i
	cL+ANQ9BW0RRGgb7qXkbGnEz2RncJqSOtvCZOKgivzcNCN/GYPu1KPzB8PiYJpp6iMIVH1zDaOteH
	j6CqYjevstPy+v/nFdl3w+7a5JFkIw3/cilIYFrPcKndCgdmLp83OayL7OXaKISmhHtUMGaWkoBgx
	dNUne6n8CiTZeYRi67ZoKiBwaiQnrA5jsEsGSjdafzMNiKkV3j1qa3ZC8XH5PGOAWQJ/P/VwALtQN
	J78ttXircxAd2K0K7/oiuBnUyaCASniMJuvyNKnmLr5T5jfDTAOcZXTQL1xQeHRHt7miHarFQmlac
	QsgbDKa7Xvea8GINv27g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnygK-0000000AApv-0L7f;
	Sat, 23 Mar 2024 10:32:56 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnygG-0000000AAo4-28Gs
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Mar 2024 10:32:54 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-56bf63af770so219091a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Mar 2024 03:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711189965; x=1711794765; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=r8URojT0oHtu3+AzXIASnC0WWRVX6/5eAhPSlQrL+18=;
        b=f+4jG8hmr/us4XwwgfqrR+rGq+lQSj+v/UilSxKA4Tx0E7uq283m3ancFOLvThxn86
         LUc/yPJCWRMamW6b0R31Gpmg7gMkAChULfId+IdX4a7EzQWFPJkJLQmi/13ewKmFUmP2
         AsbCzZOvD1Ursm9+HLXxIyJqFFRMDo7p1vXbIXHl9Ax75wIDkPhfj0ONdwcUeV3hqfhi
         vM8rQKaXcf90/VIzz7P/m6nOlv7enIQ454YVo44Fduaa3NGQFV6Ax2HWn3OfKM4z8Muc
         14k0T1Sg72fieV9ZJG2XmYYymsc/ddm8OJIZGRcHIuzVKoo2RAdrG87gq7zCeKWxPMn8
         yHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711189965; x=1711794765;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8URojT0oHtu3+AzXIASnC0WWRVX6/5eAhPSlQrL+18=;
        b=B0jixuEE3woTX5xhnqLHlPkVLcqWGfv7L0r6Uuusb510vOV6Oo3V45VW5INWp5vAbe
         NrSCIW9eqq8cY77bP5S8MLJ+PV93VDdgDpy4I3B4MB1F4LS3PMHscD5r6UcX4LLmh8gz
         aoHmMWpui7fcuTnxHpIT/vlka6mia807lhwTkusAceDn+NXoGdEdOCxdghVlS4Y55yZo
         7ot3lk+1tMmgAcPFoO/cS3FGq51Pvx2oBGyojcekyCpqFBxWCbtOUaJ+Ltj5K01KyFpy
         JeqIJiWx9xUGG5dhjlPun2C6JKWoooVI88tR8/lXIz53F+mdf0awrcTrma4rngSWWgkO
         hIvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbRL5KL5CbnTmrGaGTmtK+uhv9uPgwVOLI9T6tsikTJLGyVHgvWw0cc/lBinGQw0pgOyqPdgfibP3yfclkziqx7gK4aR6JawxsGYOUK+jUXute
X-Gm-Message-State: AOJu0YzBMQ7XL2k+m3LFOkTJBro4JBjQkOiNPGHoFZlLLO69oeKDmwC2
	aQ0vcMBp3LHfFTWzd7POLqQkWvTetCZLcMFf2mKG/AqZpjqMvLamTUqHBmvZ6XA=
X-Google-Smtp-Source: AGHT+IHsYDkit5rlnhfzCtTtWmQb+Dp//t6C/IHIfFL6toJGVCxTzhJs7h7KvR2Y1q4+ZKSWDCJ+nQ==
X-Received: by 2002:a50:ccd0:0:b0:567:2a22:6e86 with SMTP id b16-20020a50ccd0000000b005672a226e86mr1323611edj.22.1711189965437;
        Sat, 23 Mar 2024 03:32:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id n23-20020aa7db57000000b00568c3a2f4f8sm747598edt.74.2024.03.23.03.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Mar 2024 03:32:44 -0700 (PDT)
Message-ID: <bfe79f3d-1615-45a4-81f7-7e30740308d7@linaro.org>
Date: Sat, 23 Mar 2024 11:32:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: Add rk816 binding
To: Alex Bee <knaerzche@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
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
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240323085852.116756-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_033252_567441_248609B4 
X-CRM114-Status: GOOD (  19.62  )
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

On 23/03/2024 09:58, Alex Bee wrote:
> Add DT binding document for Rockchip's RK816 PMIC
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> changes since v1:
>   - lowercase/hyphens for regulator node names
>   - rename "-reg" to "-regulator" to make node names generic

I don't understand why did you do it. I did not ask for it. If you want
to rename, drop redundant regulator or reg suffix from node names.

>   - dropped superfluous description for clock-output-names and
>     wakeup-source
>   - dropped "|" for text blocks that don't require to preserve formatting
>   - use full path for `$ref`s
>   - added pins description to the binding
>   - added charger function to description
>  
>  .../bindings/mfd/rockchip,rk816.yaml          | 269 ++++++++++++++++++
>  1 file changed, 269 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
> new file mode 100644
> index 000000000000..9664162f4f75
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
> @@ -0,0 +1,269 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk816.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK816 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Chris Zhong <zyw@rock-chips.com>
> +  - Zhang Qing <zhangqing@rock-chips.com>
> +
> +description:
> +  Rockchip RK816 series PMIC. This device consists of an i2c controlled MFD
> +  that includes regulators, a RTC, a GPIO controller, a power button, and a
> +  battery charger manager with fuel gauge.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk816
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    description:
> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    maxItems: 2
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  wakeup-source:
> +    type: boolean
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for dcdc1-regulator.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for dcdc2-regulator.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for dcdc3-regulator.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for dcdc4-regulator.
> +
> +  vcc5-supply:
> +    description:
> +      The input supply for ldo1-regulator, ldo2-regulator, and ldo3-regulator.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for ldo4-regulator, ldo5-regulator, and ldo6-regulator.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for boost.
> +
> +  vcc8-supply:
> +    description:
> +      The input supply for otg-switch.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(boost|dcdc[1-4]-regulator|ldo[1-6]-regulator|otg-switch)$":
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +    unevaluatedProperties: false
> +
> +patternProperties:
> +  '-pins$':

Keep consistent quotes, so either ' or ".

> +    type: object
> +    additionalProperties: false
> +    $ref: /schemas/pinctrl/pinmux-node.yaml
> +
> +    properties:
> +      function:
> +        enum: [pin_fun_gpio, pin_fun_thermistor]

gpio, thermistor
(pin_fun is redundant)

> +
> +      pins:
> +        $ref: /schemas/types.yaml#/definitions/string
> +        const: gpio0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        rk816: pmic@1a {
> +            compatible = "rockchip,rk816";
> +            reg = <0x1a>;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +            clock-output-names = "xin32k", "rk816-clkout2";
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pmic_int_l>;
> +            gpio-controller;
> +            system-power-controller;
> +            wakeup-source;
> +            #clock-cells = <1>;
> +            #gpio-cells = <2>;
> +
> +            vcc1-supply = <&vcc_sys>;
> +            vcc2-supply = <&vcc_sys>;
> +            vcc3-supply = <&vcc_sys>;
> +            vcc4-supply = <&vcc_sys>;
> +            vcc5-supply = <&vcc33_io>;
> +            vcc6-supply = <&vcc_sys>;

Add pins node to the example.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
