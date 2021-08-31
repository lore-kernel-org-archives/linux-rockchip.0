Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1268C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 21:50:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D9A860200
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 21:50:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6D9A860200
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5FC5d9AiBbj3xWBNxZ/XmhMZm1FVYf6YdFnjCeANR0=; b=Jt/uJagC+mSBNr
	7rbhluKm+LSbdD+NgLakWHpFLYy9GwESDp9HPEH+cRLV5RD6KMT1lvjqxm7FRJpT8UAEPDK6pylpE
	ZT10GJLdwgx7wCzyNsrV4ALttpwAzEYhpwa9fu3eEkMmMCOMoSLhWzjnPioVkXlbLHw3ggYE73x6/
	WsbRYtUqS6oep/Dxd/84pP4oUqq5rUpwZgjdv1Y3TjuR8s717xLtCb1A9zyQONU20sgz+eqpBNjpn
	bc/feYGgiD9uijvv+u8WDlcgLVEhT+dD5ktWUqM7rG567DowmFAR7ua/juZfDyOiJfGYu3HUQgjvR
	r1EszPyVF9NuV8JEVWbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLBeJ-003Fsz-DZ; Tue, 31 Aug 2021 21:50:31 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLBeD-003Fs8-CX; Tue, 31 Aug 2021 21:50:29 +0000
Received: by mail-oi1-f181.google.com with SMTP id u25so1122796oiv.5;
 Tue, 31 Aug 2021 14:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z4zGlKAlI6VbY2dCAx/WGVy/9ir/egij02vGyThDzW4=;
 b=QTe4o4T1J0XrVDzGJau5IMQkZnMUoAT1JdAj5tkzlTsJSdieq0uIsmjaIePiO1hHb2
 BDXmDTK9eYhnNnQHhVY2TYlJxfvNrDh/0v3DR3aNDei8A19bP+B17LlDt1X61U917UM9
 H/4SEdc7VMNIVL4DxtkcoJbvLvvCAQqDkq14hZmVPv2iDeAn/wfbMFehmVqarUNrbkwP
 eYqqEl7DRXRfj1zAUkYvHPWJ9M168FgcHguMvoj6cxN4NzUCDggo1xRvn4UEf107/trb
 gY1pQXcDs64o22zJMGW2a+m6u5pO864O0x2RXjxHGCxvo5OcqaRYcLzbtNeVLdJaLe5Q
 p22w==
X-Gm-Message-State: AOAM530NYOhe2Fmeckt9p20YMcOJ2fn6bT+UHgcZM8632xzkTYJ2d8Sh
 zBX1AinsPX3W+dANhZLy465OZ+butg==
X-Google-Smtp-Source: ABdhPJymrI2LgNkJttvARCCZDVvDEe/pM8dU4KQpr11oFcHkXT9f1G2ElDoRAyoHgIpLjLLkdEy9QA==
X-Received: by 2002:a54:458f:: with SMTP id z15mr4855144oib.42.1630446624054; 
 Tue, 31 Aug 2021 14:50:24 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id c7sm4189188otm.27.2021.08.31.14.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 14:50:23 -0700 (PDT)
Received: (nullmailer pid 705164 invoked by uid 1000);
 Tue, 31 Aug 2021 21:50:22 -0000
Date: Tue, 31 Aug 2021 16:50:22 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <YS6kHkeOKCJMOOIf@robh.at.kernel.org>
References: <20210828140205.21973-1-frattaroli.nicolas@gmail.com>
 <20210828140205.21973-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210828140205.21973-3-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_145025_485019_F1F520EC 
X-CRM114-Status: GOOD (  28.13  )
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

