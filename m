Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C93C3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 11:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzGsg7M/ZmvYz5BkSInZTyuPa5UfFppl15lfpfQ4/A4=; b=yFyzeZqvRsHNdl
	+u70JguXwWrZPJsMXW0fJDu+9ePxHdwuQuskS1oixaNa1w3pjji79i4c1CxS2BUggLZH7hPWxsH1H
	wDvQAA4zPqudyqBDVeYOA+QCP/0pGg2NP4AbEEJcm6MudS3a+njE8PPAEZu9rzoNlN8UiprCGktLN
	rwcl9hoH10YY0xa0ycgDzvhIypwL/A3ebAtgjAqr8wefiqn4rs/xy0TK9/C6nbXxbmlRdCAdgq5CD
	ipURJiIs7o368Pbi1mV1rFnvBAxAKUVc0TfX6+BINuBcwA2cFNEjzOpTC9zcPh38Df4yHZ4kdF6Ya
	TEYhSNdHcWk5fsLHLpnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjmq-00DvOA-Ed; Tue, 17 Jan 2023 11:05:52 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjmg-00DvKe-Ck
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 11:05:43 +0000
Received: by mail-wr1-x42c.google.com with SMTP id z5so29117348wrt.6
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 03:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WkAch3cPlv0u9HLJEP9wT65kJ6jSPsixjJXREuqK/Wo=;
        b=XkqevF5dsEDoRoBJSq56XUMlWdzwqaOhj29iLZMnB5anXQ/3qz+bSaHppM+ZhfOUqq
         3l7qzJmcCnOUxKK1d/yqFQajCmQlhTWQcE3AQsDLHfMPLzRGUiHWY5jjy/rq6Gs+XqEg
         cXt4Vv6EFfX2Ou027dcFLewNxdiw89qUedqnD+7vNYR8j4VUkOgSvdAjQFDg9TPFSVMQ
         3l6YwvADl8HOLsN1jqs9cJzWZKqw1TsLMsGu17UqSNnfhVIKCqLUPAUZX/VBb3pWS0rZ
         0Fx0WUsmoLxFDlAyy+wPUBHXxpYD6YWkdYpk/YHV0u3UuoKXPbjpYOOaeUxuCJ0ICZC7
         wHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkAch3cPlv0u9HLJEP9wT65kJ6jSPsixjJXREuqK/Wo=;
        b=OlHBfYGb6AP9JzMQm3DIK3zpu87INtV02YgA8IQRchwE4AQ/uPwWASxnLZkNij1hfZ
         cB+gLSvrIDl9+b9R8XKnul7kAcfwJSNTznERRk3/mGtaMat3VGdTAOBbmYUwErZ+cL+k
         xd7HQBW+EenUz1x2COB0rDC5YeQrH5Xob5sw63JuTwjp+PW26adeoq/dNBMEJi5OAoyc
         Htlcdnt31Ms7lfJyttHiB5efOfgDJDrFM/VP5DXAXuHSjQsXBzfgt7oVB+Q0/vp3vdhG
         atb/bAvO3khzgNFS6ac2rWqv7YPGp24SlxPFOpHbwWx0mVQFDHBlHxkZ3y97CDVUkpsT
         xfFg==
X-Gm-Message-State: AFqh2kp9aRMdbom2e3dc0JTlBNN2HAuMtwco8qBj+32L8LQ97Ni1lk3y
	rSmU6ZTko+QlGketyhFoNh7+Zw==
X-Google-Smtp-Source: AMrXdXt/Umjyw3OqUj4Zs66LDzH1XafK42kL2QUfsS7wOTJ8QQOs22oaeMdWBPRUEz335Y4Rdv5MyA==
X-Received: by 2002:a5d:5e85:0:b0:2bd:ec14:9c8 with SMTP id ck5-20020a5d5e85000000b002bdec1409c8mr2593689wrb.40.1673953540284;
        Tue, 17 Jan 2023 03:05:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bt19-20020a056000081300b002bdc3f5945dsm16265978wrb.89.2023.01.17.03.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:05:39 -0800 (PST)
Message-ID: <c266f909-e84f-3699-c658-a4e4880d57bd@linaro.org>
Date: Tue, 17 Jan 2023 12:05:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: arm: rockchip: Add meaningful comments
 for Radxa CM3
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_030542_437734_A6E79543 
X-CRM114-Status: GOOD (  11.06  )
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

On 17/01/2023 11:54, Jagan Teki wrote:
> Radxa produced several versions of the RK356x-based Compute modules
> called Radxa Compute Module 3(CM3) for consumer and industrial use
> with a variety of form factors.
> 
> So, adding meaningful comments on dt-bindings would help to understand
> more about specific module relevance.
> 
> This patch is trying to add comments on existing CM3 bindings and
> expecting the subsequent modules are following similar comments while
> adding dt-bindings to it.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
