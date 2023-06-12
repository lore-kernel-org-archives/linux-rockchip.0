Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8CDAC7EE2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGb2MUIDv891E6MZR77Sr2hSlIDafnsQeQsNP7Ie42A=; b=1FapN2Qjmh6fiz
	iFl2co4ZZ+F/M42h2fL9O6Bb/G2rObg1Iz5rPPUmmgGSMyWTKY6s+rh4BTf9U8t+B98p0cLrDQQtQ
	qelHEA2kat+gCz3Ut+iyaQZ0OPj+Uz/6RKZJquBfLvmSCVN+XLCVDbXTt+xrwxjPfNDB3hjZBRMzS
	2a/wvU8KNJUGApSuWhEk59ET4xXI7bqmNJTjSR98DCnQV/pTPro9iJz5vEBnncCmfBZfUFwBfuqij
	hThf2UZxY57E58b2WCxAcTlrP2jXFsKIXkHQKF2HEpIOP/HYUNSF8hqlosSAM67RxEvG1ngu6DUwe
	udEbNKAQRKiwWKs1sYow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8nC7-00573T-2j;
	Mon, 12 Jun 2023 19:27:15 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8nC4-00571h-25;
	Mon, 12 Jun 2023 19:27:14 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f619c2ba18so5369379e87.1;
        Mon, 12 Jun 2023 12:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686598024; x=1689190024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ejV5kgx3hh37txIAYRNNYKvIriYQUHYrwXp8KRCJYl4=;
        b=LYER8swJIMWaeDGZ2hkjyJOD6ND8uFats/yvoPB7ibeB5ZjEBi5yxPSWnmn7dYoDy5
         9YzgYvQa/lmsZH27yWeAyaJHL6o6p/ATfvr/+QI/CvmWSa0LtzaDCFdVtcS4b8hLNmLs
         KC1DfDe23MY7B+edf2XG9ZSoVcT2hvmexqOIaXRiHdbRDzNhXeL6UNUXz/ihVnXM5RJ8
         zYolz5pt7aznawgMX4deagz9rt3FU3as8j2na+PvHllzryco963N80M+XQGuh4zcfZPT
         SYFEq99/wEqAgeId8wN2JeF5sOvL748sDNHQvBq/0c9PsxccdxokurM8rc6/hRKxbakb
         zRHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686598024; x=1689190024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ejV5kgx3hh37txIAYRNNYKvIriYQUHYrwXp8KRCJYl4=;
        b=RhN1upA4uUCC9B9+ly/a9gTiomPI3ExXACMj/T9b8x0PJCv1OpTNz2QCRUovUnnQRN
         PCvFFLDfuPKumUa1xsffGfpcwsYk3Vew8cXSa4tQYospupZxeQkGU3mrYBw3YHzlovpA
         W7sJgFdrkORUk/Yt6wwFgSrVSRB9vVPDPlwpZ/CbiZvmQW4sDka350so61zMkcoY+iT2
         ljunQT+Z5f5x/8fGPbk0AVemZuyaXE+DsMyHKXA8tcEfjvjJ0gy0+gSjaGeIx4UdJsBQ
         WS3Ibpfa8lp0e4s7HBEw8Y1IZ0AvBbNxgj59x+vhs3RLuozbBepGXeeiOki8nPtYAqfX
         mCGA==
X-Gm-Message-State: AC+VfDyEVSEp7uzeD3bD83i/6S5ZsXwf5anRd+LwNyf5Rp2jud8Ane+w
	LAolYwL2wnxcdApWFLU5DZ4=
X-Google-Smtp-Source: ACHHUZ6A6MkVpb+0rEzh/Ln9SlF8OV11QAdT0mkQWx0k205rKa35tH+XEtW7A0DwjsG6evJQCknNXw==
X-Received: by 2002:a05:6512:60f:b0:4f6:133e:a0ec with SMTP id b15-20020a056512060f00b004f6133ea0ecmr5130780lfe.25.1686598023507;
        Mon, 12 Jun 2023 12:27:03 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id n17-20020a195511000000b004f252a753e1sm1553756lfe.22.2023.06.12.12.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 12:27:02 -0700 (PDT)
Date: Mon, 12 Jun 2023 22:27:00 +0300
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
Subject: Re: [PATCH v4 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Message-ID: <20230612192700.nd5t4ekt6my5dqqo@mobilestation>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230612171337.74576-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_122712_712411_1479ACD5 
X-CRM114-Status: GOOD (  19.68  )
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

On Mon, Jun 12, 2023 at 07:13:34PM +0200, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Thanks. The patch now looks good.
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  .../bindings/ata/rockchip,dwc-ahci.yaml       | 124 ++++++++++++++++++
>  .../bindings/ata/snps,dwc-ahci.yaml           |  13 +-
>  2 files changed, 133 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> new file mode 100644
> index 000000000000..b5e5767d8698
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> @@ -0,0 +1,124 @@
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
> +  sata-port@0:
> +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
> +
> +    properties:
> +      reg:
> +        const: 0
> +
> +    unevaluatedProperties: false
> +
> +patternProperties:
> +  "^sata-port@[1-9a-e]$": false
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
> +        clocks:
> +          maxItems: 5
> +        clock-names:
> +          items:
> +            - const: sata
> +            - const: pmalive
> +            - const: rxoob
> +            - const: ref
> +            - const: asic
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3568-dwc-ahci
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: sata
> +            - const: pmalive
> +            - const: rxoob
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
> index 5afa4b57ce20..4c848fcb5a5d 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> @@ -13,6 +13,15 @@ description:
>    This document defines device tree bindings for the generic Synopsys DWC
>    implementation of the AHCI SATA controller.
>  
> +select:
> +  properties:
> +    compatible:
> +      enum:
> +        - snps,dwc-ahci
> +        - snps,spear-ahci
> +  required:
> +    - compatible
> +
>  allOf:
>    - $ref: snps,dwc-ahci-common.yaml#
>  
> @@ -23,10 +32,6 @@ properties:
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
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
