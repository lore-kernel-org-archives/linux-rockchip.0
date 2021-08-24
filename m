Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1243C43214
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 16:42:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6196F61248
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 16:42:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6196F61248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDosbJxx//pC/9fCm4CgxP+AQ51+V50Gajvg88tHs+A=; b=i3QwfNE99vMcyn
	OmbRtSXwPFmir5OvpAPbdtdJ4Ycgo5dVfpfJcMUnsjQf8/JtKfWYS5c/DlzjRZz1iOXBMndwO4Z7t
	uhjd1qui/OTij1RPo40oAa0leq1RLLQnELUpJRUY2xecDD0aid2g1TDnwinuj4ljeNiOXYOYNtnTn
	6oXQbC0loA1rGS81wrV8cxaxSARJBpc46QhpPuCqVA2N6RwoGP009g+pSEKWvn3X8vHzbJ1Qg84/g
	eoSNyrrd0ioISUGsYKQc5rq+ISCqvVBllCuak2YyE9SN0bTwV9JXA+G3+QbeiRnJK+Ec7od7FTEuw
	YAgvP9lw51XqIByABTaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIZVI-003yDV-7C; Tue, 24 Aug 2021 16:42:24 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIZV2-003yC3-LY; Tue, 24 Aug 2021 16:42:12 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 v33-20020a0568300921b0290517cd06302dso47696204ott.13; 
 Tue, 24 Aug 2021 09:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9PP+NZauXcNMWN8qyU06xGoppEYovljaWj1vu5JQDXs=;
 b=VS7+3uN1dm44uZ8cHi9IRXNBK4ulqIVmwubCKr4baMvOIr8hWWOMlXtc6LT/K24AZV
 WYEwNLz2VdfkjVPaPxQLNCFGBaNr85DVaSJZqd/eBEHAOVAD3BSezV+6Vk99OOq7flw/
 ew7INf2Gy/WU0DR6MdacVG+Eyrar2HwmyswPYeDK9otTAkW2CxD7TfnNtfbcBMgEDILF
 STQ8LjfyKBl9WJR1TK6vVVPJKXUTM+ZQ1RqNmHKrIoGwEO2oqmoIcQDBnGTvlp76Cost
 Diqm60+5PeQk26Qz/0zmkWjFrMvjSREuDctfp9R6qU6SEVzxxU/EF/7ddA2hR/cz+X90
 /4qQ==
X-Gm-Message-State: AOAM532tVkmH5y0m/0GYsH4WVj2dmpObNDJnykFzAvDmOJbFWv1se5Rq
 UAtiaJmIjPbKda13LgxIYA==
X-Google-Smtp-Source: ABdhPJybWg8KCAZHRkAMhS4loBDKnuPnJnsUS39u2FRxoGca9cSSu7QPEsJ/G9RGeBKIZCTNQAhlBQ==
X-Received: by 2002:a05:6830:156:: with SMTP id
 j22mr25277496otp.75.1629823326966; 
 Tue, 24 Aug 2021 09:42:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p124sm4446567oia.8.2021.08.24.09.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 09:42:06 -0700 (PDT)
Received: (nullmailer pid 598564 invoked by uid 1000);
 Tue, 24 Aug 2021 16:42:05 -0000
Date: Tue, 24 Aug 2021 11:42:05 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <YSUhXa0o4aWGXN0B@robh.at.kernel.org>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210820182731.29370-3-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_094208_763240_B9B16B51 
X-CRM114-Status: GOOD (  24.38  )
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

On Fri, Aug 20, 2021 at 08:27:29PM +0200, Nicolas Frattaroli wrote:
> This adds the YAML bindings for the Rockchip I2S/TDM audio driver.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../bindings/sound/rockchip,i2s-tdm.yaml      | 193 ++++++++++++++++++
>  1 file changed, 193 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> new file mode 100644
> index 000000000000..1e8c1500ba40
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> @@ -0,0 +1,193 @@
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
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +  clocks:
> +    items:
> +      - description: clock for TX
> +      - description: clock for RX
> +      - description: AHB clock driving the interface
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

Another case of the nonexistent rockchip,clk-trcm.


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

Sorry if I wasn't clear, but you don't need status at all in examples as 
okay is the default.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
