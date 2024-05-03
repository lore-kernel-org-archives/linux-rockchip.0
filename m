Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B003C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+9w7cPX1hq0y+qT7sLNbYoKkSTIoYVXGfaUKFKnpfQ=; b=5AkEpBNuP1LE8y
	9TAxAMqNZgSCENl7/2TOUn75s+OHM7QN3IWHXQFch9tIDpqUtm4xFCZ8cR8hWS0PBnx0r1noFVEaL
	7e7o9wH5SUHw8dtWZwe1ESr9WloLW3FXSO86Wj9nC3hrvnlN08/rRcvbTzGy9cP50ONCmnsHDSoFH
	lC7WYPf4bjxPnCjDDjywKm13YcFjClp5anwpEogZi61V07cG8dj7v46WrdFdeRsc0jXfsj83vc2xe
	Q7fGY/wS2hYJ4+3lRlDfzZnJxwLiy/95F/lkB/hAjgbmIH/mSwSGGXprT0iRkPwC7Jc3sMfQr3mac
	U6du8qW9Pk+U1cnhdOyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nyg-0000000Fa3b-0ZEI;
	Fri, 03 May 2024 08:09:10 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nyb-0000000FZzw-010p
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 08:09:07 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2db7c6b5598so113645441fa.1
        for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2024 01:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714723732; x=1715328532; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9F32g4MjpRz2uIAU44wJHuksonJ+RwP1zeSV74QN6B0=;
        b=FYWQSXeaaegliRhYQlZvBV4DAvJqwUt+7p6sbSARrBOH/Lgr8AXa+myz27xOs/erDo
         mA7KAATGbHGk6MxC8Lq+rb62rCZJz7UKAB56+Vk2IU05YqZZyNLJe2kiVm/plftMuPcj
         gVVb+VJCsugseSbZisOicWxWB0+FYCV2iWbBF5t/4xzfK0f3JyeUnC71P9mNUvwqQZPD
         lnPf+mxm3+JW0V6UaKVijlBoZZedUB/hJ/LITxiHG+Zn4bkRuqHQhD0uPQKjOXgUmH/R
         eCVPesahQRTM0cPyP0gc4TfRLoEQ0KZSIrNv/5gMPINCFGlAXwKQx3mY21WQfwTEkmPa
         lIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714723732; x=1715328532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9F32g4MjpRz2uIAU44wJHuksonJ+RwP1zeSV74QN6B0=;
        b=F8TYzwLD54IbV4pef/d/OEAfrgfqXky8Og9WI40MdcywotCe8zyscpoaqiRMCd1dsx
         tBrCvGo9IEMYa6WPFju0t8Oxvh44pAodqf28/T3Y5HMJV8VX4/ueqyRINXvzjeOBa7bd
         8KDOAKhv4Jne85zXUx2hqhux/rZ16efXgixAFY3dba87mOHSecBPOamM6Yzla72EgRSP
         kbnn125tS8md8DASfIEaY6P3f0r6FwTLqHlPD6D4l74+U6mlILkShj6qhf1nN4xsdh7d
         Pvd83JRtVqqJpjzFstb0859cN8gce0kqGE7UFhskRYSUb2UFjBYqgT6wiWxw8Xx6CJfj
         ID6A==
X-Forwarded-Encrypted: i=1; AJvYcCUjXA8LD1BjhnNjOF7u6sOGdx1VnTm/5cxdarwAJf8V9LcQ6gYycMmjpVWpp1gIzO+m9ixGapKXJkeDud+bnuedb+vhP5lH/UQYsK4EzrjYE4fX
X-Gm-Message-State: AOJu0Yw7u3xmUzGTwN/vNUoqBnXPJ2RtMx2O0NIiGSHPlb0AU5fhhREy
	1gR4tZOeADJDKnXJWXtldgY/w2uYAtx8+5KNiQs1jAdKhRtZ06OOhetHI3mp81I=
X-Google-Smtp-Source: AGHT+IEyVSxtgBjxgwR445qD/sr1uxqCDskSMlyg7yV9YjhIzBtojmFjs//+3uZsQR/8QqR1GYTL8Q==
X-Received: by 2002:a2e:b0d5:0:b0:2dd:7712:efcf with SMTP id g21-20020a2eb0d5000000b002dd7712efcfmr1255172ljl.10.1714723732369;
        Fri, 03 May 2024 01:08:52 -0700 (PDT)
Received: from [192.168.1.119] ([37.251.223.213])
        by smtp.gmail.com with ESMTPSA id v18-20020a05600c445200b0041bf21a62bcsm8456940wmn.1.2024.05.03.01.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 01:08:51 -0700 (PDT)
Message-ID: <a2886f72-210e-41a1-aae0-c079a4d11396@linaro.org>
Date: Fri, 3 May 2024 09:08:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: Use full path to other schemas
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240503072116.12430-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240503072116.12430-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_010905_253193_807FCFED 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
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



On 5/3/24 08:21, Krzysztof Kozlowski wrote:
>  .../bindings/mfd/samsung,s2mpa01.yaml         |  2 +-
>  .../bindings/mfd/samsung,s2mps11.yaml         | 12 ++---
>  .../bindings/mfd/samsung,s5m8767.yaml         |  4 +-

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
