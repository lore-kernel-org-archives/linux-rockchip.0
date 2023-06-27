Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25590EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 12:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOWcPD6M/HdIrShaRAuOUObb2aaZzym4+aA7N+DcGjk=; b=LLcYEG1axYRepp
	6+DfTRdgN/gobFWJgxEiTWT8ovyUn05ycQ2YLgtmZ1PjtygkdQNLFdwyPHVhyKNjOOQPdoHT+fdLi
	AQ6oDatW9ooXluDwuhKBOEQPWvMDod73bEfyX7qo6q+Ok9ByPTIM4Zfq3zvekpPM+85jzGPwed3dP
	H9q0SP7EtYSh/OXbm/+x9VhZEwfDzoE6QZUEkteR1vLqPioNdGYqd+2P9XbChrf3oqI4o6cmLoB7X
	0Z/jHNM2/e0qjHRycJfC5gJHe8NnJIKF6t337Zrzz7HgPDLBzL6EFKO1TgHJtjwCjdsTqvGaA/MT3
	H0DeXKPkS1GkN5GvY/hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE7nK-00D9oS-1b;
	Tue, 27 Jun 2023 12:27:42 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE7nI-00D9nm-0d;
	Tue, 27 Jun 2023 12:27:41 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f957a45b10so5940021e87.0;
        Tue, 27 Jun 2023 05:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687868857; x=1690460857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/mJ6hmMqZhxuz4ikK9p02Uw9j7Tjh09y+Fhxu+CmDd0=;
        b=g7/qXappm38Acrg/PZ0xRgRoQ3mCx1qsch84FzZiz0+ESXVwyVvu0z2Enl0IUKaV7q
         htbU0CT+SB72XpCXIx9lbP4XQQLlU17TNyj2kntCazzzgyq9M848oSBjxMchkT4pu7D6
         jX16cc3QTMWWngPQZNfjmA6Ov0RcvBC4lTH/+eNY8EtGfO3vm7P8Ewj30/vqZT1jSbqe
         SghKEgS4XuQ8s9D7h2UWGFi90tL/tO9lGbJkQA9/v/ASX7R0kQA2ESQLQwKsg9XiZqZZ
         D9+heArI2amw08vNLl5A4iZvijcabNbhSpv5EluoNAZf+7hyXoJR7H0PYqj4ryjGNeS0
         o9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687868857; x=1690460857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mJ6hmMqZhxuz4ikK9p02Uw9j7Tjh09y+Fhxu+CmDd0=;
        b=bAox2Ie/D1ARLyoBtVxl6krdTFxkkQPIxZA0jfFtFTu7Z08wrHZSh3iDMv+5HSevhZ
         5ku1VfE7ruYJHEh56NHj+x+Vs4/ma1jrvvUccpIop9nERuJSWkj9EHFm8QjPxCfr3Oio
         VLD1qDST6oJ8eUXtXDX/6SFWsj/a63xcPOEr10COc2IJ7P+RhrY0hiftDSAT1aboy5Va
         a+j8OHqj+CGyZ3jCfg6/kV4vvdJUj35hnzF7APpivfw8pTZkuiMFSRM07ZB3UiUgxSsM
         Ugl0n54evTMn4ZcycHgYBo6G7jc/zSkvs1gS2GD2YHZ54SmauCKUn2c5GZ+UzCEmN4aj
         s+Aw==
X-Gm-Message-State: AC+VfDzmQLIaDJVVYdK3O51zR7dcgijY8aF/XMQgaACuNaHxYLApQ+c1
	EfdLAqP7VgOeDIb0bGdbbPw=
X-Google-Smtp-Source: ACHHUZ7uudNcbmp+pqAQlJxTbbL5JTe7kns0LAL50bO2FeUNhAtc/IXEvtiJbz5XUijjmrozJAEi1w==
X-Received: by 2002:a19:4355:0:b0:4f8:5635:2cd8 with SMTP id m21-20020a194355000000b004f856352cd8mr16940533lfj.32.1687868856658;
        Tue, 27 Jun 2023 05:27:36 -0700 (PDT)
