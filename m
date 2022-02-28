Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 754E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 10:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gloCjWCLmUFr/nwofB5A4UMJXd3eOfVZ1J5+1PZQFL8=; b=t+cha1cc3n5FVI
	Dl4j2K24ULi1rewwqHyi/b9X96gIVeTJzKWjLvTztgigiZlIb5f0HiSr+q9dPrfljSS0AX3H3MzoO
	A3q5KrIZdX/nGEZhzhMcfML1KLREVuCSfQWlOiYLVfJxhN2D9fjfFoglK/n3MjLgw35xNoe1GxDLs
	QEL3xO5GJLc09VJd0ra7KIqdyze0m5zK54HoJokI0svRMsclnDhHaWOZYK/iD/1g9jP23u6ErBfWL
	ih2PLvq8hzRzMeaLd6VOKynyOAjJBOwK7WFm/rSj9ly16YmP3ahq0ql4tJQvJ1GpPrYzI48QbwrVb
	Df6zkKJcj9aBuTuWxxYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcxn-00BREh-R0; Mon, 28 Feb 2022 10:09:07 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcxX-00BR8r-Kz
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 10:08:54 +0000
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4D9DB3F33A
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 10:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646042930;
 bh=zeytxqj89B4wWgWM9iFuiNH1LQkDtmr7mVHFnE8qblM=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=UTfzIoJuu3eXF9nUe7gK7DVDz1WMl2yhiKYqtFBAne9PHta8XPQEnGCFYxbFXwW3N
 nwFgTs2EuonMoHaTFQBVGN5Ij9p9Ax7pMggJfAj8lMrw43/w28xN+SbHjFxeyCfKkK
 vDtPjuguYJpP2yh02MmvUmlj0C9wG4EQWm9/jKHYxAIVvTPHEjloCMGchqi0or1Hk1
 nwvGIM6YzNjU4Uqg5YkZfq9v7qADo68WIoVOdWfbHHfsEIEr4GqHDZI5sBbK28YwLV
 n4Jtw1TPVa4BkS63rICAu80AmyAZxtWDm2kEIX+2PZ+VZ9rj/TGc8Vuj6KIgipLyxH
 w7pJ19rU+jdRA==
Received: by mail-wm1-f72.google.com with SMTP id
 n31-20020a05600c3b9f00b003812242973aso5847778wms.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 02:08:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zeytxqj89B4wWgWM9iFuiNH1LQkDtmr7mVHFnE8qblM=;
 b=ye+r1GV/auwTBBi81eJfi2DOpY8rw9vrfF+lwfBqe27bBEAcj/Ol/ExwHpVySM35DZ
 C+7f94I48jCuiSlLjckXf+BUg/KFB1EhGhZtxC00wXMWeUueT5G/Gpmr9mRd0NjXBzev
 vtUhk8mcxG02JDZIMsNZ2IF0AjFpBPqgQCtzB+spOZ8q/XJRNRHziCBNkC8+wqvrwrA5
 1/G3wM66/v/HrFVR9Bjw4/jRU3FxiE3R16k/Ra8AQSewMfWOuOBAZmidhu50je/+zRfE
 jhqZWFFK/6bCQlxCazkhq3kmeosmi72bK0s3ImukUqVSb50o6AwFVTseDDgMahc19Rwd
 x/tA==
X-Gm-Message-State: AOAM5301YI0xm7xWO3N6jXPHKGKFPT+qVz8uNhIeCP0vtDyFcGkI92Sl
 U+IYrJPxylJMeODG6CTz6x9Ba2u1NBFj8x+42QKScyOPB+V3ur+Ae8ZNPZFKjJxDW0k0/hzVzFd
 LsRBzwv3X77pwExviKJmBXuqaVPn0aXg1ArS53ETD4L6D/57f+w==
X-Received: by 2002:a05:600c:19c9:b0:352:d507:9e89 with SMTP id
 u9-20020a05600c19c900b00352d5079e89mr12512242wmq.92.1646042928765; 
 Mon, 28 Feb 2022 02:08:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxDBpSWwelPv9Dy4do6twFWKimpbqcHI9oqyUb42pYM64Ru1t6WTl+2so5CKxbC0zA9NYVF2Q==
X-Received: by 2002:a05:600c:19c9:b0:352:d507:9e89 with SMTP id
 u9-20020a05600c19c900b00352d5079e89mr12512225wmq.92.1646042928544; 
 Mon, 28 Feb 2022 02:08:48 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 s3-20020a5d4ec3000000b001ea95eba44dsm9842149wrv.109.2022.02.28.02.08.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 02:08:47 -0800 (PST)
