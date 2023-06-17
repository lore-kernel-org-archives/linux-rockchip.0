Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3472DEB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 10:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqHnkTYPIsO4hsEC0w9BC8EUJyHUyV07hTKIQOkSBlQ=; b=fLW8Js51paqlGw
	YyhMRCu1lOTr0xuXp8Uiei6bATwJiZug6x5Y/ZXy6JHwqMbW7i5SfXUprjAUsq4FUddRcgpAhWG81
	e5T+pt5X4CUwQ49iOnSROxzDZlX6zhxGsdNkD+++bEngJySDTQMoDyfhLhh5Hx1HfDbig9C/TE5OP
	sTXQngJcMtZ5ExXOG37JOguNKEKyne8/a6xS+NfhclgBkA+gI2pWBOqWlxZPRlKvZwSE19SSX8BVW
	Lqm3etHbnmGFJLTnJMXspt/VhO1JCulAJjpocMkpJsYxw8ZzMIBQlEdYrrSg/MKgDkqTPJF2F/roB
	w8aXtC3eoO5AIbfPdtlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qASuw-003Emf-0z;
	Sat, 17 Jun 2023 10:12:26 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qASut-003ElX-07
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 10:12:24 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-986864cfe5dso234735766b.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Jun 2023 03:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686996740; x=1689588740;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TgP7Xo0/BI+q/hHqVMJMUYkrnaQIXgCa1ZtLOmCe39I=;
        b=WY/Al9fg2u/uL7+ehIIXuN3VmIYDiGimoYGFQeZU7j8AvPZCB+bcbRw/+WqHtBruYr
         ETErEbysbq115pvxQot3y8VruE74oD1UwQMYIRagJLyOxXLehg4EwLAlNRfH0kRRSkDz
         wSLNCUUueHDn9G0f2kA7bNDD86wzffQKqbq5sO3Ow2jlbhRsG0hn646D5aEmZre6NfVe
         s4SOKzNa4tdpcPXF8+sMQGyOQSUfUytKGY9n8FPEaGDgKgEeSfm5ddwC9IlXMquMhlL1
         84g4IDdebc+bMhNpNSMw1kE0850ioi+5VEaN9QcNCz4LhNBPQ2QCw83m1zPCHLrb82xI
         JWJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686996740; x=1689588740;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TgP7Xo0/BI+q/hHqVMJMUYkrnaQIXgCa1ZtLOmCe39I=;
        b=QiSlA8rhS5d1CPIsm5r3N+jUdrsn3JRcSaaU0Ku7zR5n6XmBgYJiYlw2+l6aifRGH3
         fF8rJDdRjadfwfGmYExUPNS9UeATIRVvYTdGaGRl8puf8w0o7qZs4AGrOJkDwPH/YQ3v
         GEtftnwO7t4+aEIgR7Ya5RbdrFRPdUM/DFuCH+TgJ6Fc9/QuGeYJW0L2cf7Semfk1iK7
         pU06YTxfTk7D0Kqrhmty96Izy8qWMo4NnQ2W64rvbFDHHAXhmDoyCYiaPD1crGUDECre
         2VOnJe36+214rpfiB78v/7/tVhtJkKeCfRQ2t6I6QfIB6vKYZHX9RFzFFHA9liaLWILj
         tsRw==
X-Gm-Message-State: AC+VfDzlMXJnm+QB2QzXccVizesy3b3z63exNRvnlDbEw3J2x3ZlYb15
	PiwfHEMAvalCeDOLQPopC6FP1A==
X-Google-Smtp-Source: ACHHUZ6Yrsd8H0C60FMXwj8vhCdlHIXessbhg49bscbUVgRS9oFYMYBeaKA0rC+pw4cm1EFHhY8Ygg==
X-Received: by 2002:a17:907:d26:b0:977:d468:827 with SMTP id gn38-20020a1709070d2600b00977d4680827mr4767373ejc.17.1686996739862;
        Sat, 17 Jun 2023 03:12:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i24-20020a170906115800b0098642e99c26sm1980189eja.174.2023.06.17.03.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 03:12:19 -0700 (PDT)
Message-ID: <17576d81-a342-0b77-367a-eb9f2b97b734@linaro.org>
Date: Sat, 17 Jun 2023 12:12:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] dt-bindings: backlight: lm3630a: add entries to
 control boost frequency
Content-Language: en-US
To: Maximilian Weigand <mweigand2017@gmail.com>, Lee Jones <lee@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Maximilian Weigand <mweigand@mweigand.net>
References: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
 <20230602-lm3630a_boost_frequency-v1-2-076472036d1a@mweigand.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230602-lm3630a_boost_frequency-v1-2-076472036d1a@mweigand.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_031223_104879_B2978D02 
X-CRM114-Status: GOOD (  15.71  )
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

On 14/06/2023 21:08, Maximilian Weigand wrote:
> From: Maximilian Weigand <mweigand@mweigand.net>
> 
> Add 'ti,boost_use_1mhz' to switch between 500 kHz and 1 MHz boost
> converter switching frequency, and add 'ti,boost_frequency_shift' to
> activate a frequency shift to 560 kHz or 1.12 MHz, respectively.
> 
> Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
> ---
>  .../bindings/leds/backlight/lm3630a-backlight.yaml           | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml
> index 3c9b4054ed9a..ef7ea0ad2d25 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml
> @@ -33,6 +33,18 @@ properties:
>      description: GPIO to use to enable/disable the backlight (HWEN pin).
>      maxItems: 1
>  
> +  ti,boost_use_1mhz:

No underscores in property names.

> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      If present, change the boost converter switching frequency from the
> +      default 500 kHz to 1 MHz. Refer to data sheet for hardware requirements.
> +    type: boolean
> +
> +  ti,boost_frequency_shift:
> +    description: |
> +      If present, change boost converter switching frequency from 500 kHz to
> +      560 kHz or from 1 Mhz to 1.12 Mhz, respectively.

So just make it a property choosing the frequency, not bools, with
proper unit suffix.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