On Sat, Aug 28, 2021 at 04:02:02PM +0200, Nicolas Frattaroli wrote:
> This adds the YAML bindings for the Rockchip I2S/TDM audio driver.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../bindings/sound/rockchip,i2s-tdm.yaml      | 218 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 219 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> new file mode 100644
> index 000000000000..ab8731779805
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> @@ -0,0 +1,218 @@
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
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum:
> +        - rx
> +        - tx
> +
> +  clocks:
> +    minItems: 3
> +    items:
> +      - description: clock for TX
> +      - description: clock for RX
> +      - description: AHB clock driving the interface
> +      - description:
> +          Parent clock for mclk_tx (only required when using mclk-calibrate)
> +      - description:
> +          Parent clock for mclk_rx (only required when using mclk-calibrate)
> +      - description:
> +          Clock for sample rates that are an integer multiple of 8000
> +          (only required when using mclk-calibrate)
> +      - description:
> +          Clock for sample rates that are an integer multiple of 11025
> +          (only required when using mclk-calibrate)
> +
> +  clock-names:
> +    minItems: 3
> +    items:
> +      - const: mclk_tx
> +      - const: mclk_rx
> +      - const: hclk
> +      - const: mclk_tx_src
> +      - const: mclk_rx_src
> +      - const: mclk_root0
> +      - const: mclk_root1
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
> +      Required if neither trcm-sync-tx-only nor trcm-sync-rx-only are specified.
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the GRF register.
> +
> +  rockchip,mclk-calibrate:
> +    description:
> +      Switch between two root clocks depending on the audio sample rate.
> +      For integer multiples of 8000 (e.g. 48000 Hz), mclk_root0 is used.
> +      For integer multiples of 11025 (e.g. 44100 Hz), mclk_root1 is used.
> +    type: boolean
> +
> +  rockchip,trcm-sync-tx-only:
> +    type: boolean
> +    description: Use TX BCLK/LRCK for both TX and RX.
> +
> +  rockchip,trcm-sync-rx-only:
> +    type: boolean
> +    description: Use RX BCLK/LRCK for both TX and RX.
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  rockchip,i2s-rx-route:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Defines the mapping of I2S RX sdis to I2S data bus lines.
> +      By default, they are mapped one-to-one.
> +    items:
> +      - description: which sdi to connect to data line 0
> +      - description: which sdi to connect to data line 1
> +      - description: which sdi to connect to data line 2
> +      - description: which sdi to connect to data line 3

This would be better expressed as:

maxItems: 4
items:
  enum: [ 0, 1, 2, 3 ]

(I'm guessing on the allowed values here)

> +
> +  rockchip,i2s-tx-route:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Defines the mapping of I2S TX sdos to I2S data bus lines.
> +      By default, they are mapped one-to-one.
> +    items:
> +      - description: which sdo to connect to data line 0
> +      - description: which sdo to connect to data line 1
> +      - description: which sdo to connect to data line 2
> +      - description: which sdo to connect to data line 3

Same here.

> +
> +  rockchip,tdm-fsync-half-frame:
> +    description: Whether to use half frame fsync.
> +    type: boolean
> +
> +  rockchip,io-multiplex:
> +    description:
> +      Specify that the GPIO lines on the I2S bus are multiplexed such that
> +      the direction (input/output) needs to be dynamically adjusted.
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
> +
> +allOf:
> +  - if:
> +      properties:
> +        rockchip,trcm-sync-tx-only: false
> +        rockchip,trcm-sync-rx-only: false
> +    then:
> +      required:
> +        - rockchip,cru
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +
> +    foo {

bus {

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        i2s@fe410000 {
> +            compatible = "rockchip,rk3568-i2s-tdm";
> +            reg = <0x0 0xfe410000 0x0 0x1000>;
> +            interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
> +                     <&cru HCLK_I2S1_8CH>;
> +            clock-names = "mclk_tx", "mclk_rx", "hclk";
> +            dmas = <&dmac1 3>, <&dmac1 2>;
> +            dma-names = "rx", "tx";
> +            resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
> +            reset-names = "tx-m", "rx-m";
> +            rockchip,trcm-sync-tx-only;
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
> +            status = "okay";

Still needs to be dropped.

> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5d459d42672c..d2be16a85009 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16053,6 +16053,7 @@ ROCKCHIP I2S TDM DRIVER
>  M:	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>  L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
>  F:	sound/soc/rockchip/rockchip_i2s_tdm.*
>  
>  ROCKCHIP ISP V1 DRIVER
> -- 
> 2.33.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
