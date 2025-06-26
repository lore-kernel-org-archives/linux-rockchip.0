Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31E4EC7EE31
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 14:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BZT20OgSL6b5AIdJEhKGHE//+gkO/9t2wkgN+uIuIQU=; b=Ciumq/pHXqH3e4KwXdETKFZn69
	rYehfFhIfcOZTw3vOc6ylUBYP9cvB+jvpdOGpprLvmSMfKTyYe+PdywHlQWGeNzLTY9Driv4Z0i2T
	OxRYc5ZCgGfMW0rGrni+i1iAEeGLkuoEPMVkv/s5f+1N48ax5sjrSeaPQUO7uqhJFy5G6Vfjxn5Wv
	alquCtEdsVulIeLKwdOtWY6PVjebAFgUF3eZn0FdSyuS2BNMLKjyfndDMjWy5Jbm/gLO2Ydu8wtcR
	RUqnxjC/XUGsx5FUGp/byiD9/+XsHxBbhE4NK1sJeIQz7Skq6R+DLuLiFgrVqgZQ4k6qQDe31cKU6
	tb6N/Qvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnaa-0000000BvH8-03ui;
	Thu, 26 Jun 2025 14:28:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnLR-0000000BsQ1-12rp
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 14:12:55 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4536b8c183cso6986475e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 07:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750947172; x=1751551972; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idh10+JsRz1ZHjVnaSYCjG9wWXpOOuIrbzWNYHckzT0=;
        b=CYReqlOSCUrR9JPGcXejzCn3wtkmNDQh9ahcihneTgdva4wna+lk967daIL05D5KPu
         YhjzG1NvLA0+LL9AEeW3QZDZ0TAPKue6hFfABd9uFP6Sg6i6dJSxGWQHpR1rdPCM4mW4
         ueO2yqOimBvDM/Pqppqcof9jKgUCGCl35bR+FSng+RWOkdy2pDayhKbGSEV9DR6mi+60
         k4FR/OTDixzVF8fWi4MJr0faPnioRWPW8Xow/GmOsO2KzJDdok9Lvc1QfyFZc82iwHgq
         PRGngvCYstkL37L2wu3YpgaCTBiG2S0Pv8TmUZAGhK+2KBXJGvMGqGGM4eNGafMWx1Wl
         hnMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947172; x=1751551972;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=idh10+JsRz1ZHjVnaSYCjG9wWXpOOuIrbzWNYHckzT0=;
        b=F94fTKRL2kaoNTg86HK/C0VRWtalpRdS4JwH9lvQJK6jdrFJMF30WCWkn/5L9jH26I
         +Uq1E8R5u1ckrrJjbBVkEUk9tteJM1khIzTkl6K3xLOSiL/e36rzt13VDBoici8RLQ/q
         VXaHF8J9qVIa3deNyZvM7Yw1AJ3dscdtmoCIw2qc1ae2IeSHIEJeFUbP+yJHJuVWgaWO
         tEOxPhL0CNnc+Ds3dhm+3/FzxIdlm4pyXbC1Y4j2xS/MTCSM0j2i6Nr3kuqvyOsc1c2+
         fuoPwsTzQ9510oybUuxiqyyI1yOArY3XIQ0IA2qxD0MAJ7WcCFD5yhxL4u8MrvLnO2xE
         0nlw==
X-Forwarded-Encrypted: i=1; AJvYcCX+WuqsgRUMTgdHgUyUk8PVcnmS0adu5a+4efHTgtC6jcwufAiThu98UfGI+rpOeeStatk523/t4fc9/H6x+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnmGhRxG/ABC8cADee+btFWmkDRWAL6+sZGBcinNpKB+siIg7L
	lQ+X20rzzxrGztGw93pOsXu+zXTu4H9sIL9Pquvt92FVHk0x6OL7rbVqoeYfY72qpKk=
X-Gm-Gg: ASbGnctMalJg5vpL+CjNzDe55YlMHHIlBiIyaQGy3OeKpSQcxAJupHgA5k1rcin+Znb
	Lbje8uhQx6SxqLC9kgN0qLnJOhIiglq5MxF7SW8VvYugmWkE/g/oQ2R7uJxFoS5Ke+/fqYExlt2
	jyYcP1ls6cFGfeYl4GtG+hs6Sb0Fjntmm4wbYqLkHVnW93Y2VztfD6sLXubYzUqn8yxXw/YU+Yy
	n2QZM1l2cRPjCNIzb0XkDRiggUbe0iaKbcsBxVCr19w0vcmNHotERce1cpcU+Hw70f2+4wmL2D9
	UhD75YKahvJW7aGYEegIOLk90f63Je/MmAj2y44BlJLFflBNim/e3Emur5SoV3KLr9b/8vMlRsy
	Ajq+qAyTCozMI79hmCukL6WeuFoipLMdIJjYbi0ZVMIOLv7JezQ==
X-Google-Smtp-Source: AGHT+IE7Q7mlKruv8URp7hHM6crDlnNtpi1iYsCn32qtT+RUqOTHjkI20cptaGqB8cXtsnPMosNgUg==
X-Received: by 2002:a05:600c:630f:b0:43c:f509:2bbf with SMTP id 5b1f17b1804b1-45388a14880mr43012765e9.15.1750947171441;
        Thu, 26 Jun 2025 07:12:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823ba553sm50242095e9.31.2025.06.26.07.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:12:51 -0700 (PDT)
Message-ID: <60f437b3-2780-4bd3-95a4-d0453dcb83e7@linaro.org>
Date: Thu, 26 Jun 2025 16:12:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/5] dt-bindings: mfd: khadas-mcu: add cooling-levels
 property
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <f4d27c690b562cc72997c9ae00c6145b3722561a.1746518265.git.efectn@protonmail.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <f4d27c690b562cc72997c9ae00c6145b3722561a.1746518265.git.efectn@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_071253_293402_0045D2A5 
X-CRM114-Status: GOOD (  13.66  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 26/06/2025 16:04, muhammed.efecetin.67@gmail.com wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Add fan controlling step property which is used by Khadas Edge 2.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   Documentation/devicetree/bindings/mfd/khadas,mcu.yaml | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> index 084960fd5..f69643aae 100644
> --- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> +++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> @@ -11,7 +11,7 @@ maintainers:
>   
>   description: |
>     Khadas embeds a microcontroller on their VIM and Edge boards adding some
> -  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
> +  system feature as PWM Fan control (for VIM2 rev14, VIM3, Edge2), User memory
>     storage, IR/Key resume control, system power LED control and more.
>   
>   properties:
> @@ -22,6 +22,13 @@ properties:
>     "#cooling-cells": # Only needed for boards having FAN control feature
>       const: 2
>   
> +  cooling-levels:
> +    description:
> +      Max speed of PWM fan, from 0 to 100. This property is necessary for Khadas Edge 2.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      maximum: 100

The cooling level can be detected dynamically by reading the MCU register, so
just set the max_level to 100 when edge2 is detected, and drop this property.

Neil

> +
>     reg:
>       maxItems: 1
>   


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
