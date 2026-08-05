Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC2CEC55822
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 07:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opEz5tp654WWuRaog2iHmQD+FuLji6cZkcKU8M0gu6o=; b=2zy2buRD84Fhrv
	cCW+USsC1KRDygITOAmBqbdAIgdtIg+59Q0A09BIiWfzX1MFW41ymSmlxs/b/GnVGg8/Pt0D9820/
	z5a6BG6cDh8vQ/frULhwLX/pgZykD0Yj6AKntw8y8laieY5dHozEBK0J0xiURl93rtyp3pNyuLTpx
	AzPwdhzwc83OfoArgY0CN8G7fkDf9jisZmr8K1l23GX031k7jwuoR7rh1W2ajM+eKf77U22x5JjD3
	Zdw3Qy58AJ9kiACJpTzghL2+NIjfF0yoThE2oiTaoATK1eylTyCcNNlbbxYKNfsZCUVdpRt3YEr8k
	5YUeeU1uL60S0G4fnIPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrVpx-00000003NtZ-1y6C;
	Wed, 05 Aug 2026 07:14:49 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrVpu-00000003Ns3-32FG
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 07:14:48 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-39c7ce122c7so6318441fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 00:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785914084; x=1786518884; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+WwkS9i7GNpI0kimuglDAwrHsAV6ybfyNHVpUwpH78Q=;
        b=k+hilvPhQfNrbV2ULrYoOeCE95C1lutVsCNndao4L0pP/9sqSI/c11py6eMfX/PJAr
         QYr7U3qagaY9Wq8M/fB+sj8mUh9TQGO+tnJjyzBPgcEjkllUyJUOY2qxthR5pJ36FQI9
         tCpUnuWe25zfCZW8vbbVxRIaVP2U3vRhy2mGM1TBXqIuwLw6uPlRiIbGSrzPXGb/AO5d
         rKVxFjjbIgahKSfqSsEw8EJcVzvcIJ+hsrnQsbi0IHk3tuj4ha+uWBRKUibDRF8vleES
         sRHdeuaSje3vOk2jeXhEkVnRQ7eEui94Uo+U70yUMuOpzNlzCLCtlo0V+fh2CfEYuJ2n
         PNjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785914084; x=1786518884;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+WwkS9i7GNpI0kimuglDAwrHsAV6ybfyNHVpUwpH78Q=;
        b=oZmje6RmpXdZTpCU/FkEICpKPeaXlU2LmoDw041q5oxnpBzKVaj3YM9eV3FMY2rkUI
         cWHqcYV0Kgio1JfY11+tcUeUe3Aq4veaLaT0q6zi9/qSWq9xl95AK+EEXYZbaiLBGwG3
         cDKGMUlNsGojlWYbUHnxqW4SIInYk8bH9s897h1tYeJF8JlxbvJCv44lolgUdhmU8JH6
         Za6a3xhk6xgD74dAvADkp9Hg6JZO+Bs5vw8lR9aZ2uiyfK/QW0JNdxK/tn9xpVHbO/lg
         xu6QIFyMn8rik/3zl9PGUOpi3PAL6k5FV1aqMia7GKWxVLbtxRBf1ShpZq/N+bT5bUCe
         PAbA==
X-Forwarded-Encrypted: i=1; AHgh+RrKHzxE8enSGWKP2tursy2HnEgGrqEljy9L+YqedfHMxMh4/Px3epUdyfVYf9esErtDqM5EqzynzKqlnN6KDw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxv/vv9s7Hq3koB5qLXMoBo5o2BIDep3YMznEGu1+0aHApWCIry
	/SGMUZ5DGz1owQuHCdvyPXOqlx9BzzjYhqpAyzv3bZnBY2/UF/oDjIdF
X-Gm-Gg: AR+sD11u9Y1scZc8R1x0Ubt9QoGGKSmiiTZqLtsMIWgUj306JHxMxuOztjXwFiQaSkg
	GlppCwgk8rXO+iGQ08q7mZjpjMDxPk1Vx2Hut95nBQkPH3BjFDE8YTxIA+NDRi1BR32Yy5rnKn9
	2uWixOtbPI6NlvLJ/V14F3ZUHBPxUr2quC4578fxQUSUhwSrda+VO0gT4uAKWTTXqMmHAzjx2ZW
	4UyQl7qSgUtCP/sQ3gz5KnSY6frsG6Pf6n6PZxfEr9WVu6OcCUePqKql4rZ03Xz++uEpnyDf3zo
	RmFPe/d5zVt0sxC8OiXgj3lDfq/2gSVf8uKEVeCHkI+1/vdO3ZuOhvLSAfbfIk02mBwG8AtreK6
	K67zBldR8hc7Vb4BPmVvkLs7Ly1zkeSOfbxmtBP7uMQBmilZFFTF+udEkq9E9KwWwH9UndmOJ03
	2opLFQbs0rFkq2x/fS9REXUbX3pT+6Uwad+Xr9DWeENtZ2BtNv2iQHq+XQGo2ZuMzwyskW0A==
