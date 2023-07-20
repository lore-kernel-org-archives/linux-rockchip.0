Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E4AEB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 06:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4Pu7fWWotQrQ2rAuVOrsjwhP3+xHIs+S8YyrPnrLwQ=; b=z49/Mm1Yf2HlJF
	dyLiWW/Ttz1cSb54GrRDjRouO2ZIdfHS8sEJfiI67NDb/5fCQEvcIuFhDNqnC6gU/J90R+STOngYY
	D5dBDT0Ab2nSuoTo+WBHu/cm78fbIWjbL2sHPO/b3dApJiur7VxhOwOALfW2GHovOiPtBvgk2J3rH
	85OAUL4NIAkC0jaH5HweuuhJ0GC6Vxgsw5dr/7SaEp3V98QtEwAswlXQH/fR3JOL0I/S/IeH1p4zv
	Xx2Qo3/mntYV63oacekBGfZT0bm8FGlrTSQX5Pu4INe+j9NZvPJlUJYojsyo2Nqdp8HKOhJWElTpu
	QJtkAvCdy0f0xwTMVxrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMN6h-009vsY-30;
	Thu, 20 Jul 2023 06:25:47 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMN6e-009vrE-2N
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jul 2023 06:25:47 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fbc6ab5ff5so2785055e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Jul 2023 23:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689834342; x=1692426342;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQMHOjJYZ76TGhG8B0nlx/g+YkMmgmasZcqaKFcuJjM=;
        b=zeE415wH8jka8fvaJ69vhsN2OPoAzBmHBD40wozzyCzY7WwBPtXOddqoB5lhZtt6o/
         xoQvfNxWFWisjOHDEy5OKB4m1Tc+q4O+yGIC81p268YuN5K0iEYLhnfjicD7y0P6gDFU
         ddBqrW6e8lX96qowmYGINym9Fchz5uR0uzhwfu41pzu7OkB+Iv/fgcILX6zq6ecg209N
         CB1yHwqLs9itz57agB4yfWwLL02ry8X7HVB1tncj+hM36MDM1jtwvZ2l+tDqkDRZkiqz
         EufSS/E1P6g0z6LU69/wD3j0BeGxdtRf++iSFue8ZHuRpyO+prFNJNtZ/itJcxMtb9X5
         HLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689834342; x=1692426342;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xQMHOjJYZ76TGhG8B0nlx/g+YkMmgmasZcqaKFcuJjM=;
        b=jSWxjzVskQRhxEnVy+IC40xp25/r4lwElWHfQeIi7qjbrnfZG79qYkUkfyvrGZFPGF
         btJwjSsWbNdxLse5/IHWo+gAYA9WhL4MIXSXGTSTI4y7JarCXUsNs7TqBoU6A8U+rP9n
         PRbvgEz44JLi0lSlRg24wq35lB5Z+WixmQDPj/CX6LZa+EADK+VZRHjz5yl0EEOaL6dD
         /2c+B2W85Pb6XRqBmJ0mJtawbW3nCZJMDLc0FyNBCb/l1SmOFuLMvu9y6VLcdLuDNwKx
         RZrm72Bgxho0P/dcPZVCewM23DnwhkajuicYls9tP+ArF6+UxlMVrVZlaCh/hsKtdk5m
         mWhQ==
X-Gm-Message-State: ABy/qLZKdLQ2J2skIGvZQlWB3bW8cnyt4ODSK3BdL6Th6IM1a9EqA2pi
	sORITATEC50uvEDfMvLtZYJ5Qw==
X-Google-Smtp-Source: APBJJlErniNxjsytxmWnSd3zFi4m0T93POcwGlPJw9URpkAQIVH3uYPfGB2oNqXPySV7wPgw0iuZhQ==
X-Received: by 2002:a5d:54c6:0:b0:316:f25c:d0c0 with SMTP id x6-20020a5d54c6000000b00316f25cd0c0mr1489597wrv.16.1689834342327;
        Wed, 19 Jul 2023 23:25:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id o20-20020a5d58d4000000b0031433443265sm284501wrf.53.2023.07.19.23.25.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 23:25:41 -0700 (PDT)
