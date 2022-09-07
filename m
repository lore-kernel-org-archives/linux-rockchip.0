Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DEB1C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 20:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyiDrjymMvH9475CzPkYmsK4QSOEB4L7sXWeOWdC3CA=; b=xJu+XmvDoF5h/V
	R1R95bfFSetZHV5EslpObrS/1S4lcLLmTqGcsHV/yx4fF3Nr+f9a+BFS3M3+GEy3ie4Cgo9u2bJON
	j6AUNdZZNI0XxqhV/DiXriNaRSAeuS998gc2PAfXEOuycfMnFiETGQN52O3I/x3a39tZ0GuIztKeS
	VyzNlra1dKHtvshEpjOxy6FiHIR3JymCIWrH16XCL45PBDZeMT6F6eFCXqUZI6bqibIbjeJAplkYQ
	Fi3UH30wnBSHEy50ynRTUc3aS1X0ifC8YHOeQpd19z3hiUd6N+dFPtYjsYi1567T4IGxz8CJ7UyLW
	La33hoBtTgf8oejIoBpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW1p4-009gBL-OM; Wed, 07 Sep 2022 20:38:58 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW1p1-009gAE-Ff; Wed, 07 Sep 2022 20:38:57 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-127d10b4f19so13213900fac.9;
        Wed, 07 Sep 2022 13:38:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=wj0FlR0iIjBwEoHz1x7C+h5eigEetu70PRRI7k8iZXI=;
        b=Hu1CJSazW6JgHB86nlsB731A6a6ffxYAVdxqWH4jRGi23TntQPNkn2HD1FYChmaZFg
         JmTrX8RSH2HS9WJXLuthneBkP72gfctsFyB3JWPqLx/M+pEHsm8+96e4+la1ohubxNlZ
         RpQK3iiFMJEmaN4SbW/ZFqvbAVSgH2h5oAGD9FM8JfpTNhfgo+8ZxQHek0ux9tuQpndP
         W8iWnZ7z5MuKoiVuvITsz7D2O+3XMgYNEbzS10sDMGFsF8Dmss9WjiYV5GcW4eoxICmL
         K+gwB+IL9Hfypj8EBXwanSn7ZHG/AwKjRYL4UUTQBbLLRLikHLXxFiXPQMxGE4dBTg0J
         RG0w==
X-Gm-Message-State: ACgBeo2+hSU+zXtgir5ReN5hlTqRiPkD2lp6vlPle8HuGIPOY9v1EPvg
	6pTwfV0L3USV2oBXV0QNNw==
X-Google-Smtp-Source: AA6agR4/Q5cbO4dYciSTsb3yHN0PCRBBmZM4f/2Aw8gY/7KQS5uOU1UdBufXQ5dMUiyzRiI3S/G4dw==
X-Received: by 2002:a05:6870:7394:b0:126:6f7b:15a2 with SMTP id z20-20020a056870739400b001266f7b15a2mr121415oam.227.1662583134465;
        Wed, 07 Sep 2022 13:38:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bk26-20020a056830369a00b00636c81d4109sm7572324otb.46.2022.09.07.13.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 13:38:53 -0700 (PDT)
Received: (nullmailer pid 299944 invoked by uid 1000);
	Wed, 07 Sep 2022 20:38:53 -0000
Date: Wed, 7 Sep 2022 15:38:53 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, ardb@kernel.org, davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v9 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <20220907203853.GA288174-robh@kernel.org>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
 <20220901125710.3733083-26-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220901125710.3733083-26-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_133855_547210_BB8087D6 
X-CRM114-Status: GOOD (  21.20  )
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

On Thu, Sep 01, 2022 at 12:57:02PM +0000, Corentin Labbe wrote:
> The latest addition to the rockchip crypto driver need to update the
> driver bindings.

This sounds like you changed the driver, so change the binding. That 
would be an ABI break. But it looks like you are adding support for new 
h/w, so say that. Bindings aren't about a driver.

> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 79 +++++++++++++++++--
>  1 file changed, 71 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> index 8a219d439d02..b7870a4cbdbe 100644
> --- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> @@ -13,6 +13,8 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3288-crypto
> +      - rockchip,rk3328-crypto
> +      - rockchip,rk3399-crypto
>  
>    reg:
>      maxItems: 1
> @@ -21,21 +23,82 @@ properties:
>      maxItems: 1
>  
>    clocks:
> +    minItems: 3
>      maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: aclk
> -      - const: hclk
> -      - const: sclk
> -      - const: apb_pclk
> +    minItems: 3
> +    maxItems: 4
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>    reset-names:
> -    items:
> -      - const: crypto-rst
> +    minItems: 1
> +    maxItems: 3
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3288-crypto
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +        clock-names:
> +          items:
> +            - const: aclk
> +            - const: hclk
> +            - const: sclk
> +            - const: apb_pclk
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: crypto-rst
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3328-crypto
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: hclk_master
> +            - const: hclk_slave
> +            - const: sclk

Do we really need new names? Was 'aclk' not the bus master clock?

If the clocks and resets aren't the same, then maybe these 2 new chips 
should be their own binding.

> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: crypto-rst
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3399-crypto
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: hclk_master
> +            - const: hclk_slave
> +            - const: sclk
> +        resets:
> +          minItems: 3
> +        reset-names:
> +          items:
> +            - const: rst_master
> +            - const: rst_slave

'rst_' is redundant, drop.

> +            - const: crypto-rst
>  
>  required:
>    - compatible
> -- 
> 2.35.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
