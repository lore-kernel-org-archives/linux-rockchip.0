Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D9C0C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 22:29:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D71FE6103A
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 22:29:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D71FE6103A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fUqJ4Zcf+SQ5xiy57aU7rvQ+96MBte3vrpvpkcgvE8=; b=zXB9ybXfVu5BLi
	4ekJ/vzL5xJwaFXfMt4m3YO5V6KZ5nORakh/0wkIU/GSgRA61yLOSVv/hXV5GrvNHR1oQ9g/ESMGu
	jZswzFmtFr4fmwiKdvVG4BXB7ngaUjPoVApMJj7RHBZY+blrdb50+rtqv0itwVAdkSVFrIsuzq3S/
	tHcvvnLmIWP31WKMvwXDE2sRM/InMxrz+L2cVAVMVhXEANgRte12KVjIcU1pRNVobZvSS1rbID7Wu
	N/36trmRWmgmh5Pc99q5wdcJTfp0a/dwRj7X4c2AVWJutwS2oSySZveOg9y5S/pJ5AEwP4VHyf3gs
	33LVLMuQYdEwO41jt6wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLCFh-003Jdy-NC; Tue, 31 Aug 2021 22:29:09 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLCFc-003JdG-KN
 for linux-rockchip@lists.infradead.org; Tue, 31 Aug 2021 22:29:08 +0000
Received: by mail-oi1-f171.google.com with SMTP id y128so1261503oie.4
 for <linux-rockchip@lists.infradead.org>; Tue, 31 Aug 2021 15:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DlIKGrJhzXDsC2KcNbGElcUOBBOTh/HViU6kDBixtqI=;
 b=W2TTtAny8ja286g7Q7ZmOrqRs554UFqbMm40Qvt7c0w4hxgIxPOfyCKdI2RSRicNnQ
 LZuItn87T/ElLLsOBB4v5U+SMEnLfy1uMJLJg1hx7gMdSRxd9C8dL1FRX3jZdIndiFkZ
 Zd11uOlFTyUEvQAqSCp+GkAIBbuBpq8mIM0FWnoA79ZuWEAFpvP9aHtZDx7a2kmvdd9v
 hjSBPJmrt66HhC+UMupzcWOZWFf+CoFq5IWJI4XPrAdvslbBfz+T9gg/4psZGJq+CA/a
 0F17o+vcXVSjbymPV1C0oPgh4Yye1pbp+AtZ2puSuGlnjHygSD7fYEa3jMv9ahj067IT
 DvKA==
X-Gm-Message-State: AOAM530T/7unaYDFRuh995WqqEPDalNWwni4gi0X+yvysvBwO6/phswe
 wgACwuCLN1auT8y6tr6U9Q==
X-Google-Smtp-Source: ABdhPJxJpEVmzxg/L1hN2ArJ25r6p596P18MN9gR3Yo8prFOuHrsPGKBIVNukJC2oiJeGwhh1XTWJg==
X-Received: by 2002:a05:6808:46:: with SMTP id v6mr4833237oic.61.1630448943615; 
 Tue, 31 Aug 2021 15:29:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id n73sm3970960oig.9.2021.08.31.15.29.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 15:29:03 -0700 (PDT)
Received: (nullmailer pid 756533 invoked by uid 1000);
 Tue, 31 Aug 2021 22:29:02 -0000
Date: Tue, 31 Aug 2021 17:29:02 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v2 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings
 to yaml
Message-ID: <YS6tLlVSjnYZtEil@robh.at.kernel.org>
References: <1630285788-28002-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_152904_721048_EA9B37F2 
X-CRM114-Status: GOOD (  27.30  )
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

