Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8006C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 20:35:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3F75361107
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 20:35:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3F75361107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RJ2FzW/Gxp1Hp9J3BIrhIRWjxHJ3z1RUU6bYdx2jY7E=; b=jhG2Ho5A4d5ECRJFT3+dew7+o
	Vdtk/WfkKOi9Oo8P4VqiVg3O/KS/uk7E9au0BykQu/dhoC3bsESpcGHZrbzHBReQPzlH7EH3P8Ib9
	EzJ5DCwNABe8+Z3f7G8uWNdZCFAMqcKeJtL2PPNHoeegsJPTXqlczpSSXJjHTkQESk/6aCRfcNaFY
	egUS4lpgXAVneafzmJEEfsaALBs2BQXEF/e/uCInX0sgBGLyOLH0/+bto0Xrubfz8HN9nu1QHnsFt
	dLjupk4t1QSB7nQBrnrjAO9jpAuMrDEZMXM9BnMNSvBAlPlHpTXWnI7lrAzHZMFW76oDQ9RnJ567d
	jm1KkpW4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lekij-005GxK-KA; Thu, 06 May 2021 20:35:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lekiT-005GuI-Jl; Thu, 06 May 2021 20:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=onrgqNhsc6VTUYv6U1qfk40eTxmzLwGljQWarb0zJmY=; b=b9d0NFhUnPksHDiQwbTT7x+L9B
 f0of3xb3gaztSuJJkF3Fqrz5u1PnDICmwVCeb0Rw/SpmdfzTgh2BlNFoNzj9+BsiTHV4ta5tybX4g
 gYVNTgDPCnPEzDBTVHxMxvNvrA6hKJLgxz7oWsD56yzH7rvyumknAZDoOSAlueCSkGPZZI4q4UazN
 bt7lsqxwHjGY/yhqT+PgtGJMblvjYlu+M9cP4rgb6mKt05ZbCXsNDt+NL1ceV17+Bf3gi92iyXujD
 LG5suk0F9CnptWpbaLCTPTnoaxkVT5yqUgGA0WlPOqnaHhy96t5L3pHsar+c/OsUwaELSyYFJu58n
 17sx+axQ==;
Received: from mail-oo1-f48.google.com ([209.85.161.48])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lekiQ-006NND-FI; Thu, 06 May 2021 20:35:24 +0000
Received: by mail-oo1-f48.google.com with SMTP id
 c12-20020a4ae24c0000b02901bad05f40e4so1537000oot.4; 
 Thu, 06 May 2021 13:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=onrgqNhsc6VTUYv6U1qfk40eTxmzLwGljQWarb0zJmY=;
 b=H9NsUXcpQTwkhKH71GEDsotVpczrkWwTo+YnPiTLx5ntWFjFWEuvJjv+DkR6pWo+KB
 dBoPbQFw0ObVr18p7o06lJzOyS2Zpff70lULuFdC4WG2ACR/uz8xcV0ow+l6NOl9bMd/
 JzrxolFqxbKgufIoYYB3uIKpuGx3egypTgH69Ff+tFiEZL3VKm2Dsuk9cDJ/fziH3ixk
 Ml2U9Lx75EW5u2NwMDHyB2mruDKCBvBmOD9HVfGAgyScLu6jR5GcoXGih9IQu+eJH9Q6
 drouLaMXfqngZU0sT01IOe4cHGhQJbFXRc9xQu0ERZ8fk9h4Zg/D0rWK3yBNZ/aYx1LZ
 owog==
X-Gm-Message-State: AOAM533BNTCa1fat2w1D7Eb7HgC6Uft28p9GRrvHYUcTD7Yu5D2cEqpz
 dLHm1www5JklEzvOmUSnzD1+pl415Q==
X-Google-Smtp-Source: ABdhPJxC+96lwNJ6hOaKSxCJ2EIvAf6AIHpT5UmpFzFPB2Ee5lOKBHu+ZStfrF/jlLvXdGUVCBj/FQ==
X-Received: by 2002:a4a:dc84:: with SMTP id g4mr5012064oou.24.1620333321458;
 Thu, 06 May 2021 13:35:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h59sm787947otb.29.2021.05.06.13.35.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 13:35:20 -0700 (PDT)