X-Received: by 2002:a05:651c:19aa:b0:393:d6dd:e8a1 with SMTP id 38308e7fff4ca-39fbb1ed3demr5005791fa.2.1785914083978;
        Wed, 05 Aug 2026 00:14:43 -0700 (PDT)
Received: from [10.38.18.54] ([213.255.186.37])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fb9a33c88sm6775331fa.30.2026.08.05.00.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2026 00:14:43 -0700 (PDT)
Message-ID: <da3aece8-3ede-40cb-8f63-45614a965cd7@gmail.com>
Date: Wed, 5 Aug 2026 10:14:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: mfd: rohm,bd71828-pmic: Use generic
 power-controller schema
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Dmitry Osipenko <digetx@gmail.com>, Shree Ramamoorthy
 <s-ramamoorthy@ti.com>, Heiko Stuebner <heiko@sntech.de>,
 Joseph Chen <chenjh@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>,
 Zhang Qing <zhangqing@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andreas Kemnade <andreas@kemnade.info>,
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Julien Panis <jpanis@baylibre.com>, Alexander Kurz <akurz@blala.de>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mfd@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>
References: <20260804-mfd-syspower-v1-0-a440783c2e78@nxp.com>
 <20260804-mfd-syspower-v1-8-a440783c2e78@nxp.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20260804-mfd-syspower-v1-8-a440783c2e78@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_001446_787538_1A0F89B3 
X-CRM114-Status: GOOD (  23.89  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Peng,

On 04/08/2026 17:16, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Switch the binding to use the generic power-controller schema instead by
> referencing power-controller.yaml and removing the local
> `system-power-controller` property definition.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml
> index 09e7d68e92bf..9818102e02c7 100644
> --- a/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml
> @@ -15,6 +15,9 @@ description: |
>     single-cell linear charger. Also included is a Coulomb counter, a real-time
>     clock (RTC), and a 32.768 kHz clock gate.
>   
> +allOf:
> +  - $ref: /schemas/power/power-controller.yaml#
> +
>   properties:
>     compatible:
>       oneOf:
> @@ -79,8 +82,6 @@ properties:
>         used to mark the pins which should not be configured for GPIO. Please see
>         the ../gpio/gpio.txt for more information.
>   
> -  system-power-controller: true
> -
>   required:
>     - compatible
>     - reg
> @@ -91,7 +92,7 @@ required:
>     - gpio-controller
>     - "#gpio-cells"
>   
> -additionalProperties: false
> +unevaluatedProperties: false



If I am not mistaken, this allows all bindings from referenced common 
binding files, whether or not they are declared in this binding? If so, 
then this is probably not aligned with what I am hoping to do with the 
ROHM PMIC bindings [1] [2].

I hope to collect the commonly used ROHM PMIC bindings in one common 
file, and reference it from those PMIC files, which use some of those 
common properties. I would like to collect all of the commonly used ROHM 
MFD bindings in the same file because scattering them around in tiny 
files feels like a bad idea to me. This means that not all of the PMICs 
referencing this file, use all of the bindings from that file.

Hence I would prefer not to just allow everything from the common file - 
but to limit allowed properties to those that are explicitly mentioned 
for the specific PMIC. For example, my proposed change [1] moves:

rohm,clkout-open-drain, rohm,pin-clkout, rohm,pin-fault_b, 
"^rohm,pin-dvs[0-1]$" and "^rohm,pin-exten([0-1])?$" to 
rohm,pmic-pins.yaml. Only the rohm,clkout-open-drain should be supported 
allowed with the bd71828. Keeping:
additionalProperties: false

disallows the properties which aren't explicitly mentioned for the 
bd71828, while making it possible to keep the description, type and 
other common stuff in the common rohm,pmic-pins.yaml.



Also, keeping the single explicit line:

	system-power-controller: true

to denote this specific PMIC can act as a system power controller feels 
(to me) more descriptive than "hiding" it in

$ref: /schemas/power/power-controller.yaml#

- which is also a single line.

As a summary - would it work if you added the reference (for 
description), but also kept the explicit system-power-controller: true 
and also the additionalProperties: false?


[1] 
https://lore.kernel.org/all/838486b443af9188410d8b802a818dc0af20ea9d.1785838585.git.mazziesaccount@gmail.com/
[2] 
https://lore.kernel.org/all/d419dcf8776f7ea88e4a66b9a0f0087f11e6622c.1785838585.git.mazziesaccount@gmail.com/

Yours,
	-- Matti


>   examples:
>     - |
> 


-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
