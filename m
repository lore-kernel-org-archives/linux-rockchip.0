Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2788AC4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 17:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee/0MniS+Ldpu7II2/aatwxulQ3w/qBwjymYjkjlZGw=; b=P3ejh1d2ddNSbT
	Ca1gQThr+1JW6/iFTMttCqrdf/A50FUnie/3eYpNMl+mSyB50nt6mqDcOryjSgtubX/uitNeddaf+
	LEtm93XXlPTBlCCYjKkoqhEP8F9iBDFGlYNYiBicH2UCCx7jLbdqDtB40kFYOTLHyQpwwRJhVynDD
	csP+XsyQyd8j5BQkGMjvW4y2nhf/vqcP3LTBW7VOswD2p0O2kqrVZAJZmkbbzvSCtBiBexgC2xt/b
	sryzLw2sCbE1yNiHe4b6bsjpBALcdrFfLvpNJRplD2MpLLxd7kuM/We79omXZ8lAqBAjcC2vNNr/i
	oUA5C5PxNz8sXcLq6UVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKvH-003NxB-33;
	Fri, 12 Jan 2024 17:02:23 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKvE-003Nvg-2U
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jan 2024 17:02:23 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40e63bc90f2so10895145e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jan 2024 09:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705078933; x=1705683733; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=coVSU02Hvj2+13BwSr90FtgAVeQTqmAYO9t6HfO+OLk=;
        b=EohwWGmGCWjj+8E31mEs/wCPKFh1os4h/eJAsUsK1Y/pMkNAFPa32CIhOlRuwsrnQ1
         jxnOoTU8UzR/3Hho19dJkYERsjFh4uP0Emyi1+KoF5ZB/kxWgwklZAYg8M3GEWG14eFl
         kpY60WsTq/jXI9GABFr/2wKmHb0HiAURynmUO/B02OP0pVWFiY7Wr+WJMOlFDkSfmabK
         wlC5Yv4ibYNPk7IjcnSjN1+Xfh1sZ6LgukrP/HyOpqT/VelpMMUmujGz7imEPPSKwg/8
         kb101o+OTnJ/+kmMX/q77n7+PlVH0qdiUo3hblcXo2ZCin9Kw7YUycKwA1gfcSuEqk+R
         pfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705078933; x=1705683733;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=coVSU02Hvj2+13BwSr90FtgAVeQTqmAYO9t6HfO+OLk=;
        b=oAtKSnwoKMzTWFPR4UbVFUMQgcEYU9TDOoWYCIeMXFtwST0dxIKD2KTPqO3uBdDtd/
         D3g2DcMdoF+aTU3XDdYWIOTlCtc6aVU5HJ0MUYpQQ42ycEhbeixyGaDWV2iR9AZiqZvY
         XWWzbhGdPj8ZJ3J7dy26pzn+8sRB6xjZfhPFFupgDYQ7xmf9iNHuQ1Tp0ZMz8EMpDs2y
         DqJfLb3BQPEJ/KT8kn00Xd2r3uShgHOUy0nQ6OiQqx0H1xHhs/JUI5nMQC3QsxRhhEa2
         m8VpAd3rDkKX7lyGdVbB99PS83LUjIStapO6gJK7B2mLy9UkgVOvJgdUC98E/K1QcEu7
         SPpg==
X-Gm-Message-State: AOJu0YwVnmPb+iOMsb5Lurr8XVG9FHfV19A8kUOUbChwdx4qGXI/9M66
	3RqiuiI8TNAZ3G4v9S3FuG7OvgvjEBvs6g==
X-Google-Smtp-Source: AGHT+IGbH/65BiaUQHDKoiFv1C+M0VPqRwB10q2EgmMldbolvbwk8QHqHjlr/oTZ+ueVPEDEWtXeWQ==
X-Received: by 2002:a05:600c:1551:b0:40e:491d:acaa with SMTP id f17-20020a05600c155100b0040e491dacaamr847816wmg.22.1705078933470;
        Fri, 12 Jan 2024 09:02:13 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id t6-20020a05600c198600b0040e48abec33sm10241449wmq.45.2024.01.12.09.02.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jan 2024 09:02:12 -0800 (PST)
Message-ID: <dc4e9808-cd36-4b99-afd9-8dd4cd16a2a9@linaro.org>
Date: Fri, 12 Jan 2024 18:02:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S
 board
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, KyuHyuk Lee <lee@kyuhyuk.kr>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Tianling Shen <cnsztl@gmail.com>, Andy Yan <andyshrk@163.com>,
 Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240112134230.28055-1-lee@kyuhyuk.kr>
 <20240112-granola-underline-36a525dc789c@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240112-granola-underline-36a525dc789c@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_090220_819458_310B91F8 
X-CRM114-Status: GOOD (  12.09  )
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

On 12/01/2024 17:58, Conor Dooley wrote:
> On Fri, Jan 12, 2024 at 10:42:30PM +0900, KyuHyuk Lee wrote:
>> Add device tree binding for Hardkernel ODROID-M1S board based on
>> RK3566 SoC.
>>
>> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 5cf5cbef2cf5..cc37d2118131 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -566,6 +566,11 @@ properties:
>>            - const: rockchip,rk3568-odroid-m1
>>            - const: rockchip,rk3568
>>  
>> +      - description: Hardkernel Odroid M1S
> 
> if the vendor for this board is hardkernel...
> 
>> +        items:
>> +          - const: rockchip,rk3566-odroid-m1s
> 
> ...why is the vendor prefix here rockchip?

Uh, good catch. I missed it when acking their earlier mistake year ago
:( Would be nice if they fixed that one too.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
