Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCB45C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 19:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSin2uiIvd+tjau2xTqzapLNg0hC5boauu2/nGeo/5s=; b=BMQBmpN4vHnTx8
	BkWTSkSwZPhI9Vh0cyCZH+bCAiL0ROTb6MmLi/7JWo0avZmcVnTQiPUBloT0pG2HJQdjY92uSwbJl
	VQL6SBnBhDPrvoG2zoIwD28vXVIxUsCPpH8p05mK/LyaHaCZU2REmBs/rcO8qDZ309/7Wzr0yukaM
	qV7hp9P6XRfXr55Vdnl755nsZiZdiZfjzZzrB4MUEl8/Bd476SOGE6KVUr0aZ2zJqhEqrQ5x7tN4G
	4PxUUNs5r3SQk1EaaoS9FEn1/q9CN7m8C5wEKA7jk1zsAbQG3kmpB6e8CpQnVhyEQ/jhKnuPAuAjh
	SdohPDJugWbygBlZyyhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9B7V-00CG6H-Pz; Wed, 06 Jul 2022 19:55:33 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9B7T-00CG5d-2s
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 19:55:32 +0000
Received: by mail-lj1-x22f.google.com with SMTP id i17so14986854ljj.12
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 12:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=1cggqdheLf5tx5a4RWqD6gQP3vfX6AayXoHRI5JqNGE=;
        b=mxx0NhRQGF1roPP4zUR+jS909if3vve2lCYvqaCEj0o8N8iN2WWvFZrCj72oW4VAJl
         4A4EHkuGXvb/iMt+FKYOYSXXnkfZB7wk/vxowFPjLKoFPuJkBcoqSykKDWFYoC6gtITD
         +lMVqMSTotP+JkO8YToXGVnCZEcFtpp0R0HeHuy8ZLpnv3m/QlxJ9/CSQhJ+19e5gptB
         nUU6Al/QL71JK8UOiq5xICi46Qv/8rYBqAHS7HWJc3qqeGhjpu7qdMJROatRzOxrZYyr
         MoebsfkQ8tAE90yRHltpvsxyIYZ+TK7Gkv9Dv8Mkmf6H2nllsdO/KwBY9AYisOcj4KMW
         xJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1cggqdheLf5tx5a4RWqD6gQP3vfX6AayXoHRI5JqNGE=;
        b=IEz+O5EHrOIWx/cRXJDnCY6tqCuYSiARzI7eCbPB3Z+5VEQnkb/zRZ7rD+xSaqYT7S
         OcqxYNjpYrNyXcmYg/z2vE3BW1jMT1xlqjoIPyiMBO9NygyGxaMzTk9p8wWP3x2uMWz6
         k4Oxl/wn1pK3FQm8kbmtWrG4fgiDPzwahAavFfcgWCK2kK3yPgOIa2yP2cIE/Ur0pApN
         9kQslnp24LVIzSrbK/MwV7KhOn1B+uq2Ys6YhsdV8HTBDhlD4MCZ47zJrnzIV/RphwZC
         ssNKe5FcsxB3cjGo3k+V4gBhY3QTBHFOueEEi5XC6ZtxTMcABE8Mwex/p54+lK9fbJSs
         ISbg==
X-Gm-Message-State: AJIora+1O7Ry8P7HhNOxnE6LVUHhga82MUz0xKIJNXSkuYktkUGv4M3d
	8JV+byek4frAThwJHYbsdoZQWA==
X-Google-Smtp-Source: AGRyM1vnBn9IH/IF7sLcDzjlPr71ImIMk5XqA2RucdlxyWgmXqAt0KV2/I5NtaX1BUqu46ajylefPg==
X-Received: by 2002:a05:651c:2317:b0:25b:fc32:906a with SMTP id bi23-20020a05651c231700b0025bfc32906amr19597103ljb.445.1657137329221;
        Wed, 06 Jul 2022 12:55:29 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id p11-20020a056512234b00b0047f6b4a53cdsm6413232lfu.172.2022.07.06.12.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 12:55:28 -0700 (PDT)
Message-ID: <a965913e-39ba-640a-0d36-2bf7ecc10e94@linaro.org>
Date: Wed, 6 Jul 2022 21:55:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/1] dt-bindings: i2c: i2c-rk3x: add rk3588 compatible
Content-Language: en-US
To: Wolfram Sang <wsa@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20220623163136.246404-1-sebastian.reichel@collabora.com>
 <2664d6a7-ee4b-9cfa-800e-e97522e3986c@linaro.org> <YsXjrUVbGIObUroU@shikoro>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsXjrUVbGIObUroU@shikoro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_125531_189840_265D94AE 
X-CRM114-Status: GOOD (  14.61  )
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

On 06/07/2022 21:34, Wolfram Sang wrote:
> On Sun, Jun 26, 2022 at 10:22:09PM +0200, Krzysztof Kozlowski wrote:
>> On 23/06/2022 18:31, Sebastian Reichel wrote:
>>> Just like RK356x, RK3588 is compatible to the existing rk3399 binding.
>>>
>>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>> ---
>>>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>
>> That's still some old tree you are based on...
> 
> What do you mean by that?

The patch was sent to not updated email, so I assume it was based on
something before v5.18. Could be relevant, could be not, but it raises a
question what was a base this (and other Rockchip) series. :)

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
