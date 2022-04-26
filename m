Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B090EC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 07:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ag8zjBgcxAiJ3hEHKvvBu/YicK4nT7gH601puIuvL3g=; b=Qchmmqbdbe0mw6
	j3GL4wAagzkxp4jMULLAydEB3gQO5k0R+lEU5pPEXab037CxDRD+UuikuSVk11FzmxnwUhdpFW/7g
	3jvkajI9AiC+Urff5I/xqVbNP5ibOYrQ+wJO2LpWIiF7WxF4QzLA98+dWtXWfXko+UldPlrstrAYu
	HoeIAtnAtOElUXPGLDBC/KXwCY66Ui+qOEJ9Y9oIeQLVLITAL42CPMvacgXAkNqTpbY5dKtIj30hn
	bmiSCFqHCU7Cm+E4MQAmcxknhN+/TmO6FhsNfLG/sTYKS1h6DZSO/iGlWNuT/zRbwNMEs4vSBTvM5
	y10SzLbZ4HXfB7jmDKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njFRi-00CuxA-HH; Tue, 26 Apr 2022 07:17:14 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njFRf-00Cuso-0l
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 07:17:13 +0000
Received: by mail-ed1-x52b.google.com with SMTP id g20so21175105edw.6
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 00:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=shX4IM4IxXnZAwFkwJE2OgpC7RVVTATTpnGlocR5V84=;
 b=nkwegCQ8EKFVIPs5hZHXdpuhv8bMa7YtQcYyd/qrqIn4Hq2RKrB8ZQdqteOE7+cVh6
 FGpvuTrZzgWr3rd1cUdkI1eWBB+lYlJPS7gZdWeDO9i/PEtl1ea17FvJqh8UpU41Wubj
 fnyRVEUvKUiob7yUIL9tXqvAATdXlSSFwQkuxJ/BCX3d3H2WAx0RWWM1GejeF3A0bn+F
 dnSy9lA82Juycz5a59AOaj0pbHf2AHfBLos0JCLkT9AuB4ONriuURNuZBctckj5pn0Io
 c2f0Q16rnyOjSZCcfAVSIZNzfnwcV1KGB4kuC9xq6oItQ5gZnbbzT+r6zL2Cn0EuST1P
 8dpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=shX4IM4IxXnZAwFkwJE2OgpC7RVVTATTpnGlocR5V84=;
 b=UHbBNpZp7jShY+HUvTmPAMvGDDEp/e4CrmyCyA/tBSfWi7pLJjVAn2Fw9ClxQlTeQc
 xziU9aOOeaAaBY+CFekcl7rkwgS/BrqTMS1hbUCxK8zK9Nk1FIxe39HZTZedHV5h23Ul
 Fm3uiqfTeRJfWVQNScNn2NiO3XCRqCFid6msCNr04VOgEqrbAKMYUQo+R6fXg7fRU8tx
 wk7QwwmvCqj2ggVMBxket1vCqJrTTkOpzdvHA2/qmuBbu2uWivPb8pZyNK8mI9INGGI2
 3WVUcathrINawkKkZgn+I++P9kGzEvIxlcXxG1g9gTzWm8HbwDFwu6slUEUHMILRo3ls
 tsDw==
X-Gm-Message-State: AOAM530moF/L2TWV0BM1HAbMMg1QCsV56le/+5hhUVrENgM6Y+RKanqN
 t2Bw/5RJGs9opUcF3kLbPLnO+A==
X-Google-Smtp-Source: ABdhPJzsDgilI6y9JHqYWD8OWuHEuuSPGf6T7DrE8s9gbzU5nzA3PXCrFJQcPnXqIIM0+lzgdBiksQ==
X-Received: by 2002:a05:6402:84a:b0:423:fe99:8c53 with SMTP id
 b10-20020a056402084a00b00423fe998c53mr22805247edz.195.1650957427148; 
 Tue, 26 Apr 2022 00:17:07 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 c3-20020a17090654c300b006e4e1a3e9d5sm4507003ejp.144.2022.04.26.00.17.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Apr 2022 00:17:06 -0700 (PDT)
Message-ID: <262fa922-0564-7dec-9558-b680480d0e67@linaro.org>
Date: Tue, 26 Apr 2022 09:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220425202119.3566743-1-clabbe@baylibre.com>
 <20220425202119.3566743-26-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425202119.3566743-26-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_001711_123024_B1560AB3 
X-CRM114-Status: GOOD (  14.43  )
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

On 25/04/2022 22:21, Corentin Labbe wrote:
> The latest addition to the rockchip crypto driver need to update the
> driver bindings.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++--
>  1 file changed, 77 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> index 8a219d439d02..ad604d7e4bc0 100644
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
> @@ -21,21 +23,88 @@ properties:
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
> +            - const: "aclk"

No quotes (here and other places).

Rest looks good.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
