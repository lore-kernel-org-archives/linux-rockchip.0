Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BEE3C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xF6aP9KptptWU7fJ4oIt1WS6K2orRaqXPPxIFt+bkoc=; b=iWAAghpLq5sdRl
	UQNbXh21Un8TLWZ2XSyyDvKJ6YmcLC53IH33ECdH/ZRS2bxlKgj6P6X5xx4gRR5iygV4N++Sfg4UX
	P/yPusYVTfkKVgG91XyPy4Z+/7Lkm+Kle9l0dRntu0YI7JkBVp5H3VjeoYcAa4t7nIiwZZXGciA0B
	vv2F1P1BIGYS1CKEqnYlVpkNbkDmY1USbSule/TqSP4peCqmP4wMhZRkUtGgmHTRpXMAxIEWVJZCf
	M7DN1zblHSiM0fopDzRp7F82xmYGXm8SFffi07bh2I+QbUdHqaFwkOO+7N9gO1tGNeuCbcHE7ejTB
	fEJvE2HjyNStXvOcNkpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cvY-0037AC-1u;
	Mon, 12 Jun 2023 08:29:28 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cvR-00377c-2v
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jun 2023 08:29:25 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-516a008e495so8353855a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 01:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558559; x=1689150559;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gsnHpIL0gMBUBdAQKZ2SqRGf+mIF2ab1KdkyACTk5zY=;
        b=IYCp3o9Yf+5H82G/i4/6kNCO5btgqpB7Maxiu447zdbiEXTSY3ws7MLx8GEOxIfaDZ
         QTwLfMNtnYCq9Psx2hsUawFWp7xsCxHfSmLZx9gLRdMCMlwK3xh5x9wAoSXt5E4Qx8PE
         Be1YNAMGdhf2wRP1nVi67psGQ5IQiTDSGbiPz8gAUcILOPHVxxngYCsciYFdc2xxf2b/
         5LIKe1n8JmnArct8kx6X/pa9VlRmjoDfAk5aRZgL2Ea6HTo51MHCVMhX786WfuLzndbu
         0fffvo7fZ+qH1gIZiivaeK4IfilNQ7NSUmUF62LffxIpftzNuodOYhkNLvQXvxNmzjCh
         dqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558559; x=1689150559;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gsnHpIL0gMBUBdAQKZ2SqRGf+mIF2ab1KdkyACTk5zY=;
        b=Y4vlToAjuh3oILC1JDbDhcBNJmRiJzXP1Kwt/mEcq6yTXJXrYjvV0/MlipVPBzQxiD
         lDRIifRLIjKlPkJM8x91kLLggvvE5fS83XV9Sk4XondarF6Q6/GLvDuylR7lsVQCbGLk
         Ivtqiwwp+4UURFyGywW7R0y9BU48Myeh0MPinzxRKo55aLVxVR4GEbq6/nJ8L9K+KFEV
         ysr6xB9L7gXYcqLX6064hg3ys45PxHjBeI+S+5uoorQf9gUAUNoY4FbSViUOE5vYuaBE
         A7WutPMHsqKkmeXvlcX78kXrCVKLbB+AI4jCo1Qkk4TIoxkVMaa78VLYnGc0iOviGzGh
         PTrw==
X-Gm-Message-State: AC+VfDy1aDN9hHIv9BMrB0NSI+N8T+juXgkLIhrM5KwhW9xamn67jVvj
	L+xyk9c590DCoJs8fALC78Cbdw==
X-Google-Smtp-Source: ACHHUZ6Q+a1N0q7NwKFJlA9Qqt1cuwduPcLwp2Ngzcbiu+4Sq+3r2FGCOunAVh6N8Xr2giVJlMHYag==
X-Received: by 2002:a05:6402:270d:b0:514:8fdb:6354 with SMTP id y13-20020a056402270d00b005148fdb6354mr5483679edd.18.1686558559205;
        Mon, 12 Jun 2023 01:29:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i13-20020a50fc0d000000b0050bc6d0e880sm4745009edr.61.2023.06.12.01.29.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:29:18 -0700 (PDT)
Message-ID: <5217a54e-353b-bd48-68fa-d2104accfeb9@linaro.org>
Date: Mon, 12 Jun 2023 10:29:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/3] dt-bindings: extcon-usb-gpio: convert to DT schema
 format
Content-Language: en-US
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Beno=c3=aet_Cousson?=
 <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230608081153.441455-1-alexander.stein@ew.tq-group.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608081153.441455-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012921_949477_1D94BB0A 
X-CRM114-Status: GOOD (  22.42  )
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

On 08/06/2023 10:11, Alexander Stein wrote:
> Convert the binding to DT schema format. Change the GPIO properties to new
> naming convention using -gpios as well.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
>  .../bindings/extcon/extcon-usb-gpio.yaml      | 52 +++++++++++++++++++
>  2 files changed, 52 insertions(+), 21 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> deleted file mode 100644
> index dfc14f71e81fb..0000000000000
> --- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -USB GPIO Extcon device
> -
> -This is a virtual device used to generate USB cable states from the USB ID pin
> -connected to a GPIO pin.
> -
> -Required properties:
> -- compatible: Should be "linux,extcon-usb-gpio"
> -
> -Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
> -- id-gpio: gpio for USB ID pin. See gpio binding.
> -- vbus-gpio: gpio for USB VBUS pin.
> -
> -Example: Examples of extcon-usb-gpio node in dra7-evm.dts as listed below:
> -	extcon_usb1 {
> -		compatible = "linux,extcon-usb-gpio";
> -		id-gpio = <&gpio6 1 GPIO_ACTIVE_HIGH>;
> -	}
> -
> -	&omap_dwc3_1 {
> -		extcon = <&extcon_usb1>;
> -	};
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> new file mode 100644
> index 0000000000000..3a71d848dc7a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/extcon/extcon-usb-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: USB GPIO Extcon device
> +
> +maintainers:
> +  - Alexander Stein <alexander.stein@ew.tq-group.com>
> +
> +description: |
> +  This is a virtual device used to generate USB cable states from the
> +  USB ID pin connected to a GPIO pin.
> +
> +properties:
> +  compatible:
> +    const: linux,extcon-usb-gpio
> +
> +  id-gpios:
> +    description: An input gpio for USB ID pin.
> +    maxItems: 1
> +
> +  vbus-gpios:
> +    description: An input gpio for USB VBus pin, used to detect presence of
> +      VBUS 5V.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +
> +anyOf:

oneOf instead

> +  - required:
> +      - id-gpios
> +  - required:
> +      - vbus-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    extcon_usb1 {

No underscores, generic node names, so just "extcon-usb"

> +      compatible = "linux,extcon-usb-gpio";
> +      id-gpios = <&gpio6 1 GPIO_ACTIVE_HIGH>;
> +      vbus-gpios = <&gpio6 2 GPIO_ACTIVE_HIGH>;
> +    };
> +
> +    usb-controller {
> +      extcon = <&extcon_usb1>;
> +    };

Drop controller, no need to add consumers in a provider's binding.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
