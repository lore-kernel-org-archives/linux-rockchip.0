Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E09BC7EE2E
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jun 2023 20:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O26PmA8kMmcU25E+kdIpMI+VTAgOwux8yB22j0iKa+Q=; b=Lpi2+X1zXu/AX/
	vatrAVfQqVNP10xTpkbaZ+bvXmFP0bJlJEkZDfT0lD21PjmtcJYNWRGIikC8SCn7CZXyGb+gzk7gj
	SR5o1+TAQVDVRyuJGJluYWvh30CcyzfA9yV9zso4aMhEHNb0rg/FV8VDQaJCJ4yA5NJ/1nz3zWWbg
	szk/kekQc2dPUh1UdLm2PAQQ8I3KVkU+Ap3jHE4wJwP60fLJmuX90U4vdKwOuhLna6jy6Bww0vAeL
	FJIYS0fD7CvnOYrz07tWmaJLjSQO6Cp1uG+Vkx/yzM7TpexSfP/r+MM6YAc4/wEVf5KstXx3GBpPq
	XqfA7xKnQCOasWe3pdAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8Rwc-001jhA-35;
	Sun, 11 Jun 2023 20:45:50 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8RwZ-001jgW-1O;
	Sun, 11 Jun 2023 20:45:49 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f122ff663eso4131849e87.2;
        Sun, 11 Jun 2023 13:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686516345; x=1689108345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SDPR0lN37/Etf4z1x/Vv5z7Cy0H7kYZQC284wUTIpW0=;
        b=i0AfpQbeRHTGPvbhmR7vj1YhJ7wDpiZiAxYZWjj8qv2SGWX0HRvtZgx53Pxq6aeMme
         oknN4v3BbtvZGNUmmjBWJv655/C/Mj8/44wvVtNtiX5Zsv9Ww9ODOmqraM6LY//jyWjg
         ZHJxgBbzaZSUmI1qoeg8GZNN5WoKmbz5rBRL8PlcO9vthFDmCouCAmqzmknOL2DRsOeL
         /Gg39P6pv4x+vaigZ3bZ+cmvMqZ4xIntrLaEhIsKZSOte8ngwebKrAnOb6xrIwqqm3UA
         ENQw4TpGBRGGNMG7i1wPx62qXt2tcpRY6m0cVi+8PGP7Tg/CjUZX4HI1Aj3gRwPLHEKQ
         445w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686516345; x=1689108345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDPR0lN37/Etf4z1x/Vv5z7Cy0H7kYZQC284wUTIpW0=;
        b=JXmVqDJcBvdAi9qVtrOnLiddjWG1fcCNiQcRaOh3GKDj3opV0HiwFokszDR6sVetyk
         LdKXnssWqI1KxkV5oHn/fp/Kh0+zXVNC/stk/OUbpUEyMu7VCr6jXYglu5hex6knWbL1
         KkhWV2KpoEaTC6rZbOH577xbmWquTPhFPLR3cdh6vvYzsqmHECGrqDD/0xdF0pplwlQS
         1Fepck9KfYpaOVh6HKE7iXOPCP+W0RIKWTlJBWOKv1p78/cD3PQiEP0uTDVlo6Wyd3ft
         D7QwWqG+kI0ZvmyIH5F9Y7AVqbtU6Ybe6QfkWGIqzdqVYqEZeSHPi7rvNq2PjjkfypvB
         dglA==
X-Gm-Message-State: AC+VfDzs4sp31oI5rVkhtog6Dvf9J5qK9zuYLlx9rFuY9qMf3qzQtGLI
	EnpqqVIXshyAQeeQ+Zu/6rs=
X-Google-Smtp-Source: ACHHUZ6PE4nh1WmokN2W3/3wflfgSUrc+lo6azZRPeMKZg2a89HzQF1TLUulutIQKQegouQsi4GtMg==
X-Received: by 2002:ac2:5928:0:b0:4f4:7afe:c36 with SMTP id v8-20020ac25928000000b004f47afe0c36mr3364719lfi.10.1686516344956;
        Sun, 11 Jun 2023 13:45:44 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id v16-20020ac25930000000b004f63dd1dab0sm1235673lfi.98.2023.06.11.13.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jun 2023 13:45:44 -0700 (PDT)
Date: Sun, 11 Jun 2023 23:45:41 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Message-ID: <20230611204541.ml3ekvsj4qnlmc2s@mobilestation>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230608162238.50078-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_134547_468069_79E236DA 
X-CRM114-Status: GOOD (  21.31  )
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

