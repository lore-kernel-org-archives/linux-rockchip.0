Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79DD0C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 11:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFlAhSs4q3V64ZW/Jdn9XwUKvwkplHp6++OYyOPs5mc=; b=W0Ja63xH1z8T/N
	53utVP2l5iuPXQYX6WYAf/vxxzzi9ZQVPuT02CO1nRn3+Yo9B7FrpG/McP5e0HDuLYm5U5qpUG/Dv
	LstumvcIHFlf9aeFPeQQg1RRcB3GsFvMIVmRIhDph7bZsD4FUXyiwGcO4ws47iu+yFx/6Eb9lXKmr
	9NrIYHgx0TCmAz/XNsZp+YPVZhMZ7ys8gjZbtMoOeTdcGAdG+ruVZO5bsAfMZgXxp4dOHpghbkrvx
	BLmCA9v/bbYOT2IBrobl+hHxacmUX9hJYqrCv5X/SpyAKG8hCIupfmZnj4KeZ8dezClMbekT7MZoH
	Q5BqdbUslfVDK3orfO0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xXR-00EMMP-GV; Wed, 21 Dec 2022 11:45:33 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xTG-00EIlE-Nq
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 11:41:16 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bf43so23082012lfb.6
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 03:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TFr+KkgF0f2zsju3on50AY6Jqv8wMu+vCgWh7SKVHvU=;
        b=a2EUh3XRGsS46OpUUPOejw8y2YIi+wRZ3E9NbbtKa16cGTd+sMjTKjBtYMbjgClYen
         +fLzFb+nskcXKLmkZaNaO1ieTjC+oJ3wy7O4NDF+1zmHsj0UFJBGRaxsxxjHm2Yrr7J/
         HD/Y25cJ58bdyREnEe1nqQJQsBPe03KSi5r2ovgkObqPEBGGvQKY5Oj5nUOHlPp9e6Ly
         reFgdBt6JNfcY4LfLAoObxVIG0a8qYY4XQkCM0vIKeD+uAsmm47CgeFDTUI/Drrp4+Jw
         cww7q/I/Ds/Rw7sa+vjwQS2GQzZEbwHWGG22HCGeJknxoJYOfvuhzNza/DEpSqvag4BG
         xkLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TFr+KkgF0f2zsju3on50AY6Jqv8wMu+vCgWh7SKVHvU=;
        b=SAj0w6rwJcB0fgOc194dpam563u73t0oEqFMfpURSTrc4VP2USI34UCOsDZ9T9Lh9S
         Zez/XI/eVA5DvzbcgNAB45dHHEQ1jl6lx9Za1dlxYHhxTUmK7ASWTTBTZAGkSa+yE5Jz
         IE5w+IFCqTsFq/wmZRCZw9ULcKfcv8GFdSId1jiVYMH1UcD6O2FRjnnPbFNgWt8FkTbI
         3A36m/rISUHk/qDXojl5hqDW5eF4Cy1hP1OM089+BPge8eSpNTqi36L1jHV1iIHn4cPe
         ldQ1RxtQFKDlGtHxrzewvVEuWDFkApPkSn/JhJpxx3ITvBypWj3aQ4RXCEzhz+0ChPZ7
         aRCw==
X-Gm-Message-State: AFqh2kopi0LN91VUWQPZDMwAhE9knNu2FOK29Dbo7VdbtYq8NmUdAHRW
	DCuGi5ER7bewps9RA2YVNJH+0w==
X-Google-Smtp-Source: AMrXdXsyPsMudczLvkigBGwO5mqibV7RZCAK5DqU/SA/VLHDDLkZTKPd3hjMSTk2tDvZ0oatgeXkNw==
X-Received: by 2002:a05:6512:3e0c:b0:4b5:a5c7:3286 with SMTP id i12-20020a0565123e0c00b004b5a5c73286mr681061lfv.9.1671622872355;
        Wed, 21 Dec 2022 03:41:12 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f14-20020a056512360e00b004b551cdfe13sm1800382lfs.279.2022.12.21.03.41.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 03:41:11 -0800 (PST)
Message-ID: <3f7dc970-4cc0-7d8e-b33f-83c9dd368b11@linaro.org>
Date: Wed, 21 Dec 2022 12:41:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: ty <zonyitoo@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 DHDAXCW <lasstp5011@gmail.com>
References: <Y6KfFEChA67E7oX/@VM-66-53-centos>
 <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org>
 <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_034115_055248_320F3E14 
X-CRM114-Status: GOOD (  24.14  )
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

On 21/12/2022 11:46, ty wrote:
> Dear Kozlowski,
> 
> Sorry that we didn't fully get the idea in your previous comments.
> 
>>
>> On 21/12/2022 06:52, Yuteng Zhong wrote:
>>> from: DHDAXCW <lasstp5011@gmail.com>
>>>
>>> LubanCat 1 is a Rockchip RK3566 SBC based
>>> is developed by EmbedFire Electronics Co., Ltd.
>>> Mini Linux Card Type Cheap Computer Development Board
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all
>> requested changes or keep discussing them.
>>
>> Thank you.
> 
> Your pervious comment were:
> 
>> Please wrap commit message according to Linux coding style / submission
>> process:
>> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586
> 
> So I think there must be something wrong in the message but I didn't
> notice. This message has a `from` line, and the body was wrapped at 75
> columns. Please help me make it better.

You do not wrap at 75, but at some other place. Just put it to editor
and check where is wrapping (count characters).

> 
> 
> 
>>>
>>> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
>>> Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> index 88ff4422a8c1..84d39a3a8843 100644
>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> @@ -781,6 +781,11 @@ properties:
>>>            - const: rockchip,rk3568-bpi-r2pro
>>>            - const: rockchip,rk3568
>>>
>>> +      - description: EmbedFire LubanCat 1
>>> +        items:
>>> +          - const: embedfire,lubancat-1
>>> +          - const: rockchip,rk3566
>>
>> Here as well.
> 
> This change was addressing the previous comment in V2:
> 
>> This is separate patch. Does not look like properly ordered. Don't add
>> stuff at the end of files/lists.
> 
> The previous PATCH v2 merged changes in 3 diffent files:
> 
> 1. arch/arm64/boot/dts/rockchip/Makefile
> 2. arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> 3. Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> What we do in this PATCH v4 was separated the 3 into a separated patch.

So how did you solve the comment "Does not look like properly ordered.
Don't add stuff at the end of files/lists."? What did you change to
solve it?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
