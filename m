Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 140A7C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9+D828FQloiS5l8ldA2Nm7EcfCGHlfYeTsxCBEbiSk=; b=lJx5zmCJUJZ+jZ
	D4IkmxNKPp6jQ4dS+EGBTOBZU17GzOKsM4UgkodKhEzNjiq8UnFnaQ1yEodHuYZFeHst7TGuSXpUW
	qyvZmFm4iKa+cqggiR72PESu9qINk64hxDPFP9RocVlFcb3an4bTn1cg3SqR8fiotvHIQ2G6VSTqt
	WVDmgEplC0S6Oxl97UlhjfJyEWuKZxOXiY9aONB3H3apEeB0afRF9N+YMLKzAha4Xf3NwE3p1C2E1
	qGHyGes/YnhbaQFKnnlMga9TvW90BFmZK320nUueEVR+X1fp0iVFkMGQhabVKnPWsBSiuxXJUrtlm
	lnINxNKtPHENvZY8PY6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHnIi-000DRi-88; Wed, 09 Feb 2022 13:46:28 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHnId-000DQ4-Gn
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 13:46:25 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6EF253F1F0
 for <linux-rockchip@lists.infradead.org>; Wed,  9 Feb 2022 13:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644414375;
 bh=uPmwK2Sajk0B7/rIDbd45YqogfWkOlduqJZAInEIkls=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=eBEDraY/czr6CpUHVJ51qFcwJOb+t8C52VH2tH9a/YQ5jV9kZmFN9lcKkXzOGQ8Qx
 om1vfD2fvL91funBmIRJSjIb9e8y9fn2D9jTAaAmrvYoPBlclQstb0+ZPJFW/MkDxm
 NJBE3rHAP21+f1EMzD4QOLiYViwhlisbafY6h1S0G12fReqBCfZeqcbRB5yACIYA2+
 qkSuR3TnVbJ41B0QNnaH8aO2CouR/LvkObJ1LM26r5o0G3+M6DvAFp5FwIJdEnvW30
 feN5+8dmW8sqikXb5zM3SZ+YvcRid4RqcsWMPa8wuZMAaZt5FzdrrlJDm5R6fTYRHg
 gbAJqrAmnxQxg==
Received: by mail-ej1-f69.google.com with SMTP id
 hp37-20020a1709073e2500b006cd86fa20ffso239261ejc.5
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 05:46:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uPmwK2Sajk0B7/rIDbd45YqogfWkOlduqJZAInEIkls=;
 b=44vyAcusx0kfKGhBZZaJdf54QECknDD7YY1ehF38wqGMOXFMPrwGEDLe6gDpCJeH6Y
 PmOxUtSVAvgU/rsswGmTK/GMSVcd0jInBlIWcEOYQkPTsS45mXPgn9mh4D2nGeGNJ52l
 9l/HlCkk90Rq92QIT0n2f2FewesTw9WkZ5ugBudkwnaIcKRN8c/HRAQoNn9k6a1hn804
 YSIhKaLwDSABhkVLKQDWDB5JWUk4RmtyX8APJf+66Z8I5f/Z9B6WHhFNiVrWbMkEZQ8F
 Om4qjPpOCHz24DEKSZEXs4asqGl3EzN5s3HiDAVFj2HEWieKqayMFX7RsR1QRKgiIdhO
 vJsQ==
X-Gm-Message-State: AOAM5337hFml6WQm3pNQq0rf8sqgxA3nP7ln9izeX1AXlL60Kf04TMx8
 KKTCtcvv8Q83OAppniaZpF0rlxXloZuZZpdBucGzEgtR0sBT7hPALwB6g7BmmGrSyCT4Tdspp+Z
 VfU/rTsnQLmrPPbn0TYm6wsPGv4/Dea86KgiPDKNLt1Yl9n0w3w==
X-Received: by 2002:a05:6402:3596:: with SMTP id
 y22mr2613103edc.370.1644414372885; 
 Wed, 09 Feb 2022 05:46:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwkZKjTUYePrgBC0lsw8CSQ+1aXWr69tlBK1fCM0/xVCywpwRzP01Ct4mgEz/qhm2ljFlSOXw==
X-Received: by 2002:a05:6402:3596:: with SMTP id
 y22mr2613072edc.370.1644414372627; 
 Wed, 09 Feb 2022 05:46:12 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id i18sm2482081ejy.190.2022.02.09.05.46.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Feb 2022 05:46:11 -0800 (PST)
Message-ID: <a835458d-2612-6ed6-e4fb-2b47c6c69871@canonical.com>
Date: Wed, 9 Feb 2022 14:46:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220209124725.2080986-1-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220209124725.2080986-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_054623_922993_FB527951 
X-CRM114-Status: GOOD (  20.79  )
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

On 09/02/2022 13:47, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  .../bindings/crypto/rockchip-crypto.yaml      | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> deleted file mode 100644
> index 5e2ba385b8c9..000000000000
> --- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Rockchip Electronics And Security Accelerator
> -
> -Required properties:
> -- compatible: Should be "rockchip,rk3288-crypto"
> -- reg: Base physical address of the engine and length of memory mapped
> -       region
> -- interrupts: Interrupt number
> -- clocks: Reference to the clocks about crypto
> -- clock-names: "aclk" used to clock data
> -	       "hclk" used to clock data
> -	       "sclk" used to clock crypto accelerator
> -	       "apb_pclk" used to clock dma
> -- resets: Must contain an entry for each entry in reset-names.
> -	  See ../reset/reset.txt for details.
> -- reset-names: Must include the name "crypto-rst".
> -
> -Examples:
> -
> -	crypto: cypto-controller@ff8a0000 {
> -		compatible = "rockchip,rk3288-crypto";
> -		reg = <0xff8a0000 0x4000>;
> -		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> -			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> -		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> -		resets = <&cru SRST_CRYPTO>;
> -		reset-names = "crypto-rst";
> -	};
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> new file mode 100644
> index 000000000000..392d89055398
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml

file name: rockchip,crypto.yaml or rockchip,rk3288-crypto.yaml.
Kind of depends whether there is another binding possible for newer
Crypto blocks from Rockchip. I guess it is quite possible, so maybe the
latter version.


> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/rockchip-crypto.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Electronics And Security Accelerator
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3288-crypto
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock data
> +      - description: clock data
> +      - description: clock crypto accelerator
> +      - description: clock dma
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: sclk
> +      - const: apb_pclk
> +
> +  resets:
> +    minItems: 1

Instead maxItems: 1

> +
> +  reset-names:
> +    const: crypto-rst
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    crypto: crypto@ff8a0000 {
> +      compatible = "rockchip,rk3288-crypto";
> +      reg = <0xff8a0000 0x4000>;
> +      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> +               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;

Does it work? Did you run dt_binding_check?

> +      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> +      resets = <&cru SRST_CRYPTO>;
> +      reset-names = "crypto-rst";
> +    };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
