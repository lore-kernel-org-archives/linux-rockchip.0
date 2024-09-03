Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F655CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 12:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sYO5omu0AHLcOM+lKQ2dybJZh1KbHNLz69+UcPnWlw=; b=WQZPthR5ugo2+S
	UyexPFIEx3kgV1m60dDRVbeFoswGa3pEYCJWDpe42f/fteQN0Dyxl8yuIu326HTOt8oAHDH94oarW
	Ik3IzkIVM4x6tM+rc/Oj/mc9wtnCMYovjqkMVQuBmwPBdFNDo4G3Y4TbrHfxxlJBkh1e5U/qCP5p1
	L0ON/UrN1Gw3vanE5sjBHY39hvyYK0UXVGsyfgCa7bDYKc6nAJApgfF3gus9BoOAuRxiN3YGGUCqJ
	stqzQAPikCqtnGbo/89bpMzVYOQP138j277zBa0zM5b8VqrkzU6sha1s1N9CAUf7hsrXZUyJWCJXx
	5CMg7gcR9a7+G0V6SzfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSPg-000000005i5-0E9I;
	Tue, 03 Sep 2024 12:13:36 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSMb-0000000056X-2ecd
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 12:10:27 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e03caab48a2so4012737276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 05:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725365424; x=1725970224; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4An20D90YPhjOzkwF+Hg8QYD3SJoIXYWy8cZWiHm4HE=;
        b=bkXDHl3S7D0HYlJc1mI5FkPWfuOoC6DDj0BKwdI8qfkjxurQetAPAPBOWGH6EsaJR0
         UNa5KYTCkWGH9pJwKIfzV+BM4EYY7DXqSkLCcwU4sb763l4YeY6NKFQmyhrrXSNP02qs
         +36+byFt1l6aC0hAy+Zokm8/x6v3VDsOxcVsf68LlYXoLvENMJMgfTZR6SY/WZkZfPjT
         Ovn1sRSKXdvwmKFMOv6dpa/1/pPFhLD8KEb+5gGh4pVYKVbKR0iDO8Rg4K/KiW0pObmm
         l58w4uZz9vX/6dFMoqRdSgcOxK9DBWLXzTVRh0CvmLUh+oc7DQiHiKzTVCbrboUhzL0d
         HTfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725365424; x=1725970224;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4An20D90YPhjOzkwF+Hg8QYD3SJoIXYWy8cZWiHm4HE=;
        b=YLOI6pTaY2PnMpx+hhPhGs8yYFqDDJYj2x8ZVpRDvxsC9WuBJj0yv7eTRnfLnWHMWg
         y7bB7N7zbKCTOzEXvbenKiH6JhN4g61fAzwxrDoScrIIDp+C1XXqiI0JGolVlTbIuGha
         T82nOBJD18GiTAl9uzfmfT4r430GeivWzT6V7fnFEndGr6QgxT1Sbn+HH7oSUvcXa82L
         /aRg7rneiqNIv5uWvMO8GjdZOrTyyarCPJ6S16szPKdKTsXhSGSaIpi9H1Y+3bSCYk4G
         udoclMUk8p3ZU7tXkO4RjI3iNPpAWL0mwNjqQfw2Ygtj4c5T+EaUlCjqcLCnhRQrkozp
         R8sg==
X-Forwarded-Encrypted: i=1; AJvYcCXu8RHmuc5vvUTcbQmRihV/wpgZq2Tj6YzMXstGK1XuvkQL1drATe4qo1kgain2zl6NByItvdl0087jP3dLyA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrSwURmMt5Fh/Nil5n9M9xGenGzWvgSfySRv0NDtu4Bh02K7qi
	GGKlA5bFxlMuFQ+DR2Olp/mzbZN9OnfkGm/2jWsr/KT1uc5ThFgGCdz3VWzWqRNGzganBCDdvYD
	vo0CJLIou/JWN3NP3Nm4Xt972DFcFS+rxe1k7ZQ==