Message-ID: <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
Date: Mon, 28 Feb 2022 11:08:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/3] dt-bindings: Convert ahci-platform DT bindings to
 yaml
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>,
 "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227182800.275572-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_020852_003714_9ED81A28 
X-CRM114-Status: GOOD (  38.97  )
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

On 27/02/2022 19:27, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Create a yaml file for dtbs_check from the old txt binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v3:
>   - add conversion to sata-series
>   - fix some errors in dt_binding_check and dtbs_check
>   - move to unevaluated properties = false

You missed devicetree mailing list (corrupted address).

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
> 
> ====================================================================
> 
> arch/arm64/boot/dts/broadcom/northstar2
> ns2-svk.dt.yaml:
> ns2-xmc.dt.yaml:
>   ahci@663f2000:
>     $nodename:0: 'ahci@663f2000' does not match '^sata(@.*)?$'
> 
>     Unevaluated properties are not allowed
>     ('reg-names', '#address-cells', '#size-cells' were unexpected)
> ---
>  .../devicetree/bindings/ata/ahci-platform.txt |  79 ----------
>  .../bindings/ata/ahci-platform.yaml           | 140 ++++++++++++++++++
>  2 files changed, 140 insertions(+), 79 deletions(-)
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
> index 000000000000..cc246b312c59
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> @@ -0,0 +1,140 @@
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
> +properties:
> +  compatible:
> +    contains:
> +      enum:
> +        - brcm,iproc-ahci
> +        - cavium,octeon-7130-ahci
> +        - generic-ahci
> +        - hisilicon,hisi-ahci
> +        - ibm,476gtr-ahci
> +        - marvell,armada-380-ahci
> +        - marvell,armada-3700-ahci

Order entries alphabetically.

> +        - snps,dwc-ahci
> +        - snps,spear-ahci

You converted the TXT bindings explicitly, but you missed the comment
just below the 'reg' about generic-ahci. The generic-ahci never comes alone.

The snps,dwc-ahci could come, although history shows that Synapsys
blocks are commonly re-used and they should have specific compatible.
Current users still have single snps,dwc-ahci, so it could be fixed a
bit later.

On the other hand, I expect to fix all the DTS in the same series where
the bindings are corrected.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3

Items should be described. Next or this patch could add also clock-names.

> +
> +  interrupts:
> +    minItems: 1

You mean maxItems?

> +
> +  ahci-supply:
> +    description:
> +      regulator for AHCI controller
> +
> +  dma-coherent:
> +    description:
> +      Present if dma operations are coherent

Skip description, it's obvious. Just 'true'.

> +
> +  phy-supply:
> +    description:
> +      regulator for PHY power
> +
> +  phys:
> +    minItems: 1

maxItems?
> +
> +  phy-names:
> +    minItems: 1

Describe the items.

> +
> +  ports-implemented:
> +    description:
> +      Mask that indicates which ports that the HBA supports
> +      are available for software to use. Useful if PORTS_IMPL
> +      is not programmed by the BIOS, which is true with
> +      some embedded SoCs.
> +    minItems: 1

You need a type and maxItems.

> +
> +  resets:
> +    minItems: 1

maxItems?

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
> +  "^sata-port@[0-9]+$":

You limit number of ports to 10. On purpose? What about 0xa? 0xb?

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

maxItems? Why do you put everywhere minItems? Are several phys really
expected?

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
> +allOf:
> +- $ref: "sata-common.yaml#"

This goes before properties.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +        sata@ffe08000 {

Wrong indentation. It starts just below |

> +               compatible = "snps,spear-ahci";
> +               reg = <0xffe08000 0x1000>;
> +               interrupts = <115>;
> +        };
> +  - |
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        #include <dt-bindings/clock/berlin2q.h>
> +        sata@f7e90000 {
> +                compatible = "marvell,berlin2q-achi", "generic-ahci";

This clearly won't pass your checks. I don't think you run
dt_binding_check. You must test your bindings first.

> +                reg = <0xe90000 0x1000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&chip CLKID_SATA>;
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                sata0: sata-port@0 {
> +                        reg = <0>;
> +                        phys = <&sata_phy 0>;
> +                        target-supply = <&reg_sata0>;
> +                };
> +
> +                sata1: sata-port@1 {
> +                        reg = <1>;
> +                        phys = <&sata_phy 1>;
> +                        target-supply = <&reg_sata1>;
> +                };
> +        };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
