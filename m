Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E31B0CE7A8E
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Sep 2023 04:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ey94SA3oW8AjMqlVPD0WqjPOGGL30r01vdRmZNqywRo=; b=gZQ/BdV+E9AnWa
	MOC/l0VNAQcTP5K4hpf6ovoRXLIsqjBN8WaVwsL+oIwv2cQwBn626J67mGdKganZJW93741vRepQV
	O0utmK9jFnhthoWWrQsvv+xjyQkojmKyhgUSXi75/r7bOsvRhbYgzbygMeIgY9PzTXt1Lj9PLpiCX
	sawOuvfgBhmj0Z38iLhT1Hzt6f3c082nTGyzSA6b6DuYR3XT2tZ/iBBmNwQwgtPl0FQhHxkJBlse4
	ibbEPiQwZbudnjRVCjOavFAr/+SBwGqPoM2kDc2flmiXWjP/4V/vPsOsR3bfUUm5qbO0Bz0dtEcbH
	R2YLJVYDp3lMlYXWTJXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkzLH-00FWd6-08;
	Tue, 26 Sep 2023 04:06:35 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkzLC-00FWcN-2y;
	Tue, 26 Sep 2023 04:06:32 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bffa8578feso132869881fa.2;
        Mon, 25 Sep 2023 21:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695701188; x=1696305988; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGB+hW8EcgpXNNSjmf7fJ24sLwC+iJpETWg7Drt2OpU=;
        b=Fz36+RqlcJXSru8Qa7tQe9/Jl90O4DMk0bCZqKzVudZRpq+DpT0fSGVZWypDM3GYoE
         sNt1AUBuQgsuBT2YYJQy3+neR4+ypmHEAMtYQo1MKHgvBTNdZgle3Dt2Kr4/M7ygSrTV
         4oql26a5nA6v1fbpb1Eaz3zBTm9/F6K4ay3Xr2zOIGhwZsQv2UCso+2RwwrxvaY1GX7x
         uziFvKH1TxbvOL0My1Pk7lOEwDFp0jLBHGvPsW7k4zQGivcT3cQQKHGADdfvnC/NUJKN
         YfaLC3o/GP5HZoh9km8ijyL89QulRvjAwBgJQlh9K/J26hrWrZv4HXseCpxzPQPEjxnX
         qq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695701188; x=1696305988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGB+hW8EcgpXNNSjmf7fJ24sLwC+iJpETWg7Drt2OpU=;
        b=JBKyMTM3Rx2WQGJA9gCosTtMwmB0Da4X1tYWTivU8aZgeogTEBU04tcGuvlgjAjciI
         bb9fqNmVxRqRFGDdWTnkohWGHSYgHc47TXT0PoOoUdkYY3uYCGjvpRK0eJWQj3NEbUCg
         N9367RTWCo6EUjL2WtV+gyGq9UU0VXc+f2hgo41OfjGRjC0h6ZeN1imkCwxADPMxiYtK
         3VtO3dmauguomuolZ6eiSj630sXy0uSWi1KmwEth5T5fW8chTJoKc5pLAHk8LmLMFM7M
         DnWlHZILfhQ9M/P+hLsvyqwE34R11RRz42umGDCDHKhFbNu8nNDj4AO9KMuG1DZC6V+K
         D+Gw==
X-Gm-Message-State: AOJu0YyN9TLVP9poKqYzibfwOowLXEjXhoopQau68IlLfqYcOxA+u8jO
	qGGjjoasKxLrQ2hS7OAadqs=
X-Google-Smtp-Source: AGHT+IFnZUohBRjAdg6nVKhBrCjO2Fo24nnQvaYhhpnODnccZ+1NZtjpOOBB8jCfNGJgy9YzuEpoYA==
X-Received: by 2002:a05:651c:118:b0:2bc:d94f:ad04 with SMTP id a24-20020a05651c011800b002bcd94fad04mr6668385ljb.13.1695701187599;
        Mon, 25 Sep 2023 21:06:27 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709063c0100b0099bc038eb2bsm7137424ejg.58.2023.09.25.21.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 21:06:26 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>,
 Serge Semin <fancer.lancer@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] spi: dt-bindings: Make "additionalProperties: true" explicit
Date: Tue, 26 Sep 2023 06:06:25 +0200
Message-ID: <2783820.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20230925212614.1974243-1-robh@kernel.org>
References: <20230925212614.1974243-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_210630_981718_A8D12B5A 
X-CRM114-Status: GOOD (  13.87  )
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

Dne ponedeljek, 25. september 2023 ob 23:26:00 CEST je Rob Herring napisal(a):
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 ++
>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 ++

For Allwinner:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml | 1 +
>  Documentation/devicetree/bindings/spi/rockchip-sfc.yaml         | 2 ++
>  Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml      | 2 ++
>  5 files changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> index a6f34bdd1d3c..e1ab3f523ad6 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> @@ -46,6 +46,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> index 28b8ace63044..3b47b68b92cb 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> @@ -68,6 +68,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> index 9ae1611175f2..48e97e240265 100644
> --- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> +++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> @@ -50,6 +50,7 @@ properties:
>  patternProperties:
>    "@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
>  
>      properties:
>        spi-rx-bus-width:
> diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> index 339fb39529f3..ac1503de0478 100644
> --- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> +++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> @@ -47,6 +47,8 @@ properties:
>  patternProperties:
>    "^flash@[0-3]$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> index a47cb144b09f..6348a387a21c 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> @@ -160,6 +160,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
