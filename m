Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9DADC25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 20:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ag2plW33opTOiXdlVvLi54gzDe7e/bj2cpuxJZXDmwo=; b=ex8TudL2ul1D+s
	9X3L8aXEmcezp+FFhVhrW7mvHVGVt1jG5qvJ1Y+yzGXVJQLPNb506TI0/GjuB1316Pnry5jdaiYJV
	tmAoJ+zltIevDOEmxrQ5O+gCN1jlQIyzJeccQuwCS+NdA9aURrfodyyIZ0CTEwgN13J2Noo+pk3uU
	QdSuVair9s2WPdiq22+0z61MkFn+d9IMZmqBYS38FcxxWsWYxUGgBdnwb0emcXzhsVKiN86YgcPZ5
	OjbUu7lhtv6L/znC1FpIzTIkPnsh6YgdLBZvGt9uE1ctsapq6pNKEPF77k5b9UXnwDOActtB48cfj
	u2rmm3jiCiBz8IXGS7EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44d8-00000008cRm-2WN1;
	Mon, 06 May 2024 20:08:10 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44d5-00000008cPk-0bZD
	for linux-rockchip@lists.infradead.org;
	Mon, 06 May 2024 20:08:09 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2dcc8d10d39so26069531fa.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2024 13:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715026083; x=1715630883; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4r2QFiv+Y5YFHDZS/uVsaIfDuAxtmH3kZzYhY3bwJMg=;
        b=Xa7WcjTGp73diyFxuEn1cUDIUHknECd19x6qejETKaHucr/Muz16TxINgRl/YUKExB
         MEatRh7yOiOv6O7YwXdqEh+2TTkT2z7A8Rk9LIrbDY3w6hk37ZVnfvqdhL3q3cYqtRJf
         9Rt+2H/9elb8dyyo5HdTm3UaVdwTiVRYUXFGbK1wajI7qk0qMWtuOTgC4Ve0N57fv89j
         HHvL1caWPw4zOAQ/jU0Fz7vVYEBw8+S/XPAVmKGPNXoHAlPGlT+u4r3BG5akLirXoBQI
         pGnQw5lLbI8EINhF0kaZPp39sZXYOeRMf9LhwADBKAIZZmDppZKFsr6WQ1a6kpWrI3Gh
         tcfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715026083; x=1715630883;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4r2QFiv+Y5YFHDZS/uVsaIfDuAxtmH3kZzYhY3bwJMg=;
        b=ZZVk0wCDGjWrzfvlPpjB+tCSoOFldb9F3yGKrhEHdhXPnG3gaD66UkbkvXfLfJgvtW
         lzndhwIe7rjeTf6YFbZ0crmNcweZlC94cAQmWxtyjkPzxK2gjN31xNzsrVFyEodiJG3C
         pkWYLkz9lacjMhjVrvnVSs39WcK8Vekaqb5lIaiEkEpXROsPV060PD4WCS8XvBRvzV8+
         R1BpjpB8j8sSIo9ndGWfWrsAHO98oWEskxEF9VNqJg7XMSv1Pm9tbA6yvwrEzsIY3rh+
         GNYqFYa4XMNI4VJ3TwnRFPQ7XMka+OdhJ57arF6SSR+vI8qL85x1LKEjL0neZi9tylmX
         6SSw==
X-Forwarded-Encrypted: i=1; AJvYcCW8qJBvESeucYUYugyLb+yuzghkNNY0nWMlncrzuiOSAXMdUFjacLXYCaXXJjyUg8sft5fgbvRgM5EkHGbTFbCMwIK1i8ix1YbzHTNJ9Dp2VHOv
X-Gm-Message-State: AOJu0Yy3BDDCTY324cxIMJI5fVC2h2y5J5vY4Heytic4+WroISyQsIEt
	O4ny9VWGB8laIxYmid0jihHJsSPn5q1lDhn453HwGcHhVk/91CITJ0d0e0e/0q8=
X-Google-Smtp-Source: AGHT+IGFIeRBBk7VGAPYN4qg+AUifIyYRtOsm5z71dsKQvzhwE0BVV5mvFEKkqGRIJ/bqHj8NG2rsA==
X-Received: by 2002:a05:651c:1691:b0:2e1:d747:8c0 with SMTP id bd17-20020a05651c169100b002e1d74708c0mr7451991ljb.21.1715026083131;
        Mon, 06 May 2024 13:08:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id w26-20020aa7da5a000000b005722cb1dd6fsm5486170eds.27.2024.05.06.13.08.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 13:08:02 -0700 (PDT)
Message-ID: <ad7f3328-6eb7-4b32-9316-b0c79fd2753e@linaro.org>
Date: Mon, 6 May 2024 22:08:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec properties
To: Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-3-jonas@kwiboo.se>
 <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
 <76519e53-a226-497b-9db1-4f11ea83151a@kwiboo.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <76519e53-a226-497b-9db1-4f11ea83151a@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_130807_225123_E6D40546 
X-CRM114-Status: GOOD (  10.60  )
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

On 06/05/2024 18:14, Jonas Karlman wrote:
>>
>>> +
>>> +  codec:
>>> +    description: |
>>
>> Do not need '|' unless you need to preserve formatting.
>>
>>> +      The child node for the codec to hold additional properties. If no
>>> +      additional properties are required for the codec, this node can be
>>> +      omitted.
>>
>> That's useless description. Describe hardware, not syntax. This must say
>> what this node represents.
>>
>> Anyway drop it. You do not have any resources there, so put properties
>> in top level.
> 
> This just tries to follow the rockchip,rk817 binding, not fully sure
> about the reasoning behind this node in the the rk817 binding.
> 
> RK809/RK817 are very similar and their schema files could possible be
> merged.

That binding was a conversion from something older, so it might not be
in good shape. At least new binding should follow usual rules/style.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
