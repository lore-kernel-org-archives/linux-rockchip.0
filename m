Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3930C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 16:45:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 929FC610CB
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 16:45:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 929FC610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsa7LNSgolcq7ZSVkOzJx1E4ylUE1B9UAX+v6u+qD4c=; b=oddsp2pxYTCI6P
	a1jYNH4QkLChXQOUa/XOKbGjBgrbByTWU9kuZrssQk6piv6sjXL1jXQk2nnz3e/DMZILZoDkuZrIK
	+4g0YbOxfb2tI08JolOBunCWYR1+TIiwq/2msvza0AUDZF6NeyhLuzXJRcBF2Siy8c0iaiwhFYLlC
	kyhQInyarBDcPnufREx6JpHMx7rvHIjtiLPTgDknyUHlyOcssvMawcR82jWZ4FODP6zvAf4ITrg/9
	mXOrfr2joGYszG2M8ZWTZc+iD512Wk/zesi0oUFUV5xfRaz65aN+2J4un3Bhgz/D584G3byu1bJqN
	n3laOk/AJZ28C6JaxHRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGOgm-006D0W-OJ; Wed, 18 Aug 2021 16:45:16 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGOgX-006Cxv-9x; Wed, 18 Aug 2021 16:45:05 +0000
Received: by mail-oi1-f174.google.com with SMTP id u25so4204043oiv.5;
 Wed, 18 Aug 2021 09:45:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j4p+QzPcxX1KO6/vzInX+XzVndfnvWYW6jLDLoMv7Jc=;
 b=Ush3XxZaZTxHlNzI2FCo99umentL4C82CFBIkSiAstVOxvjkTNLCv2Z3ctpMAZUGvT
 Gt+5fq5HeKgR82zpDVUr1i6crpUVcEDP2EQJuU/LRcgx38DVWFPib8WApz08CekkgFce
 ZMVXnVLzzNUcDEclyDgx1hT2MkPH8lstw8IOONU2PuMyRNT8F7g+iaKA4ZRfC0aTVHHa
 nsEK5YTL5FKvXeYm+Skh3MNpgaR07Gn06zdrsWaXnll3S1vip98+syZxhSRb5HkdYU16
 CLlyZzRHJwsSTGpcJxqiSxnQ0il3un5HpgZMj9Xwp35gWrqa6N4FQ7WixMntrdfi+Bpn
 TTJw==
X-Gm-Message-State: AOAM532M4WYM91YSmQRJyfm6LfWmCEDZeVdukZYQ/nV7NLRA6l8klOMj
 ud87ICrlZFqeYAfquLFk3A==
X-Google-Smtp-Source: ABdhPJyGMOqRAF2+mTS589CkuekxoogzJnDR4EgPb4SQF+GAKHmsmrRL11YaskqHDxMRmr0Id2Y32A==
X-Received: by 2002:aca:2b05:: with SMTP id i5mr7870896oik.55.1629305100437;
 Wed, 18 Aug 2021 09:45:00 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k24sm102593otp.31.2021.08.18.09.44.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 09:44:59 -0700 (PDT)
Received: (nullmailer pid 2737924 invoked by uid 1000);
 Wed, 18 Aug 2021 16:44:58 -0000
Date: Wed, 18 Aug 2021 11:44:58 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <YR05Cj5R3cH+rTMx@robh.at.kernel.org>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
 <20210817101119.423853-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210817101119.423853-3-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_094501_396161_E1567A89 
X-CRM114-Status: GOOD (  28.23  )
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

On Tue, Aug 17, 2021 at 12:11:17PM +0200, Nicolas Frattaroli wrote:
> This adds the YAML bindings for the Rockchip I2S/TDM audio driver.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../bindings/sound/rockchip,i2s-tdm.yaml      | 221 ++++++++++++++++++
>  include/dt-bindings/sound/rockchip,i2s-tdm.h  |   9 +
>  2 files changed, 230 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
>  create mode 100644 include/dt-bindings/sound/rockchip,i2s-tdm.h
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> new file mode 100644
> index 000000000000..c3022620b47f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> @@ -0,0 +1,221 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip I2S/TDM Controller
> +
> +description:
> +  The Rockchip I2S/TDM Controller is a Time Division Multiplexed
> +  audio interface found in various Rockchip SoCs, allowing up
> +  to 8 channels of audio over a serial interface.
> +
> +maintainers:
> +  - Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-i2s-tdm
> +      - rockchip,rk1808-i2s-tdm
> +      - rockchip,rk3308-i2s-tdm
> +      - rockchip,rk3568-i2s-tdm
> +      - rockchip,rv1126-i2s-tdm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dmas:
> +    minItems: 1
> +    maxItems: 2
> +
> +  dma-names:
> +    oneOf:
> +      - const: rx
> +      - items:
> +          - const: tx
> +          - const: rx

If 'rx' is always present, then make it first:

minItems: 1
items:
  - const: rx
  - const: tx

