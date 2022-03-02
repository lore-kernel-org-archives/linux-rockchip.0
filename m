Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A07FBC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5USXtCCLuhjmyw+Qi45U2E+zwGcS+TfzDEtGXQ3GFxA=; b=tw/bPwnC7DiN8N
	PER+2Y9gIwluc7iE4BDHoycQfoz4lEniTTxjtzC3E6wsO1hzG0ObdItKQTo0P6vJHqC8329M0VjUY
	INJ23hvspFyu4Ffy4l42oE+KIkoofhqp9uERwDv0kvAA1Pznj8SjoOFozim9Kc1tf6wGxQRpOxqWU
	kUD7P/fXH8iUJ/ck6cCrqMyPO9LmtqMEKloQcEbWPxoWYY3yppV+sWaXKDSR65bWNexPxY1jsY+fS
	SLIF1bcrgYEJY8YpcUFB29bUlMwBGyqpNopnM0npVWYyVIy7Dxe3BZUN3Q6GphoXli9L/6Ky8HIfw
	o5s5r1f11aiUXDQQ7xNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPLYr-0026KG-Bg; Wed, 02 Mar 2022 09:46:21 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPLYn-0026HO-PZ
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 09:46:20 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 90D883F60D
 for <linux-rockchip@lists.infradead.org>; Wed,  2 Mar 2022 09:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646214371;
 bh=lAb27ZgFQOByFHIClEAhJ0N2dL6QzOfjA77CIlXGrDU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=Cy2BgMFu+ipxxvSZ/7RjcxxcjvNzZZoDJ1tdQE3oYWKicsp24cT+ocetV/l1h45Jm
 ifwQDJu2RO8WZfk82Htjr8OCw0E9Oc3VBK71wkCB4rdAdp/GMxr802FdXxm2UmBdqY
 Bj20LUWRKY1DbFXpf48HmDA8ve/auVINJRS7Dz5RO9tMN3EJOUiKAUkliZMl4KO+bJ
 WBaYhsVxzML1m089xYux04+gZ6TL/QhE2zHG8d1XiZW/zpOJ5OLSAsIG4Fp0mgPFSN
 86jJrG096GSztQ/65nqNHbN088IPKbCFSwmgaoGTaurymu+aYtRdGYQ6HTFxuWkzEq
 6NXKkoYAeYpAA==
Received: by mail-ed1-f70.google.com with SMTP id
 u28-20020a50d51c000000b004159ffb8f24so695913edi.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 01:46:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lAb27ZgFQOByFHIClEAhJ0N2dL6QzOfjA77CIlXGrDU=;
 b=kTELS/GzK6hLwCS8RJMEJhUytMyCDOIcU9OpjwDvprPsVyd3FVY3oVAIwvsd3QDPYv
 vxRdpHufjikBK7LYBhK3CyUd/CAxG9TjTViQOxK2thUb38R3DgImq9cmMfYwREu22LoP
 MpMGvv+38FFhT6mcLyUX/C9mxWxn12URGf1TKwR4/GMFwm7T3fqRKjxbPnheMaB/yyKw
 b21mYw4i/yqDpJZHSmZTgChPyMFmIrmYP8mL/Pu7ldHrP8ZOOGN0tqm1QrKsGsNCz82n
 dddQQ1VwQzJ7DFv9ICqBczpSVE6jfqtprbHa+r50zkxqvDK2OQ2hFVGPul5W5ev7qGhF
 j0cw==
X-Gm-Message-State: AOAM533p22JvVXI7GvAlNPoy1Jtx2ZWTSEynuVRU4Y0dUyyVqLv7X9QC
 2KIuW+7eFpC7ESHeOb636nLg5QBzNuYKfkpDZB5yetnJLISWVw4jwKgeOVFyiCe5PnY5/zGSsVh
 sNrebMl42CyeSvEmD3HkvHhPedyUTSM7ZJJEDLVkeC4/dZhvHMw==
X-Received: by 2002:a17:906:c048:b0:6ce:a6f5:b23a with SMTP id
 bm8-20020a170906c04800b006cea6f5b23amr21987703ejb.350.1646214370262; 
 Wed, 02 Mar 2022 01:46:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxt3m08y7YEqtS4flqRepTSs5Wr7s6n2g6prN66QvwsvFQSR8vFMHL5ix5LeZez52FJ+02DBA==
