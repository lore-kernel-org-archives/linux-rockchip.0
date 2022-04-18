Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B8BBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 15:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YP5627Jq37nZ6aZT92edqdnbI1flulRXXxG/o9vfXy0=; b=r7Tysr3XM7i15B
	ReRFj9YMyq2ppDLybnkaBJT4zNg5PktpjebYI/AbTdil5A5oTNRnbZT2aG8wby5f0X0cEiNr/hHOq
	y251EWEJVNuX5kY4qQ0EQ7/OQmNz19JCGfPaVltKtIqLGFKyAwUI4t9RyrVrKXXpp9Svtg2vP+349
	2ZTAvfUh/H0FzA3BHi65/8JVL96Fds396552qgPqW/bkOumJjR59suEg+/HJmJHkkHwztvXyM+M/2
	oi5WTuJhyhyFtl7oEjZK4DfAqZSK++8alr/DYmBOfoy++/lVuq8gmCekNOC4NWXFHclsTykZkdW8u
	Zbq3dluo/eAQ819TdK5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngTgT-00HY2m-BD; Mon, 18 Apr 2022 15:53:01 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngTgI-00HY0G-Jw
 for linux-rockchip@lists.infradead.org; Mon, 18 Apr 2022 15:52:53 +0000
Received: by mail-ed1-x52c.google.com with SMTP id z99so17914323ede.5
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Apr 2022 08:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=abJDI08Lc7Q5g8VlHjGfKe5QhiMExOEQf4wgN2a+RHA=;
 b=REIPpBv9+zKU2ZT+KemRxGZ9DSPZZbEaRR+gMJenHjpHtT5+sTxrrOrLc76LN2vKgu
 h4v2XQXSR4rABJpUQ92eNqBwTc18XmobtJwP8fg2j2RQv6CCyOU6lHF2o1RiC0cnARlA
 2abgMVv0T7NWnjfgppgzO/uKHqBB+n4eUM5NXgY30pYAVVVuw3X2l9Sr9hQvqOXrvpz4
 6DLbV8F9k7M0UAEtn81wI1XnB88IzEmnJRoohVtSsMT98doO4ErrGJJLkKd7QDyL59LO
 PZx2MusxeiMNwZtRUOECwVRE8HLrR0mQvwjEMvWfng6eTCpwKLJAjeLhYIRSZ+EyBFrY
 2IZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=abJDI08Lc7Q5g8VlHjGfKe5QhiMExOEQf4wgN2a+RHA=;
 b=QJ/9hZsix3LuYx8ft2xreMsEzalHwpi0KsJFNAIQ90IaCtKzESIRByT9ir4s7Md+n7
 66zfWQMc/DrfG5LCvPcPQh8J44atHAsNrTmBmy4k6fjq/fZL8nrLyl4gErxK0dyPGl8y
 2Aon7vQIB2JnDiUN+tScwwZSvxl7U8k85vjfzHmD9TBzNAz0hlJhMRatlR9Bn25DI7Kb
 0qqJS6KnbuhW4X9RbRxDVQdFPqOUlP9S9Ozaw2/mhtuof3QJyJbzmznSFJ7ZFtS7VApH
 2+2PN6vmi8Cmld6xKzOqCx3zVI8MZwtgGpLx94XaOmehpYkVfIqeABgQCtCHqsOl15w3
 rPRw==
X-Gm-Message-State: AOAM532FJTbS1eMLWD9p4oMPpy2JcCUkE0/Td+gZoxzhHe8kmyN5dWyu
 EU9wvLI1Vfs3PyNvraXK031nQA==
X-Google-Smtp-Source: ABdhPJyfEwWf4+56J/c9AYnYtTrFbjMzR15QZUG+Fx5x4Kt6Dp9Zte46ycbpvWYbYXD+km9cl8+z9A==
X-Received: by 2002:a05:6402:1e88:b0:423:d43d:8c65 with SMTP id
 f8-20020a0564021e8800b00423d43d8c65mr10837622edf.226.1650297165161; 
 Mon, 18 Apr 2022 08:52:45 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 t21-20020a170906609500b006e83679d8acsm4700002ejj.185.2022.04.18.08.52.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Apr 2022 08:52:44 -0700 (PDT)
Message-ID: <38e60bb2-123b-09cf-d6ef-3a07c6984108@linaro.org>
Date: Mon, 18 Apr 2022 17:52:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT 1/6] dt-bindings: phy: rockchip: add pcie3 phy
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220416135458.104048-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_085250_681684_A5A2742D 
X-CRM114-Status: GOOD (  20.55  )
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

On 16/04/2022 15:54, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe V3 phy driver.

Thank you for your patch. There is something to discuss/improve.

> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  .../bindings/phy/rockchip-pcie3-phy.yaml      | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml
> new file mode 100644
> index 000000000000..58a8ce175f13
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml

Filename: vendor,hardware
so for example "rockchip,pcie3-phy" although Rob proposed recently for
other bindings using compatible as a base:
https://lore.kernel.org/linux-devicetree/YlhkwvGdcf4ozTzG@robh.at.kernel.org/


> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip-pcie3-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PCIe v3 phy
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-pcie3-phy
> +      - rockchip,rk3588-pcie3-phy
> +
> +  reg:
> +    maxItems: 2
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    contains:
> +      anyOf:
> +        - enum: [ refclk_m, refclk_n, pclk ]

The list should be strictly ordered (defined), so:
  items:
    - const: ...
    - const: ...
    - const: ...
  minItems: 1

However the question is - why the clocks have different amount? Is it
per different SoC implementation?

> +
> +  "#phy-cells":
> +    const: 0
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: phy
> +
> +  rockchip,phy-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: phandle to the syscon managing the phy "general register files"
> +
> +  rockchip,pipe-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: phandle to the syscon managing the pipe "general register files"
> +
> +  rockchip,pcie30-phymode:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: |
> +      use PHY_MODE_PCIE_AGGREGATION if not defined

I don't understand the description. Do you mean here a case when the
variable is missing?

> +    minimum: 0x0
> +    maximum: 0x4

Please explain these values. Register values should not be part of
bindings, but instead some logical behavior of hardware or its logic.

> +
> +

Just one blank line.

> +required:
> +  - compatible
> +  - reg
> +  - rockchip,phy-grf

phy-cells as well

> +
> +additionalProperties: false
> +
> +unevaluatedProperties: false

Just one please, additionalProperties.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    pcie30phy: phy@fe8c0000 {
> +      compatible = "rockchip,rk3568-pcie3-phy";
> +      reg = <0x0 0xfe8c0000 0x0 0x20000>;
> +      #phy-cells = <0>;
> +      clocks = <&pmucru CLK_PCIE30PHY_REF_M>, <&pmucru CLK_PCIE30PHY_REF_N>,
> +       <&cru PCLK_PCIE30PHY>;

Align the entry with opening '<'. Usually the most readable is one clock
per line.

> +      clock-names = "refclk_m", "refclk_n", "pclk";
> +      resets = <&cru SRST_PCIE30PHY>;
> +      reset-names = "phy";
> +      rockchip,phy-grf = <&pcie30_phy_grf>;
> +    };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
