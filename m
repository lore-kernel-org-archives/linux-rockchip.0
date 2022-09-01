Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 525ADECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 08:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bM5znX0SqDK5hlc1gIiXFy37AClcjeGXsd8XIEk3Ptw=; b=E+wxQyc4RDyX3t
	SDOUh0eZoBuETSj4PG7vU0Pc2Fn9S+GsoRFnd3lrAtne1ZFaBC9wFItYuERP2/pBH6H7PN+4etC8h
	DBeiyZtd24fpQmIUH7hgkOUx+7qHgawJYE2uzksrZmqR+a4vZ64jtuB4k/sGzhnmAVmfuxAeM0GBx
	R2eKMaZbeEpreNOLSNDl99kxbCnYCUpysis5hO8cz/3pN+b729Uf56yioDLmdPPOddgCXMY96DH+W
	n7QS1DYN7Cdm+oYpUBmuHPDys1pmrvJl/gFfW5PcTAm6Qo7gNgPNPDzOQVzTZ5oNc0wETtoKYd0nV
	Jl8jGP5OLAmg/s8kAZLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTfGU-00AWC4-Fz; Thu, 01 Sep 2022 08:09:30 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTfGP-00AW6X-IZ
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 08:09:29 +0000
Received: by mail-lf1-x133.google.com with SMTP id w8so14215978lft.12
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 01:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=jdaImCAMzvEFX9TwXI3b3A22fnyD7RAu4eGJcB2v2L4=;
        b=T5we5fmyC8p8+kk27wkfq0GL1b/ybd4BIXqIjTjUIFJ6yL1szPCGv1FMsWQfITTimy
         b9wW54HB7bBhJ3R6Yi8GoSKrHTlmfit/WD2xt20MeDIlO65jXQWDrt3iiFe7TTZNvN5d
         Ra4ZbPxt5dA3R6uyWNA3VfypbwwSIxU1E3a3sxZU148FCpnGDTjRyDPQuPgFrQegaIwE
         kefgZy2n3Bau7KRgMimrpkuOOuXEJc8jyRjnrIY5ci5LX1di17H9e5FB3cBbKUwc2Wrx
         UYx5KlrOd0A+s0177ERo9VBKNxJpgDJVpCQQHgKEsjB4e3J75d8ylBzrNt352aJyaouR
         wHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=jdaImCAMzvEFX9TwXI3b3A22fnyD7RAu4eGJcB2v2L4=;
        b=pE3LFmnvyYl2ZaoQ5ipXDutCs26g3UGkK/Tl4itPrhKOcbjv8tTSdkyQqwTM79hEps
         nZ0VtYQ5N+4PCk9nr7KiX/TItkHTlYK7qLiCIq2YM1T4uyWf9UoZpm6xRaE4Zfub2YXE
         HGcnYppWh1piQc+U2nmjjO8VGXsPhJ982X7s/H/rAfOZW5Bkk6RpZtFQFV/QFJRke+hJ
         QunaHqisG1sYW2Bks3bexVlR6v0LSzIh7eCqDnjIByPGsXU9PrNkumiixmbsXB/H3WYi
         guAVTQUkQGQ7ly23Jxx/+71Nfy6a3TFxK4wgVjoqJqdT+05XmREDmSjqzLjujVS5iL8P
         8gaQ==
X-Gm-Message-State: ACgBeo1wcZb+VwLzwt8cqkGJ7s2zu/5A08zFfW4UqdOqWyEnJHK4oF/C
	iIKvV5z35ouDLgbuzEQNEueRNg==
X-Google-Smtp-Source: AA6agR6ozcS7BNEED6T7ONfuYK1PEO81TnBZdK0SOVWrXBnqMgkXc+sQbCOLwiQhHF/PUp4UDU719w==
X-Received: by 2002:a05:6512:32c6:b0:494:99fe:49b9 with SMTP id f6-20020a05651232c600b0049499fe49b9mr751880lfg.410.1662019762610;
        Thu, 01 Sep 2022 01:09:22 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id bj38-20020a2eaaa6000000b002682754293fsm726958ljb.1.2022.09.01.01.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 01:09:21 -0700 (PDT)
