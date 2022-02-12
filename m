Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E469C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Feb 2022 16:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6BeA9YRIliPqIX5Uwv3gtYVUSQDLuOtEZsMIAk28CY=; b=qRciqNDD5y924j
	j0vn3C58I9A32uvVHzmWBLe6wUgHjVA+FwtWyX+f0LRi9hciGPJV8WN4hQWmusZp8+zaE0Iq7g6vE
	a92ykPQK6S4OCX8rrmlCgsq8iTIbO/sC4pTfjuJ9Ga5d3DNv/jh4KwOPtociIzKf8L5yCig7O/KTG
	+XDAkIjRRG3QuyQ5Ds1hqPeNjqNhPrQ8utxEftLhioS++LuyR/d3CDtj4MQAbL+aLA5F/tmHaLSfG
	loqi75miy8VFFljqDpW65xvQuAXq0eyshGcSIuamz0nCQl8bbBbkcpXi6etfZgTQU5bLvEDsDmnVH
	3vCdq9+8lhN2hPSJM+XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIurK-00A7Vy-Tz; Sat, 12 Feb 2022 16:02:50 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIur7-00A7SP-6z
 for linux-rockchip@lists.infradead.org; Sat, 12 Feb 2022 16:02:39 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EA616402E0
 for <linux-rockchip@lists.infradead.org>; Sat, 12 Feb 2022 16:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644681748;
 bh=l/sqa866xdKsWTgSNCB9rWLOZm4vGLLE7QTLVaTsoZU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=MmzNqnxdVutX6P/RxFdKqJ58ChjAJ6+R53XtlqgVQT4xDp5tb2KF7BtYwAWsBthrH
 JbU/5IcYHexLSqqC9V3aGWRbDhK02RUxB6XA5ay09uXV4cDuj+orVtnXv661oTg49L
 kzmFY1qpjUV8TGqiIEX/fAfnpFRY+calvC9v0wBBcmvrhFvi4q/MOmLrb0EVIPBdOK
 vQ5MJZ7iRyX7Uwxpy9Z9skJtCDKCBODg026tPrvZK8YTP0G/M7GgwFKOBP/zhTylgv
 OyxMPzkGcEI7rXfeZWIq5e+6kbwzxMw3qOpT6gWg/VjLd9XASD/Gcd/VXYUNFFg+iN
 FoPovc0JBKhQg==
Received: by mail-ed1-f72.google.com with SMTP id
 m11-20020a056402430b00b00410678d119eso2864072edc.21
 for <linux-rockchip@lists.infradead.org>; Sat, 12 Feb 2022 08:02:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=l/sqa866xdKsWTgSNCB9rWLOZm4vGLLE7QTLVaTsoZU=;
 b=NhldQ7QqARVNYLFoMcLmXvLjJtuqklNh4cZ39eM9heUqWcKIGkzTeZ8ySy6Uvcjh6Q
 UB8df7rR6Xcm24zsBji0HcETm/GWzUzHABaSVXkUuCgKcOZAvSHu8ACUNkOL2eSc1rc8
 kNl0ZuaCDkVa5QSDhguBjr5A8bb5rEyTE7HRKOuynTRsyVKZMmLtAinG20CUKQU2pFb7
 z0P24m6EM3DHfO2qaXHDix+oJBEEy4FNE9R3ELfBifnGzR+XfmFYrp8DvKMLC7IJOFlJ
 8tYlb4yh/jj9QlT46VrBm4A9HvqcvsWdnyDlDaQKfZChAFD0Pg6hmQFqCme7FPpLQnM7
 ggXg==
X-Gm-Message-State: AOAM530CpWR8p3g+EJS43H2U2OU71JeN3U7DzpxcBC0bkmO02Ng1kcn3
 So0JPGn85NUc8M3nwDR9FxUUL8bXA9Cq6bm7NRfrdCDXTVGhqH6RC7/khXi1U0cV5F5GFVxZnjC
 RDGRiZaFhBjb6tB0jnZ3ZoHYS7fCDnm6KLPfbIfUzWqVrA+qsfg==
X-Received: by 2002:a05:6402:50cf:: with SMTP id
 h15mr7182477edb.102.1644681748497; 
 Sat, 12 Feb 2022 08:02:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxCqbWilwt1HbUpSsc2cvzvmt39AYbiXm7khxjJiFy20aciawo2HRz4CMjXWjBdjSCj4Q/WLQ==
X-Received: by 2002:a05:6402:50cf:: with SMTP id
 h15mr7182452edb.102.1644681748216; 
 Sat, 12 Feb 2022 08:02:28 -0800 (PST)
Received: from [192.168.0.101] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id b14sm5098399ejb.160.2022.02.12.08.02.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Feb 2022 08:02:27 -0800 (PST)
Message-ID: <78327112-a979-fdc8-50a6-35738c9017a7@canonical.com>
Date: Sat, 12 Feb 2022 17:02:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220211115925.3382735-1-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220211115925.3382735-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220212_080237_396186_FE558801 
X-CRM114-Status: GOOD (  11.20  )
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

On 11/02/2022 12:59, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Changes since v1:
> - fixed example
> - renamed to a new name
> - fixed some maxItems
> 
> Change since v2:
> - Fixed maintainers section
> 
>  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 66 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
