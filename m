Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00ADEC52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 13:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7RBxaX0my8EekenhYeqH2cHCGjF5KgvzWk5MoI3qu2I=; b=fuv2bTDXU7U2J/1iWO5SAGOcbn
	4DqsMcSD6vYeJCdhfRktQbvKxv806p3wWZQDJk7Z0HoTZAldJMJdv4nCjaOpdYBF4mDSpYBxgNig0
	5Ut417VaJUOEbS6PfzwPhexhz5ckfP04WFHGYddPSe5i7OytWs8UylIiF2VItEWZU5s1zeJxQZUDg
	YSr9Wn00ifa8eyk69DqEVnts/F7UxAa/dhas4INWMLxA0GUhimU42Rl1AzMSgqEVj2R8NNEjUnG9i
	zFiE/mNvgBiHLiw7tHBgxGHFGwaDKh8R7UEJ9o7MoUPuVVuZGsEzXDFcRqE0n33yld7dzibP+yorM
	sN0vOvsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdV6w-00000000Q4C-3Gte;
	Mon, 12 Aug 2024 13:29:22 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdV6J-00000000Px1-1tep;
	Mon, 12 Aug 2024 13:28:44 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1fc611a0f8cso30132165ad.2;
        Mon, 12 Aug 2024 06:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723469322; x=1724074122; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=q2T3wy2zFPohUzm4HYI93e1fa0m6wxGlFeG9XBGXZAY=;
        b=fYj8X/jBBzhQm4RIFiFFNrxPM24ZAm65CZvSi8Am2gEp4R0lTsv1Swoy9VjxGqVy/I
         CtOgtUcU0mcSDv5m9FepXSp3DAF19XYIWpbjQY1EdIw2LX67gwdlPqjzkKvQmLQScuKz
         NuyWAVqjUrFmkZc5aeUh1J+p0HxvtAYLVolM8pMaddTUQlSHpJs0XqLvRM+qBMrkh7rb
         twSEaz6Be8jVNiG0JOA4A7+oRWqX7EFufhBW3soy+NGSC6To5pPy0l/fsgYeLFCLfiHW
         0c5HfEvoqMkCDgVxgzMvE5RGPzACwMD3ddKyeA2WYVFV87U2ToOOJPSiKK/BianU7XO7
         48vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723469322; x=1724074122;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q2T3wy2zFPohUzm4HYI93e1fa0m6wxGlFeG9XBGXZAY=;
        b=qNIv2/igYtktV3+Hoou6S+HHasiJcS/gQPCaDPSUNYADDHTZ0w9I7rwb03INhUtr/w
         na5Qh9EguQQw6WeuoXsq3TiTWkwisD4YO+J8sDmoPMxYWfQnE5bcaJ5QUvekEXUSUU4Y
         D2lXlHxf61htCPbBetwzC3SVyTMIidAyf64Dwgn1mMbyftMTS+04ojys+PS2i1s8H/XU
         HKOegHIHDjEwBQVLyTx967Vyxf1bEalEs/mgB6x/4+5Jw+JUtOZw0WsYl3yz6CeAKsGv
         llZAUNyJPf5F6scB5EKNYstX8bHFx54eiFy4zPsu7wzn8AVTFtabarTaH027zScAW830
         xNgg==
X-Forwarded-Encrypted: i=1; AJvYcCU2h7w/4bElKmWcN+t3J4KMK1O1IYh0yFY9cm9ixSTfzW3MunsTXhOC3SbseqWmBi8QxBrJDDE5nZdulT5xRpM3@lists.infradead.org, AJvYcCWNbTxecViaJqfKAVHB69Wpb7t6dqZYyZ9w+RYdkROJ9/8nVXhAVWKgDL4yOMY5Dvz9aSYMD3betkpSgw6NiGw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCSFKU++gYv5d6LIQwsl9tNalt4H3OURpWmpk0LWxphdazETGj
	LwC7iFPw3gl0j7iRTGQNgjbOGVgTfSB+ZJSZ587mV2jOQU6ZfL3mbxHI3w==
X-Google-Smtp-Source: AGHT+IHI16o8h0cxGZnxLOohq5pcdnp5N1uzUWBszGCX0V5kdHTEkUTdtF0pBgubs+IfbeLdQI7BIA==
X-Received: by 2002:a17:902:ccc7:b0:1fa:d1df:d41e with SMTP id d9443c01a7336-201ca1d4959mr4070225ad.58.1723469322418;
        Mon, 12 Aug 2024 06:28:42 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-200bb9085e7sm37776505ad.97.2024.08.12.06.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 06:28:40 -0700 (PDT)
Message-ID: <acfe6acb-725a-4e62-9b82-35a887a3813b@roeck-us.net>
Date: Mon, 12 Aug 2024 06:28:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Farouk Bouabid <farouk.bouabid@cherry.de>, Andi Shyti
 <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Jean Delvare <jdelvare@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-2-f9f6d7b60fb2@cherry.de>
 <728a8e06-81f1-4771-8031-ea043b9baf20@cherry.de>
 <3a36e89b-b4e2-4eb8-9197-a7a1d04a7fb6@kernel.org> <ZrnekeUKciV4eAKC@shikoro>
 <f6dfc6cc-365d-4f0a-9a4c-dc34cf4c5b7d@kernel.org> <Zrn-ZkgYKVquarDX@ninjato>
 <426eb8b6-9b2f-4594-9cc3-320ef0cee835@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <426eb8b6-9b2f-4594-9cc3-320ef0cee835@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_062843_526891_AB23C6BC 
X-CRM114-Status: GOOD (  13.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/12/24 06:13, Krzysztof Kozlowski wrote:
> On 12/08/2024 14:21, Wolfram Sang wrote:
>>
>>> Yep, but to be fair the patchset did not say anything about
>>> dependencies. There is absolutely nothing in cover letter, nothing in
>>> the patches, so I do not wonder that this mishap happened.
>>
>> Still, one shouldn't take DT patches (which are even the last ones in
>> this series) until all other patches are at least in -next, or? Yes,
>> mistakes happen, so no big deal, but i2c is not to blame IMHO.
> 
> No, it's not. It was just a ping. The issue is here not describing
> dependency, allowing Guenter to take the patch and not even telling him

Oh, I knew that the i2c patches were not yet in the tree. I just didn't
know that I must not apply patches in this situation (where the actual
patches are perfectly fine but assume that something else completely elsewhere
is applied). After all, the amc6821 patches do not actually trigger anything
in i2c mux, they just trigger instantiation of nested devices.

We live and learn. Patches now dropped from linux-next.
I do wonder though if the rules for applying a sequence of patches with
non-technical dependencies is documented somewhere.

Thanks,
Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
