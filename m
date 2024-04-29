Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA0AC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Apr 2024 06:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7e1qDW9lm6EghVRVR7bNaqWmIZ2WXnyuPpewjxaZTM=; b=Ay2+lmprEPDlBM
	zIGxhUjb1bbD0w9PgqG3cBzPM8Szjwu2HFrErFB0WJTWHObXVNnAAONFjfBKqZODI46llEtwqgrsp
	8Kjk775NcDeM39oRtg2Es9rDejeDKsyWX05t+sQsedsUbihg6qQl/za5Z1wxxZA9e6fQd6IfTgDqn
	lae5zIfRodqM+fyY2/5UvpDJURQtLiP7+H608clnWLES+Enhp3I3YLO9VoowRJEjpKul3LcODzR5D
	KJ4zOyz88ZavfMMAUGsMkLaDKBYFvB2+VAg9VKaAteajJ0Jhi0554RzO3ymTB5Z228g71lZJsAlBc
	htPquHyRyfUzZQQ2AiiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1KUX-00000001fGP-3ztd;
	Mon, 29 Apr 2024 06:27:57 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1KUU-00000001fEW-0h8q
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Apr 2024 06:27:55 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-56e1baf0380so4979848a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2024 23:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714372067; x=1714976867; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qA1Mq+BKArwz7aZn7XQgiZHHBtYnA3j8xSFLJOCXWzY=;
        b=GashoalFNbo2rMyQbRTzIBBz4NREKHCvFZ5E1dOpamCR2vdOsjZw0VEp7IQmzJ+huU
         AoFKqphzrC1sGb5t/DWjsCEtgQ0btQ9lnCpPNcR2thQ/8vGERHPDkL/kqpu7XY7ToXGH
         igSsctoag8qhXtU/vuYrN8a+BBbKfqPHaSwM/5TLi91qlxVs8o/yQYpCADrumvyhFGJx
         Bnr81ZikzJu5mVRAEUGB/vsE6ZDf9csQgMdNYcxMa7ryixcNmuhmq4hxp64+dZyFAAMp
         yQV7Zlw4DURJH0f82Y7CcfHYZi/4iRzZla6nGkf36BWff+OrqyG2EooAjY/b6g8x+Y3m
         i8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714372067; x=1714976867;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qA1Mq+BKArwz7aZn7XQgiZHHBtYnA3j8xSFLJOCXWzY=;
        b=hWgqG4YadkoaxYApazU7V9IsFXEfHvJBUDlAT0cEDeo5j2s9Bg7AXB0iaC+kky5EbN
         qtwPjGDdtDI3ocs/aSMBWN1mT3w2lymwwbtaU8Zy6/mEJyeyLBFOM36tFGzgNv3xAq3W
         CekVz3t1+IHVoflS4daEk4baeh1TS6yTQhdwBGnPZqhpKZ+aJ4aCaXkHs2qG2hBPyQFN
         8FLmA56LKNVkhKV/wQCzH3QB0xLI+STs9miqVPVJeCEosX0AmzWSz0x8deE2y3PFx4nn
         dWMucUDjpH6/sfxDqJjine2fm69pG1rEqgba0StlmPN8u7LtpKaLeuJYeBvggIld/Q98
         Kbaw==
X-Forwarded-Encrypted: i=1; AJvYcCUnIAoAQEQtTUPMO9OepagkLtk+QNj3uNenilOpEzVMi3EdtYbM8K1zdTsJG0YcZpMqJBhhPFWZ+gJavzpI47JZ2/nZbOL1F1LbABUYuPxcrOTU
X-Gm-Message-State: AOJu0YzXk8aLjXmIu8uyyY2XhwkvlcPFE+kRufm38a146laEQP4dL2X3
	kC6TPPG0XdURpx30B214ToSsQaYHTJpQSofP7RGgWimegf/qP2YmmG6SJz7OGtR3/MUtGqBxhWD
	Js+g=
X-Google-Smtp-Source: AGHT+IESUXN7I7fO318PxM8X0XDcywLSdQf4htvE8HhqgqMtYThdRx/pY4Ue7USfJXLXKoE92r5Sog==
X-Received: by 2002:a50:8acd:0:b0:56e:3774:749b with SMTP id k13-20020a508acd000000b0056e3774749bmr4907398edk.42.1714372067101;
        Sun, 28 Apr 2024 23:27:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id a13-20020aa7d74d000000b005726ee95a38sm2183591eds.88.2024.04.28.23.27.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Apr 2024 23:27:46 -0700 (PDT)
Message-ID: <1613d7e3-a5cc-4b8e-a905-3699779476fe@linaro.org>
Date: Mon, 29 Apr 2024 08:27:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: i2c: mux: mule: add dt-bindings for mule
 i2c multiplexer
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
 <20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_232754_304514_EAC182A6 
X-CRM114-Status: GOOD (  18.11  )
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

Except that this was not fully tested few comments.

A nit, subject: drop second/last, redundant "dt-bindings for". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18


On 26/04/2024 18:49, Farouk Bouabid wrote:
> This patch adds support for the Mule I2C multiplexer.

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> 
> Mule is an mcu that emulates a set of i2c devices which are reacheable
> through an i2c-mux.
> 
> The emulated devices share a single i2c address with the mux itself where
> the requested register is what determines which logic is executed (mux or
> device).
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
>  .../devicetree/bindings/i2c/i2c-mux-mule.yaml      | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-mule.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-mule.yaml
> new file mode 100644
> index 000000000000..458e4661cbc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-mux-mule.yaml

Use compatible as filename.

> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-mux-mule.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mule I2C multiplexer
> +
> +maintainers:
> +  - Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> +  - Quentin Schulz <quentin.schulz@theobroma-systems.com>
> +
> +description: |
> +  Mule is an mcu that emulates a set of i2c devices which are reacheable

typo, reachable

> +  through an i2c-mux.
> +
> +  The emulated devices share a single i2c address with the mux itself where
> +  the requested register is what determines which logic is executed (mux or
> +  device)
> +
> +      +--------------------------------------------------+
> +      | Mule                                             |
> +      |    +---------------+                             |
> +  ------+->|Config register|----+                        |
> +      | |  +---------------+    |                        |
> +      | |                       V_                       |
> +      | |                      |  \          +--------+  |
> +      | |                      |   \-------->| dev #0 |  |
> +      | |                      |   |         +--------+  |
> +      | |                      | M |-------->| dev #1 |  |
> +      | +--------------------->| U |         +--------+  |
> +      |                        | X |-------->| dev #2 |  |
> +      |                        |   |         +--------+  |
> +      |                        |   /-------->| dev #3 |  |
> +      |                        |__/          +--------+  |
> +      +--------------------------------------------------+
> +
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-mux.yaml#
> +
> +properties:
> +  compatible:
> +    const: tsd,mule-i2c-mux
> +
> +  reg:
> +    maxItems: 1
> +

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
