Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB047C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 08:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAI+SmhFn0UPe1RQztgEu8+5FQXM7ISBO8jEgsn69qE=; b=WfBcI+2HRGddb+
	ak3HLEKMifOl7ZIde9ZLtL4ELgJl2ltxxaRaVyYwAdE81PkZDTUIS+Y/a/0ckr9ibaC93MipkERql
	lXXNjjF6hsGNX/nwMGPbZ6eDjr1Q60PTCha+beuCkGZK71gosOkDQxgRUCKAUFgjL4/+DHnKdk8Xy
	waC0WTChNBSyzF7v+gvjs40KiY7/+LItyyOo0/edy2JkHs5kT8ZckCJv6wNDA4Uyv7GkbV/b3wA2n
	CCDQXCsiLexuOSU46g/om39aVp6iMhq+n/70BuX1NZbiEFjJkHjT76qqetha7223OLi8EyHVxVhcj
	xi2R4RKfjb3SHNWJzvfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovwUY-002i5N-O6; Fri, 18 Nov 2022 08:12:54 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovwUW-002hzX-Of
	for linux-rockchip@lists.infradead.org; Fri, 18 Nov 2022 08:12:53 +0000
Received: by mail-lj1-x232.google.com with SMTP id z24so5865179ljn.4
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Nov 2022 00:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1G+LgXVLTwAD0bsABjVNnklaty4nAZBWRi8DQ0slbOE=;
        b=NNAC/uuKgylej5tykC35MHAC0nNZTTDCJqHHoytAlCAfjmKoE0NYYDPBfiGYedF7OH
         DNSrS5UZGBbDCT5YHEXrsDNer66nxxfsd5YlVnFWNICjTAY6LcUeNh2W6pUnlIBou3ok
         +VggMm8ngkmdObxRVeK9sFV1QmwEChkNnqi7NM4PpXrUwTBqo8NLZI86PmNs3RV7Lj5e
         NSlWWeqLB/QWH2hACEfAxbV2zbg/CLpk1bIw23p0VJXT/141ETsvl1LFE8zXWCg0E5Wh
         7YZ+GVB7Nv6UAbN6D3IhbGj869F1QYTaVKTAwacv4pDz2cmM9vHEumWANiJuKo4CW8Lu
         G1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1G+LgXVLTwAD0bsABjVNnklaty4nAZBWRi8DQ0slbOE=;
        b=4ETzMJq6KnNyH0fsJlP+qCCAAM3xOXLi6BxPO0dEeQ3kzJ4BFNMSiTpgfulWejuX8s
         82PYs/LQqxqs0PeK9jWU/DUAab485YM37dSCAxO7WdxvNmTJHhtx0Xa1LZHPKkjYiq27
         Mv8SYO/I9/BavUpAoareSIDK22YZgtnzxjqjAA8vwA9ZCB2k85fcQVrO/bk8ASLqWbK6
         iwFl6Jn3gJNYjtvrfXiB3VHsV59RvJE9oJrM9rIRlH/WREPtstPfVrUNK4FsN0BpemsW
         NlQmuCQ0C9MmlCTHGEKJ4pttHtPfRs0oERxq4/iFZyORTfFmHIHfbfo0ic3/d2k+wdPt
         66Gw==
X-Gm-Message-State: ANoB5pne3OB950Q96UxAc63V16suvQ1rtPGp3ZzseVx9BgSKseBqtu30
	jtMmbI6aZRXI+z+i4SZMgpBUTg==
X-Google-Smtp-Source: AA0mqf7Hx6EsBYu1SX3qFIK4j7Nt84bw7BfCDum1i5gA+lyJoiJLwfo90iHXgMyfWlGsMEkMGzBSzw==
X-Received: by 2002:a05:651c:2de:b0:277:276a:a5d2 with SMTP id f30-20020a05651c02de00b00277276aa5d2mr2325194ljo.160.1668759154399;
        Fri, 18 Nov 2022 00:12:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n16-20020a05651203f000b004b1b0f12cb4sm560672lfq.201.2022.11.18.00.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 00:12:33 -0800 (PST)
Message-ID: <198b0e2c-a566-3922-d454-6c3210bb432c@linaro.org>
Date: Fri, 18 Nov 2022 09:12:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 2/5] dt-bindings: arm: rockchip: Add more RK3326
 devices
Content-Language: en-US
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?B?Sm/Do28gSCAuIFNwaWVz?= <jhlspies@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221117215954.4114202-1-maccraft123mc@gmail.com>
 <20221117215954.4114202-3-maccraft123mc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117215954.4114202-3-maccraft123mc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_001252_813535_8C00BD9A 
X-CRM114-Status: UNSURE (   7.60  )
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

On 17/11/2022 22:59, Maya Matuszczyk wrote:
> This patch adds Anbernic RG351M, Odroid Go Advance Black Edition and
> Odroid Go Super into dt bindings.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
