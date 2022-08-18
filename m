Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 654AEC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 10:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG7+TxOz7OKXlp3t962GjnsNocJGCC8nz9QMdlUkdDQ=; b=DGuy7OCB2imJKi
	lMeRRfLpTfp5US+sE2YlKxj0fkiLyLxJuMMF677FJkPoOQ9EeL+Q2+0NBKYv4SiRwCV9OLn26Ss4B
	Vlo5CI1EioBT6KMmPgIEKSEd6DZt/uRSFQeS507w9kK5zUvcC0Aa6QbB/uWV2kWanuBq5BtERVAf6
	Dn+weC8roW1AQsNrb4gONU1vKaktfJaFfC/GdEMMCyBUVWnptd9RNS1cp/yn7AULxVra2++F93DXc
	2pDxM0vB26DforV35xfQHUEhi8zcHylG6oGtFQ3vbxCw72TSKscmc3QCtwC5JPdAwtCl/nll8HfjI
	0Q5PUPyQRelW9P3AuyOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOcLx-0021lG-GR; Thu, 18 Aug 2022 10:02:17 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOcLh-00212M-Ai
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 10:02:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id bx38so1215845ljb.10
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 03:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=EPxzHwYhFlft26MSmbXxer1pCM7eMFS2V0bDjoXyAJU=;
        b=eEyiXUfctANEiiWIrg9Y5EqIuZU09pRr7ZymPkvek4Ap91RbdKI7jw15XsDiehwsmK
         HnYwSQDCa/kUdgXXYdEwax3exEU5TXaQFQGgokYN+jlp8rKPFuBY00u+/52gfWnWSHJB
         XRHDi5P6qO3L3T3EmrLE8tlFymLjIxwLa/2W+InzaIVjmaHNlmVmlcGQgu+mOg9FNfIB
         CuqfKF+pWfgaZ+0cJywgNgJdl7LFHk5F8YfvFmzMcC1iezVCRj63UgfRF0ieftEAtVz9
         c0xRG2l0LPXmx/8VDfuna7mFKDRScPF9E/bdIZ3fomoS62togRzGjWCxBVGibXPC28+F
         RKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=EPxzHwYhFlft26MSmbXxer1pCM7eMFS2V0bDjoXyAJU=;
        b=5/s4+2Ztzn7kfw3n2qnw7nQzkLvbw8DHZH6pZTrxbj/2vZQI6gE53klv0vBNr9S5xd
         Iy0LsSH+FenUgwCqBfCOQKSrYgWGY4ARHWxL+paT1t3zbN7a+0K8c7KNRilHNAMiBHj/
         o7m5dpZ9j+ONh1wu09vK7uL6hNgrQ3jOkBJ+O/vNpTk0ELt7YX7Iv7/CObGAA2MLLCvP
         VNsKWilIj6g/7EZGhzBo/GJ2mJzu1RSPAFUas5s5VKtY524lbFl7k+J+3qW6dRGWqAvm
         74dqRPdR03ZuGdvQrELtuD6R55XUfmS8rnbDSPBaEfzDqWFYAGTI5mfVEoj3CASvJTVT
         EX7Q==
X-Gm-Message-State: ACgBeo0w3CCRbJqZDvZAKubV7sJ5TQQL35tNcNyjj5M2Pf1JLufr+Myc
	ttZo2rf/NhmkxbyZ2KciREj99w==
X-Google-Smtp-Source: AA6agR4Co2CPb5XN9X5svZynx70dgbm9JfH6RnGUadXts1hBLz65YPN73Tt641xJ42PHeMEA2pv3rw==
X-Received: by 2002:a2e:86cd:0:b0:260:55e:db13 with SMTP id n13-20020a2e86cd000000b00260055edb13mr629600ljj.146.1660816917505;
        Thu, 18 Aug 2022 03:01:57 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id b9-20020a056512070900b0048b37d29261sm165372lfs.67.2022.08.18.03.01.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 03:01:56 -0700 (PDT)
Message-ID: <f776de47-615e-d38d-8512-3e5391d6650a@linaro.org>
Date: Thu, 18 Aug 2022 13:01:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4}
 variants
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>, Heiko Stuebner
 <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 devicetree@vger.kernel.org
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_030201_472913_BF641F44 
X-CRM114-Status: GOOD (  17.33  )
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

On 17/08/2022 22:33, Brian Norris wrote:
> The Gru-Scarlet family includes a variety of SKU identifiers, using
> parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
> different manufacturer names) also use the Innolux display.
> 
> For reference, the original vendor tree source:
> 
> CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97
> 
> CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  .../devicetree/bindings/arm/rockchip.yaml     | 27 ++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 7811ba64149c..dcae534e3971 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -363,30 +363,55 @@ properties:
>            - const: google,gru
>            - const: rockchip,rk3399
>  
> -      - description: Google Scarlet - Innolux display (Acer Chromebook Tab 10)
> +      - description: |
> +          Google Scarlet - Innolux display (Acer Chromebook Tab 10 and more)
>          items:
> +          - const: google,scarlet-rev15-sku2
> +          - const: google,scarlet-rev15-sku4

This does not match the sources you linked in commit msg, so I am
confused what the links are supposed to prove.

Is this matching at least your DTS (dtbs_check passes)?


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
