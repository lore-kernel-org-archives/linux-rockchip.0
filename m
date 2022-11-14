Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E53C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 08:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJrK5ehCZby+WJ44gvqringRv5OZ4Ml5AnaCpJlGAHo=; b=H/AX5XFAWdmt6k
	8gmA0x9CJ3BgZciCQbYeWtlpfktd6IUQKJXbUfthPbxf7CITDZiL6GUoZk/FQiPS6kM7rQb1tgcGD
	wEwlfO1IeTkwhI/3DDX8179OVE5JzBvuI5SskUQfrhyW5sCCj2fOotjpcR+nfpww8MEFbzfzjmVN/
	tTUonzu+rlzak6nB0tDVOVvQzFL9CK3yaEx/ui01FGr8T8Uq9yBcEn0xnxoBCVsCHw4cJCga+BMRC
	0fdwrAwjxIfMXG1dSG39YMxIsHvFTjA1LHfRuGE7tR5e6z76F0Jorpirf1V1uiMRacV90CsTlTBuy
	lenpstWt6rmNtUxowVKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUty-00Gpu3-VD; Mon, 14 Nov 2022 08:33:10 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUtv-00GpsW-UU
	for linux-rockchip@lists.infradead.org; Mon, 14 Nov 2022 08:33:09 +0000
Received: by mail-lj1-x22d.google.com with SMTP id c25so12187414ljr.8
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Nov 2022 00:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u4bDIlpTMPNGhynOcw3dA0OXLyN02s1nEchOu0DS5J4=;
        b=cKL+VMp7JYBOJDsXi2zWFzzuvxIRq6KN5BeLldK5pSjqmW+Mr0ZuLxe8CbMfF9qRx0
         4S+if7cpuxuEqV+HI4E+f08PEoqQ6JoQvpWpwtX+Gy4u9AyW9aZBE5W1L/rPv8ZyIHrp
         YcV6ap7JFGezi8Pcl53a6xQPj9FZ121WA1n+yus4daq+Qy+xcfaPLmLSrrWcepi/pxBD
         5I+re7wsa7djS6AF9ykaIyiaVn6EDJ4dW4hyOaYh0UbwlPpE6e8Lz5zMNHi/TL6qVkAQ
         yejXtcjFwp3NQWPa9Itcom21obdQKC7T0UVYSwUnrSwyJoFtitHt+COSA1cCVY6EXdmb
         o+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u4bDIlpTMPNGhynOcw3dA0OXLyN02s1nEchOu0DS5J4=;
        b=O0YgMjdWSGKZZITMDHISXR88cYV3U1fYW8du0SqGIdnuWMchDGMt5NZodL0yhoKYzm
         2DrI7BJ0o/U1O5EhLWFofwnqEYetr1jdCJsuhJy0PboPSWgl3YLqG6QMUxYMn5+J1M5j
         OctuCE/tl5mQA8oycJJ4Eu3OE8xHOhRrQIPnmJV9M8WmLai7AVgeEZ33h9FZegNS9J1O
         9/hEkP4CfdJXfEUIs7jviBmj9NTHBi1qlvBoXBISnnxQQg8WK6/zugMbm4xCjfaEIQn3
         5/qQN4pAjC/JdjjU0B/OmpYtQ5E2hL4W85Px9TDlVk4HsbuBdw7SC9HrKe9LDah0Brj1
         IGsg==
X-Gm-Message-State: ANoB5pkyydu6DmcrJCnQF/5N++zmw8iXGeEefFe34ZaE6wjhxsbp6gtV
	3YxYanUb06mA2mhF7Dr50uZYyA==
X-Google-Smtp-Source: AA0mqf4ngqj7E8JmFa45kHUi8W4+1dhE6cLcGtbN0dmhmpoukxzKn/FMfzXF2XA/hYFyX4MSqsl0JQ==
X-Received: by 2002:a2e:9ec8:0:b0:26e:9936:6153 with SMTP id h8-20020a2e9ec8000000b0026e99366153mr3847754ljk.278.1668414785727;
        Mon, 14 Nov 2022 00:33:05 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f31-20020a0565123b1f00b004b3b7557893sm1726968lfv.259.2022.11.14.00.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:33:05 -0800 (PST)
Message-ID: <e59bd325-0982-3a20-ed09-d75747c7e659@linaro.org>
Date: Mon, 14 Nov 2022 09:33:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 1/3] dt-bindings: RNG: Add Rockchip RNG bindings
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
References: <20221112141059.3802506-1-aurelien@aurel32.net>
 <20221112141059.3802506-2-aurelien@aurel32.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221112141059.3802506-2-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_003308_020786_720560DB 
X-CRM114-Status: GOOD (  16.10  )
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

On 12/11/2022 15:10, Aurelien Jarno wrote:
> Add the RNG bindings for the RK3568 SoC from Rockchip
> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  .../devicetree/bindings/rng/rockchip-rng.yaml | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/rockchip-rng.yaml
> 
> diff --git a/Documentation/devicetree/bindings/rng/rockchip-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
> new file mode 100644
> index 000000000000..87d80e8ff7f2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/rockchip-rng.yaml

Filename matching compatible, so "rockchip,rk3568-rng.yaml"

> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/rockchip,rk-rng.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip TRNG bindings

Drop "bindings"

> +
> +description:
> +  This driver interface with the True Random Number Generator present in some

Drop "This driver interface" and make it a proper sentence. Bindings are
not about drivers.


> +  Rockchip SoCs.
> +
> +maintainers:
> +  - Aurelien Jarno <aurelien@aurel32.net>
> +
> +properties:
> +  compatible:
> +    oneOf:

It's not a oneOf. Drop.

> +      - const: rockchip,rk3568-rng
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2

Drop minItems.

> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: clk
> +      - const: hclk

You need to explain what are these in clocks. Also you need better
names. A clock name "clk" is useless.

> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: reset

Drop reset-names entirely, not useful.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
