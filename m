Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D324BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 12:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsKxR+WF7LFN344bJTKFaSC0YRnWpgAplZEgxbMBZ3M=; b=fmb9X8bWypg9w0
	rXc6Y32R1sijwuB7pHyLKtBmx5FnHP8H/RxnKCP/xPT/IYRPAreY1OeocvRnoNWoN8Yl0EwE6UWyG
	byUtbxQgoDR2NGU6oIYICundlWvvD54GvlytJGnXNgoVCVpKprDX4g3IGS9QPetPJuCI/rMYhX0oi
	Kq6zGYc1CBIJBUSczLV/fgPSqCm7buiS5uF4Aw8dbzGzQ/hQ6UKCtoCh1urPxm65wBHUWksFfTWrr
	awYrObWJk52aXpZX70jT4Uujnpy8TAUOr7yAmthvv7TSzVZzCcn5aHbnuEAb//8JMr4sRqZM2bSQ5
	rRhPywIz115X6Rh7CCaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nacaK-008g74-Lv; Sat, 02 Apr 2022 12:10:28 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nacaI-008g6A-Fm
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 12:10:28 +0000
Received: by mail-wr1-x436.google.com with SMTP id h23so7687881wrb.8
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 05:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LU4WxTcoo4DIwvyGzKiLAb7OdkkMkGG5Idq3rF5DsZw=;
 b=ef8plMMHl5f+/DwKN6AYys4AGd20iAAP/lJWVnZ+USiqWdotHiVFucoV0Ns8yaIFqp
 78VEj1B5qf0XCKvUiuIOb1isK2b8BMd5PdyVF+Q6KVT6KsBgU7Dy7bjMkICwStIQn5Xy
 xQ8g0EpXq8uKhr3HE/51Sc66nAcs1WnrQWTA9/xgAgJ7bRvtPgzULl4xs/FMnuZMZsuf
 uaLm/FEFF2uKvmNrxfhYVv0VoBAp6LVlw4QWpqPvRXircYkLNeK2ZkKHJMJUg4SNqhKR
 kIYCDV5rTaBduHQHDTrJ7xz97BGs4x/oDXuPsXit13xE6gTbHthiQitk03Xy1DKUDtLc
 wLSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LU4WxTcoo4DIwvyGzKiLAb7OdkkMkGG5Idq3rF5DsZw=;
 b=fD2pMhGomafCwI9HA15LEdN80JcxkAlv7MTM1mlSrsvkfEeKDZ4k9cXotouESvbYKC
 ABqsPhhNgcNcxBgUyhOW2NL4iVKod3myppwQocDYBDnMg2nkGHXuEoLYg6VqaSoOPVbo
 moetARNqQaKIHzGGJH1N74oEWb9JbAlIio2UzMbi6bjy7JeGRpXh6TwCntm4A+HGld96
 7Ht39kJs1evxF8yIRvnQNvygEw86pGKRepgtn7ZScbnHx2vJPOoXNbLnoXmST/mQvRV+
 NC2i3fFYgXwMEjx6Gu4fT7/6a9uMUBjowt5KObKkKuoMHlZewum1CMFiZde4Tew+hIkX
 lVUA==
X-Gm-Message-State: AOAM530h95hPLRdJot3O1Fv1iws8P8eOHtw922h/YmLv2XEkpZdSemNa
 6dn2HOSHipyVIaFzqTKkrommHQ==
X-Google-Smtp-Source: ABdhPJxiuq9UlKATWx/wJwEiZRHVK/pago1Lfs023MNtO94iCjNNQ67WIi2xbjW7sWPvyKpFfHrMMA==
X-Received: by 2002:a05:6000:1789:b0:206:2d1:6f35 with SMTP id
 e9-20020a056000178900b0020602d16f35mr2227545wrg.613.1648901423075; 
 Sat, 02 Apr 2022 05:10:23 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 m3-20020a5d64a3000000b00203ed35b0aesm7713966wrp.108.2022.04.02.05.10.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 05:10:22 -0700 (PDT)
Message-ID: <3969db0e-50e8-e042-4696-97f56bd38999@linaro.org>
Date: Sat, 2 Apr 2022 14:10:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 27/33] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-28-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220401201804.2867154-28-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_051026_625039_13392F37 
X-CRM114-Status: GOOD (  13.48  )
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

On 01/04/2022 22:17, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml

s/yaml/YAML/
and a full stop.

Looks good but please mention in commit msg that the names for clocks
and resets will be provided in next patch. Otherwise it looks like
incomplete conversion.

> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 59 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 ---------
>  2 files changed, 59 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> new file mode 100644
> index 000000000000..66db671118c3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Electronics And Security Accelerator

Remove "And". It looks like company name is the name of the hardware.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