On Thu, Jun 08, 2023 at 06:22:35PM +0200, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/ata/rockchip,dwc-ahci.yaml       | 114 ++++++++++++++++++
>  .../bindings/ata/snps,dwc-ahci.yaml           |  17 ++-
>  2 files changed, 125 insertions(+), 6 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> new file mode 100644
> index 000000000000..86da9bd594a7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> @@ -0,0 +1,114 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DWC AHCI SATA controller for Rockchip devices
> +
> +maintainers:
> +  - Serge Semin <fancer.lancer@gmail.com>
> +
> +description:
> +  This document defines device tree bindings for the Synopsys DWC
> +  implementation of the AHCI SATA controller found in Rockchip
> +  devices.
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rockchip,rk3568-dwc-ahci
> +          - rockchip,rk3588-dwc-ahci
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3568-dwc-ahci
> +          - rockchip,rk3588-dwc-ahci
> +      - const: snps,dwc-ahci
> +
> +  ports-implemented:
> +    const: 1
> +
> +patternProperties:

> +  "^sata-port@[0-9a-e]$":
> +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
> +

What about adding the "reg" property constraints? Seeing the
"ports-implemented" property is supposed to be "1" the "reg" property
should be zero for all the Rockchip AHCI SATA controllers. Right?

> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ports-implemented
> +
> +allOf:
> +  - $ref: snps,dwc-ahci-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3588-dwc-ahci
> +    then:
> +      properties:

> +        clock-names:
> +          items:
> +            - const: sata
> +            - const: pmalive
> +            - const: rxoob
> +            - const: ref
> +            - const: asic

The "clocks" property constraints could have been added too. Right?

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3568-dwc-ahci
> +    then:
> +      properties:

> +        clock-names:
> +          items:
> +            - const: sata
> +            - const: pmalive
> +            - const: rxoob

ditto

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/ata/ahci.h>
> +    #include <dt-bindings/phy/phy.h>
> +
> +    sata@fe210000 {
> +      compatible = "rockchip,rk3588-dwc-ahci", "snps,dwc-ahci";
> +      reg = <0xfe210000 0x1000>;
> +      clocks = <&cru ACLK_SATA0>, <&cru CLK_PMALIVE0>,
> +               <&cru CLK_RXOOB0>, <&cru CLK_PIPEPHY0_REF>,
> +               <&cru CLK_PIPEPHY0_PIPE_ASIC_G>;
> +      clock-names = "sata", "pmalive", "rxoob", "ref", "asic";
> +      interrupts = <GIC_SPI 273 IRQ_TYPE_LEVEL_HIGH 0>;
> +      ports-implemented = <0x1>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      sata-port@0 {
> +        reg = <0>;
> +        hba-port-cap = <HBA_PORT_FBSCP>;
> +        phys = <&combphy0_ps PHY_TYPE_SATA>;
> +        phy-names = "sata-phy";
> +        snps,rx-ts-max = <32>;
> +        snps,tx-ts-max = <32>;
> +      };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> index 5afa4b57ce20..55a4bdfa3d9a 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> @@ -13,8 +13,14 @@ description:
>    This document defines device tree bindings for the generic Synopsys DWC
>    implementation of the AHCI SATA controller.
>  

> -allOf:
> -  - $ref: snps,dwc-ahci-common.yaml#
> +select:
> +  properties:
> +    compatible:
> +      enum:
> +        - snps,dwc-ahci
> +        - snps,spear-ahci
> +  required:
> +    - compatible

Please don't move the allOf property. It's ok to have it defined above
the object properties clause if it has just a few ref-statements.

* Also make sure please that the "select" property is defined above
the "allOf" schema composition.

-Serge(y)

>  
>  properties:
>    compatible:
> @@ -23,10 +29,6 @@ properties:
>          const: snps,dwc-ahci
>        - description: SPEAr1340 AHCI SATA device
>          const: snps,spear-ahci
> -      - description: Rockhip RK3568 AHCI controller
> -        items:
> -          - const: rockchip,rk3568-dwc-ahci
> -          - const: snps,dwc-ahci
>  
>  patternProperties:
>    "^sata-port@[0-9a-e]$":
> @@ -39,6 +41,9 @@ required:
>    - reg
>    - interrupts
>  
> +allOf:
> +  - $ref: snps,dwc-ahci-common.yaml#
> +
>  unevaluatedProperties: false
>  
>  examples:
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
