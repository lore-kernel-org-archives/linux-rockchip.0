Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69415C19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 17:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J28h6nvBSxd2Dc0C8/vliGVgsczM2Z074p+Pn1cdOPk=; b=szvBIVoAEBj3s/
	vPh/lFUFf8viJ0Wmd5DUD1e/mtRDzaJIgFmtN7tXJVdMZH0BOqRq8yN8g72jdyfhtuCe6/YVtJ6C7
	4EA++vBLcej58KxQyZhD9fHm+hndvfiiNybzXImNqlm4HzyrjVW5s9Hr0nmeYDGnIp69e64bPOjmq
	gVf2Q/eILGci/RoqEN6PQVjT/19t6ctdyvne+VXGZ7CCdpo+DZLJAtAAhgCEXi7mqyoYwRfFmQIno
	LgL1DO6MfivnNI2Ph6rL2ECBRe9YilkbNQ0cqIcc2JHIp2W3UUpI8Alkjjn5ALKJTkYbLHkThYlrJ
	CXRPtFP32pIZdW83Q2wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqbQf-0000000F2Xc-0tk1;
	Fri, 07 Mar 2025 17:24:09 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqbP1-0000000F2Qg-1ZTw
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 17:22:28 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5e5e34f4e89so2063565a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Mar 2025 09:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741368145; x=1741972945; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vse37ndJVrSuVrU7yJGVW1Lu8SXvK77ID0V4XIpDEEM=;
        b=pa6XOWSnWVaH9To7XifJZ2WuCW3SPzRx0wif/5vD9vZyg17yhll/RHhr2llcB9kRMf
         lOg99CRg18sZA1lLzQNbqYZ9edXJ8ydBtHN60fbkqQj5pHW4QFKm5KRAGlvKxh2NpUG/
         2qp+ll/0cPXjf2j19OWGlseSVtRoNfU19loYInSm7sJ/CRnOjUERIfHWS1lSc9RwNPlH
         omZTteU4aa8irc9VgRuxWPdPNQIQLJeSG+4E5aHFxGAnGqlU+SwTAnsOTtBVuu1211f5
         J8D7zyZGF+qVWsnsXUWjIAh3qXwBvKJcd8Wffpj9K4bP1ZgoijQ73vY17mbDLWzyi69U
         BxSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741368145; x=1741972945;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vse37ndJVrSuVrU7yJGVW1Lu8SXvK77ID0V4XIpDEEM=;
        b=BWHVwtcYnfWhqDceUkws5Hnf2uka7VF6qehfYeLwMkeq20atcgzVMN8fLPpS6shVeX
         RUtNPIWnxOFsSu6qjA/UmwOBDovfjBiYsQHhszf8j7h4gJiLqa0Y++sUEOd3/Bn1EWxr
         30813+Lj+HRYkBzzDCYuudgZAgc8ec9Z9rt35ygCq6iFGnfBytafd1chlaW+zp/kVQL+
         SJfJrHvu5gFLkxX2rvshEASHF659XRmIePxwH6OYhtZD+xjyOMmE7TnWaIodYKOi7ipf
         oOfV1iJTUUdswVt4jNVuI/fpRoop+U8ZgXjQPSPeQh3rLLz/ZS2qWCRy6n4m+tmvyFBM
         HElQ==
X-Gm-Message-State: AOJu0YyJOdupdkdfTfGUfDnR1LbCQYSi9Tmpy18gz0GpIdAAKrEa81zX
	WkUsMUdBXoMQDHXme5OjDi41oE1+S10hT2pRTraqXg9R+VhIBRemlDzxZY0yMFc=
X-Gm-Gg: ASbGncuj8Tfodc/m92RzvWbK6ziJjp4cZzsSBelQT+A2jaiRfbbDbfohLwx/jxjl2NS
	YxBIzFxUvv0iF2Qp2bUIGX3yyi4irq3Y+ykJwLYikWXEi87arNf2W5lISUVqaikrsFtLMbnNm1a
	67XEhuCjtygmwgt6KrqzRGoCoFcq4JynpcByB6/axGKsmdxLtoKRlRpkVIz+mFrkRstGwbRm+4L
	FaE1Vvh8oGaOIFsruJYjZWP8+eNplsbMt/qWPqv5a2ympuenE7ftq0w34As/5KNHMW1M3V9E0/A
	lWiYUIBoe4fyxFMfzw1Ga/w2jOeE6N89weCjmMMw1Vbd0HyjXuS+bIPB+TEYNEw=
X-Google-Smtp-Source: AGHT+IGr645XsGNFfy2D7vw+gO6HKk73sp4lP/e3Bd4vMO2M4emrS5p1ZDikAS21V2w6uEA4dxu5ag==
X-Received: by 2002:a17:907:94ce:b0:ac1:e1e1:1f37 with SMTP id a640c23a62f3a-ac25273af3dmr535156566b.10.1741368145070;
        Fri, 07 Mar 2025 09:22:25 -0800 (PST)
Received: from [192.168.68.113] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-ac2395174c8sm300319266b.85.2025.03.07.09.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Mar 2025 09:22:24 -0800 (PST)
Message-ID: <f662da0e-431f-4e04-b8ee-e8b04a08337d@linaro.org>
Date: Fri, 7 Mar 2025 17:22:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20250227110804.2342976-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_092227_405734_0981CF44 
X-CRM114-Status: GOOD (  13.75  )
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

Hi Kever,


On 27/02/2025 11:08, Kever Yang wrote:
> Add compatible entry for the otp controller in rk3562 and rk3568, add schema
> for different clock names for new entry.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Am unable to apply this patch, Could you rebase it on top of linux-next 
or 
https://web.git.kernel.org/pub/scm/linux/kernel/git/srini/nvmem.git/log/?h=for-next


--srini

> 
> Changes in v2:
> - Update the commit message and add maxItems in schema.
> 
>   .../bindings/nvmem/rockchip,otp.yaml          | 53 ++++++++++++++++---
>   1 file changed, 46 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> index a44d44b32809..7572f4a1d73b 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> @@ -14,6 +14,8 @@ properties:
>       enum:
>         - rockchip,px30-otp
>         - rockchip,rk3308-otp
> +      - rockchip,rk3562-otp
> +      - rockchip,rk3568-otp
>         - rockchip,rk3588-otp
>   
>     reg:
> @@ -25,19 +27,15 @@ properties:
>   
>     clock-names:
>       minItems: 3
> -    items:
> -      - const: otp
> -      - const: apb_pclk
> -      - const: phy
> -      - const: arb
> +    maxItems: 4
>   
>     resets:
>       minItems: 1
> -    maxItems: 3
> +    maxItems: 4
>   
>     reset-names:
>       minItems: 1
> -    maxItems: 3
> +    maxItems: 4
>   
>   required:
>     - compatible
> @@ -62,12 +60,45 @@ allOf:
>         properties:
>           clocks:
>             maxItems: 3
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
>           resets:
>             maxItems: 1
>           reset-names:
>             items:
>               - const: phy
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3562-otp
> +              - rockchip,rk3568-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: usr
> +            - const: sbpi
> +            - const: apb_pclk
> +            - const: phy
> +        resets:
> +          minItems: 4
> +          maxItems: 4
> +        reset-names:
> +          items:
> +            - const: usr
> +            - const: sbpi
> +            - const: apb
> +            - const: phy
> +
>     - if:
>         properties:
>           compatible:
> @@ -78,8 +109,16 @@ allOf:
>         properties:
>           clocks:
>             minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +            - const: arb
>           resets:
>             minItems: 3
> +          maxItems: 3
>           reset-names:
>             items:
>               - const: otp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
