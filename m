Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB1A3C6FA89
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 15:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J93qJPeYvvJRRwyzrf9Etal+r8Fqt/L5AD74l4XpARI=; b=4cn/s8MY8XRh+m
	N8w0+xpfGAP6PAs8oDFYRNRWSapaw9ldS7YkubdRUhGyTUScAi9Vt5GdYELN0+ekkY2x1CXZ2F+ST
	FHx9AKG12coa+E3G0JPhWTPweab8r9jlBTpAoF3ilzAm0gza6dQXPjKxaq/gz2/VABXvXh1ewCIW7
	p2CojmuZdZ8yKrnK0H5EElsL3PEzOzJ3UNL5d3X1N/Fijt7MNoPXcwivPlbptNVKtd9NFKkSAXcsM
	XWIJzv+pXxa/oO0LcvWldT12s/RHquMPuMjKbs//5HypoknX+ldD0KrBEtTkZ4YYl3UIDgsYb6mIR
	LNl8vKC/2lSKQHC2EGzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYqN2-00BfPm-Km; Thu, 15 Sep 2022 15:01:40 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYqMq-00BfM2-Rx
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 15:01:30 +0000
Received: by mail-wm1-x334.google.com with SMTP id e18so7911254wmq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Sep 2022 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+/YQUGKG79YoC7NHmR5xoM7tUa0JcBEoBM0TE1piCw0=;
        b=x7ObIcWspzpH54hkjhs8OwMGiLUcGWhOMmC0pBQFQxq3YZJYvi3YA73jiX+qH/6+OI
         JXl+M7Fo2u3nJG6fjPitWelyCyRJ3jXIGzZvVLEXokDA/EUQXCpwARal6i6RxJ97KYqo
         VKDeXw+aIS6Z2lbpU4e1sN1gsZbELUvuilkCg/W8iNXfqCAizIE6nlyfRODFXBZ6RypA
         0CfyWev+HCQb3ALaycsOzgjonb51SZHayj3nUov1w3e8Ub0I5OiYdymgHn5V1r5s2y4u
         PSsqubl72/uJRT1PsaXxcdXEnYsewWiCabI2Ank7nkkOCt8xm16/J2cfRF3Oo6BL7H5x
         dXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+/YQUGKG79YoC7NHmR5xoM7tUa0JcBEoBM0TE1piCw0=;
        b=ejw8NGhWeOuPh01/dIf/b+TQy16te2XjXC9I1pVUX3XPB/ZeJHkr9l/XJjRo78XLhY
         6hhkNA756o8tesQNWHkXKnvypx4n2istXzyVkyAmy5I/MOTReoMW8JWXhz63Ien86rCE
         ifXOOXLuJp55jnXqJFK4gDDh8d5F00EKYfCNpVxmeRqrsIJFkXtvt9bhCJ7X3GqcvLJF
         QKd19gTmCVsRwCT3JqqZDtzIS1Vhq0UjsJj9fsfXfOnmRxmLnC7VIq74GEC+y2ABAtjx
         CQi53e/6YLgOneSkilUHgHmvjizJTrVr/NiRknXo4X4f450FQR6JZvUrUSo/FhjM81FX
         IPTw==
X-Gm-Message-State: ACrzQf2KBkTbHaXPFKNUSQEM+y3FJN7ASbwMAOcXTic6QNFISQX5/XD/
	gj/P39JnRUrwDPhUOxSki4CxpQ==
X-Google-Smtp-Source: AMsMyM6Doquqmik2Z+CTCB4I78Qh1NPhEmbjqCZB/XV48p5OywlUQjico/uVsTBXHXmBgg/gKsQW2w==
X-Received: by 2002:a1c:7412:0:b0:3b4:7a81:e7e4 with SMTP id p18-20020a1c7412000000b003b47a81e7e4mr148115wmc.15.1663254086507;
        Thu, 15 Sep 2022 08:01:26 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.72])
        by smtp.gmail.com with ESMTPSA id r10-20020a5d694a000000b0021e51c039c5sm2825251wrw.80.2022.09.15.08.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 08:01:26 -0700 (PDT)
Message-ID: <69d4218e-5e85-098a-621a-e02b484285a8@linaro.org>
Date: Thu, 15 Sep 2022 16:01:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
 Enterprise Edition
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220911040628.13774-1-cnsztl@gmail.com>
 <20220915022511.4267-1-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915022511.4267-1-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_080128_992667_3EEB3694 
X-CRM114-Status: UNSURE (   8.25  )
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

On 15/09/2022 03:25, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S
> Enterprise Edition.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
