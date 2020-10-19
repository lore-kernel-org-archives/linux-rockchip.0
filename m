Return-Path: <SRS0=ZzQ+=D2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EE77C433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 20:01:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01F80222B8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 20:01:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YEYfPF+l"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 01F80222B8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vXF0sPRYqVHEJB8hNuJexoDc5Dy/+MffVGkXhTOU9Bg=; b=YEYfPF+lQUpUBHylePWgOwUNU
	1vcI5zu5pFlJvdNbHGOlwM4OxUQZTD0qDWmo++Qj9VX4NIj+rQDJBfM7Zr0j32vhndgCE1jEqP1md
	epi26prhVzPeMWdUT4KmVfS2ce48gQInAIzRm5PPLvQi4e8czCn3gp6oGEd+I4bldpb7GikcPt3ve
	mpf/2XTOdpDYZ25cRndVGGT4Qx3ySVQC2ntK22oHnz6CUQW12z/E/o6U3gQh2rRW3KEKfE/LjhVhK
	uN9rcm2lA13X1bcOrev28gBldKHAhZ3sgKqwo3NxDI4AjVeA+FUi1SCaqDgRn02M27MwMKUtCpYcX
	fgEBmf6fA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUbL6-0001hf-RL; Mon, 19 Oct 2020 20:01:04 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUbL0-0001fk-Q6; Mon, 19 Oct 2020 20:00:59 +0000
Received: by mail-ot1-f67.google.com with SMTP id l4so881953ota.7;
 Mon, 19 Oct 2020 13:00:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Da7ya6emMHC4LYDLkt7SqxYDT2kSeTgqpP+oqA7M45A=;
 b=TFXXsHHIGKcP8UHZ25WzhhxM5LQHQ2eZuV+v1QvuYym0/IilwAo9DsySPM/e1BWJtR
 KLuPez00qqHHgz7EOLIQv4HKjAbOMOxiDcXuB2ejaejHDK0EtR/2JAopGl6msojhRZ3/
 LqA4a6bqf9b6WjygL7lpIcBHbf4flzmOoENLgnvF8at1ozMM8sv3PM6NfjseGeLPY6CG
 lrbUzVv9LsXF25abq8Z8rmwXTdcjtDQ9Rnsg2TlrV2B2a+o9a9HUdP8AvfnQIJb6z0Dg
 wsMM6QbhATassfnwASeF1sYUXDYk6ehdSHdH/ZbwG+/QffNURh58Xet0hnpJA5kBX1G8
 NWZw==
X-Gm-Message-State: AOAM532nomzS5eIIDkjyJQGYq492lERNTJRNtecERyVk8EKRn5XoeaZt
 WjrD/h/QyWnqND3B5JMmBw==
X-Google-Smtp-Source: ABdhPJxMsLhO7PPQQEdGXUqCu/yMiGgrMSZWxreCIQDpQYjXxCREoewKO2+zDxOeRV56rpipzN5OGg==
X-Received: by 2002:a05:6830:1282:: with SMTP id
 z2mr1094401otp.301.1603137657384; 
 Mon, 19 Oct 2020 13:00:57 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e76sm216475oib.16.2020.10.19.13.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 13:00:56 -0700 (PDT)
Received: (nullmailer pid 3512358 invoked by uid 1000);
 Mon, 19 Oct 2020 20:00:55 -0000
Date: Mon, 19 Oct 2020 15:00:55 -0500
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v11 1/8] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Message-ID: <20201019200055.GB3508930@bogus>
References: <20201019083358.32621-1-yifeng.zhao@rock-chips.com>
 <20201019083358.32621-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019083358.32621-2-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201019_160058_932562_609783F2 
X-CRM114-Status: GOOD (  23.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, richard@nod.at,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Oct 19, 2020 at 04:33:55PM +0800, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> (no changes since v8)
> 
> Changes in v8:
> - Fix make dt_binding_check error
> 
> Changes in v7:
> - Fix some wrong define
> 
> Changes in v6:
> - Fix some wrong define
> - Modified the definition of compatible
> 
> Changes in v5:
> - Fix some wrong define.
> - Add boot-medium define.
> - Remove some compatible define.
> 
> Changes in v4:
> - The compatible define with rkxx_nfc.
> - Add assigned-clocks.
> - Fix some wrong defineChanges in.
> 
> Changes in v3:
> - Change the title for the dt-bindings.
> 
>  .../mtd/rockchip,nand-controller.yaml         | 162 ++++++++++++++++++
>  1 file changed, 162 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> new file mode 100644
> index 000000000000..b9d7a8c79402
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoCs NAND FLASH Controller (NFC)
> +
> +allOf:
> +  - $ref: "nand-controller.yaml#"
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,px30-nfc
> +      - const: rockchip,rk2928-nfc
> +      - const: rockchip,rv1108-nfc
> +      - items:
> +          - const: rockchip,rk3036-nfc
> +          - const: rockchip,rk2928-nfc
> +      - items:
> +          - const: rockchip,rk3308-nfc
> +          - const: rockchip,rv1108-nfc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: ahb
> +      - const: nfc
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^nand@[0-7]$":
> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +
> +      nand-ecc-mode:
> +        const: hw
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16, 24, 40, 60, 70]
> +        description:
> +          The ECC configurations that can be supported are as follows.
> +            NFC v600 ECC 16, 24, 40, 60
> +              RK2928, RK3066, RK3188
> +
> +            NFC v622 ECC 16, 24, 40, 60
> +              RK3036, RK3128
> +
> +            NFC v800 ECC 16
> +              RK3308, RV1108
> +
> +            NFC v900 ECC 16, 40, 60, 70
> +              RK3326, PX30

If you want this formatting preserved, you need a '|' after 
'description: '.

> +
> +      nand-bus-width:
> +        const: 8
> +
> +      rockchip,boot-blks:
> +        minimum: 2
> +        default: 16
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32

You can drop 'allOf' here now.

> +        description:
> +          The NFC driver need this information to select ECC
> +          algorithms supported by the boot ROM.
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +      rockchip,boot-ecc-strength:
> +        enum: [16, 24, 40, 60, 70]
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          If specified it indicates that a different BCH/ECC setting is
> +          supported by the boot ROM.
> +            NFC v600 ECC 16, 24
> +              RK2928, RK3066, RK3188
> +
> +            NFC v622 ECC 16, 24, 40, 60
> +              RK3036, RK3128
> +
> +            NFC v800 ECC 16
> +              RK3308, RV1108
> +
> +            NFC v900 ECC 16, 70
> +              RK3326, PX30
> +
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    nfc: nand-controller@ff4b0000 {
> +      compatible = "rockchip,rk3308-nfc",
> +                   "rockchip,rv1108-nfc";
> +      reg = <0xff4b0000 0x4000>;
> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
> +      clock-names = "ahb", "nfc";
> +      assigned-clocks = <&clks SCLK_NANDC>;
> +      assigned-clock-rates = <150000000>;
> +
> +      pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
> +                   &flash_rdn &flash_rdy &flash_wrn>;
> +      pinctrl-names = "default";
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      nand@0 {
> +        reg = <0>;
> +        label = "rk-nand";
> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-step-size = <1024>;
> +        nand-ecc-strength = <16>;
> +        nand-is-boot-medium;
> +        rockchip,boot-blks = <8>;
> +        rockchip,boot-ecc-strength = <16>;
> +      };
> +    };
> +
> +...
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
