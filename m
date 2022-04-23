Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434F3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSp3MpW3lcbuoV1w3XsBb1TYuSoUddUxwXscFjdK6Ac=; b=ybO7twSbfvjFOS
	IWis0DrL/cjmCGpaqGMNoxxHKieMbj/Aqd4IrGpcQvvoqW3OwkqUsdwikhN7VBSQdP4fBK8ygiHKE
	47FBShyt/sHnKDhe9aPJPpK5jMoidgkHGAdkPCvGIzfuBpeXCm/AiM+IRcxxgpNNDAEInwdKQemHY
	AQjqD8RzRRufA1igOBRAHQK0vWX7JCmJcNJKumWRw4Mu42u3IPUK2Z3loXh8muNOBIi/Y4znLItfn
	SF+q81oOih2zW2hryv0CZz9T+7CWTrOv5qeeL5Y1U2rHP/VNgKgZFSJNRRs4GYu2GAPNaCG8ND7Dy
	Cgag4JL5tEd7xplTqS5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niCZt-003zcu-2h; Sat, 23 Apr 2022 10:01:21 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niCZq-003zbV-OL
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 10:01:20 +0000
Received: by mail-ej1-x62c.google.com with SMTP id r13so20705736ejd.5
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 03:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=yMGG+zyUqngKlUh1IoJ7uZEj7Hkk7vR8Bqm6uTHC9YY=;
 b=VdkCVDZAvN4RNtsDNBvJD/u8yxTwvhngmT9LXS+yNnFusdRs16u4cjFr5irHyvFgHq
 L87iry65Vj5kDYAKmCA4+vXu2x/ay6/vVainiECGOlcKz9yxcgB5wOt1kjp6RJxVQzSS
 SSJL0/pP6MefV2saz6nmmICtwBRiuiUm/ekZvTOZdMVVFv7R/0FbSM7pK1VHGZu4nVYr
 x6Xajdhm478/6h5MzyjfAsM2wPjrZ3iDjqortIKw39EUo2EK/CUZvcb0jqUXfB4Lyh/4
 N6gelxgv+CoNoOfcH8ILrAgc4408xOOgrL6sE/44IPl6qa1/NxdBsxUhS75l8PrHYF67
 po7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yMGG+zyUqngKlUh1IoJ7uZEj7Hkk7vR8Bqm6uTHC9YY=;
 b=6N0e+KEZaNIZWyMdwi27Gxq6RZAVjGzJzvPZ10i+p39jRs2zNQ3fnA4IQkBYJUnD+K
 oPM2Nj9u0SPTdy7XDZFKvQqh71ROPhrFSxp2AC8koowwF/h6Ij0fguetlLebkW/2Cc7l
 gZ6EcOTVQn+P01eHYNzpNUsoafO/PPWcQ3E4UIxzlG01VXNcbRY4BU1nX1Z1wundKw+h
 +8SvYZMLCoHPhEIq2JcHrH7u20pEjnsYa9n2b5+ldYM8iOu04f0qZpr3JZ/LlpeSqkVh
 rL4qT4qlLJ1/fwEuvU9QY2OlryyESFCC0vNyQh12xAqeDC5rA5aM1fWMUKX3MqkyrV/V
 fNkg==
X-Gm-Message-State: AOAM531w4Jr+BZrHEkIm7BnPEIJnYzQbpt6ItSXyg05vBgAsA9mGiyKR
 lgLnJHQFd38n2TR0ZfpYzgwKpg==
X-Google-Smtp-Source: ABdhPJzHcV7ul2x/Jmn2zCbAwdMzU3MG3+f/janVAUgWm+zXoVg8O3JiRyXSQtQT+AfHfvQ05S+tOA==
X-Received: by 2002:a17:907:7ea6:b0:6ef:f384:15b4 with SMTP id
 qb38-20020a1709077ea600b006eff38415b4mr8091838ejc.91.1650708076601; 
 Sat, 23 Apr 2022 03:01:16 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 n16-20020a05640204d000b0042062f9f0e1sm1963756edw.15.2022.04.23.03.01.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:01:16 -0700 (PDT)
Message-ID: <67a03d14-7d83-2aec-ee60-82b142450512@linaro.org>
Date: Sat, 23 Apr 2022 12:01:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCHv1 01/19] dt-binding: clock: Document rockchip,rk3588-cru
 bindings
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Elaine Zhang <zhangqing@rock-chips.com>, kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-2-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422170920.401914-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_030118_880329_E5CDBDFA 
X-CRM114-Status: GOOD (  19.93  )
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

On 22/04/2022 19:09, Sebastian Reichel wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Document the device tree bindings of the rockchip Rk3588 SoC
> clock driver.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3588-cru.yaml   | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> new file mode 100644
> index 000000000000..dec2ae8c7970
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3588-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROCKCHIP rk3588 Family Clock Control Module Binding

s/ROCKCHIP/Rockchip/
(that's the most common name used here and also on company website)

s/Binding//

> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The RK3588 clock controller generates the clock and also implements a
> +  reset controller for SoC peripherals.
> +  (examples: provide SCLK_UART2\PCLK_UART2 and SRST_P_UART2\SRST_S_UART2 for UART module)
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/rk3588-cru.h headers and can be
> +  used in device tree sources.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3588-cru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks: true

Need to define how many and what clocks are coming here.

> +
> +  assigned-clocks:
> +    minItems: 1
> +
> +  assigned-clock-parents:
> +    minItems: 1
> +
> +  assigned-clock-rates:
> +    minItems: 1

You normally don't need these in the bindings, they come from the schema.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    cru: clock-controller@fd7c0000 {
> +      compatible = "rockchip,rk3588-cru";
> +      reg = <0xfd7c0000 0x5c000>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
