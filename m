Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BABC35294
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 11:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6q598aqh7Wnz0yPpRnM1+YnN5GpXMDcKkq/CmR5Jp0=; b=leT0kl6zqFzVxH
	9jtk/7ezPoH/l9bFTx0JVTFWlYJlTtscQ4qSSjca9+TDxRlEa4lvDuJvwCygXxPwyKeDI3rq9LtUV
	7nWE+vmdBUldFmGqsTLZMNoA4VNmvt5A/Pbg5fHUCxoPp9Nsvb+INTBWuobeoJgeROwga0jv3VbSg
	dIbWxpvBklg4pgmJY1d5JfCWPadaZAmPCR8RgOUYy5Av/94IC/MQhyh9aNpMcJtSaTUWvwrV3EeEj
	jAvrgDBqvkkHkYiQf7y/9NDYu9EkG98YnJ90XW/o5UWB+PD9wSQBIPhCDazLIdGA3jleNJRnxrUwb
	kcsSh4HQ0bBXdGxSjaeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbhBJ-000llz-4w; Tue, 05 Apr 2022 11:17:05 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbhBF-000ljo-36
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 11:17:03 +0000
Received: by mail-ej1-x62f.google.com with SMTP id k23so22522017ejd.3
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 04:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=VLCfd5gEQwSYDmFlX++Ka+tNB+2J3sKkmSRyIFOs0t8=;
 b=q9Tk6+va4ukpHeIc9rTzRiwjVytHuN/9MuIQYH/OU+CdtVK+UTfBB6jKAXjiORr0Nl
 s0Wo1xhQjI2ttk2/XmUFWVoAQkjxAELmLhuFUkApOW+KPj9P+c2J8Lx2mdWKdedENkB5
 mbwsC7HuyFLsR7pHrbwdzuQap5rF50Rc4er9Yaz/T9xsZdDLhko9uQ6+fdpVmOo/K2vS
 sif/5cX4C9kAL3BT/z0ihsLAtDtsibi5DMwKh88fjDM8O804K2tBWjZ8OmIEvLSt4jrr
 ktNlgdK4CL8/Ya3kajJ/niz6GktI1p4+OEG4sz7V17S5RyLqayftOsyNiAz05xT+pTm1
 zI2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=VLCfd5gEQwSYDmFlX++Ka+tNB+2J3sKkmSRyIFOs0t8=;
 b=OaLKc05CS+UsHBind7rU9AIY+Odt407XPSwgweT37IYV77FtdmmqEKZw2GilioMJJf
 0MMdBcjUem3UbNObiK5d8GaNTuS7BJHZWh+eGOhjzsGadu+W0Z8U7RJV+u4vOLxyZ+Vx
 FvTys98Av6IhwIp0OZNPdxlB2WgY0oHyjENHsqiV3ogbSaLujCPH+lSHjtmvjm/8w5io
 qpfws5L9YFjG08f8nMBLIrfUbJ4S7oigK2+/DjUO/7t2tygI0pTdsxWCDeOztUaHM8IF
 Ck2ZVpMp7Mhes+90tBebPF/0aqW5fZpVTkdgkEIzLgtjiQWebXbucE8KarVZ9Ti6bprY
 OBAA==
X-Gm-Message-State: AOAM532jiqZiWu3lzDHw4/bqv3Pi4ixJJCfRg0TOundxx8LoSPCnO3Ck
 cVobW5PsVJX088xkOla1ZacPvQ==
X-Google-Smtp-Source: ABdhPJz9IWhsYACZjpPimb853praVUEzxUy0bcLvEo4PaomjnNF3kExH+nnCvdqfWR5GHaRFAzNamw==
X-Received: by 2002:a17:906:2991:b0:6cc:fc18:f10c with SMTP id
 x17-20020a170906299100b006ccfc18f10cmr2994829eje.744.1649157417291; 
 Tue, 05 Apr 2022 04:16:57 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 ep16-20020a1709069b5000b006daa26de2fbsm5358975ejc.153.2022.04.05.04.16.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 04:16:56 -0700 (PDT)
Message-ID: <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
Date: Tue, 5 Apr 2022 13:16:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220404215754.30126-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_041701_189930_E728E112 
X-CRM114-Status: GOOD (  22.61  )
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

On 04/04/2022 23:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> index bfc1720adc43..b949d406a487 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> @@ -117,6 +117,47 @@ properties:
>          description:
>            Describes if the microphone uses differential mode.
>  
> +  battery:

I wonder why do you call it a batter while it is a charger, isn't it?

> +    description: |
> +      The child node for the charger to hold additional properties. If a
> +      battery is not in use, this node can be omitted.
> +    type: object
> +    properties:
> +      monitored-battery:
> +        description: |
> +          A phandle to a monitored battery node that contains a valid
> +          value for:
> +          charge-full-design-microamp-hours,
> +          charge-term-current-microamp,
> +          constant-charge-current-max-microamp,
> +          constant-charge-voltage-max-microvolt,
> +          voltage-max-design-microvolt,
> +          voltage-min-design-microvolt,
> +          and a valid ocv-capacity table.
> +
> +      rockchip,resistor-sense-micro-ohms:
> +        description: |
> +          Value in microohms of the battery sense resistor. This value is
> +          used by the driver to set the correct divisor value to translate
> +          ADC readings into the proper units of measure.
> +        enum: [10000, 20000]
> +
> +      rockchip,sleep-enter-current-microamp:
> +        description: |
> +          Value in microamps of the sleep enter current for the charger.
> +          Value is used by the driver to calibrate the relax threshold.
> +
> +      rockchip,sleep-filter-current-microamp:
> +        description:
> +          Value in microamps of the sleep filter current for the charger.
> +          Value is used by the driver to derive the sleep sample current.
> +
> +    required:
> +      - monitored-battery
> +      - rockchip,resistor-sense-micro-ohms
> +      - rockchip,sleep-enter-current-microamp
> +      - rockchip,sleep-filter-current-microamp
> +
>  allOf:
>    - if:
>        properties:
> @@ -323,6 +364,13 @@ examples:
>                  };
>              };
>  
> +            rk817_battery: battery {

The same.

> +                monitored-battery = <&battery_cell>;
> +                rockchip,resistor-sense-micro-ohms = <10000>;
> +                rockchip,sleep-enter-current-microamp = <300000>;
> +                rockchip,sleep-filter-current-microamp = <100000>;
> +            };
> +
>              rk817_codec: codec {
>                  rockchip,mic-in-differential;
>              };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
