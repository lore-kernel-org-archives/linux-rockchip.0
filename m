Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D68C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Mar 2022 18:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCOnUV3g0KKd60vu8cLvUkQF6MpabwiEg0faYRDxlaQ=; b=eGDKA6G5lvYIla
	7BdGXm3bTS/UcmhGyrJEH/v5BAcmbRGM/jpQbd2cWwaGECezh7tSJ2JLlaRZp9lCCXoRIj32UHY0Q
	OUN41g0CWCYOuDBDqXf4KPOoMbfRbwXOtrPtIyynf2ZuzY5Daf7k+DW1TN7NE+wDoBJKWAxD5gyfu
	f2ZgVCsucxJ+UcdK/XUBB1qWqd2PJ0AI+b2ZDQ+uDooFfMQmVntjNiIxJmyhWXeGuZvE9VLQWNl6o
	ozjBetizbalTc0n9p88QbAT8FwQ7F9TzNGC8jZtVhXGdUjL0J1BO35aj/gJfhJXkCWsD+VtG4wu8I
	f7H7Ja0MIzViR4bGJEqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXS3m-00HWY0-FM; Thu, 24 Mar 2022 18:19:46 +0000
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXS3a-00HWVy-OC; Thu, 24 Mar 2022 18:19:36 +0000
Received: by mail-wr1-f53.google.com with SMTP id m30so7834467wrb.1;
 Thu, 24 Mar 2022 11:19:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=sShruqNvZUchI28ILvTdEo38ieYS+DY+iNhiC6vHsC8=;
 b=EuCEMx0SWzh5V0EZyS2tWW32V98I1OJDaNxtqrCtu2PXUy5GLAVv0xfziRoc7i05PW
 9Vb+rl1j24Xmw34S8resRtMQgLgqGWSr/95Aelzkuh/EW6yKT4gTiGDr0gOHHbPZBOvP
 w7eBGkHUH5dhP1rmviyJqisUo9zc8qwqHhzvICc2FR7WK9mQ+LEpRE2tFinjVI1hNUmg
 sz478G+W8c4UQ3Vu2nPj3h/2q92XsSWK53strkwdy38cgu5pTFDe24qHTMU+rs2cehGC
 Jl8BsP+dGAaAoV04Sm2I1LMiiICOHytV0AzXVbUoSe60MR+I4xfmhJP1Sd5VmvZkmCqK
 5BdQ==
X-Gm-Message-State: AOAM531k+vazbYOeifYnRY5Scba+LFjU9DHrs8aMAgHholWQ5+GQYZ53
 REsbGSBUFHkyYgG6zXlmyTw=
X-Google-Smtp-Source: ABdhPJzC6djT24nFCyVp44IEirJJaFJU/0jVblYX0o/KcYPym7BgkM7Zs06lR+obo/brOCN4fKSFvA==
X-Received: by 2002:a5d:6d44:0:b0:1e4:9a6d:c171 with SMTP id
 k4-20020a5d6d44000000b001e49a6dc171mr5714666wri.468.1648145973234; 
 Thu, 24 Mar 2022 11:19:33 -0700 (PDT)
Received: from [192.168.0.158] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 l15-20020a05600c1d0f00b0038c8ff8e708sm2655396wms.13.2022.03.24.11.19.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Mar 2022 11:19:32 -0700 (PDT)
Message-ID: <c0ae3465-9185-197f-65a4-49df856bc2e0@kernel.org>
Date: Thu, 24 Mar 2022 19:19:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 21/26] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-22-clabbe@baylibre.com>
 <90ebea0b-1d67-98dc-2b49-a6e3b97a2c4a@kernel.org> <YjyaV68mTsJAr9Xm@Red>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <YjyaV68mTsJAr9Xm@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_111934_828926_5523BC91 
X-CRM114-Status: GOOD (  12.52  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 24/03/2022 17:20, LABBE Corentin wrote:

(...)
>>
>>> +    resets:
>>> +      minItems: 6
>>> +else:
>>> +  if:
>>> +    properties:
>>> +      compatible:
>>> +        const: rockchip,rk3328-crypto
>>> +  then:
>>> +    properties:
>>> +      clocks:
>>> +        minItems: 3
>>> +      clock-names:
>>> +        minItems: 3
>>> +
>>
> 
> I have create a binding update patch (https://github.com/montjoie/linux/commit/da05ef9bb488c16cfd15a47054f5b1161829b6bf)
> But I have lot of problem, DT are not validating.
> Example: Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.example.dtb: crypto@ff8a0000: resets: [[4294967295, 174]] is too short
> 
> I have tried also to set default resets/maxItems to 3 and setting it to 4 via an if. But I still got error like maxItems cannot be update after initial set.
> 
> Any idea on why my new binding update patch is failling ?

For such case one way to solve is to:
1. Define the most relaxed min/maxItems in properties.
2. Narrow the min/maxItems in allOf for each flavor.
Something like in clocks for:
Documentation/devicetree/bindings/clock/samsung,exynos7885-clock.yaml


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