Received: from mobilestation ([109.194.233.142])
        by smtp.gmail.com with ESMTPSA id y10-20020ac255aa000000b004f842478f9asm1492318lfg.88.2023.06.27.05.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 05:27:35 -0700 (PDT)
Date: Tue, 27 Jun 2023 15:27:33 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 1/4] dt-bindings: PCI: dwc: rockchip: Fix
 interrupt-names issue
Message-ID: <n5vgfnqicq3ndgqtcp3yjurbdn76vucj6zyjhlpjbdwoquv2la@5g5kv5gceyd7>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_052740_260441_B9552D1A 
X-CRM114-Status: GOOD (  25.79  )
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

On Fri, Jun 16, 2023 at 07:00:19PM +0200, Sebastian Reichel wrote:
> The RK356x (and RK3588) have 5 ganged interrupts. For example the
> "legacy" interrupt combines "inta/intb/intc/intd" with a register
> providing the details.
> 
> Currently the binding is not specifying these interrupts resulting
> in a bunch of errors for all rk356x boards using PCIe.
> 
> Fix this by specifying the interrupts and add them to the example
> to prevent regressions.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml         | 18 ++++++++++++++++++
>  .../devicetree/bindings/pci/snps,dw-pcie.yaml  | 15 ++++++++++++++-
>  2 files changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 24c88942e59e..98e45d2d8dfe 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -56,6 +56,17 @@ properties:
>        - const: pclk
>        - const: aux
>  
> +  interrupts:
> +    maxItems: 5
> +
> +  interrupt-names:
> +    items:
> +      - const: sys
> +      - const: pmc
> +      - const: msg
> +      - const: legacy
> +      - const: err
> +
>    msi-map: true
>  
>    num-lanes: true
> @@ -98,6 +109,7 @@ unevaluatedProperties: false
>  
>  examples:
>    - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
>      bus {
>          #address-cells = <2>;
> @@ -117,6 +129,12 @@ examples:
>                            "aclk_dbi", "pclk",
>                            "aux";
>              device_type = "pci";
> +            interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "sys", "pmc", "msg", "legacy", "err";
>              linux,pci-domain = <2>;
>              max-link-speed = <2>;
>              msi-map = <0x2000 &its 0x2000 0x1000>;
> diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> index 1a83f0f65f19..9f605eb297f5 100644
> --- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> @@ -193,9 +193,22 @@ properties:
>            oneOf:
>              - description: See native "app" IRQ for details
>                enum: [ intr ]

The IRQs below are either combined version of the already defined IRQs
or just the generic DW PCIe IRQs but named differently. Moreover I
don't see kernel using any of them except the "legacy" interrupt. What
about converting the dts files to using the already defined names instead
of extending the already over-diverged DT-bindings?
Rob, Krzysztof?

In anyway in order to prevent from defining the new DW PCIe bindings
compatible with your vendor-specific names please move the aliases to
being under the last entry of the "interrupt-names" items property.
(See the "intr" IRQ name for example or the way the vendor-specific
names are defined in the reg-names property.)

> +        - description: Combined Legacy A/B/C/D interrupt signal.
> +          const: legacy

This is a combined signal of "^int(a|b|c|d)$". So the entry
is supposed to look:
+              - description: See native "int*" IRQ for details
+                const: legacy

> +        - description: Combined System interrupt signal.
> +          const: sys

This seems like the "app" interrupt. So please either convert the dts
file to using the "app" name or move this to being defined in the same
entry as the "intr" name.

> +        - description: Combined Power Management interrupt signal.
> +          const: pmc

This is an alias to the already defined "pme" name. So either convert
the dts file to using "pme" or move this to being in the
vendor-specific list of the "interrupt-names" property:
+              - description: See native "pme" IRQ for details
+                const: pmc

> +        - description: Combined Message Received interrupt signal.
> +          const: msg

ditto but with respect to the "msi" name.

> +        - description: Combined Error interrupt signal.
> +          const: err

ditto but with respect to the "sft_*" name.

> +
>      allOf:
>        - contains:
> -          const: msi
> +          enum:
> +            - msi
> +            - msg

* Please see my suggestion about converting the DTS file instead.

-Serge(y)

>  
>  additionalProperties: true
>  
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