> +
> +  clocks:
> +    items:
> +      - description: clock for TX
> +      - description: clock for RX
> +      - description: clock for I2S bus
> +
> +  clock-names:
> +    items:
> +      - const: mclk_tx
> +      - const: mclk_rx
> +      - const: hclk
> +
> +  rockchip,frame-width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 64
> +    minimum: 32
> +    maximum: 512
> +    description:
> +      Width of a frame, usually slot width multiplied by number of slots.
> +      Must be even.
> +
> +  resets:
> +    items:
> +      - description: reset for TX
> +      - description: reset for RX
> +
> +  reset-names:
> +    items:
> +      - const: tx-m
> +      - const: rx-m
> +
> +  rockchip,cru:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the cru.
> +      Required if both playback and capture are used, i.e. if rockchip,clk-trcm
> +      is 0.
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the GRF register.
> +
> +  rockchip,mclk-calibrate:
> +    description:
> +      Enable mclk source calibration.
> +    type: boolean
> +
> +  rockchip,trcm-sync:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Which lrck/bclk clocks each direction will sync to. You should use the
> +      constants in <dt-bindings/sound/rockchip,i2s-tdm.h>
> +    oneOf:
> +      - const: 0
> +        description:
> +          RK_TRCM_TXRX. Use both the TX and the RX clock for TX and RX.
> +      - const: 1
> +        description:
> +          RK_TRCM_TX. Use only the TX clock for TX and RX.
> +      - const: 2
> +        description:
> +          RK_TRCM_RX. Use only the RX clock for TX and RX.
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  rockchip,no-dmaengine:
> +    description:
> +      If present, driver will not register a pcm dmaengine, only the dai.
> +      If the dai is part of multi-dais, the property should be present.
> +    type: boolean
> +
> +  rockchip,playback-only:
> +    description: Specify that the controller only has playback capability.
> +    type: boolean
> +
> +  rockchip,capture-only:
> +    description: Specify that the controller only has capture capability.
> +    type: boolean
> +
> +  rockchip,i2s-rx-route:
> +    $ref: /schemas/types.yaml#/definitions/uint32

A single uint32 or

> +    description:
> +      Defines the mapping of I2S RX sdis to I2S data bus lines.
> +      By default, they are mapped one-to-one.
> +    items:
> +      - description: which sdi to connect to data line 0
> +      - description: which sdi to connect to data line 1
> +      - description: which sdi to connect to data line 2
> +      - description: which sdi to connect to data line 3

An array of 4 uint32s?

> +
> +  rockchip,i2s-tx-route:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the mapping of I2S TX sdos to I2S data bus lines.
> +      By default, they are mapped one-to-one.
> +    items:
> +      - description: which sdo to connect to data line 0
> +      - description: which sdo to connect to data line 1
> +      - description: which sdo to connect to data line 2
> +      - description: which sdo to connect to data line 3
> +
> +  rockchip,tdm-fsync-half-frame:
> +    description: Whether to use half frame fsync.
> +    type: boolean
> +
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - dmas
> +  - dma-names
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - rockchip,grf
> +  - "#sound-dai-cells"
> +  - rockchip,trcm-sync
> +
> +allOf:
> +  - if:
> +      properties:
> +        rockchip,clk-trcm:

This property doesn't exist.

> +          contains:
> +            enum: [0]
> +    then:
> +      required:
> +        - rockchip,cru
> +
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/sound/rockchip,i2s-tdm.h>
> +
> +
> +    foo {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        i2s@fe410000 {
> +            compatible = "rockchip,rk3568-i2s-tdm";
> +            reg = <0x0 0xfe410000 0x0 0x1000>;
> +            interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
> +                     <&cru HCLK_I2S1_8CH>;
> +            clock-names = "mclk_tx", "mclk_rx", "hclk";
> +            dmas = <&dmac1 2>, <&dmac1 3>;
> +            dma-names = "tx", "rx";
> +            resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
> +            reset-names = "tx-m", "rx-m";
> +            rockchip,trcm-sync = <RK_TRCM_TX>;
> +            rockchip,cru = <&cru>;
> +            rockchip,grf = <&grf>;
> +            #sound-dai-cells = <0>;
> +            pinctrl-names = "default";
> +            pinctrl-0 =
> +                <&i2s1m0_sclktx
> +                &i2s1m0_sclkrx
> +                &i2s1m0_lrcktx
> +                &i2s1m0_lrckrx
> +                &i2s1m0_sdi0
> +                &i2s1m0_sdi1
> +                &i2s1m0_sdi2
> +                &i2s1m0_sdi3
> +                &i2s1m0_sdo0
> +                &i2s1m0_sdo1
> +                &i2s1m0_sdo2
> +                &i2s1m0_sdo3>;
> +            status = "disabled";

Why is the example disabled?

> +        };
> +    };
> diff --git a/include/dt-bindings/sound/rockchip,i2s-tdm.h b/include/dt-bindings/sound/rockchip,i2s-tdm.h
> new file mode 100644
> index 000000000000..32494d64cf33
> --- /dev/null
> +++ b/include/dt-bindings/sound/rockchip,i2s-tdm.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _DT_BINDINGS_ROCKCHIP_I2S_TDM_H
> +#define _DT_BINDINGS_ROCKCHIP_I2S_TDM_H
> +
> +#define RK_TRCM_TXRX 0
> +#define RK_TRCM_TX 1
> +#define RK_TRCM_RX 2
> +
> +#endif /* _DT_BINDINGS_ROCKCHIP_I2S_TDM_H */
> -- 
> 2.32.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
