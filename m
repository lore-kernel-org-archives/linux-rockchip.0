Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59388C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 13:14:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FB626101B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 13:14:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8FB626101B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yszGOZ98y7jVc3vlCZ0lDtpjzlFr3mhmYtmnnSk+hJA=; b=NyszLRi7kywWIb8CJXLcqDjhG
	h1hvipTMgJm0EnFdEqqUNqODR6RCulc4m3WPJRSgSw6Bgh9PXf3x1IUarrpnYL7yC4ZcKSwpyM25x
	qE+FtxeXbYyju2mZVmjxVlrCLnJJcgqCJakOGiBeqhDU3agVoJ7dYM6F9/LV7TJ4Xc7VNAmZGOMkx
	y5Q7/8Hfgx2Jauw6ko2yQmOiD8YewKUHXKBiyLr/gVes0npUo8+BXXbYdkQpc42gH4UA0Kpf5eb0+
	6Fwh3xFqhtiIEa4utJ0GQ7xVwmN2Ud4BWGR9dKKq6VvoBKaqPXcvJKum3ht2z33HOIuwPdskExdDH
	OKMXWoooA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZZ9W-00Gmq9-5w; Thu, 22 Apr 2021 13:13:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZZ9R-00Gmpc-1E; Thu, 22 Apr 2021 13:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=3hsr6lCLd7JFlK9taoygzcaxUpuGrqlvJuCbv9uQLPQ=; b=p+vlzOGZeRTOVxDY6nOROlGVBR
 iS4/SpvDXHbjStAVJyXXi4wi5g1Ud2Q1m3PUuR/N4MD+g+G99+74sQU7/WIqamQoY/fwF+GrNGlzv
 QgQwVaB/cHa+gdRba7WzADRtelRWe88txQB6ftbVu6rL7jNX5kiI48uyNXhWh4Nt6sbQ5KxUy1Nyc
 dkIKn7j7Bahq1vQ03h5+8PGb+cOQxqPFwtHpJY7Bh/n2u638Kw8oCIsf0GTODOFEllj+4eF7G5Ogw
 7YfI2bEDMlV2cDRVikyBGZMEKykvqqygRK+xkNRNzV2hcOR3hhFarNThHl9ebh3pF5vZ5HB1+a1Gz
 fUZFFcAQ==;
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZZ9N-00Dhwv-Ta; Thu, 22 Apr 2021 13:13:47 +0000
Received: by mail-ej1-x632.google.com with SMTP id r12so68735276ejr.5;
 Thu, 22 Apr 2021 06:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3hsr6lCLd7JFlK9taoygzcaxUpuGrqlvJuCbv9uQLPQ=;
 b=faywr3P7WFufLom1rX2WOmWEReYjumYY9+Q6qWzuIDUblJZ2Hxu+9YJPrj+Eikd4cf
 RHkz3e/YFfIXC6Us+iaAW/hnfF7gtQ4tegZIM1gbbESI19XyOjf+9s60ZhU4khOVRGSz
 TMU4rRlg+LNAyMKzX5rNrDsMZ6AA80QzwLWnt5ac/tggOvuZN901ZZ5Ah1lUv4DWXVUB
 1pRQyRooIodQOoPK0gLLq2miQkvc1pgNe82optlJgVzv+pSvAmJzpXJU5kYuuEE0BqEF
 XVYqJJZbvEGytp0OI/5zaAbSILvPtqeY+DNHFIALp6cCINm1R5CtzQXunT4f7g7+06PB
 n9fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3hsr6lCLd7JFlK9taoygzcaxUpuGrqlvJuCbv9uQLPQ=;
 b=fujDHDWTG7xZsQAqQj6iMKeLO6Bi+XlPkqrGefVyKNoisXgcrz/eXUuHhjqT7LK2Hr
 7raGNXnvdQOLSkKlrGlys9Sg2jxXsScfGU1sri9thlGUyp629QXT56MbCTC6bVBj0GDs
 5Ut1vlpa2BJJ5iL19D8cexM+JPGM7QrHS/KYx2DxBo67Ox++LRseQ18MMHCQjk0Bv2Bp
 9Wt/cdqi+OtXNTWXRIzKHNYfhvpFjCCr54TnsR0M9k/acgslTWQwMqLPzTHuLxbPzKuR
 xk3yCSDrH+noqdv2FAkJWS+602ZY+d6p1VlzS8tNxV9DPie76hdXmltXsZbccyNIJcZW
 Sm+g==
