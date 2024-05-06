Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 508A8C25B5C
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 10:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa4GX03kFybdUZv32DF1Yc24KoU7A50VGnP0p8ZdZA8=; b=C/kEInDFzKHOSj
	WQnmBTZNvlGEdm0cy+7wTG+WuvBS+8Bvxq1YUCHY0HoyoReYZe1rbXm61ho3z3VSoTHfb5qmdg1O3
	4Xix4NlQWLbnXiQsAEe4s9pIFMy46jl5KciXUU71c0FP604NGRsMv+aIvgpn++d9MzWRDTrI0wdbA
	FYSB0UgArlLNlT+uVsBVBTRz+UDSqhb8V6W/TF235DdIFLmgEqpYtNgKUKk8N7rrXScnI6UhJ9ZRQ
	gIjuWsi5jBHNde/Kek/YWYL9CfIgUj8O3HdWWB3RJY2Pq4jv2vDlTHRQvziTpn8ucA5FlQ4+5eb4F
	IVBKiWy9dvJsUqph7FBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3vu6-0000000715S-1xw2;
	Mon, 06 May 2024 10:49:06 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3vu3-0000000714K-1Ctd
	for linux-rockchip@lists.infradead.org;
	Mon, 06 May 2024 10:49:04 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a556d22fa93so408711166b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2024 03:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714992542; x=1715597342; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RC+U1B6hdMDqB+QXKRhouVYc1BVEZrqbXLyz0D38xTU=;
        b=KHXShuMBNKC2OmwdSY1SgH6kaOu/MeRoBXUk6HdmVzS622hxDjSul6uffqCkRdyaHS
         tHWR7tw/09KXmIAQc606eZCU+ORN3qYuSq7Z3+dJRYseABUVcLhTjBLrQmY11FxKU17Q
         Am3MAo1JB2QOx/9STutHmHyu77LWvDNpAtm9/dcHWx2dfBfwbp3obgazM5Qvwc+TndG/
         5RyyKgpyeZtUhJ0kiICRalQQXxuHG+uVogLIy20iGG1rEmRdLqxGZCyfIRM000Sa1y4f
         ahJ/CwpGOgHcxFH9rzIhFN2Ambo+Igx9oTY4MIe74PN1HJLW/I8/E/UwpyqwylE6jKqL
         96Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714992542; x=1715597342;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RC+U1B6hdMDqB+QXKRhouVYc1BVEZrqbXLyz0D38xTU=;
        b=CdSOd+436VZhgdeFxBOEotI0s9XGIweIVzZSqQs/at5hSDgcbQVzl3ITGKsBTMguSg
         js2obPp8oz24ETIbkcY/Q9qd5EV2k8AfqyZkH/ITzGo8AEZG+ieWvpDRI2TvJEJeVq1B
         JofmRpuE00RCUZw2YeXHyPKTrqtwYAP7xqzv4qDkaRskWY0800QK2rY/EAWAWZDROFCB
         wn9YoNXOxRwW9T77U1Gx7J/TrPwhtqSIWRKElv4OLH894SO1IhEhNaMft67AAeALpf6u
         qv0ZPfHFlaLJ53UC5Ln9JFO5rEFH+jq0V5pAV2L8IY3IHGIKEdnMrhNGGB0gjAc9FvQh
         +FkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWF7ZVzVT4j93al8ypR5oYh/oA14R9jT3KdI+fUNX4omyMMJryzZQqhbH3JWhukaQc+sGkveuZPJdLejukpSKA409MPYd9VNbZJOPhKFYIX6a9q
X-Gm-Message-State: AOJu0YzVp994mFeVBz7o6bb2GHEF+DM7I8iqADXsTSzRECauQC0tACMH
	uTTewXlHucaLIXLSI0sxHkh0ReGXGMRV0VamJtzOpLdXAM/Q1mUQ9wIu6xEwT2c=
X-Google-Smtp-Source: AGHT+IGPODrYuhvfKLW9To07UGREThaB1iuMQWDlOXXb7hEvKqY+AScyPJpIzdl9Kwwom2eFtFbklw==
X-Received: by 2002:a17:907:3f9b:b0:a59:db0f:6bd7 with SMTP id hr27-20020a1709073f9b00b00a59db0f6bd7mr959267ejc.71.1714992541724;
        Mon, 06 May 2024 03:49:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id cd22-20020a170906b35600b00a59b4e490d9sm2326978ejb.193.2024.05.06.03.49.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 03:49:01 -0700 (PDT)
Message-ID: <ade304a1-ea43-46cb-b425-b08055db49dc@linaro.org>
Date: Mon, 6 May 2024 12:48:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-4-jonas@kwiboo.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240505134120.2828885-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_034903_413401_A40E7863 
X-CRM114-Status: GOOD (  12.88  )
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

On 05/05/2024 15:41, Jonas Karlman wrote:
> Add devicetree binding documentation for the Radxa ROCK 3B board.
> 
> The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
> factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
> version based on the RK3568 SoC and an industrial version based on the
> RK3568J SoC.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 51cdaabaf0d9..41f2ab79e612 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -799,6 +799,11 @@ properties:
>            - const: radxa,rock3a
>            - const: rockchip,rk3568
>  
> +      - description: Radxa ROCK 3B

Does not look like it matches recent fixups for names.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
