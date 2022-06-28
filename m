Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C863AC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5CqDinI3Whi/BrfKJs/EdYs3AW1kEkOwSzCGg9C1bs=; b=MOaqWEQed1166C
	qrMaBeAFLWaaR9gXRGC0jm+dY9mKepypvdaR7VssSMyrTmob8IAjS5CXdpB2JMRADGFnle+RKwic0
	hh++BzWxfW6k3XSSJGIxGC4sm8Jz9qqipTAVTkUdEdn4UnBL4ixTDW5pVsxSsmRFfY0tnronOs2AB
	enZ2f3pR+L0MddZH0bDMqDSlj2YTCTtvx4Oob0Mp4OmHOkJ5zEFTzmb7cSLoJgAYlbToKz8l7hlHi
	Mzsyo+0F88BeOT86iiWzT0ulcIAkcR1wt9nKlW4o4NTJuAb1ywXY1W1ZS+Lh8/CsHLsdgwuK4aP9g
	8w9HPo1+1gnoM/Id0NAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o670h-005OX3-KR; Tue, 28 Jun 2022 08:55:51 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o670f-005OVN-5s
	for linux-rockchip@lists.infradead.org; Tue, 28 Jun 2022 08:55:50 +0000
Received: by mail-wr1-x42a.google.com with SMTP id e28so11464624wra.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jun 2022 01:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cXLmon6E49fL49p54fzyHUVUDFyaMPORq7KTqI3rgOA=;
        b=ma57vO6HCuMAlmIr8zOwYVtBRcU1EVRuDsTdG565qfs2EP6TN4bo4VbRpm9D62pJIU
         FO9uqMvBvkNMrPZqy3bDnwcSLe4i5/VUM524oLW2hKRqNT1Sz7NAgDnQzxQqwp/O/7aw
         r3WKrAyN0Xz3BdmiAXARjUwv+XQuUZGtkfEjR8+DGOpKvTDGyC8UFw/UWMrNc4n0got4
         wHR7SUTHJOiPiRJ2IhZVKpgcHzYHOei0z7+jMFFdy3qgoi1YzRs6E2Jb9k7DFsplkXkr
         vvu77wUuJQl5BVJN6PE51OeMYF81EbPBfkYWTqmBQttnU5FfNOPS8Yirv0ylD5WVQzF+
         cAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cXLmon6E49fL49p54fzyHUVUDFyaMPORq7KTqI3rgOA=;
        b=0DZ/QbR742Ptsh7xERjwktQ7oKF+MsOyrg6xoVcbJjTiOpdeEqqi1SdtBft25QFK+c
         qRgk7JjJ/kuIC8v6XNxNyOcCP53Vr4gzQRHwGGakyBm54wlyNdQ4iSmlm9Pa8f9uWNL+
         to7uVV0bK83iLGkUEyRcbYJZsSPy8moAMxl6egHG/UsdWkGhQ5cJXzjS0RH9a9FaF57c
         7RUyp+W6EOSUnO79mgEiRGCzxQ5Mh1kKnEQyfA8m2BvazIpWIlsfVjc+Zus+K/FfNur9
         VAFyXvmR/yQdjoWq63LRpcN56lgSDGyyj2s86133WM72ii3GlXzEXERda9CKsBdXfUQC
         xxEA==
X-Gm-Message-State: AJIora/7JdCWY0DoXwYqve1gZF9hrIprDo8tc779eFTX1hRDLDuhObSS
	XtXaS9cow7fYfheIhk18B7sBcg==
X-Google-Smtp-Source: AGRyM1tgUbi0oAWiikQJqtra7mLXj++mz8ELXO0S8dEK+u8aBzZ56Xs6gJu/W3txzLVLpIZ2aT7xqQ==
X-Received: by 2002:a05:6000:102:b0:21b:9219:b28e with SMTP id o2-20020a056000010200b0021b9219b28emr16556920wrx.236.1656406548002;
        Tue, 28 Jun 2022 01:55:48 -0700 (PDT)
Received: from [192.168.0.252] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w13-20020a5d680d000000b0021b93a483dbsm12992800wru.32.2022.06.28.01.55.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 01:55:47 -0700 (PDT)
Message-ID: <00c7c730-eb20-8d2e-713e-3e592a6d3b89@linaro.org>
Date: Tue, 28 Jun 2022 10:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCHv2 2/2] dt-bindings: net: rockchip-dwmac: add rk3588 gmac
 compatible
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20220627170747.137386-1-sebastian.reichel@collabora.com>
 <20220627170747.137386-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627170747.137386-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_015549_285133_E75C5EA1 
X-CRM114-Status: GOOD (  14.17  )
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

On 27/06/2022 19:07, Sebastian Reichel wrote:
> Add compatible string for RK3588 gmac, which is similar to the RK3568
> one, but needs another syscon device for clock selection.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 083623c8d718..1783f5eb9e50 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -25,6 +25,7 @@ select:
>            - rockchip,rk3368-gmac
>            - rockchip,rk3399-gmac
>            - rockchip,rk3568-gmac
> +          - rockchip,rk3588-gmac
>            - rockchip,rv1108-gmac
>    required:
>      - compatible
> @@ -50,6 +51,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,rk3568-gmac
> +              - rockchip,rk3588-gmac
>            - const: snps,dwmac-4.20a
>  
>    clocks:
> @@ -81,6 +83,10 @@ properties:
>      description: The phandle of the syscon node for the general register file.
>      $ref: /schemas/types.yaml#/definitions/phandle
>  
> +  rockchip,php-grf:
> +    description: The phandle of the syscon node for the peripheral general register file.

Please wrap at 80.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
