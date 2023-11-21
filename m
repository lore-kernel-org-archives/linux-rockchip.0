Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E20F5C5ACB3
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Nov 2023 09:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsHRKXj+iP+xFcU22SN5+SahuZep/EN+feLrCVWXk0I=; b=1NQFrML5TLZ1Wz
	nCfJuaKEEHRhpgnfFvoKzHpYPxxlPFWiZxA62gfgRjMGjT1zg3lXh2Ybhs3SOcqb2JEMrU/F1SwVe
	B7Gf5aKZkFLjUQ2KlrD8+5DG32Jlng1imIw2NK3boyTssCPSW1WAMWWS2MNAbPkQMey+KZKJqASpV
	pPdIvVZdp/vZ960OQR3XVJ0O3nbftBfdgG3NDUWtgIoyBnlA8idQ9QEtfxogbBffbO2PQtImzCy+6
	WXvUuA32ugjxrv+E6Aa0ppYoM3wsf6j1HDCUAygr1QkAP8AOs33eiarTHrHPyhiS4ZHshCkT9wO/P
	pvFVRC8cp5n8XSu+fzwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Mgh-00G4aD-1n;
	Tue, 21 Nov 2023 09:04:55 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Mge-00G4XR-0e
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Nov 2023 09:04:53 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9fffa4c4f43so196723966b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Nov 2023 01:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700557488; x=1701162288; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GukcAJTXaEcK6cCKjc0EvDHkgaKB4BbuYgEOBg/XBvk=;
        b=GZWhawpOXaK9XEfvrwgLFHgGhhqCUzVs4TwiP5el99CBwi443VzYxgRQYAq8fqMUmq
         KahLZVWoOQe/Q5KT9X05tyV4nFnZ3J2lmE8aWUOKlopM63zm3w+B+k0QQ5RCCUG3IZrZ
         rDKwdzDSdUODLkN02pH/8SkV26W0VlKv+m43WNT/FS0kW3/rfjgXF1gifxk6Oq5+FM5w
         RJd8QMCqu9skDV4hztUmtqvOQgOvE0GuBUj+JZ74cQOnT8nfaKwAgKfrfqLtnT1fVcnO
         YnFgq03tTggXDjYSCbVjIlwsw6V+21g2og36m4gf1V5sH07QPkBvHWKmM9Ag4av2pxgi
         44+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700557488; x=1701162288;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GukcAJTXaEcK6cCKjc0EvDHkgaKB4BbuYgEOBg/XBvk=;
        b=pIXW1x3+aZoi7lVa0k+Ail2uvRs5WUa5rr3papq0YBPg0wOwykHFECx3FClgC8Us3U
         OELzBWHIuZdxbRox1ufAiBMC+zJ5kI5kEYxklFdiAve++4teJnIEERHtgaleFhWEImgN
         LzQRo3hEJ/fucMB1RhcQTwMnTJoubBfSd1hRQt25sm9a4NCzu+j5k41NsEOl+KVukRY1
         DITOokB6CxI6zDA0KOG0rHwi2Cv3qlxNPf1/bzYcTia6QsU4sKwt6goaJkkkIFtgzMs3
         IcYkqyR3UUHHuVX10gTuxz4Mj3WO72gPhnWv/dBLlBuHZKqvZq2oC0y4GKZbZHSHmbUW
         0AAA==
X-Gm-Message-State: AOJu0YzLc9Ts10nmrraSwhVJj9Runff6xOUnPrg1qJbDjY8GlKMHAQ0k
	3rXvVDaa8744PpDz0c2QOhvWiA==
X-Google-Smtp-Source: AGHT+IFw/fChnLtQDrJ85x+SlOQmSaBGi00oWSh52e0vhvjTdVwRpkmxeJQ8shyJVIBFhhmtWclQ9w==
X-Received: by 2002:a17:906:5185:b0:9e4:6500:7540 with SMTP id y5-20020a170906518500b009e465007540mr7789843ejk.58.1700557488426;
        Tue, 21 Nov 2023 01:04:48 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id w17-20020a170906481100b009fc576e26e6sm2952926ejq.80.2023.11.21.01.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 01:04:48 -0800 (PST)
Message-ID: <8eba3bf9-6736-41a0-a799-2eac53ab75b4@linaro.org>
Date: Tue, 21 Nov 2023 10:04:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: crypto: add support for
 rockchip,crypto-rk3588
Content-Language: en-US
To: Corentin LABBE <clabbe@baylibre.com>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
 ricardo@pardini.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-2-clabbe@baylibre.com>
 <97ae9fa0-0a6c-41d2-8a6c-1706b920d7ea@linaro.org> <ZVtS7YBhhtqCQX8w@Red>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZVtS7YBhhtqCQX8w@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_010452_240909_5E5CEDB9 
X-CRM114-Status: UNSURE (   9.88  )
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

On 20/11/2023 13:37, Corentin LABBE wrote:

>>> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
>>> new file mode 100644
>>> index 000000000000..07024cf4fb0e
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
>>> @@ -0,0 +1,65 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/crypto/rockchip,rk3588-crypto.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Rockchip cryptographic offloader V2
>>
>> v2? Where is any documentation of this versioning? From where does it
>> come from?
>>
> 
> Hello
> 
> Datasheet/TRM has no naming or codename.
> But vendor source call it crypto v2, so I kept the name.

I would suggest using information from datasheet/manual or just SoC
name, so:

Rockchip RK3588 Cryptographic Offloader

How can you be sure that downstream source used v2 for hardware, not
driver? Poor-quality downstream source is rarely a source of proper
solution...



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