On Mon, Aug 30, 2021 at 09:11:01AM +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Fix yamllint errors.
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 ------------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 115 +++++++++++++++++++++
>  2 files changed, 115 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> deleted file mode 100644
> index b2d7e47..0000000
> --- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> +++ /dev/null
> @@ -1,64 +0,0 @@
> -* Rockchip PDM controller
> -
> -Required properties:
> -
> -- compatible: "rockchip,pdm"
> -  - "rockchip,px30-pdm"
> -  - "rockchip,rk1808-pdm"
> -  - "rockchip,rk3308-pdm"
> -  - "rockchip,rk3568-pdm"
> -  - "rockchip,rv1126-pdm"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- dmas: DMA specifiers for rx dma. See the DMA client binding,
> -	Documentation/devicetree/bindings/dma/dma.txt
> -- dma-names: should include "rx".
> -- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
> -- clock-names: should contain following:
> -   - "pdm_hclk": clock for PDM BUS
> -   - "pdm_clk" : clock for PDM controller
> -- resets: a list of phandle + reset-specifer paris, one for each entry in reset-names.
> -- reset-names: reset names, should include "pdm-m".
> -- pinctrl-names: Must contain a "default" entry.
> -- pinctrl-N: One property must exist for each entry in
> -	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
> -	     for details of the property values.
> -
> -Optional properties:
> -- rockchip,path-map: This is a variable length array, that shows the mapping
> -  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
> -
> -   path0 <-- sdi0
> -   path1 <-- sdi1
> -   path2 <-- sdi2
> -   path3 <-- sdi3
> -
> -  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
> -
> -   path0 <-- sdi3
> -   path1 <-- sdi2
> -   path2 <-- sdi1
> -   path3 <-- sdi0
> -
> -Example for rk3328 PDM controller:
> -
> -pdm: pdm@ff040000 {
> -	compatible = "rockchip,pdm";
> -	reg = <0x0 0xff040000 0x0 0x1000>;
> -	clocks = <&clk_pdm>, <&clk_gates28 0>;
> -	clock-names = "pdm_clk", "pdm_hclk";
> -	dmas = <&pdma 16>;
> -	#dma-cells = <1>;
> -	dma-names = "rx";
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&pdmm0_clk
> -		     &pdmm0_sdi0
> -		     &pdmm0_sdi1
> -		     &pdmm0_sdi2
> -		     &pdmm0_sdi3>;
> -	pinctrl-1 = <&pdmm0_clk_sleep
> -		     &pdmm0_sdi0_sleep
> -		     &pdmm0_sdi1_sleep
> -		     &pdmm0_sdi2_sleep
> -		     &pdmm0_sdi3_sleep>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> new file mode 100644
> index 0000000..fa24ddf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,pdm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PDM controller
> +
> +description:
> +  The Pulse Density Modulation Interface Controller (PDMC) is
> +  a PDM interface controller and decoder that support PDM format.
> +  It integrates a clock generator driving the PDM microphone
> +  and embeds filters which decimate the incoming bit stream to
> +  obtain most common audio rates.
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,pdm
> +      - rockchip,px30-pdm
> +      - rockchip,rk1808-pdm
> +      - rockchip,rk3308-pdm
> +      - rockchip,rk3568-pdm
> +      - rockchip,rv1126-pdm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for PDM controller
> +      - description: clock for PDM BUS
> +
> +  clock-names:
> +    items:
> +      - const: pdm_clk
> +      - const: pdm_hclk
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    items:
> +      - description: reset for PDM controller
> +
> +  reset-names:
> +    items:
> +      - const: pdm-m
> +
> +  rockchip,path-map:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Defines the mapping of PDM SDIx to PDM PATHx.
> +      By default, they are mapped one-to-one.
> +    items:
> +      - description: which sdi to connect to path 0
> +      - description: which sdi to connect to path 1
> +      - description: which sdi to connect to path 2
> +      - description: which sdi to connect to path 3

This would be more specific in terms of allowed values:

maxItems: 4
uniqueItems: true
items:
  enum: [ 0, 1, 2, 3 ]

> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dmas
> +  - dma-names
> +  - "#sound-dai-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3328-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    pdm@ff040000 {
> +      compatible = "rockchip,pdm";
> +      reg = <0x0 0xff040000 0x0 0x1000>;
> +      interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru SCLK_PDM>, <&cru HCLK_PDM>;
> +      clock-names = "pdm_clk", "pdm_hclk";
> +      dmas = <&dmac 16>;
> +      dma-names = "rx";
> +      #sound-dai-cells = <0>;
> +      pinctrl-names = "default", "sleep";
> +      pinctrl-0 = <&pdmm0_clk
> +                   &pdmm0_sdi0
> +                   &pdmm0_sdi1
> +                   &pdmm0_sdi2
> +                   &pdmm0_sdi3>;
> +      pinctrl-1 = <&pdmm0_clk_sleep
> +                   &pdmm0_sdi0_sleep
> +                   &pdmm0_sdi1_sleep
> +                   &pdmm0_sdi2_sleep
> +                   &pdmm0_sdi3_sleep>;
> +    };
> -- 
> 2.7.4
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