Message-ID: <bee118ef-0e38-2049-ffe3-a9893a49b8c3@linaro.org>
Date: Thu, 1 Sep 2022 11:09:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 08/13] dt-bindings: mfd: add rk806 binding
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
 <20220831215437.117880-9-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831215437.117880-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_010925_697001_B6608058 
X-CRM114-Status: GOOD (  17.66  )
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

On 01/09/2022 00:54, Sebastian Reichel wrote:
> Add DT binding document for Rockchip's RK806 PMIC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/mfd/rockchip,rk806.yaml          | 388 ++++++++++++++++++
>  1 file changed, 388 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> new file mode 100644
> index 000000000000..c775ef60db8b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> @@ -0,0 +1,388 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK806 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Sebastian Reichel <sebastian.reichel@collabora.com>
> +
> +description: |
> +  Rockchip RK806 series PMIC. This device consists of an spi or
> +  i2c controlled MFD that includes multiple switchable regulators.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk806
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  vcc5-supply:
> +    description:
> +      The input supply for DCDC_REG5.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for DCDC_REG6.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for DCDC_REG7.
> +
> +  vcc8-supply:
> +    description:
> +      The input supply for DCDC_REG8.
> +
> +  vcc9-supply:
> +    description:
> +      The input supply for DCDC_REG9.
> +
> +  vcc10-supply:
> +    description:
> +      The input supply for DCDC_REG10.
> +
> +  vcc11-supply:
> +    description:
> +      The input supply for PLDO_REG1, PLDO_REG2 and PLDO_REG3.
> +
> +  vcc12-supply:
> +    description:
> +      The input supply for PLDO_REG4 and PLDO_REG5.
> +
> +  vcc13-supply:
> +    description:
> +      The input supply for NLDO_REG1, NLDO_REG2 and NLDO_REG3.
> +
> +  vcc14-supply:
> +    description:
> +      The input supply for NLDO_REG4 and NLDO_REG5.
> +
> +  vcca-supply:
> +    description:
> +      The input supply for PLDO_REG6.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(DCDC_REG[1-9]0?|[PN]LDO_REG[1-6])$":

1. Your pattern is a bit wide. Seems to accept DCDC_REG90. That piece
should be ([1-9]|10)

2. Only lowercase and no underscores in node names.


> +        type: object
> +        $ref: ../regulator/regulator.yaml#

Full path, so /schemas/regulator/......

> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        pmic@0 {
> +            compatible = "rockchip,rk806";
> +            reg = <0x0>;
> +
> +            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> +
> +            vcc1-supply = <&vcc5v0_sys>;
> +            vcc2-supply = <&vcc5v0_sys>;
> +            vcc3-supply = <&vcc5v0_sys>;
> +            vcc4-supply = <&vcc5v0_sys>;
> +            vcc5-supply = <&vcc5v0_sys>;
> +            vcc6-supply = <&vcc5v0_sys>;
> +            vcc7-supply = <&vcc5v0_sys>;
> +            vcc8-supply = <&vcc5v0_sys>;
> +            vcc9-supply = <&vcc5v0_sys>;
> +            vcc10-supply = <&vcc5v0_sys>;
> +            vcc11-supply = <&vcc_2v0_pldo_s3>;
> +            vcc12-supply = <&vcc5v0_sys>;
> +            vcc13-supply = <&vcc5v0_sys>;
> +            vcc14-supply = <&vcc_1v1_nldo_s3>;
> +            vcca-supply = <&vcc5v0_sys>;
> +
> +            regulators {
> +                vdd_gpu_s0: DCDC_REG1 {

Only lowercase and no underscores in node names.

> +                        regulator-always-on;

Messed up indentation. 4 spaces for DTS.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
