Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F3CC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClNYg/Voo2RubT72jmV5G/nZkAFaFbUCpZIykPDlnPg=; b=bLhHdd2f7+jdwm
	v4B0tr1poC/rOr5MbbaLXYS/1zuuzpS0Q/fu3+Qzl7795qZQMjxXl31hXUPFoiHmsm2tmVuo8Ze4o
	kBtrbwA7c/DJRYXxKPi+I5hfvSumEDByBkUGybiXcoaw7uFYztmD0hAowckAYMDV9fBnwrhrxw2y9
	hXYNPsZGgUgwSwMZSW5i4BA7vmI2xah7nZh5qBwF/jt1bOOtDayto20wNBS1f7FkUYCEY/V+ptNyP
	RJ/14FQIMQ286b8ER88+BITJPYlIKZ+95vj65g0o19NB+TGfy/Q4ab8LQHcVwbExKxGX7zjbTfpQW
	XCGQb71twkW+HZG3OaSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj313-00AlUn-Np; Mon, 25 Apr 2022 18:00:53 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj310-00AlSw-SJ
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:00:52 +0000
Received: by mail-ej1-x62e.google.com with SMTP id l7so31207554ejn.2
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 11:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=uLQr2x32akaYMf3E5hvQ+Jlniyq/FFxA4TjjQ4jUZOI=;
 b=PrCmRUGNO9zz2jb5NrEZNZ5sbY3qlWnI11McDz5JaYhy3cLmcUyoM0hBXp+Q64VOSS
 wjO1im9Jr/iZ948dU9nlzT4esy+8eE2uTROfucvuLtQh+DGf0Xt+ghAkyMUE0UhPbHne
 dJ9RxVudU4wFftK7SF7ZjoSHbVTNTcu3xpWzPQDNzipA0UYRhSfYLSjxkceVNu5Ar+aH
 561SjQpSCCrBUZFcaDLfYcCKyj++1kurUzjS+cEPB1+mk9hKYWuVzKk0fPlWwl7Q0YxG
 7OGw9ZwRHgVj5coRyB9wSOCA82MUvXYSThO8yBJC3v/Eq1m7Ku5LwAHpTUlZoN+Rmw5g
 /ieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uLQr2x32akaYMf3E5hvQ+Jlniyq/FFxA4TjjQ4jUZOI=;
 b=l5B9C4WSwqR5RnjPUz7EjeHPWZ/oSfWQRnjD9Xg7iVU9lREn7lpmTCXR6Qtdl5Pr2e
 v+vYjX3SgGcU8vPQORcTNWfv/QDq0VAZeOws9GL0qbhWBX7RaODNYfWvGqSLf1EeIA/0
 zaANTFa6nXtjAwB70VmPz7WQyASMgJqWbg+FTyBSXePVIJoyo9fMXRLjvRGCb2xDeI2v
 UxNqandAxjqj85CLWjHpVHjAy6ybsv7KsUJyPkQ5KuBW7xKvj8IVaMp5k+Fx6D17+G4E
 0lTacUij5Ov9O6woc0dJHydbLqrSJxLNpy1C9f1f6kVgp/r2TJFcPuSJ6POUzc9wH8qw
 BMSg==
X-Gm-Message-State: AOAM531tPMkwdxf2hWv04Y5CTZcSCPcb3tLusyHzfIrK9qIdxlHGkqqa
 KLSkpATNlf9Oj3Ct4w5Hyu3Ikw==
X-Google-Smtp-Source: ABdhPJyF5Bg4ezvxWrfynHW89qeddZNlKUwZzbBS7vOHrvONxZoFPTKlbsi2IiYzpSUOZ+XpHT+7Qg==
X-Received: by 2002:a17:907:3f13:b0:6f3:ad46:be1f with SMTP id
 hq19-20020a1709073f1300b006f3ad46be1fmr75899ejc.627.1650909648858; 
 Mon, 25 Apr 2022 11:00:48 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 n5-20020a170906378500b006efb4ab6f59sm3848153ejc.86.2022.04.25.11.00.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 11:00:48 -0700 (PDT)
Message-ID: <60db784a-df7c-af2c-5602-bab8462b0223@linaro.org>
Date: Mon, 25 Apr 2022 20:00:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 1/7] dt-bindings: arm: rockchip: Add Pine64 Quartz64
 Model B
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
 <20220425171344.1924057-2-pgwipeout@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425171344.1924057-2-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_110050_964380_C5EA84DA 
X-CRM114-Status: GOOD (  15.17  )
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

On 25/04/2022 19:13, Peter Geis wrote:
> The Quartz64 Model B is a compact single board computer from Pine64
> based on the rk3566 SoC. It outputs on uart2 for the debug console.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index eece92f83a2d..d6650a366753 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -507,6 +507,11 @@ properties:
>            - const: pine64,quartz64-a
>            - const: rockchip,rk3566
>  
> +      - description: Pine64 Quartz64 Model B
> +        items:
> +          - const: pine64,quartz64-b

Since it is a single board, not a SoM, this should be rather part of
enum of Model A block.

See also Radxa ROCK Pi entry.

Keeping such approach - each single board in one item of oneOf - makes
the file very, very long...

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