X-Google-Smtp-Source: AGHT+IFX1MKd7/CniZfZMCZVstNgR+E8MEOhVGOhXHV1ehVIWPMeYpmWq3hGrzVCf5n6CzgXPAzIGrO6KiCqLNwVX0w=
X-Received: by 2002:a05:6902:1002:b0:e03:c692:c8b5 with SMTP id
 3f1490d57ef6-e1a7a1d20camr11923156276.19.1725365424176; Tue, 03 Sep 2024
 05:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240828151028.41255-1-detlev.casanova@collabora.com> <01020191998a55a9-697c3a2c-237e-49bb-b3dd-45762198d74f-000000@eu-west-1.amazonses.com>
In-Reply-To: <01020191998a55a9-697c3a2c-237e-49bb-b3dd-45762198d74f-000000@eu-west-1.amazonses.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Sep 2024 14:09:47 +0200
Message-ID: <CAPDyKFoJoqwNTKvpK93QtK1wA9vzVUTzCrP32s_HEZcrujN2Mg@mail.gmail.com>
Subject: Re: [PATCH v3 06/11] dt-bindings: mmc: Add support for rk3576 eMMC
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andi Shyti <andi.shyti@kernel.org>, Lee Jones <lee@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Chukun Pan <amadeus@jmu.edu.cn>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
	Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Elon Zhang <zhangzj@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Jamie Iles <jamie@jamieiles.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel@collabora.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_051025_732871_714928CF 
X-CRM114-Status: GOOD (  19.53  )
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

On Wed, 28 Aug 2024 at 17:11, Detlev Casanova
<detlev.casanova@collabora.com> wrote:
>
> The device is compatible with rk3588, so add an entry for the 2
> compatibles together.
>
> The rk3576 device has a power-domain that needs to be on for the eMMC to
> be used. Add it as a requirement.
>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This one doesn't apply as I have other changes queued up.

Can you please re-base and post a new version based upon
git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git next.

Kind regards
Uffe

> ---
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 38 +++++++++++++------
>  1 file changed, 26 insertions(+), 12 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 4d3031d9965f..aff8106ec361 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -10,18 +10,19 @@ maintainers:
>    - Ulf Hansson <ulf.hansson@linaro.org>
>    - Jisheng Zhang <Jisheng.Zhang@synaptics.com>
>
> -allOf:
> -  - $ref: mmc-controller.yaml#
> -
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,rk3568-dwcmshc
> -      - rockchip,rk3588-dwcmshc
> -      - snps,dwcmshc-sdhci
> -      - sophgo,cv1800b-dwcmshc
> -      - sophgo,sg2002-dwcmshc
> -      - thead,th1520-dwcmshc
> +    oneOf:
> +      - items:
> +          - const: rockchip,rk3576-dwcmshc
> +          - const: rockchip,rk3588-dwcmshc
> +      - enum:
> +          - rockchip,rk3568-dwcmshc
> +          - rockchip,rk3588-dwcmshc
> +          - snps,dwcmshc-sdhci
> +          - sophgo,cv1800b-dwcmshc
> +          - sophgo,sg2002-dwcmshc
> +          - thead,th1520-dwcmshc
>
>    reg:
>      maxItems: 1
> @@ -38,7 +39,6 @@ properties:
>        - description: block clock for rockchip specified
>        - description: timer clock for rockchip specified
>
> -
>    clock-names:
>      minItems: 1
>      items:
> @@ -48,6 +48,9 @@ properties:
>        - const: block
>        - const: timer
>
> +  power-domains:
> +    maxItems: 1
> +
>    resets:
>      maxItems: 5
>
> @@ -63,7 +66,6 @@ properties:
>      description: Specify the number of delay for tx sampling.
>      $ref: /schemas/types.yaml#/definitions/uint8
>
> -
>  required:
>    - compatible
>    - reg
> @@ -71,6 +73,18 @@ required:
>    - clocks
>    - clock-names
>
> +allOf:
> +  - $ref: mmc-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3576-dwcmshc
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 1
> +
>  unevaluatedProperties: false
>
>  examples:
> --
> 2.46.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
