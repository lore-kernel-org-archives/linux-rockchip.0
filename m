Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC01C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 08:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dA9F6FXm/LhJb2C6DInMi0v+ZvOvuHo+tpTBny3nm0=; b=U0GpCaWZcecJW2
	2xDX6lW28ISTCe8YS6zUM0D6rNDZKkNnM25VHEqHSWEXxLoMTJxWZQBoP9cbMA6aXcM6uCwJFGj8H
	ljfsoF5cVYEzNf1A1/My13rd05jfOi/DakGGxU6Dt4ZXHE3NmwjBnc/yAMVe+RM8NFEkUGolfIoCh
	GrCvxRleCEN7vtDAj+/4wkEFg1JpH6Kr8uI8JT1tPXMX3YhrwL+pPa/TesEmLqjOodosU5B96cW5X
	GTUrpz9yM5gqQXtc4NcaWlYfjNrAjRWWonCYWI3HxkK4QnZ2KQP/S/2rL6jSjsqP8KrIZRqcCjfb+
	5EHCuo+Myypm2UaFpwNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOJr-006526-3I; Tue, 22 Nov 2022 08:07:51 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOJo-0064yP-8r
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 08:07:49 +0000
Received: by mail-lf1-x133.google.com with SMTP id bp15so22395795lfb.13
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 00:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NNBiy73Ky6s4Xq1P4P+snI/nTErvmCWvtpQD99zJ0SI=;
        b=LHSe+kbTcLpxARwfFEx119iYaivSTRuG5ExvsZoPA6KWncV5+CPvC/HFa+Lou5jn6j
         42lDSjXqN6awYg8z9RY33lVkQAEbyupLooeinvQ0S/pl2bYkpE3+TpyreVRQO4QxjA5Y
         wxIz5res3tFXXhx8L3Xay2IVXsVDEcwTLDArQt8myLC7PvhKfNuTZ5yhZSKbbAC8i5xU
         fiuN+VfKdTZlRnwdLNnk2xwl1fEtEVXBky4JqELq4e7Kl69258h7pW+/lb232fwwGF+p
         66lUCQc9QSw/BbUrQJocj8+Rks9BUvcpX9AhRv5xffAD+WMYL9GzX+iZPwde8ye0DL0A
         7eKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NNBiy73Ky6s4Xq1P4P+snI/nTErvmCWvtpQD99zJ0SI=;
        b=eXLYJAHHPGZg5ymopYDsZGsAvJSrE1JgcFsJOW6xBTCTVZ2v4OqPYmoou0tmj66B/8
         bILp1D80pbxtpCC3M7D41LV24od2McCi9t7AMeJTS7Uj8qAjeOEY5H4gr/uu1OKXffkD
         ePQhjEPJ6yX3RHeYeWveELy4kSMmTvzF1RBlQT5EpeI2EM+YmVqHZ7WNAHL+pQVeA+UY
         C+cPDxUwKF0xO+ieuIODr0faxacHlqElegrB6eSLrKPjzlyNnE4GjR4i18Ln6kI5mSus
         uVo7Rqgjx0yWymPbMSVhsVbqZiiulvtzUa0qytkyNRXFNrMPwH1+1fr0FgPEZqNA+TRN
         XbYQ==
X-Gm-Message-State: ANoB5pm/V0MEnAVOku0WDiu+dztpPBX1C42EjikFObN433neK1sdj2hK
	gYc16GDIyspJmUXNnP5D/j4JAA==
X-Google-Smtp-Source: AA0mqf5a6fD6w+lRgPB9p3LF4P8bOM7CzHxRgvCuauj2Sm5SdLzl/NlJvFi0H6ciJ8fJVseiyLxwjA==
X-Received: by 2002:a19:7403:0:b0:494:9f2a:ab31 with SMTP id v3-20020a197403000000b004949f2aab31mr8433513lfe.457.1669104464520;
        Tue, 22 Nov 2022 00:07:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j18-20020a056512345200b004917a30c82bsm105105lfr.153.2022.11.22.00.07.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:07:44 -0800 (PST)
Message-ID: <0da60261-f056-45bc-dbd5-9867b6d59976@linaro.org>
Date: Tue, 22 Nov 2022 09:07:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCHv3 5/9] dt-bindings: arm: rockchip: add Rock 5 Model A
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
 <20221121175814.68927-6-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121175814.68927-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_000748_427863_49968E60 
X-CRM114-Status: UNSURE (   8.03  )
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

On 21/11/2022 18:58, Sebastian Reichel wrote:
> Add DT binding documentation for the Radxa Rock 5 Model A.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
