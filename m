Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF34C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQWWTL/50P9Q0POg7dBlt5kIgNt5IUQJd+9gHYlgn80=; b=5B89xegol4f+wG
	UHrcpjbnfNcrbjkI46bvn4gO7SXZuIw902utz53lAPIO4Zk3uFqx88jYpA4yfpfn1Y/N3nJhrVdjl
	NWB0dBKSGIOZNk0tVu0uJCYnLeVuWS/2Ehctft8EwkZ3XbJWcckSt/W9AtSuUd2Pps2pc61t41b4o
	dl2xvLNWtqaD4KvA1d+eO7wH/3A+xE5dO6S77gLwin14c2hRJ72yCVNDxNpnDfRLOptPZ4yA9lWu2
	MzvSyvmDj3nRwBKWHzWAjPuut8my+D3MO8e/YgwJhme3c2zrvOxeRc+qGLRcHxN0j9XnRCybCo+Vu
	Kl79x2dvZiCFRqp2/gig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nopdC-007soy-0T; Wed, 11 May 2022 16:56:10 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nopd0-007smH-Ej
 for linux-rockchip@lists.infradead.org; Wed, 11 May 2022 16:55:59 +0000
Received: by mail-ej1-x62c.google.com with SMTP id i19so5246123eja.11
 for <linux-rockchip@lists.infradead.org>; Wed, 11 May 2022 09:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Xq2Zvl0y6W/DywjzfFwT3mSGvp4ssDiPwloRauJoX+Y=;
 b=LYCqyvwZoP1ifve9OGWqcvp+t/dcnM6DtUoRIXPVXMT1ea9ysYZc463wV4AwwCZNHO
 l1FAUIS97PmXZGll9Nk2/ZnDo+NRe6D7PPe/hZaa6uzjaQfEyh9r6kEVj2gkxD9oFrqX
 Vv1QHiweCi6MxLBPeh+eh0wvIp9p3qH5sHVp9hR/UFWul5jDzx/v0eBn98xqFJtixPC2
 Tx8ocdDvbf3f6me0rgKC4lO9llQSwZed67AILcMiDqMIrEdYzGbhdRhChvCOMI5wzfzK
 w3abenRg1FSLjvCOvncaK2bALCQmePLQHGiFukoe+p8FTpubTrRQTtkNws9CFUe6GRJA
 2QDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Xq2Zvl0y6W/DywjzfFwT3mSGvp4ssDiPwloRauJoX+Y=;
 b=gMHOCXIOndofsFzUFqXa+Ye+YM0S1NCuOv8GL2vSo7Fu8EXhK12XgZCN2vwaIKKZVV
 5edVN3V+PmF9FbUZY2fXLpsihA2zNyROUiRXs8W5rWkyHQbDzVJu/PS3kytpPxpasae9
 cdiBorV5d8A98vFWbrcDmbF3An9KPgURHfCet3YV0U+1hDlf57nqdNzyV0Jxc3KoY/5c
 QtyOAr5tbUdErH5R3dlhuxMxlEj8abWfhMigypDGhEkSwbNWLB1U+I7NqEzlN3cEeC/E
 ohX11oHb0F7MNTalsg/lMQl1aZ14JiKtGWLaEU4kFc/7pU3g1uZXvycQr9e4UmOwFUGm
 Omiw==
X-Gm-Message-State: AOAM5327zlTm/rd18rHYoadGJnt726zNIIx9Cp592/Nruc+XFDA3SDke
 ZCLQG4O2eXWS32qIbgsU371HHw==
X-Google-Smtp-Source: ABdhPJwN1LNE3bePB/EDGUDvrgMui6lW6wUTzRmjoN4KSjSNpgMURLIriwixt/6bkZIOOsSNDa8poA==
X-Received: by 2002:a17:906:7751:b0:6ce:e3c:81a6 with SMTP id
 o17-20020a170906775100b006ce0e3c81a6mr24463186ejn.278.1652288151530; 
 Wed, 11 May 2022 09:55:51 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 b19-20020a170906195300b006f3ef214dbdsm1169111eje.35.2022.05.11.09.55.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 May 2022 09:55:49 -0700 (PDT)
Message-ID: <ce75d018-1ecd-32ab-55a3-da24ec0d4947@linaro.org>
Date: Wed, 11 May 2022 18:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
 <20220511155309.2637-2-frattaroli.nicolas@gmail.com>
 <bc4c395d-4e21-1d15-96be-00a5cad1d6f7@linaro.org>
 <2486415.XAZu0pfo7u@archbook>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2486415.XAZu0pfo7u@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_095558_541378_7A515E50 
X-CRM114-Status: GOOD (  17.22  )
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

On 11/05/2022 18:37, Nicolas Frattaroli wrote:
> On Mittwoch, 11. Mai 2022 18:00:09 CEST Krzysztof Kozlowski wrote:
>> On 11/05/2022 17:53, Nicolas Frattaroli wrote:
>>> The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
>>> encoding. This patch adds a compatible for it, and also allows
>>> the bindings to only come with a vepu interrupt.
>>>
>>> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>>> ---
>>>  .../devicetree/bindings/media/rockchip-vpu.yaml | 17 ++++++++++++++++-
>>>  1 file changed, 16 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>> index bacb60a34989..965ca80b5cea 100644
>>> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>> @@ -22,6 +22,7 @@ properties:
>>>            - rockchip,rk3288-vpu
>>>            - rockchip,rk3328-vpu
>>>            - rockchip,rk3399-vpu
>>> +          - rockchip,rk3568-vepu
>>>            - rockchip,px30-vpu
>>>        - items:
>>>            - const: rockchip,rk3188-vpu
>>> @@ -39,7 +40,9 @@ properties:
>>>  
>>>    interrupt-names:
>>>      oneOf:
>>> -      - const: vdpu
>>> +      - enum:
>>> +          - vdpu
>>> +          - vepu
>>>        - items:
>>>            - const: vepu
>>>            - const: vdpu
>>> @@ -76,6 +79,18 @@ required:
>>>  
>>>  additionalProperties: false
>>>  
>>> +allOf:
>>> +  # compatibles that end in -vepu should only have the vepu interrupt
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            pattern: "^[a-zA-Z0-9\\-,_.]+\\-vepu$"
>>
>> Why not listing the compatible how I asked? This is the common way of
>> handling allOf:if:then per variant.
> 
> Because I was afraid that if this wasn't general enough to apply to all
> future vepu-only instances of Hantro, then my patch might be bikeshed
> into requiring a v4. Clearly, my worries had the opposite effect.
> 
> Also because I thought it was cool to use a pattern for this to enforce
> consistent naming in the bindings.

Until it does not match for some reason. :) Just list the compatible
under enum and it is expected the list to grow over time (if needed).



Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
