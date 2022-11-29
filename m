Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAADC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 09:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XimtwVfUK/4rw5XKdASl4kPOZWjxw7bfmTjv5pA+x1o=; b=Ir7OvVbak12CQg
	tJw/qbMQUippkZAIMWAO9+tBZ8bWprbz1r+orItcZu57HnRtcbmswxOIWOdavgBn3raV54anIBP54
	cTGck4EMm59mwA2mvAYzKZOwwiZxb47AkjZNdnisZOochS5TSPzMKkSUYmkXTi1Bg4EYAR7C/byAS
	gzGENU447zaWnsaJ2qjAV9ab7SF6UyPA0arvrIuqO5bYY4Rp17HsH6rnY9LgZERw0vGcJPY7O4MjT
	Ib3/pCRctzNL8GAeSUeHwXaVm5Nf8eXEEADGls55k2bY9oaLe2yhF5GXGtgy06nM+A6bVsfqeC/gk
	8BqrprGCSPl3UJHK6B/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozwrA-007o5S-U1; Tue, 29 Nov 2022 09:24:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozwr2-007o22-7E
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 09:24:41 +0000
Received: by mail-lf1-x12c.google.com with SMTP id b3so21548714lfv.2
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Nov 2022 01:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hBDc9CcCcTklSkLn2omn0o3yNWgPbE363k3eUvI/h7M=;
        b=Es2zzDQYxQUOfxd+vsDHLcyrTM7DQmqyh+D+PB6b6KhjmVs66Iw1Yqn2XrszY+3//i
         5RLbkf9b92gJuqqo1Dcn4Sux20Vw1n0CPi7Ke64abWlPlfmhommdQrQUIxgOJdGGToSg
         qbosMJRC5XYGV013mo52sFACgUI7X1YVshzxbvCRPn6Eh0BYWrwogP9+PEhrxVbavV94
         DtQ9LtSdgav1KAawshTUb5+1VjwGdS4an4dnVX7dC/QNLQ2f+TnuqtAwtw20Kn2H7JbQ
         DvdiclwVseLcof0Uo+d1HokEk58wRZUBMK2ErsQF7+07VhYMGQGghGATi+F8UODoNC/x
         AfLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hBDc9CcCcTklSkLn2omn0o3yNWgPbE363k3eUvI/h7M=;
        b=1OQcR8fsStTt0BXwafTYjm0R/pxHhGH42RqMKUBkjJZEfhBwhFjE/Umf3duF/jrTH4
         LJQBpQ2bIxO8/F/irEOS/I2P6UJ65rREmMM3vUgn8QdKIqDYz11mPgNOXFGSJpC3n87N
         OIOCQpG/QZeX/IVzYeqqET0EK6pvfnSPs420CmxMZ/m6szO9DPScC3nGipdu+nReyihl
         CE8BvJCfMmcqlhaEh0Aj92T6WjZuTLPK7h5ts0QUF4eC2osvM6HhDQjEUtTGb/bZxCR8
         X2cR4R/0Crt8iqJxYuBohqiLX4M47/107qWhtuOsZovMpB02DPgbqr/DP8l8h5Iz9m0G
         Qk5g==
X-Gm-Message-State: ANoB5ple7LEIV6Q4yn0yGAqIolJnz/F3hx9pv2kZdcxMhf5rc17xGyhI
	ITv10TEbdI6e9SR+qKQGcUc2WA==
X-Google-Smtp-Source: AA0mqf7Di+vA1MHihgiN372ZA1nFRb+Z/G5naXPqvEmAfNO2xwioDDiYClbUnBMUTROvQc29I6mipg==
X-Received: by 2002:a19:4f52:0:b0:4a6:2ff5:ddd2 with SMTP id a18-20020a194f52000000b004a62ff5ddd2mr20497054lfk.166.1669713876371;
        Tue, 29 Nov 2022 01:24:36 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a2-20020ac25202000000b004acff58a951sm1603246lfl.133.2022.11.29.01.24.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 01:24:35 -0800 (PST)
Message-ID: <89b16ec5-f9a5-f836-f51a-8325448e4775@linaro.org>
Date: Tue, 29 Nov 2022 10:24:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: RNG: Add Rockchip RNG bindings
Content-Language: en-US
To: Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall
 <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lin Jinhan <troy.lin@rock-chips.com>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20221128184718.1963353-1-aurelien@aurel32.net>
 <20221128184718.1963353-2-aurelien@aurel32.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221128184718.1963353-2-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_012440_269568_11174861 
X-CRM114-Status: GOOD (  16.32  )
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

On 28/11/2022 19:47, Aurelien Jarno wrote:
> Add the RNG bindings for the RK3568 SoC from Rockchip

Use subject prefixes matching the subsystem (git log --oneline -- ...),
so it is rng, not RNG. Also, you are not adding all-Rockhip RNG but a
specific device.

Subject: drop second, redundant "bindings".

> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  .../bindings/rng/rockchip,rk3568-rng.yaml     | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
> 
> diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
> new file mode 100644
> index 000000000000..c2f5ef69cf07
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip TRNG
> +
> +description: True Random Number Generator for some Rockchip SoCs

s/for some Rockchip SoCs/on Rokchip RK3568 SoC/

> +
> +maintainers:
> +  - Aurelien Jarno <aurelien@aurel32.net>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-rng
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: TRNG clock
> +      - description: TRNG AHB clock
> +
> +  clock-names:
> +    items:
> +      - const: trng_clk
> +      - const: trng_hclk

These are too vague names. Everything is a clk in clock-names, so no
need usually to add it as name suffix. Give them some descriptive names,
e.g. core and ahb.

> +
> +  resets:
> +    maxItems: 1
> +

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
