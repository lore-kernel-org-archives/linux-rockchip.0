Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6630CC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsY/GXpJCHpLeAwRqrcQ0x8NNq0QvvZZG8bsQt32Rq4=; b=YqVbbF0J7s04r/
	07nSQXqJQ7sEZJT8SK34el0zpN0IpbQISkH3DUo8wt8rfaUzRSxRqEovpm4pCwXhC9ddySEk3DOhU
	wbMsCkVzIAXUxWGpCSa96HLZvSUv7piCzr/mnb1zuKirq40x/TIoTWYWzyalaxfxTJk7b5yJ1WSJr
	JxU5U4qrrX7XxX8ycLe679Q8MZ5jW+swvXr9Jlh1irFeKjmfmw4cwx9o2kSLwY94EsMku4F19ps1B
	fENZGbDcvDvujCIFfdtVJjb47oLh2YRTTpjPtTFDZZuEIvj5awLjOmrDoskxHuTRlHWwSsZM7GNpE
	Fb9gSZVfi50eInui1Ueg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvPy-00762p-KV; Tue, 29 Nov 2022 07:52:38 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvPm-0075wy-9l
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:52:27 +0000
Received: by mail-lj1-x235.google.com with SMTP id z4so15878970ljq.6
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mUR4w/hPvYNcbwexPR4YZOdhkXAreGxeMf455Zyzvio=;
        b=hMgkztx20JO5yNjN3lhFueTKmLFoogPofa4si09Yb/A8uKliAj4T9xh7YsHLnQYR1M
         wsFnO89Ybtg5sF1vMk90tS3PNL8efwtlC7VjAUtg/sArxh7WW5roa46sccu64XOo1PgI
         auG3ulRrjtWlwDzc8Dy9ao2SrcRFoGHcLFbIJRffBvSmFjVgfUinwifXbib93DZmn6Gy
         e9xRmYLBFlQpfrZ5yH18SXdMIbiUCOYYhO891xR41EX5Y3XpBHt7+bhCg41oaGpEVjSO
         7YTL45XgFUax5MzwNM5gM6kzatas3LXfjgBrOlBjs1Qo09Vl8+NQt3Rx9lND2jn8K5Dk
         sMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mUR4w/hPvYNcbwexPR4YZOdhkXAreGxeMf455Zyzvio=;
        b=4T8PHYPDOSsoz5CFVUL9UO+IWtGVT7sDYDcFI0E/K5ESOPXlqXd67oVaBMlgDNeEyG
         cyf5vl/GjID9lz0WmnqnIsKO/0aJWLLrzIVg+p/YSTjF6ie6fVIa2XWTrq229LYYd8Kh
         yqHLTiQknrRxqU6LuncmT4WUBwvVaGDOPDUYaxylYKgfFk/2S6hUwFRtGehTnjglYVGQ
         9IRRpnBfF2YjgGWIY8HLfSr307oNJtiTnN/YwKLfS+7ixieTMdwmmUd0UYJQUi9u7wmh
         T565QOBWbV5CPxpo7+11+e20bVVCHwOdn1BIybhmzpTI1U736zqd4gbvKl9qof9tlw5/
         R9DA==
X-Gm-Message-State: ANoB5pmgkOKPczK77+/Wilk2Rb8Ng/v3iVtpM8Clt+8Gh+A+4FTQycx0
	rfzbR6coYNJQj+EDN3uWGNnsag==
X-Google-Smtp-Source: AA0mqf44EPkmgyclmfgC6DvDtKph+jnY1iudJFDajVwWs+PscSMAo2T9iuG95Usi1JxjKg7XBcNI0A==
X-Received: by 2002:a2e:8e6a:0:b0:279:a6c7:50d9 with SMTP id t10-20020a2e8e6a000000b00279a6c750d9mr2445443ljk.460.1669708342523;
        Mon, 28 Nov 2022 23:52:22 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 9-20020a2eb949000000b002797e41e1bdsm1455392ljs.86.2022.11.28.23.52.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 23:52:22 -0800 (PST)
Message-ID: <4e3a22d3-cde1-8d31-ad71-933011519296@linaro.org>
Date: Tue, 29 Nov 2022 08:52:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for Orange Pi R1 Plus
Content-Language: en-US
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20221129064042.17806-1-amadeus@jmu.edu.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129064042.17806-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235226_354200_563D3163 
X-CRM114-Status: UNSURE (   9.14  )
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

On 29/11/2022 07:40, Chukun Pan wrote:
> Add devicetree binding documentation for the Orange Pi R1 Plus.

Use subject prefixes matching the subsystem (git log --oneline -- ...).
dt-bindings: arm: rockchip: Add Orange Pi R1 Plus


> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
