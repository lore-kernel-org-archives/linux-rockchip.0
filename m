Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A90C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 18:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCDllmmunXtOmoInOdRo3gD1Bm+gvc/8u2uUJBy1QWc=; b=wwgU+tHUbyFKIm
	yXAmAcnT0wVQsGxgFAWAl4cCypA+btXhNudjUu4ksngMv/aSdliTxCuP5SPJ2muTMymHXuBZ4/Yvq
	vsNqJLry7VSCxvmjxpGsBkc01Hk6nj33DwYfEr1uUOLaK+qn2wHhDkRIxr9X5yYVTpZaw4sFErG5g
	iDySiskGkEdzAkhahCVLpD3lks1XZdDMObH7qVLpbiN7zu9QI1PLqoldAuJyDtSdUGUTAsV05sZVe
	jrNAfcPHrGdv49Nd/38bwhFQy+a6Vg3qytZzm5uI+3v6Dm3gbmaMNs5xfV2feyHpVm3oUd6rzfkQV
	dakYDymI0xfvXYxXoCPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWisN-00Bojv-BS; Tue, 22 Mar 2022 18:04:59 +0000
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWisB-00Bogl-Hl; Tue, 22 Mar 2022 18:04:49 +0000
Received: by mail-ed1-f43.google.com with SMTP id b15so22687243edn.4;
 Tue, 22 Mar 2022 11:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yUGdPChqlMnmJr7+nT7tnY1D50Ebcwr3w5rWWrqf40w=;
 b=I1D9N7/5Tlu5A8kMeD+QVhl4rGCMovf7gmkeEWBrxHmcNLSYzpeQ2Rl4RnYZGp2j04
 Sh1yTy0iVIS5xbxVGcJZRduakJeQb/UGKr9XUs/5OxK5CjCY0DO35qnjiQqNe/mOi+lv
 ucg5cFzp6ZZdfy4QWvWoDRNX5W1XGnYR28lgSdwXwU6uHqR/r3oZAD7zrXJMS2V33up+
 mFNu+Y8pr4pGgNfTYCFj1vqDZWTzyfE8xYwFUUZAGDKlme4+Gs3vRVw0KJEXPT0XEIbB
 Jph6NbDkFd1mIVKUlc0o1MxiKO48be1zX/OnBuYNPARw+czB6AM/AaIjRKRhIndE799T
 8ihg==
X-Gm-Message-State: AOAM533iY/wIqoNrpctiC5Y+DUK9FEtYIb+YH1/EJFb21G51eLyC6o4X
 I9qE9n95OtbOVQpV9+WxMYw=
X-Google-Smtp-Source: ABdhPJxpvvbq796bCqV6STafM0YifNN5hFUdSKEsnrkQBhgt4VCbfYE88mVKE9CnC5U9f10Xh7Zkyg==
X-Received: by 2002:aa7:d7cb:0:b0:419:43f:efa9 with SMTP id
 e11-20020aa7d7cb000000b00419043fefa9mr25170220eds.75.1647972284741; 
 Tue, 22 Mar 2022 11:04:44 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.googlemail.com with ESMTPSA id
 hr13-20020a1709073f8d00b006dff3a69572sm3870244ejc.5.2022.03.22.11.04.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Mar 2022 11:04:44 -0700 (PDT)
Message-ID: <90ebea0b-1d67-98dc-2b49-a6e3b97a2c4a@kernel.org>
Date: Tue, 22 Mar 2022 19:04:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 21/26] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, mturquette@baylibre.com,
 robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-22-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220321200739.3572792-22-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_110447_629877_CB465D3A 
X-CRM114-Status: GOOD (  19.26  )
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

On 21/03/2022 21:07, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 84 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 -------
>  2 files changed, 84 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> new file mode 100644
> index 000000000000..a6be89a1c890
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Electronics And Security Accelerator
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3288-crypto
> +      - rockchip,rk3328-crypto
> +      - rockchip,rk3399-crypto

Waaaait, what? Only rockchip,rk3288-crypto is in original bindings.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 4
> +
> +  clock-names:
> +    minItems: 4
> +
> +  resets:
> +    maxItems: 1

You missed reset-names.

This patch is quite different than previous, in unexpected way. What
happened here?

> +
> +if:

Please define it after "allOf:", so it could be easily extended without
changing indentation.

> +  properties:
> +    compatible:
> +      const: rockchip,rk3399-crypto
> +then:
> +  properties:
> +    reg:
> +      minItems: 2
> +    interrupts:
> +      minItems: 2

List interrupts. This is really different than your v1. It also looks
different than original bindings and you did not mention any differences
here, nor in the commit msg. Either explain in commit msg all
differences (and why) or move them to separate commit.

You seem to change the bindings a lot (new properties, different
constraints, new compatibles), so this should all go to separate commit.
Now it is just confusing.

> +    clocks:
> +      minItems: 6

You need maxItems. Everywhere.

> +    clock-names:
> +      minItems: 6

List all items.

> +    resets:
> +      minItems: 6
> +else:
> +  if:
> +    properties:
> +      compatible:
> +        const: rockchip,rk3328-crypto
> +  then:
> +    properties:
> +      clocks:
> +        minItems: 3
> +      clock-names:
> +        minItems: 3
> +

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