Received: (nullmailer pid 758912 invoked by uid 1000);
 Thu, 06 May 2021 20:35:19 -0000
Date: Thu, 6 May 2021 15:35:19 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, heiko@sntech.de, xxm@rock-chips.com,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/4] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
Message-ID: <20210506203519.GA754007@robh.at.kernel.org>
References: <20210504084124.131884-1-benjamin.gaignard@collabora.com>
 <20210504084124.131884-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210504084124.131884-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_133522_540115_780CD8D5 
X-CRM114-Status: GOOD (  25.04  )
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

On Tue, May 04, 2021 at 10:41:21AM +0200, Benjamin Gaignard wrote:
> Convert Rockchip IOMMU to DT schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
>  - Change maintainer
>  - Change reg maxItems
>  - Change interrupt maxItems
> 
>  .../bindings/iommu/rockchip,iommu.txt         | 38 ---------
>  .../bindings/iommu/rockchip,iommu.yaml        | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
>  create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt b/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
> deleted file mode 100644
> index 6ecefea1c6f9..000000000000
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -Rockchip IOMMU
> -==============
> -
> -A Rockchip DRM iommu translates io virtual addresses to physical addresses for
> -its master device.  Each slave device is bound to a single master device, and
> -shares its clocks, power domain and irq.
> -
> -Required properties:
> -- compatible      : Should be "rockchip,iommu"
> -- reg             : Address space for the configuration registers
> -- interrupts      : Interrupt specifier for the IOMMU instance
> -- interrupt-names : Interrupt name for the IOMMU instance
> -- #iommu-cells    : Should be <0>.  This indicates the iommu is a
> -                    "single-master" device, and needs no additional information
> -                    to associate with its master device.  See:
> -                    Documentation/devicetree/bindings/iommu/iommu.txt
> -- clocks          : A list of clocks required for the IOMMU to be accessible by
> -                    the host CPU.
> -- clock-names     : Should contain the following:
> -	"iface" - Main peripheral bus clock (PCLK/HCL) (required)
> -	"aclk"  - AXI bus clock (required)
> -
> -Optional properties:
> -- rockchip,disable-mmu-reset : Don't use the mmu reset operation.
> -			       Some mmu instances may produce unexpected results
> -			       when the reset operation is used.
> -
> -Example:
> -
> -	vopl_mmu: iommu@ff940300 {
> -		compatible = "rockchip,iommu";
> -		reg = <0xff940300 0x100>;
> -		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names = "vopl_mmu";
> -		clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
> -		clock-names = "aclk", "iface";
> -		#iommu-cells = <0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> new file mode 100644
> index 000000000000..0db208cf724a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip IOMMU
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |+
> +  A Rockchip DRM iommu translates io virtual addresses to physical addresses for
> +  its master device. Each slave device is bound to a single master device and
> +  shares its clocks, power domain and irq.
> +
> +  For information on assigning IOMMU controller to its peripheral devices,
> +  see generic IOMMU bindings.
> +
> +properties:
> +  compatible:
> +    const: rockchip,iommu
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2

What's the 2nd entry? If there's only 1 entry, then you don't have to 
describe what it is. If more than 1, then each entry has to be defined.

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2

Same here, though if interrupt-names defines them, that's good enough.

> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 2

Here we need the values.

> +
> +  clocks:
> +    items:
> +      - description: Core clock
> +      - description: Interface clock
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: iface
> +
> +  "#iommu-cells":
> +    const: 0
> +
> +  rockchip,disable-mmu-reset:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |
> +      Do not use the mmu reset operation.
> +      Some mmu instances may produce unexpected results
> +      when the reset operation is used.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - "#iommu-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vopl_mmu: iommu@ff940300 {
> +      compatible = "rockchip,iommu";
> +      reg = <0xff940300 0x100>;
> +      interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> +      interrupt-names = "vopl_mmu";
> +      clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
> +      clock-names = "aclk", "iface";
> +      #iommu-cells = <0>;
> +    };
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