X-Gm-Message-State: AOAM531lRzeIB6K1VdDndGyb7dCTXz5a+2V7rbewrAgs6hSEbDRmBDgl
 tzI3Q2B3YNgq1MXUVtmP5Ryl2O3M9ggLXNUa
X-Google-Smtp-Source: ABdhPJzXCfbHhFUzaYpljXPt1Ch/X5HDXhU8dNkH2BmhotD1eZOoiPgxt8o6p0gUe9CTiF8IOY5I3g==
X-Received: by 2002:a17:906:a449:: with SMTP id
 cb9mr3312469ejb.118.1619097222388; 
 Thu, 22 Apr 2021 06:13:42 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 f22sm1828519ejr.35.2021.04.22.06.13.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 06:13:41 -0700 (PDT)
Subject: Re: [PATCH 1/3] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, robh+dt@kernel.org, heiko@sntech.de, xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210422072442.111070-1-benjamin.gaignard@collabora.com>
 <20210422072442.111070-2-benjamin.gaignard@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c2087946-0dfb-b66e-bcb9-5bba5fd098bf@gmail.com>
Date: Thu, 22 Apr 2021 15:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210422072442.111070-2-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_061346_000729_F6120BF6 
X-CRM114-Status: GOOD (  26.13  )
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

Hi Benjamin,

Please check robh/dtbs-check failed build log at

https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210422072442.111070-2-benjamin.gaignard@collabora.com/

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml


make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

Test if all notifications are gone.

===

YAML also checks extra properties like "power-domains" not yet included
but needed for rk3568.
Add them in a separate patch.

===

rk3229-evb.dt.yaml: iommu@20030480: 'iommu-cells' does not match any of
the regexes

Change a rk322x.dtsi property to #iommu-cells in a separate patch.

===

rk3229-xms6.dt.yaml: iommu@20030480: reg: [[537068672, 64], [537068736,
64]] is too long

Change reg minItems maxItems.

===

Johan

On 4/22/21 9:24 AM, Benjamin Gaignard wrote:
> Convert Rockchip IOMMU to DT schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../bindings/iommu/rockchip,iommu.txt         | 38 ----------
>  .../bindings/iommu/rockchip,iommu.yaml        | 76 +++++++++++++++++++
>  2 files changed, 76 insertions(+), 38 deletions(-)
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
> index 000000000000..ab128f8e4c73
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -0,0 +1,76 @@

> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

GPL-2.0
This is a conversion of an existing document.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip IOMMU
> +
> +maintainers:
> +  - Simon Xue <xxm@rock-chips.com>

  - Heiko Stuebner <heiko@sntech.de>

Add someone that can respond in a short time in case rob+dt wants to
delete something.

> +
> +description: |+
> +  A Rockchip DRM iommu translates io virtual addresses to physical addresses for

> +  its master device. Each slave device is bound to a single master device, and

No comma "," before "and"

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

> +    maxItems: 1

minItems: 1
maxItems: 2


> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    maxItems: 1
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

  power-domains:
    maxItems: 1

Add in separate patch for review by rob+bt

> +  rockchip,disable-mmu-reset:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |

> +      Don't use the mmu reset operation.

Do not use ....

The use of "'" in a YAML description gives problems in some text
highlighters. Try to avoid.

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
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
