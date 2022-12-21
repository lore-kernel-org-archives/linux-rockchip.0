Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF41C10F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 08:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2AR6D+Kp2hDFXwWagHPO8Xn6bA+Y7aUtLlyQXMKFYU=; b=GDoLZwX08ojvRY
	DEgNaYprqlxv35chcuV0zfep9RvTWco0JrCpZc4H4RMIkm1mFbYsQO57uorQ9jlv0gRj5xeyyPeaW
	M5AfKeg3XNyovBKi9iMAbRgyfg9Lzh66BjjaZfZ2/7Eza/M+ijAB+sV7pSW1p+MKekwvcYi5Jyxkn
	jq/KIiaumtQfS7fW3OBXKqkQAIB0RJeIJmUn23R5QqbJNEmtDI1EIZNUr6/7cn+9vc8lL8m4UXHZ2
	h9pOOwTbbqgnmlVEOW1cwvzrMa9SuULCMFqSErrjxK6EjVFlHr8tS4/yEgn4jKFnsX69FPgckN9Vm
	Y32GrpEj/9IsnXVatO9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7uIR-00C3KD-Da; Wed, 21 Dec 2022 08:17:51 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7uGk-00C2Fn-NS
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 08:16:08 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p36so22304019lfa.12
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 00:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dRBaCHV+UNDOXNoLk4RfhR9W0+ki+Ik/87sPPJy8yrI=;
        b=CVZQdBzEjr6RL1Ae0Eo+U9kj3bBVkp3n+L9Xmdm68zecrs+0PcSmQ6xCzdWoTgVNko
         OLkvzYmtIY5JmEWTyZiHP11QfUZ2V43ZWAf8717nGRFZ3h9IV3mnviXd3F1MK5aVPd5a
         ChiI0Kgd9eW8buDR/xEiuRePbnduQ8D49GclP1GorMzdPoGZ2prXAvUuR8/nhPGF9KlC
         5X2LtCk/6Z1Yq62MXp1aRSUDfRNUr5aIzaL5AUn1AZVDJlWHf+03BuPuPmLLO26AmnfD
         gBe6SxsY+KCSawtftjWBcQUXkXAHUFxpbd8S0KhL6AtbAbXWJROx8vn9hLTLwTCO6Z8P
         8v/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dRBaCHV+UNDOXNoLk4RfhR9W0+ki+Ik/87sPPJy8yrI=;
        b=KHq0DuvO9FH98Zyvdl23mu8am6TR0yVBsn/5NUpJSP2eQMnU05Ar+Ez4lNGEpDg5xx
         +aPLT0pKzmO3VkwDFaLWR49OGCDZRBbBNOP52L++LJloTsMO131JtzzI0vMPFuchXPVm
         /FD2HVQ5uhjj3OG+k9lU+C778c0kMqBvwJbZuACQuGIIXYPDeuWhMwAN3FeRr5uc7FBQ
         RLcPcrt033jW/zc14oGiXHCK8OVislMh3xRdR+cfz1WULxO75gelrtv6/dcKLW6HKIF/
         08GNpdeNhF8Z2GMexmTfnj9ILcurTsb/Wui/UMtRVAXS9IbnsOnbHUUL0N/QAtP9qW4i
         jnLA==
X-Gm-Message-State: AFqh2koPHqK0DIHvKHLUS06RktPWuikyPijfj1JwmMGe7EpQzrHLC457
	PChY+G7AOwCFnQSa60R8mZy9I2xrh6kR9ymc
X-Google-Smtp-Source: AMrXdXvu0JzewlvcpSAFLMx6y5F94at0p3f/YQ/rIg3GUPVVM1J4xERq2AC2ortFxt652/XA6s6dLQ==
X-Received: by 2002:a05:6512:3048:b0:4b5:5f2b:ddf8 with SMTP id b8-20020a056512304800b004b55f2bddf8mr419900lfb.7.1671610564375;
        Wed, 21 Dec 2022 00:16:04 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h10-20020ac2596a000000b004b4b69af17dsm1764774lfp.214.2022.12.21.00.16.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:16:03 -0800 (PST)
Message-ID: <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org>
Date: Wed, 21 Dec 2022 09:16:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: Yuteng Zhong <zonyitoo@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 DHDAXCW <lasstp5011@gmail.com>
References: <Y6KfFEChA67E7oX/@VM-66-53-centos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6KfFEChA67E7oX/@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_001606_879389_4DEF3258 
X-CRM114-Status: GOOD (  14.51  )
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

On 21/12/2022 06:52, Yuteng Zhong wrote:
> from: DHDAXCW <lasstp5011@gmail.com>
> 
> LubanCat 1 is a Rockchip RK3566 SBC based
> is developed by EmbedFire Electronics Co., Ltd.
> Mini Linux Card Type Cheap Computer Development Board

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

> 
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 88ff4422a8c1..84d39a3a8843 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -781,6 +781,11 @@ properties:
>            - const: rockchip,rk3568-bpi-r2pro
>            - const: rockchip,rk3568
>  
> +      - description: EmbedFire LubanCat 1
> +        items:
> +          - const: embedfire,lubancat-1
> +          - const: rockchip,rk3566

Here as well.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
