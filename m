Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B9A2C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 06:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBY2fCsF8xAzLJC2sisW2y12i96ZFc01IQenebR8wTY=; b=G9JmNRS2tLSv48
	Lu87lm0LQloSbT5aJnByA+DjXXgOJo563vf0jK3BDdx20bdygn5Nn7QSiEGTl+ke0A/Xnf0ZYNdLh
	iUpMM1OXWmg8QV2AJ8YOoe/SsoMYy1ns50rtnNlRR5pwyJmH01tXV+ddTnjMuu/yNMWljukPnOnMm
	7NcrFXJHkN+YciwudT7MzmZtQgDewFylalGkrVv4gRMBVMRfsYI3voVK6rHC7gecrvzP0oQ+pXpR8
	1hvoI9EdV35fNnMrKnOTWKPnTk/klWdtYAYDTZIQ5oGHhojwxlwq4d0zyVAsrP/u1bkmKU/zr04R3
	7iQBGy99epOVXpYqxCOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu5yu-003UfK-2N;
	Wed, 03 May 2023 06:28:52 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu5ys-003UeC-0k
	for linux-rockchip@lists.infradead.org;
	Wed, 03 May 2023 06:28:51 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f7a0818aeso781932166b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 May 2023 23:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683095329; x=1685687329;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7QkCOwPVV47rBbXiC/TT/NWf8AZkKzBELUWgp+uXk1c=;
        b=S19sAVeim0llat822qN0TkI1wzFO8rpIJ7D5aG4/0xlZcLvVVy7Buc17IYzgKAnoiR
         KezJLEAG9iNZX5sHkZ9aRcEuuO398FvHSWwkXRhfLP8nF07Q6Bk5JF4MLSrhflUI0RjC
         foe/QaKWXI/K/ZLWBd72bt6XOeBlte8XfRLQSfROs9NPVUPAGM0pOR6yl1pwwbWEoEQJ
         9mAaZ7aNi2lEuNCdyWjVTMsSV35VjrgeyFs0SBzb+7a27cHTPbnswK9Y48mRAITrBS/Z
         /CiSFhppTl0jAFlTQQFXb/cV2dI3x9va2QbcqRzcHJSQy39mKgaCJFSqR6wzC1QKN8i7
         dfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683095329; x=1685687329;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7QkCOwPVV47rBbXiC/TT/NWf8AZkKzBELUWgp+uXk1c=;
        b=O3I9KHvzyZLgtfCoivfQQwvAcYU5P3p+HHqg1S39/oKpN6uTCE0p/r4Xk0dhe5K4HL
         Rsk3cxQDulfL48YI8uYqiBMg4grIY51RDSkRzo2XH8ys+s2qi4LleMP2bfN3zAkbq4fK
         ZEcGFXA+O+d/pPwqNEPH48ISnNhOzx3LZgAQr1QDIQi54QPIpxWnam9G/a9/FV0QSoRr
         OmC53FcO+wbexaKlM49BTUacKpbrOD4CVX6YS4nkSNX2NjLtpphZCElz6kKTBKs4YDOW
         nI8Yc4woUGzH0DEJSCoLZewThLLZb65/0t0/tJPAyN8rk594FkoIklHSOf70n+9HZn8f
         Jt6w==
X-Gm-Message-State: AC+VfDzv7Hqj07REnQOkDAXBeYbpdNQMWzydNwl1PUJ8S/eHmiXMB7ot
	79GfVbbstZhcqBoKUE9xErdVeg==
X-Google-Smtp-Source: ACHHUZ7NJYZH4xiaQvcnIk6FigSAqVosnLMbEKPw1SuimdWpQi0rQKBsgWdAXfyBV1PKSN/I14RAEg==
X-Received: by 2002:a17:907:a426:b0:94a:9c9e:6885 with SMTP id sg38-20020a170907a42600b0094a9c9e6885mr2184090ejc.58.1683095328796;
        Tue, 02 May 2023 23:28:48 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906394b00b0094f4f2db7e0sm17159284eje.143.2023.05.02.23.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 23:28:48 -0700 (PDT)
Message-ID: <0678c24c-33ae-7e99-7bb6-d15dc5a7ed76@linaro.org>
Date: Wed, 3 May 2023 08:28:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 2/8] dt-bindings: nvmem: rockchip-otp: Add compatible for
 RK3588
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_232850_286832_9D5DABDF 
X-CRM114-Status: GOOD (  15.05  )
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

On 01/05/2023 10:43, Cristian Ciocaltea wrote:
> Document the OTP memory found on Rockchip RK3588 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/nvmem/rockchip-otp.yaml          | 71 ++++++++++++++++---
>  1 file changed, 60 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> index 658ceed14ee2..84a11382c6e7 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> @@ -9,34 +9,31 @@ title: Rockchip internal OTP (One Time Programmable) memory
>  maintainers:
>    - Heiko Stuebner <heiko@sntech.de>
>  
> -allOf:
> -  - $ref: nvmem.yaml#
> -
>  properties:
>    compatible:
>      enum:
>        - rockchip,px30-otp
>        - rockchip,rk3308-otp
> +      - rockchip,rk3588-otp
>  
>    reg:
>      maxItems: 1
>  
>    clocks:
>      minItems: 3
> -    maxItems: 3
> +    maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: otp
> -      - const: apb_pclk
> -      - const: phy
> +    minItems: 3
> +    maxItems: 4
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>    reset-names:
> -    items:
> -      - const: phy
> +    minItems: 1
> +    maxItems: 3
>  
>  required:
>    - compatible
> @@ -46,6 +43,58 @@ required:
>    - resets
>    - reset-names
>  
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-otp
> +              - rockchip,rk3308-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: phy
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3588-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: otpc
> +            - const: apb
> +            - const: arb
> +            - const: phy

Keep the same order of clocks as in older variants, so you can keep the
list in top-level place and here only minItems: 4.

> +        resets:
> +          minItems: 1
> +          maxItems: 3
> +        reset-names:
> +          items:
> +            - const: otpc

Shouldn't this be phy?



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
