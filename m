Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C330C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 08:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKxY3rj7L9oK1o5cr8fRr7OZ0rITDUSrpdAcoiWtgUU=; b=CBSvKJxGWxcO+T
	9MiR5QVD91+4MQVqfn5LZgdYo03qzd+1KBjQcqLcAJBieCmqQjmIhy4/jLN4RZvVZPQYnoBUqWvQW
	SQGyXzSMaDWjy8n8XRP0HLdOu7yM8Du8Skcr7fiOGfE339qoRHfYbtJMdBBjDVXUOBcOgILNzxNbf
	xK2spq5a/I63J7kjfq66BcE9X1RKV4+hnKxHuyKk4lelwsgorT8QgWHzCQFPBihwcKf8atKRd6ctV
	V3YCHxnkBzWiFS386B1dlfXgxRVfQ2hyt03HcuCernV08S/pdj0RFAmfpuZcjwsQXsR2WIC4jAGnE
	XZ9jrZtIDoGBmru+LKNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8z4V-00CzoI-0k;
	Fri, 01 Dec 2023 08:40:27 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8z4S-00CznG-20
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Dec 2023 08:40:25 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a1975fe7befso111781866b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Dec 2023 00:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701420021; x=1702024821; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LwaPHpx2wWsuOyVI07qURLSlvWI5FU/Wj3kBq4ULRv0=;
        b=ayVX+8da3JJ1BYgvY1st+qTwZDWWmdgMxS2YEIB70bjsxMinJ2KUNdbbQ+Xpr8BAfZ
         SrCAZ+xotPHxufNXGnO4VTaETDbZP4cWTgoATUy9z9MqPWv5PlEvYxXG4kIHFiStGIwe
         /nTkmUpeJzppwzoTD1eN7hXGGDbPjEKV3qiT12VHasLAL3CYUQTUXBq20VDn0qgip2Zk
         Bz08i31vi+HwVgNbQ8JUrfL1GZL6UEv2nU5NdfqELRWEtwwxVbFa8U33GPMwNKweuHy0
         04xJUyzoTOMo0bCxl/O/pwGvrkRj4Rx78YgK0BCuxIinn3vWLlRKF2ItMdFrbh82ZeO9
         WmyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701420021; x=1702024821;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LwaPHpx2wWsuOyVI07qURLSlvWI5FU/Wj3kBq4ULRv0=;
        b=suSynugSS9XvFyqZFjuXK89lZOfkfXFpvn4ZIQMKcVSlB19Yl9pQ1SWDipxHS4c3VS
         Ra7gnlimM9BRZ8unYkZnrlA1CuiikYjrpucT1dLdtwTfxy9ndeajCO2cqmw7HT6V2L61
         U0wDZwyiH2g/zMefR4Z17JNs2qcPzBoDVgEBCDK63jmqDHJuAGhJp+l/wQdNjApm00iG
         jMDj3udyCsLQFViSelNqpGN/xNg8wjIPzhjYV065S9FrNzD9mUiTtAbXRa4Gw3+23xHv
         TmCeJKhAM42SwWirpwqExqrDpcHcIZ8Eju9z6ApW6yQU6cGlrtpJevdtunso9nnuzFia
         71nA==
X-Gm-Message-State: AOJu0YyAMD3pIuOd4eGwMuNfKc8388gdvpmdGN+qpHBAenlKJLroM7ry
	hf0RXwh2HD0ibg6O6T1muXK+hw==
X-Google-Smtp-Source: AGHT+IF7iFz+LKE3JmsMvP41zSKP9g7iazn0xsToG2XKGvVAHD9TgKSe8LlYA0lG1ll5X1H53LpT7A==
X-Received: by 2002:a17:906:bcdc:b0:a17:781f:20bb with SMTP id lw28-20020a170906bcdc00b00a17781f20bbmr579745ejb.1.1701420020742;
        Fri, 01 Dec 2023 00:40:20 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id bt15-20020a0564020a4f00b0054c63ebfa15sm135663edb.83.2023.12.01.00.40.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 00:40:20 -0800 (PST)
Message-ID: <2a16422e-5b3a-49be-ba7d-de870a9d82ff@linaro.org>
Date: Fri, 1 Dec 2023 09:40:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] dt-bindings: display: himax-hx8394: Add Powkiddy X55
 panel
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, javierm@redhat.com,
 heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
 <20231130155624.405575-6-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231130155624.405575-6-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_004024_663096_BA92901C 
X-CRM114-Status: UNSURE (   4.84  )
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

On 30/11/2023 16:56, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for the Powkiddy X55 panel.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