X-Received: by 2002:a17:906:c048:b0:6ce:a6f5:b23a with SMTP id
 bm8-20020a170906c04800b006cea6f5b23amr21987679ejb.350.1646214369981; 
 Wed, 02 Mar 2022 01:46:09 -0800 (PST)
Received: from [192.168.0.136] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 v5-20020a056402184500b00412e1a73c7bsm8152603edy.61.2022.03.02.01.46.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Mar 2022 01:46:09 -0800 (PST)
Message-ID: <6dae47c3-6083-782e-ecab-7be3f0bca0e1@canonical.com>
Date: Wed, 2 Mar 2022 10:46:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT bindings to
 yaml
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220301152421.57281-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_014618_001534_3E5038D6 
X-CRM114-Status: GOOD (  36.83  )
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

On 01/03/2022 16:24, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Create a yaml file for dtbs_check from the old txt binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v4:
>   - fix min vs. max
>   - fix indention of examples
>   - move up sata-common.yaml
>   - reorder compatible
>   - add descriptions/maxitems
>   - fix compatible-structure
>   - fix typo in example achi vs. ahci
>   - add clock-names and reg-names
>   - fix ns2 errors in separate patch
> v3:
>   - add conversion to sata-series
>   - fix some errors in dt_binding_check and dtbs_check
>   - move to unevaluated properties = false
> 
> ---
> 
> imho all errors should be fixed in the dts not in the yaml...
> 
> errors about the subitem requirement that was defined in txt but not fixed some marvell dts
> 
> some dts for Marvell SoC bring error
> 'phys' is a required property
> 'target-supply' is a required property
> 
> problem is in arch/arm64/boot/dts/marvell/armada-cp11x.dtsi:331
> here the sata-port@0 is defined, but not overridden with phy/target-supply in any following dts
> ---
>  .../devicetree/bindings/ata/ahci-platform.txt |  79 ---------
>  .../bindings/ata/ahci-platform.yaml           | 162 ++++++++++++++++++
>  2 files changed, 162 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
> deleted file mode 100644
> index 77091a277642..000000000000
> --- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
> +++ /dev/null
> @@ -1,79 +0,0 @@
> -* AHCI SATA Controller
> -
> -SATA nodes are defined to describe on-chip Serial ATA controllers.
> -Each SATA controller should have its own node.
> -
> -It is possible, but not required, to represent each port as a sub-node.
> -It allows to enable each port independently when dealing with multiple
> -PHYs.
> -
> -Required properties:
> -- compatible        : compatible string, one of:
> -  - "brcm,iproc-ahci"
> -  - "hisilicon,hisi-ahci"
> -  - "cavium,octeon-7130-ahci"
> -  - "ibm,476gtr-ahci"
> -  - "marvell,armada-380-ahci"
> -  - "marvell,armada-3700-ahci"
> -  - "snps,dwc-ahci"
> -  - "snps,spear-ahci"
> -  - "generic-ahci"
> -- interrupts        : <interrupt mapping for SATA IRQ>
> -- reg               : <registers mapping>
> -
> -Please note that when using "generic-ahci" you must also specify a SoC specific
> -compatible:
> -	compatible = "manufacturer,soc-model-ahci", "generic-ahci";
> -
> -Optional properties:
> -- dma-coherent      : Present if dma operations are coherent
> -- clocks            : a list of phandle + clock specifier pairs
> -- resets            : a list of phandle + reset specifier pairs
> -- target-supply     : regulator for SATA target power
> -- phy-supply        : regulator for PHY power
> -- phys              : reference to the SATA PHY node
> -- phy-names         : must be "sata-phy"
> -- ahci-supply       : regulator for AHCI controller
> -- ports-implemented : Mask that indicates which ports that the HBA supports
> -		      are available for software to use. Useful if PORTS_IMPL
> -		      is not programmed by the BIOS, which is true with
> -		      some embedded SOC's.
> -
> -Required properties when using sub-nodes:
> -- #address-cells    : number of cells to encode an address
> -- #size-cells       : number of cells representing the size of an address
> -
> -Sub-nodes required properties:
> -- reg		    : the port number
> -And at least one of the following properties:
> -- phys		    : reference to the SATA PHY node
> -- target-supply     : regulator for SATA target power
> -
> -Examples:
> -        sata@ffe08000 {
> -		compatible = "snps,spear-ahci";
> -		reg = <0xffe08000 0x1000>;
> -		interrupts = <115>;
> -        };
> -
> -With sub-nodes:
> -	sata@f7e90000 {
> -		compatible = "marvell,berlin2q-achi", "generic-ahci";
> -		reg = <0xe90000 0x1000>;
> -		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&chip CLKID_SATA>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		sata0: sata-port@0 {
> -			reg = <0>;
> -			phys = <&sata_phy 0>;
> -			target-supply = <&reg_sata0>;
> -		};
> -
> -		sata1: sata-port@1 {
> -			reg = <1>;
> -			phys = <&sata_phy 1>;
> -			target-supply = <&reg_sata1>;;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> new file mode 100644
> index 000000000000..cf67ddfc6afb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/ahci-platform.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AHCI SATA Controller
> +description:
> +  SATA nodes are defined to describe on-chip Serial ATA controllers.
> +  Each SATA controller should have its own node.
> +
> +  It is possible, but not required, to represent each port as a sub-node.
> +  It allows to enable each port independently when dealing with multiple
> +  PHYs.
> +
> +maintainers:
> +  - Hans de Goede <hdegoede@redhat.com>
> +  - Jens Axboe <axboe@kernel.dk>
> +
> +allOf:
> +- $ref: "sata-common.yaml#"
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +        - enum:
> +          - brcm,iproc-ahci
> +          - marvell,armada-8k-ahci
> +          - marvell,berlin2q-ahci
> +        - const: generic-ahci
> +      - enum:
> +        - brcm,iproc-ahci

This one is already earlier in generic-ahci, so you can skip him here.

> +        - cavium,octeon-7130-ahci
> +        - hisilicon,hisi-ahci
> +        - ibm,476gtr-ahci
> +        - marvell,armada-3700-ahci
> +        - marvell,armada-380-ahci
> +        - snps,dwc-ahci
> +        - snps,spear-ahci
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description:
> +      Clock IDs array as required by the controller.
> +    minItems: 1
> +    maxItems: 3
> +
> +  interrupts:
> +    description:
> +      specifies the interrupt number for the controller.

Skip description, it's obvious.

> +    maxItems: 1
> +
> +  ahci-supply:
> +    description:
> +      regulator for AHCI controller
> +
> +  clock-names:
> +    description:
> +      Names of clocks corresponding to IDs in the clock property.
> +    minItems: 1
> +    maxItems: 3

Put the clock-names next to clocks.

> +
> +  dma-coherent:
> +    true

New line not needed. "dma-coherent: true"

> +
> +  phy-supply:
> +    description:
> +      regulator for PHY power
> +
> +  phys:
> +    description:
> +      List of all PHYs on this controller
> +    maxItems: 1
> +
> +  phy-names:
> +    description:
> +      Name specifier for the PHYs
> +    maxItems: 1
> +
> +  ports-implemented:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description:
> +      Mask that indicates which ports that the HBA supports
> +      are available for software to use. Useful if PORTS_IMPL
> +      is not programmed by the BIOS, which is true with
> +      some embedded SoCs.
> +    maxItems: 1

maxItems are incorrect here, this is not an array.

> +
> +  reg-names:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  target-supply:
> +    description:
> +      regulator for SATA target power
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +patternProperties:
> +  "^sata-port@[0-9a-f]+$":
> +    type: object
> +    description:
> +      Subnode with configuration of the Ports.
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      phys:
> +        minItems: 1

maxItems: 1

> +
> +      target-supply:
> +        description:
> +          regulator for SATA target power
> +
> +    required:
> +      - reg
> +
> +    anyOf:
> +      - required: [ phys ]
> +      - required: [ target-supply ]
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    sata@ffe08000 {
> +           compatible = "snps,spear-ahci";
> +           reg = <0xffe08000 0x1000>;
> +           interrupts = <115>;
> +    };
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/berlin2q.h>
> +    sata@f7e90000 {
> +            compatible = "marvell,berlin2q-ahci", "generic-ahci";
> +            reg = <0xe90000 0x1000>;

You still have wrong address.

> +            interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&chip CLKID_SATA>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            sata0: sata-port@0 {
> +                    reg = <0>;
> +                    phys = <&sata_phy 0>;
> +                    target-supply = <&reg_sata0>;
> +            };
> +
> +            sata1: sata-port@1 {
> +                    reg = <1>;
> +                    phys = <&sata_phy 1>;
> +                    target-supply = <&reg_sata1>;
> +            };
> +    };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