Message-ID: <4027f2f8-4d60-3907-ec36-4c9b0ca52214@linaro.org>
Date: Thu, 20 Jul 2023 08:25:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v1 1/2] dt-bindings: usb: rockchip,dwc3: Add RK3588
 binding
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <20230719174015.68153-1-sebastian.reichel@collabora.com>
 <20230719174015.68153-2-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230719174015.68153-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_232544_778222_43B7DAC2 
X-CRM114-Status: GOOD (  19.82  )
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

On 19/07/2023 19:40, Sebastian Reichel wrote:
> RK3588 contains three DWC3 cores. Two of them are connected to
> dedicated USBDP PHY and can be used in dual-role. The third is
> connected to one of the shared combo PHYs used for PCIe/SATA/USB3
> and can only be used in host mode. Since the binding is all about
> the PHY glueing and involved clocks, separate compatible values
> have been created for these two types.

The cores are the same. To which phy they are connected to, does not
justify difference in compatibles. It's still the same devoce.

> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/usb/rockchip,rk3399-dwc3.yaml    | 107 ++++++++++++++----
>  1 file changed, 85 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> index 3159f9a6a0f7..0db4dc86e506 100644
> --- a/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> @@ -11,7 +11,13 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: rockchip,rk3399-dwc3
> +    oneOf:
> +      - items:
> +          - enum:
> +              - rockchip,rk3588-dwc3-otg
> +              - rockchip,rk3588-dwc3-host
> +          - const: rockchip,rk3399-dwc3
> +      - const: rockchip,rk3399-dwc3
>  
>    '#address-cells':
>      const: 2
> @@ -22,35 +28,37 @@ properties:
>    ranges: true
>  
>    clocks:
> -    items:
> -      - description:
> -          Controller reference clock, must to be 24 MHz
> -      - description:
> -          Controller suspend clock, must to be 24 MHz or 32 KHz
> -      - description:
> -          Master/Core clock, must to be >= 62.5 MHz for SS
> -          operation and >= 30MHz for HS operation
> -      - description:
> -          USB3 aclk peri
> -      - description:
> -          USB3 aclk
> -      - description:
> -          Controller grf clock
> +    minItems: 3
> +    maxItems: 6
>  
>    clock-names:
>      items:
> -      - const: ref_clk
> -      - const: suspend_clk
> -      - const: bus_clk
> -      - const: aclk_usb3_rksoc_axi_perf
> -      - const: aclk_usb3
> -      - const: grf_clk
> +      oneOf:
> +        - enum:
> +            - ref
> +            - ref_clk

This is not oneOf. You cannot have here one clock. There is also no
point in making all these changes here,.

> +        - enum:
> +            - suspend
> +            - suspend_clk
> +        - enum:
> +            - bus
> +            - bus_clk
> +        - const: aclk_usb3_rksoc_axi_perf
> +        - const: aclk_usb3
> +        - const: grf_clk
> +        - const: utmi
> +        - const: php
> +        - const: pipe
> +    minItems: 3
> +    maxItems: 6
>  
>    resets:
>      maxItems: 1
>  
>    reset-names:
> -    const: usb3-otg
> +    enum:
> +      - usb3-host
> +      - usb3-otg

I don't see a point in changing this.

>  
>  patternProperties:
>    '^usb@':
> @@ -68,6 +76,61 @@ required:
>    - resets
>    - reset-names
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: rockchip,rk3399-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 6
> +        clock-names:
> +          items:
> +            - const: ref_clk
> +            - const: suspend_clk
> +            - const: bus_clk
> +            - const: aclk_usb3_rksoc_axi_perf
> +            - const: aclk_usb3
> +            - const: grf_clk
> +        reset-names:
> +          const: usb3-otg
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-dwc3-otg
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: ref
> +            - const: suspend
> +            - const: bus

Use the same clock names.

> +        reset-names:
> +          const: usb3-otg
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-dwc3-host
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 6
> +        clock-names:
> +          items:
> +            - const: ref
> +            - const: suspend
> +            - const: bus
> +            - const: utmi
> +            - const: php
> +            - const: pipe

Same clock names

> +        reset-names:
> +          const: usb3-host

Same reset name.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
